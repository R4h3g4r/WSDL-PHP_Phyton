package wcorp.aplicaciones.productos.colocaciones.credito.struts.util;

import java.io.ByteArrayOutputStream;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

import org.apache.log4j.Logger;
import org.xml.sax.ContentHandler;
import org.xml.sax.helpers.AttributesImpl;

import wcorp.model.seguridad.SessionBCI;
import wcorp.util.FechasUtil;
import wcorp.util.TablaValores;
import wcorp.util.bee.MultiEnvironment;
import org.apache.xml.serialize.OutputFormat;
import org.apache.xml.serialize.XMLSerializer;

import wcorp.serv.creditosglobales.IteracionDetalleDelPago;
import wcorp.serv.creditosglobales.ResultConsultaCertificadoDePrepagoTotal;
import wcorp.bprocess.creditosglobales.SvcCreditosGlobalesImpl;


/**
 * <b>ImpresionConsultaCertificadoDePrepagoTotal</b>
 * <p>
 * Serializador encargado de mostrar el certificado de prepago de un crédito, mediante
 * la utilización de una plantilla XSL usando FOP.
 * <p>
 * Se espera que sea usado en los canales : Everest y Portal
 * <p>
 *
 * Parámetros:
 *
 *  - caiOperacion              : Número de operación
 *  - iicOperacion              : Número de operación
 *  - montoPrepago              : Monto del prepago
 *  - match                     : variable que contiene el inicializador del documento XLS
 *
 * <p>
 *
 *
 * <p>
 * Registro de versiones:
 * <ul>
 *
 * <li>1.0 (13/01/2011 Jorge Núñez Catalán          (BEE S.A.)      : versión inicial.
 * <li>1.1 (15/02/2011 Waldo Iriarte O.             (BEE S.A.)      : Se formatean los valores númericos a ser enviados al XSLT.
 *                                                                    Se eliminan NumberFormat no utilizados en la página.
 *
 *
 *
 * </ul><P>
 *
 * <B>Todos los derechos reservados por Banco de Crédito e Inversiones.</B>
 * <P>
 */
public class ImpresionConsultaCertificadoDePrepagoTotal extends wcorp.util.bee.impresion.DataRetrievalCommand {

    private SimpleDateFormat ddMMyyyy_form = new SimpleDateFormat("dd/MM/yyyy");
    private NumberFormat     miles_form    = new DecimalFormat("#,###");
    private NumberFormat     number_form   = new DecimalFormat("#,##0.00");

    private static final String TABLAVALORES      = "bel/resumenCredito.parametros";
    private static final String TABLA_PARAMETROS  = "ImpresionDocumentos.parametros";

    private static Logger    logger        = (Logger) Logger.getLogger(ImpresionConsultaCertificadoDePrepagoTotal.class);

