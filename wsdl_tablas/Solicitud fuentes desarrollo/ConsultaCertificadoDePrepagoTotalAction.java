package wcorp.aplicaciones.productos.colocaciones.credito.struts.actions;

import java.util.Date;
import java.util.Locale;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import wcorp.bprocess.creditosglobales.CreditosGlobalesException;

import wcorp.serv.creditosglobales.IteracionDetalleDelPago;
import wcorp.serv.creditosglobales.ResultConsultaCertificadoDePrepagoTotal;

import wcorp.model.seguridad.SessionBCI;
import wcorp.util.GeneralException;
import wcorp.util.bee.FormatUtilities;
import wcorp.util.bee.MultiEnvironment;

/**
 * <b>ConsultaCertificadoDePrepagoTotalAction</b>
 * <p>
 * Actions que tiene por misión consultar los certificados de prepago del crédito seleccionado.
 * Este servicio esta encargado de mostrar las cancelaciones realizadas de un crédito determinado.
 *
 *
 *
 * <p>
 * Se espera que sea usado en los canales: Everest
 *
 * <p>
 * Atributos colocados en la sessionBci:
 *
 *  Parametros:
 *  - multiEnvironment          : Variable de multi ambiente
 *
 * Parametros:
 *  - caiOperacion              : Número de operación
 *  - iicOperacion              : Número de operación
 *  - montoPrepago              : Monto del prepago
 *
 * <p>
 * Registro de versiones:
 * <ul>
 *
 * <li>1.0   07/01/2011,  Waldo Iriarte O.                 (Bee) : Versión inicial</li>
 *
 *
 *
 * </ul><P>
 *
 * <B>Todos los derechos reservados por Banco de Crédito e Inversiones.</B>
 * <P>
 */
public class ConsultaCertificadoDePrepagoTotalAction extends Action {

    private static Logger logger                        = (Logger) Logger.getLogger(ConsultaCertificadoDePrepagoTotalAction.class);

    /*******************************************************************************************************
     * execute
     *******************************************************************************************************/
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {

            if (logger.isDebugEnabled()) logger.debug("INI Action ConsultaCertificadoDePrepagoTotalAction");

            DynaActionForm consultaCertificadoDePrepagoTotalForm = (DynaActionForm) form;

            HttpSession   hs         = request.getSession(false);
            SessionBCI    sessionBci = (SessionBCI) hs.getAttribute("sessionBci");

            if (logger.isDebugEnabled()) logger.debug("Obteniendo el MultiEnvironment");

            MultiEnvironment multiEnvironment = (MultiEnvironment) sessionBci.getAttrib("ConsultaCertificadoDePrepagoTotal", "multiEnvironment");

            if (multiEnvironment == null) {
                multiEnvironment = new MultiEnvironment();
                multiEnvironment.setCanal(sessionBci.getCanal().getCanalID());
                multiEnvironment.setUsuario(sessionBci.getColaborador().getUsuario());
                multiEnvironment.setBanco("BCI");
                multiEnvironment.setCartera("BEE");
                multiEnvironment.setLocale(new Locale("ES", "CL"));
                multiEnvironment.setMarca("BCI");

                sessionBci.setAttrib("ConsultaCertificadoDePrepagoTotal", "multiEnvironment", multiEnvironment);
            }

            if (logger.isDebugEnabled()) logger.debug("MultiEnvironment obtenido");

            wcorp.bprocess.creditosglobales.SvcCreditosGlobalesImpl svc = new wcorp.bprocess.creditosglobales.SvcCreditosGlobalesImpl();

            if (logger.isDebugEnabled()) {
                logger.debug("================================");
                logger.debug("= Obteniendo datos desde link  =");
                logger.debug("================================");
            }

            String caiOperacion             = (String) consultaCertificadoDePrepagoTotalForm.get("caiOperacion");
            String iicOperacion             = (String) consultaCertificadoDePrepagoTotalForm.get("iicOperacion");
            String montoPrepago             = (String) consultaCertificadoDePrepagoTotalForm.get("montoPrepago");

            if (logger.isDebugEnabled()) {
                logger.debug("-----------------------------------------------------------------------------");
                logger.debug("caiOperacion                              : '" + caiOperacion.toUpperCase()           + "'");
                logger.debug("iicOperacion                              : '" + iicOperacion                         + "'");
                logger.debug("montoPrepago                              : '" + montoPrepago                         + "'");
                logger.debug("-----------------------------------------------------------------------------");
                logger.debug("Antes de consultaCertificadoDePrepagoTotal");
            }

            Object result = svc.consultaCertificadoDePrepagoTotal(multiEnvironment,
                                                                  caiOperacion.toUpperCase(),
                                                                  Integer.parseInt(iicOperacion),
                                                                  Long.parseLong(montoPrepago));

            if (logger.isDebugEnabled()) logger.debug("despues de consultaCertificadoDePrepagoTotal");

            request.setAttribute("ejecutivo",                               sessionBci.getColaborador().getUsuario());
            request.setAttribute("caiOperacion",                            caiOperacion.toUpperCase());
            request.setAttribute("iicOperacion",                            iicOperacion);
            request.setAttribute("montoPrepago",                            montoPrepago);
            request.setAttribute("ResultConsultaCertificadoDePrepagoTotal", result);

            if (logger.isDebugEnabled()) logger.debug("mapping.findForward('consultaCertificadoDePrepagoTotal')                              : '" + mapping.findForward("consultaCertificadoDePrepagoTotal") + "'");

            return mapping.findForward("consultaCertificadoDePrepagoTotal");

        } catch (CreditosGlobalesException e) {

            if (logger.isDebugEnabled()) logger.debug("Excepcion de ejecucion (CreditosGlobalesException): " + e.toString());

            String message = e.toString();

            if (message != null && message.indexOf("[") != -1 && message.indexOf("]") != -1) {
                message = FormatUtilities.hackle(e.toString());
            }

            GeneralException ex = new GeneralException("ESPECIAL", message);

            request.setAttribute(FormatUtilities.JSP_EXCEPTION, ex);

            return mapping.findForward("appl_error");

        } catch (Exception e) {

            if (logger.isDebugEnabled()) logger.debug("Excepcion de ejecucion (Exception): " + e.toString());

            request.setAttribute(FormatUtilities.JSP_EXCEPTION, e);

            return mapping.findForward("common_error");
        }
    }
}