    public byte[] execute() throws Exception {

        if (logger.isDebugEnabled()) logger.debug(" <== version: 13/01/2011 01:00 ==> ");

        OutputFormat of = new OutputFormat("XML", "ISO-8859-1", true);

        of.setIndent(1);
        of.setIndenting(true);

        SessionBCI  sessionBci      = (SessionBCI) session.getAttribute("sessionBci");;

        MultiEnvironment multiEnvironment = new MultiEnvironment();

        multiEnvironment.setBanco(TablaValores.getValor(TABLAVALORES, "multiEnvironment", "banco"));
        multiEnvironment.setMarca(TablaValores.getValor(TABLAVALORES, "multiEnvironment", "marca"));
        multiEnvironment.setCartera(TablaValores.getValor(TABLAVALORES, "multiEnvironment", "cartera"));
        multiEnvironment.setLocale(new Locale(TablaValores.getValor(TABLAVALORES, "multiEnvironment", "language"), TablaValores.getValor(TABLAVALORES, "multiEnvironment", "country")));
        multiEnvironment.setUsuario(TablaValores.getValor(TABLAVALORES, "multiEnvironment", "usuario"));
        multiEnvironment.setCanal(sessionBci.getCanal().getCanalID());

        ByteArrayOutputStream baos             = new ByteArrayOutputStream();
        XMLSerializer         serializer       = new XMLSerializer(baos, of);
        ContentHandler        contentHandler   = serializer.asContentHandler();
        AttributesImpl        attributes       = new AttributesImpl();

        String host                     = TablaValores.getValor(TABLA_PARAMETROS, "imagenes", "host");
        String rutaImagen               = (host + (TablaValores.getValor(TABLA_PARAMETROS, "imagenes", "logoSDBci")));
        String fechaImpresion           = (String) FechasUtil.fechaActualFormateada("dd/MM/yyyy h:mm a");

        String caiOperacion             = (String) request.getParameter("caiOperacion");
        String iicOperacion             = (String) request.getParameter("iicOperacion");
        String montoPrepago             = (String) request.getParameter("montoPrepago");
        String match                    = (String) request.getParameter("match");

        if (logger.isDebugEnabled()) {
            logger.debug("-----------------------------------------------------------------------------");
            logger.debug("rutaImagen                                          : '" + rutaImagen                       + "'");
            logger.debug("fechaImpresion                                      : '" + fechaImpresion                   + "'");
            logger.debug("caiOperacion                                        : '" + caiOperacion                     + "'");
            logger.debug("iicOperacion                                        : '" + iicOperacion                     + "'");
            logger.debug("montoPrepago                                        : '" + montoPrepago                     + "'");
            logger.debug("match                                               : '" + match                            + "'");
            logger.debug("-----------------------------------------------------------------------------");

            logger.debug("Antes de consultaCertificadoDePrepagoTotal");
        }

        SvcCreditosGlobalesImpl svc = new SvcCreditosGlobalesImpl();

        ResultConsultaCertificadoDePrepagoTotal result = svc.consultaCertificadoDePrepagoTotal(multiEnvironment,
                                                                                               caiOperacion.toUpperCase(),
                                                                                               Integer.parseInt(iicOperacion),
                                                                                               Long.parseLong(montoPrepago));

        String operacion                = caiOperacion.toUpperCase() + iicOperacion;
        String rutCliente               = String.valueOf(miles_form.format(result.getRutCliente()));
        String vrfCliente               = String.valueOf(result.getVrfCliente());
        String tipoCancelacion          = result.getTipoCancelacion();
        String tipoCredito              = result.getTipoCredito();
        String periodicidadPago         = String.valueOf(result.getPeriodicidadPago());
        String nombreCliente            = result.getNombreCliente();
        String fechaCurse               = ddMMyyyy_form.format(result.getFechaCurse());
        String codigoMoneda             = result.getCodigoMoneda();
        String glosaMoneda              = result.getGlosaMoneda();
        String cuotasOrigen             = String.valueOf(result.getCuotasOrigen());
        String fechaUltimoPago          = ddMMyyyy_form.format(result.getFechaUltimoPago());
        String saldoCredito             = String.valueOf(number_form.format(result.getSaldoCredito()));
        String tasa                     = String.valueOf(number_form.format(result.getTasa()));
        String glosaTasa                = result.getGlosaTasa();
        String glosa1                   = result.getGlosa1();
        String glosa2                   = result.getGlosa2();
        String glosa3                   = result.getGlosa3();
               montoPrepago             = String.valueOf(result.getMontoPrepago());

        if (logger.isDebugEnabled()) {
            logger.debug("-----------------------------------------------------------------------------");
            logger.debug("tipoCancelacion                                     : '" + tipoCancelacion                  + "'");
            logger.debug("montoPrepago                                        : '" + montoPrepago                     + "'");
            logger.debug("tipoCredito                                         : '" + tipoCredito                      + "'");
            logger.debug("rutCliente                                          : '" + rutCliente                       + "'");
            logger.debug("periodicidadPago                                    : '" + periodicidadPago                 + "'");
            logger.debug("nombreCliente                                       : '" + nombreCliente                    + "'");
            logger.debug("fechaCurse                                          : '" + fechaCurse                       + "'");
            logger.debug("codigoMoneda                                        : '" + codigoMoneda                     + "'");
            logger.debug("glosaMoneda                                         : '" + glosaMoneda                      + "'");
            logger.debug("cuotasOrigen                                        : '" + cuotasOrigen                     + "'");
            logger.debug("fechaUltimoPago                                     : '" + fechaUltimoPago                  + "'");
            logger.debug("saldoCredito                                        : '" + saldoCredito                     + "'");
            logger.debug("tasa                                                : '" + tasa                             + "'");
            logger.debug("glosaTasa                                           : '" + glosaTasa                        + "'");
            logger.debug("glosa1                                              : '" + glosa1                           + "'");
            logger.debug("glosa2                                              : '" + glosa2                           + "'");
            logger.debug("glosa3                                              : '" + glosa3                           + "'");
            logger.debug("-----------------------------------------------------------------------------");
        }

        contentHandler.startDocument();
        contentHandler.startElement("", "", match, attributes);

        contentHandler.startElement("", "", "rutaImagen", attributes);
        contentHandler.characters(rutaImagen.toCharArray(), 0, rutaImagen.length());
        contentHandler.endElement("", "", "rutaImagen");

        contentHandler.startElement("", "", "operacion", attributes);
        contentHandler.characters(operacion.toCharArray(), 0, operacion.length());
        contentHandler.endElement("", "", "operacion");

        contentHandler.startElement("", "", "tipoCancelacion", attributes);
        contentHandler.characters(tipoCancelacion.toCharArray(), 0, tipoCancelacion.length());
        contentHandler.endElement("", "", "tipoCancelacion");

        contentHandler.startElement("", "", "tipoCredito", attributes);
        contentHandler.characters(tipoCredito.toCharArray(), 0, tipoCredito.length());
        contentHandler.endElement("", "", "tipoCredito");

        contentHandler.startElement("", "", "rutCliente", attributes);
        contentHandler.characters(rutCliente.toCharArray(), 0, rutCliente.length());
        contentHandler.endElement("", "", "rutCliente");

        contentHandler.startElement("", "", "vrfCliente", attributes);
        contentHandler.characters(vrfCliente.toCharArray(), 0, vrfCliente.length());
        contentHandler.endElement("", "", "vrfCliente");

        contentHandler.startElement("", "", "periodicidadPago", attributes);
        contentHandler.characters(periodicidadPago.toCharArray(), 0, periodicidadPago.length());
        contentHandler.endElement("", "", "periodicidadPago");

        contentHandler.startElement("", "", "nombreCliente", attributes);
        contentHandler.characters(nombreCliente.toCharArray(), 0, nombreCliente.length());
        contentHandler.endElement("", "", "nombreCliente");

        contentHandler.startElement("", "", "fechaCurse", attributes);
        contentHandler.characters(fechaCurse.toCharArray(), 0, fechaCurse.length());
        contentHandler.endElement("", "", "fechaCurse");

        contentHandler.startElement("", "", "glosaMoneda", attributes);
        contentHandler.characters(glosaMoneda.toCharArray(), 0, glosaMoneda.length());
        contentHandler.endElement("", "", "glosaMoneda");

        contentHandler.startElement("", "", "cuotasOrigen", attributes);
        contentHandler.characters(cuotasOrigen.toCharArray(), 0, cuotasOrigen.length());
        contentHandler.endElement("", "", "cuotasOrigen");

        contentHandler.startElement("", "", "fechaUltimoPago", attributes);
        contentHandler.characters(fechaUltimoPago.toCharArray(), 0, fechaUltimoPago.length());
        contentHandler.endElement("", "", "fechaUltimoPago");

        contentHandler.startElement("", "", "saldoCredito", attributes);
        contentHandler.characters(saldoCredito.toCharArray(), 0, saldoCredito.length());
        contentHandler.endElement("", "", "saldoCredito");

        contentHandler.startElement("", "", "tasa", attributes);
        contentHandler.characters(tasa.toCharArray(), 0, tasa.length());
        contentHandler.endElement("", "", "tasa");

        contentHandler.startElement("", "", "glosaTasa", attributes);
        contentHandler.characters(glosaTasa.toCharArray(), 0, glosaTasa.length());
        contentHandler.endElement("", "", "glosaTasa");

        contentHandler.startElement("", "", "glosa1", attributes);
        contentHandler.characters(glosa1.toCharArray(), 0, glosa1.length());
        contentHandler.endElement("", "", "glosa1");

        contentHandler.startElement("", "", "glosa2", attributes);
        contentHandler.characters(glosa2.toCharArray(), 0, glosa2.length());
        contentHandler.endElement("", "", "glosa2");

        contentHandler.startElement("", "", "glosa3", attributes);
        contentHandler.characters(glosa3.toCharArray(), 0, glosa3.length());
        contentHandler.endElement("", "", "glosa3");

        //comienzo rescatar los detalles de prepagos (iteraciones)
        contentHandler.startElement("", "", "detallePrepagos", attributes);

        IteracionDetalleDelPago[] detalleDelPago = result.getDetalleDelPago();

        if (logger.isDebugEnabled()) logger.debug("detalleDelPago.length [" + detalleDelPago.length + "]");

        String fechaPago        = "";
        String capitalPrepago   = "";
        String valorIntereses   = "";
        String comision         = "";
        String capitalAdeudado  = "";
        String reajustes        = "";
        String cargosMora       = "";
        String comisionFogape   = "";
        String totalPagos       = "";

        for (int i = 0; i < detalleDelPago.length; i++) {

            if (logger.isDebugEnabled()) {
                logger.debug("fechaPago["       + String.valueOf(i) + "]                                         : '"   +  detalleDelPago[i].getFechaPago()                       + "'");
                logger.debug("capitalPrepago["  + String.valueOf(i) + "]                                    : '"        +  detalleDelPago[i].getCapitalPrepago()                  + "'");
                logger.debug("valorIntereses["  + String.valueOf(i) + "]                                    : '"        +  detalleDelPago[i].getValorIntereses()                  + "'");
                logger.debug("comision["        + String.valueOf(i) + "]                                          : '"  +  detalleDelPago[i].getComision()                        + "'");
                logger.debug("capitalAdeudado[" + String.valueOf(i) + "]                                   : '"         +  detalleDelPago[i].getCapitalAdeudado()                 + "'");
                logger.debug("reajustes["       + String.valueOf(i) + "]                                         : '"   +  detalleDelPago[i].getReajustes()                       + "'");
                logger.debug("cargosMora["      + String.valueOf(i) + "]                                        : '"    +  detalleDelPago[i].getCargosMora()                      + "'");
                logger.debug("comisionFogape["  + String.valueOf(i) + "]                                    : '"        +  detalleDelPago[i].getComisionFogape()                  + "'");
                logger.debug("totalPagos["      + String.valueOf(i) + "]                                        : '"    +  detalleDelPago[i].getTotalPagos()                      + "'");
            }

            fechaPago        = ddMMyyyy_form.format(detalleDelPago[i].getFechaPago());
            capitalPrepago   = String.valueOf(miles_form.format(detalleDelPago[i].getCapitalPrepago()));
            valorIntereses   = String.valueOf(miles_form.format(detalleDelPago[i].getValorIntereses()));
            comision         = String.valueOf(miles_form.format(detalleDelPago[i].getComision()));
            capitalAdeudado  = String.valueOf(number_form.format(detalleDelPago[i].getCapitalAdeudado()));
            reajustes        = String.valueOf(miles_form.format(detalleDelPago[i].getReajustes()));
            cargosMora       = String.valueOf(miles_form.format(detalleDelPago[i].getCargosMora()));
            comisionFogape   = String.valueOf(miles_form.format(detalleDelPago[i].getComisionFogape()));
            totalPagos       = String.valueOf(miles_form.format(detalleDelPago[i].getTotalPagos()));

            if (logger.isDebugEnabled()) {
                logger.debug("fechaPago["       + String.valueOf(i) + "]                                         : '"   +  fechaPago                       + "'");
                logger.debug("capitalPrepago["  + String.valueOf(i) + "]                                    : '"        +  capitalPrepago                  + "'");
                logger.debug("valorIntereses["  + String.valueOf(i) + "]                                    : '"        +  valorIntereses                  + "'");
                logger.debug("comision["        + String.valueOf(i) + "]                                          : '"  +  comision                        + "'");
                logger.debug("capitalAdeudado[" + String.valueOf(i) + "]                                   : '"         +  capitalAdeudado                 + "'");
                logger.debug("reajustes["       + String.valueOf(i) + "]                                         : '"   +  reajustes                       + "'");
                logger.debug("cargosMora["      + String.valueOf(i) + "]                                        : '"    +  cargosMora                      + "'");
                logger.debug("comisionFogape["  + String.valueOf(i) + "]                                    : '"        +  comisionFogape                  + "'");
                logger.debug("totalPagos["      + String.valueOf(i) + "]                                        : '"    +  totalPagos                      + "'");
            }

            contentHandler.startElement("", "", "element", attributes);

            contentHandler.startElement("", "", "fechaPago", attributes);
            contentHandler.characters(fechaPago.toCharArray(), 0, fechaPago.length());
            contentHandler.endElement("", "", "fechaPago");

            contentHandler.startElement("", "", "capitalPrepago", attributes);
            contentHandler.characters(capitalPrepago.toCharArray(), 0, capitalPrepago.length());
            contentHandler.endElement("", "", "capitalPrepago");

            contentHandler.startElement("", "", "valorIntereses", attributes);
            contentHandler.characters(valorIntereses.toCharArray(), 0, valorIntereses.length());
            contentHandler.endElement("", "", "valorIntereses");

            contentHandler.startElement("", "", "comision", attributes);
            contentHandler.characters(comision.toCharArray(), 0, comision.length());
            contentHandler.endElement("", "", "comision");

            contentHandler.startElement("", "", "reajustes", attributes);
            contentHandler.characters(reajustes.toCharArray(), 0, reajustes.length());
            contentHandler.endElement("", "", "reajustes");

            contentHandler.startElement("", "", "cargosMora", attributes);
            contentHandler.characters(cargosMora.toCharArray(), 0, cargosMora.length());
            contentHandler.endElement("", "", "cargosMora");

            contentHandler.startElement("", "", "comisionFogape", attributes);
            contentHandler.characters(comisionFogape.toCharArray(), 0, comisionFogape.length());
            contentHandler.endElement("", "", "comisionFogape");

            contentHandler.startElement("", "", "totalPagos", attributes);
            contentHandler.characters(totalPagos.toCharArray(), 0, totalPagos.length());
            contentHandler.endElement("", "", "totalPagos");

            contentHandler.endElement("", "", "element");

        }

        contentHandler.endElement("", "", "detallePrepagos");
        contentHandler.endElement("", "", match);

        baos.close();

        return baos.toByteArray();

    }
}
