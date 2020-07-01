package wcorp.serv.creditosglobales;

import java.io.Serializable;
import java.util.Date;

import wcorp.util.StringUtil;


/**
 * <b>Iteración Consulta Entidad Cin</b>
 * <p>
 * VO asociado a la consulta de datos de la Entidad Cin
 *
 *
 * <p>
 * Registro de versiones: <ul>
 *   <li>1.0  07/01/2011  Waldo Iriarte      BEE                : Version inicial.   </li>
 * </ul>
 * <p>
 *
 * <B>Todos los derechos reservados por Banco de Crédito e Inversiones.</B>
 * <P>
 *
 */
public class ResultConsultaCertificadoDePrepagoTotal implements Serializable {

    /**
    * Número de versión utilizado durante la serialización.
    */
   private static final long serialVersionUID = 1L;
    /**  <b>status ejecucion (CIM)</b> */
    private String    cim_status = null;
    /**  <b>respuesta ejecucion (CIM)</b> */
    private String    cim_respuesta = null;
    /**  <b>Tipo Cancelacion (attr)</b> */
    private char      tipoCancelacion_attr;
    /**  <b>Tipo Cancelacion</b> */
    private String    tipoCancelacion = null;
    /**  <b>Monto Prepago $ (attr)</b> */
    private char      montoPrepago_attr;
    /**  <b>Monto Prepago $</b> */
    private long      montoPrepago;
    /**  <b>Tipo Credito (attr)</b> */
    private char      tipoCredito_attr;
    /**  <b>Tipo Credito</b> */
    private String    tipoCredito = null;
    /**  <b>Rut Cliente (attr)</b> */
    private char      rutCliente_attr;
    /**  <b>Rut Cliente</b> */
    private long       rutCliente;
    /**  <b>Vrf Cliente (attr)</b> */
    private char      vrfCliente_attr;
    /**  <b>Vrf Cliente</b> */
    private char      vrfCliente;
    /**  <b>Idc Cliente (attr)</b> */
    private char      indicadorCliente_attr;
    /**  <b>Idc Cliente</b> */
    private char      indicadorCliente;
    /**  <b>Gls Cliente (attr)</b> */
    private char      glosaCliente_attr;
    /**  <b>Gls Cliente</b> */
    private String    glosaCliente = null;
    /**  <b>Periodicidad Pago (attr)</b> */
    private char      periodicidadPago_attr;
    /**  <b>Periodicidad Pago</b> */
    private String    periodicidadPago = null;
    /**  <b>Nombre Cliente (attr)</b> */
    private char      nombreCliente_attr;
    /**  <b>Nombre Cliente</b> */
    private String    nombreCliente = null;
    /**  <b>Fecha Curse (attr)</b> */
    private char      fechaCurse_attr;
    /**  <b>Fecha Curse</b> */
    private Date      fechaCurse = null;
    /**  <b>Moneda (attr)</b> */
    private char      codigoMoneda_attr;
    /**  <b>Moneda</b> */
    private String    codigoMoneda = null;
    /**  <b>Glosa Moneda (attr)</b> */
    private char      glosaMoneda_attr;
    /**  <b>Glosa Moneda</b> */
    private String    glosaMoneda = null;
    /**  <b>Cuotas Origen (attr)</b> */
    private char      cuotasOrigen_attr;
    /**  <b>Cuotas Origen</b> */
    private int       cuotasOrigen;
    /**  <b>Fecha Ultimo Pago (attr)</b> */
    private char      fechaUltimoPago_attr;
    /**  <b>Fecha Ultimo Pago</b> */
    private Date      fechaUltimoPago = null;
    /**  <b>Saldo del Credito (attr)</b> */
    private char      saldoCredito_attr;
    /**  <b>Saldo del Credito</b> */
    private double    saldoCredito;
    /**  <b>Tasa (attr)</b> */
    private char      tasa_attr;
    /**  <b>Tasa</b> */
    private double    tasa;
    /**  <b>Glosa Tasa (attr)</b> */
    private char      glosaTasa_attr;
    /**  <b>Glosa Tasa</b> */
    private String    glosaTasa = null;
    /**  <b>Glosa Tasa (attr)</b> */
    private char      glosa1_attr;
    /**  <b>Glosa Tasa</b> */
    private String    glosa1 = null;
    /**  <b>Glosa Tasa (attr)</b> */
    private char      glosa2_attr;
    /**  <b>Glosa Tasa</b> */
    private String    glosa2 = null;
    /**  <b>Glosa Tasa (attr)</b> */
    private char      glosa3_attr;
    /**  <b>Glosa Tasa</b> */
    private String    glosa3 = null;
    /**  <b>Indicador de mas (attr)</b> */
    private char      resultado_attr;
    /**  <b>Indicador de mas</b> */
    private char      resultado;
    /**  <b>Total Ocurrencias (attr)</b> */
    private char      totOcurrencias_attr;
    /**  <b>Total Ocurrencias</b> */
    private int       totOcurrencias;
    /** {@link IteracionDetalleDelPago} */
    private IteracionDetalleDelPago[] detalleDelPago = new IteracionDetalleDelPago[100]; /* older generator compatibility */

    /**
     *
     */
    public ResultConsultaCertificadoDePrepagoTotal() {}

    /**
     *
     * @param cim_status <b>status ejecucion (CIM)</b>
     * @param cim_respuesta <b>respuesta ejecucion (CIM)</b>
     * @param tipoCancelacion_attr <b>Tipo Cancelacion attr</b>
     * @param tipoCancelacion <b>Tipo Cancelacion</b>
     * @param montoPrepago_attr <b>Monto Prepago $ attr</b>
     * @param montoPrepago <b>Monto Prepago $</b>
     * @param tipoCredito_attr <b>Tipo Credito attr</b>
     * @param tipoCredito <b>Tipo Credito</b>
     * @param rutCliente_attr <b>Rut Cliente attr</b>
     * @param rutCliente <b>Rut Cliente</b>
     * @param vrfCliente_attr <b>Vrf Cliente attr</b>
     * @param vrfCliente <b>Vrf Cliente</b>
     * @param indicadorCliente_attr <b>Idc Cliente attr</b>
     * @param indicadorCliente <b>Idc Cliente</b>
     * @param glosaCliente_attr <b>Gls Cliente attr</b>
     * @param glosaCliente <b>Gls Cliente</b>
     * @param periodicidadPago_attr <b>Periodicidad Pago attr</b>
     * @param periodicidadPago <b>Periodicidad Pago</b>
     * @param nombreCliente_attr <b>Nombre Cliente attr</b>
     * @param nombreCliente <b>Nombre Cliente</b>
     * @param fechaCurse_attr <b>Fecha Curse attr</b>
     * @param fechaCurse <b>Fecha Curse</b>
     * @param codigoMoneda_attr <b>Moneda attr</b>
     * @param codigoMoneda <b>Moneda</b>
     * @param glosaMoneda_attr <b>Glosa Moneda attr</b>
     * @param glosaMoneda <b>Glosa Moneda</b>
     * @param cuotasOrigen_attr <b>Cuotas Origen attr</b>
     * @param cuotasOrigen <b>Cuotas Origen</b>
     * @param fechaUltimoPago_attr <b>Fecha Ultimo Pago attr</b>
     * @param fechaUltimoPago <b>Fecha Ultimo Pago</b>
     * @param saldoCredito_attr <b>Saldo del Credito attr</b>
     * @param saldoCredito <b>Saldo del Credito</b>
     * @param tasa_attr <b>Tasa attr</b>
     * @param tasa <b>Tasa</b>
     * @param glosaTasa_attr <b>Glosa Tasa attr</b>
     * @param glosaTasa <b>Glosa Tasa</b>
     * @param glosa1_attr <b>Glosa Tasa attr</b>
     * @param glosa1 <b>Glosa Tasa</b>
     * @param glosa2_attr <b>Glosa Tasa attr</b>
     * @param glosa2 <b>Glosa Tasa</b>
     * @param glosa3_attr <b>Glosa Tasa attr</b>
     * @param glosa3 <b>Glosa Tasa</b>
     * @param resultado_attr <b>Indicador de mas attr</b>
     * @param resultado <b>Indicador de mas</b>
     * @param totOcurrencias_attr <b>Total Ocurrencias attr</b>
     * @param totOcurrencias <b>Total Ocurrencias</b>
     * @param detalleDelPago {@link IteracionDetalleDelPago}
     */
    public ResultConsultaCertificadoDePrepagoTotal(String cim_status, String cim_respuesta, char tipoCancelacion_attr, String tipoCancelacion, char montoPrepago_attr, long montoPrepago, char tipoCredito_attr, String tipoCredito, char rutCliente_attr, long rutCliente, char vrfCliente_attr, char vrfCliente, char indicadorCliente_attr, char indicadorCliente, char glosaCliente_attr, String glosaCliente, char periodicidadPago_attr, String periodicidadPago, char nombreCliente_attr, String nombreCliente, char fechaCurse_attr, Date fechaCurse, char codigoMoneda_attr, String codigoMoneda, char glosaMoneda_attr, String glosaMoneda, char cuotasOrigen_attr, int cuotasOrigen, char fechaUltimoPago_attr, Date fechaUltimoPago, char saldoCredito_attr, double saldoCredito, char tasa_attr, double tasa, char glosaTasa_attr, String glosaTasa, char glosa1_attr, String glosa1, char glosa2_attr, String glosa2, char glosa3_attr, String glosa3, char resultado_attr, char resultado, char totOcurrencias_attr, int totOcurrencias, IteracionDetalleDelPago[] detalleDelPago) {

        this.cim_status = cim_status;
        this.cim_respuesta = cim_respuesta;
        this.tipoCancelacion_attr = tipoCancelacion_attr;
        this.tipoCancelacion = tipoCancelacion;
        this.montoPrepago_attr = montoPrepago_attr;
        this.montoPrepago = montoPrepago;
        this.tipoCredito_attr = tipoCredito_attr;
        this.tipoCredito = tipoCredito;
        this.rutCliente_attr = rutCliente_attr;
        this.rutCliente = rutCliente;
        this.vrfCliente_attr = vrfCliente_attr;
        this.vrfCliente = vrfCliente;
        this.indicadorCliente_attr = indicadorCliente_attr;
        this.indicadorCliente = indicadorCliente;
        this.glosaCliente_attr = glosaCliente_attr;
        this.glosaCliente = glosaCliente;
        this.periodicidadPago_attr = periodicidadPago_attr;
        this.periodicidadPago = periodicidadPago;
        this.nombreCliente_attr = nombreCliente_attr;
        this.nombreCliente = nombreCliente;
        this.fechaCurse_attr = fechaCurse_attr;
        this.fechaCurse = fechaCurse;
        this.codigoMoneda_attr = codigoMoneda_attr;
        this.codigoMoneda = codigoMoneda;
        this.glosaMoneda_attr = glosaMoneda_attr;
        this.glosaMoneda = glosaMoneda;
        this.cuotasOrigen_attr = cuotasOrigen_attr;
        this.cuotasOrigen = cuotasOrigen;
        this.fechaUltimoPago_attr = fechaUltimoPago_attr;
        this.fechaUltimoPago = fechaUltimoPago;
        this.saldoCredito_attr = saldoCredito_attr;
        this.saldoCredito = saldoCredito;
        this.tasa_attr = tasa_attr;
        this.tasa = tasa;
        this.glosaTasa_attr = glosaTasa_attr;
        this.glosaTasa = glosaTasa;
        this.glosa1_attr = glosa1_attr;
        this.glosa1 = glosa1;
        this.glosa2_attr = glosa2_attr;
        this.glosa2 = glosa2;
        this.glosa3_attr = glosa3_attr;
        this.glosa3 = glosa3;
        this.resultado_attr = resultado_attr;
        this.resultado = resultado;
        this.totOcurrencias_attr = totOcurrencias_attr;
        this.totOcurrencias = totOcurrencias;
        this.detalleDelPago = detalleDelPago;
    }

    /**
     * @return cim_status <b>status ejecucion (CIM)</b>
     */
    public String getCim_status() {
        return cim_status;
    }

    /**
     * @deprecated
     *
     * @return cim_respuesta <b>respuesta ejecucion (CIM)</b>
     */
    public String getCim_mensaje() {
        return cim_respuesta;
    }

    /**
     * @return cim_respuesta <b>respuesta ejecucion (CIM)</b>
     */
    public String getCim_respuesta() {
        return cim_respuesta;
    }

    /**
     * @return tipoCancelacion_attr <b>Tipo Cancelacion attr</b>
     */
    public char getTipoCancelacion_attr() {
        return tipoCancelacion_attr;
    }

    /**
     * @return tipoCancelacion <b>Tipo Cancelacion</b>
     */
    public String getTipoCancelacion() {
        return tipoCancelacion;
    }

    /**
     * @return montoPrepago_attr <b>Monto Prepago $ attr</b>
     */
    public char getMontoPrepago_attr() {
        return montoPrepago_attr;
    }

    /**
     * @return montoPrepago <b>Monto Prepago $</b>
     */
    public long getMontoPrepago() {
        return montoPrepago;
    }

    /**
     * @return tipoCredito_attr <b>Tipo Credito attr</b>
     */
    public char getTipoCredito_attr() {
        return tipoCredito_attr;
    }

    /**
     * @return tipoCredito <b>Tipo Credito</b>
     */
    public String getTipoCredito() {
        return tipoCredito;
    }

    /**
     * @return rutCliente_attr <b>Rut Cliente attr</b>
     */
    public char getRutCliente_attr() {
        return rutCliente_attr;
    }

    /**
     * @return rutCliente <b>Rut Cliente</b>
     */
    public long getRutCliente() {
        return rutCliente;
    }

    /**
     * @return vrfCliente_attr <b>Vrf Cliente attr</b>
     */
    public char getVrfCliente_attr() {
        return vrfCliente_attr;
    }

    /**
     * @return vrfCliente <b>Vrf Cliente</b>
     */
    public char getVrfCliente() {
        return vrfCliente;
    }

    /**
     * @return indicadorCliente_attr <b>Idc Cliente attr</b>
     */
    public char getIndicadorCliente_attr() {
        return indicadorCliente_attr;
    }

    /**
     * @return indicadorCliente <b>Idc Cliente</b>
     */
    public char getIndicadorCliente() {
        return indicadorCliente;
    }

    /**
     * @return glosaCliente_attr <b>Gls Cliente attr</b>
     */
    public char getGlosaCliente_attr() {
        return glosaCliente_attr;
    }

    /**
     * @return glosaCliente <b>Gls Cliente</b>
     */
    public String getGlosaCliente() {
        return glosaCliente;
    }

    /**
     * @return periodicidadPago_attr <b>Periodicidad Pago attr</b>
     */
    public char getPeriodicidadPago_attr() {
        return periodicidadPago_attr;
    }

    /**
     * @return periodicidadPago <b>Periodicidad Pago</b>
     */
    public String getPeriodicidadPago() {
        return periodicidadPago;
    }

    /**
     * @return nombreCliente_attr <b>Nombre Cliente attr</b>
     */
    public char getNombreCliente_attr() {
        return nombreCliente_attr;
    }

    /**
     * @return nombreCliente <b>Nombre Cliente</b>
     */
    public String getNombreCliente() {
        return nombreCliente;
    }

    /**
     * @return fechaCurse_attr <b>Fecha Curse attr</b>
     */
    public char getFechaCurse_attr() {
        return fechaCurse_attr;
    }

    /**
     * @return fechaCurse <b>Fecha Curse</b>
     */
    public Date getFechaCurse() {
        return fechaCurse;
    }

    /**
     * @return codigoMoneda_attr <b>Moneda attr</b>
     */
    public char getCodigoMoneda_attr() {
        return codigoMoneda_attr;
    }

    /**
     * @return codigoMoneda <b>Moneda</b>
     */
    public String getCodigoMoneda() {
        return codigoMoneda;
    }

    /**
     * @return glosaMoneda_attr <b>Glosa Moneda attr</b>
     */
    public char getGlosaMoneda_attr() {
        return glosaMoneda_attr;
    }

    /**
     * @return glosaMoneda <b>Glosa Moneda</b>
     */
    public String getGlosaMoneda() {
        return glosaMoneda;
    }

    /**
     * @return cuotasOrigen_attr <b>Cuotas Origen attr</b>
     */
    public char getCuotasOrigen_attr() {
        return cuotasOrigen_attr;
    }

    /**
     * @return cuotasOrigen <b>Cuotas Origen</b>
     */
    public int getCuotasOrigen() {
        return cuotasOrigen;
    }

    /**
     * @return fechaUltimoPago_attr <b>Fecha Ultimo Pago attr</b>
     */
    public char getFechaUltimoPago_attr() {
        return fechaUltimoPago_attr;
    }

    /**
     * @return fechaUltimoPago <b>Fecha Ultimo Pago</b>
     */
    public Date getFechaUltimoPago() {
        return fechaUltimoPago;
    }

    /**
     * @return saldoCredito_attr <b>Saldo del Credito attr</b>
     */
    public char getSaldoCredito_attr() {
        return saldoCredito_attr;
    }

    /**
     * @return saldoCredito <b>Saldo del Credito</b>
     */
    public double getSaldoCredito() {
        return saldoCredito;
    }

    /**
     * @return tasa_attr <b>Tasa attr</b>
     */
    public char getTasa_attr() {
        return tasa_attr;
    }

    /**
     * @return tasa <b>Tasa</b>
     */
    public double getTasa() {
        return tasa;
    }

    /**
     * @return glosaTasa_attr <b>Glosa Tasa attr</b>
     */
    public char getGlosaTasa_attr() {
        return glosaTasa_attr;
    }

    /**
     * @return glosaTasa <b>Glosa Tasa</b>
     */
    public String getGlosaTasa() {
        return glosaTasa;
    }

    /**
     * @return glosa1_attr <b>Glosa Tasa attr</b>
     */
    public char getGlosa1_attr() {
        return glosa1_attr;
    }

    /**
     * @return glosa1 <b>Glosa Tasa</b>
     */
    public String getGlosa1() {
        return glosa1;
    }

    /**
     * @return glosa2_attr <b>Glosa Tasa attr</b>
     */
    public char getGlosa2_attr() {
        return glosa2_attr;
    }

    /**
     * @return glosa2 <b>Glosa Tasa</b>
     */
    public String getGlosa2() {
        return glosa2;
    }

    /**
     * @return glosa3_attr <b>Glosa Tasa attr</b>
     */
    public char getGlosa3_attr() {
        return glosa3_attr;
    }

    /**
     * @return glosa3 <b>Glosa Tasa</b>
     */
    public String getGlosa3() {
        return glosa3;
    }

    /**
     * @return resultado_attr <b>Indicador de mas attr</b>
     */
    public char getResultado_attr() {
        return resultado_attr;
    }

    /**
     * @return resultado <b>Indicador de mas</b>
     */
    public char getResultado() {
        return resultado;
    }

    /**
     * @return totOcurrencias_attr <b>Total Ocurrencias attr</b>
     */
    public char getTotOcurrencias_attr() {
        return totOcurrencias_attr;
    }

    /**
     * @return totOcurrencias <b>Total Ocurrencias</b>
     */
    public int getTotOcurrencias() {
        return totOcurrencias;
    }

    /**
     * @return {@link IteracionDetalleDelPago}
     */
    public IteracionDetalleDelPago[] getDetalleDelPago() {
        return detalleDelPago;
    }

    /**
     *
     * @deprecated
     *
     * @return {@link IteracionDetalleDelPago}
     */
    public IteracionDetalleDelPago[] getIteracionDetalleDelPago() {
        return detalleDelPago;
    }

    /**
     *  @param i posici&oacuten en el arreglo
     */
    public IteracionDetalleDelPago getDetalleDelPago(int i) {
        return detalleDelPago[i];
    }

    /**
     * @param cim_status <b>status ejecucion (CIM)</b>
     */
    public void setCim_status(String cim_status) {
        this.cim_status = cim_status;
    }

    /**
     * @deprecated
     *
     * @param cim_respuesta <b>respuesta ejecucion (CIM)</b>
     */
    public void setCim_mensaje(String cim_respuesta) {
        this.cim_respuesta = cim_respuesta;
    }

    /**
     * @param cim_respuesta <b>respuesta ejecucion (CIM)</b>
     */
    public void setCim_respuesta(String cim_respuesta) {
        this.cim_respuesta = cim_respuesta;
    }

    /**
     * @param tipoCancelacion_attr <b>Tipo Cancelacion attr</b>
     */
    public void setTipoCancelacion_attr(char tipoCancelacion_attr) {
        this.tipoCancelacion_attr = tipoCancelacion_attr;
    }

    /**
     * @param tipoCancelacion <b>Tipo Cancelacion</b>
     */
    public void setTipoCancelacion(String tipoCancelacion) {
        this.tipoCancelacion = tipoCancelacion;
    }

    /**
     * @param montoPrepago_attr <b>Monto Prepago $ attr</b>
     */
    public void setMontoPrepago_attr(char montoPrepago_attr) {
        this.montoPrepago_attr = montoPrepago_attr;
    }

    /**
     * @param montoPrepago <b>Monto Prepago $</b>
     */
    public void setMontoPrepago(long montoPrepago) {
        this.montoPrepago = montoPrepago;
    }

    /**
     * @param tipoCredito_attr <b>Tipo Credito attr</b>
     */
    public void setTipoCredito_attr(char tipoCredito_attr) {
        this.tipoCredito_attr = tipoCredito_attr;
    }

    /**
     * @param tipoCredito <b>Tipo Credito</b>
     */
    public void setTipoCredito(String tipoCredito) {
        this.tipoCredito = tipoCredito;
    }

    /**
     * @param rutCliente_attr <b>Rut Cliente attr</b>
     */
    public void setRutCliente_attr(char rutCliente_attr) {
        this.rutCliente_attr = rutCliente_attr;
    }

    /**
     * @param rutCliente <b>Rut Cliente</b>
     */
    public void setRutCliente(long rutCliente) {
        this.rutCliente = rutCliente;
    }

    /**
     * @param vrfCliente_attr <b>Vrf Cliente attr</b>
     */
    public void setVrfCliente_attr(char vrfCliente_attr) {
        this.vrfCliente_attr = vrfCliente_attr;
    }

    /**
     * @param vrfCliente <b>Vrf Cliente</b>
     */
    public void setVrfCliente(char vrfCliente) {
        this.vrfCliente = vrfCliente;
    }

    /**
     * @param indicadorCliente_attr <b>Idc Cliente attr</b>
     */
    public void setIndicadorCliente_attr(char indicadorCliente_attr) {
        this.indicadorCliente_attr = indicadorCliente_attr;
    }

    /**
     * @param indicadorCliente <b>Idc Cliente</b>
     */
    public void setIndicadorCliente(char indicadorCliente) {
        this.indicadorCliente = indicadorCliente;
    }

    /**
     * @param glosaCliente_attr <b>Gls Cliente attr</b>
     */
    public void setGlosaCliente_attr(char glosaCliente_attr) {
        this.glosaCliente_attr = glosaCliente_attr;
    }

    /**
     * @param glosaCliente <b>Gls Cliente</b>
     */
    public void setGlosaCliente(String glosaCliente) {
        this.glosaCliente = glosaCliente;
    }

    /**
     * @param periodicidadPago_attr <b>Periodicidad Pago attr</b>
     */
    public void setPeriodicidadPago_attr(char periodicidadPago_attr) {
        this.periodicidadPago_attr = periodicidadPago_attr;
    }

    /**
     * @param periodicidadPago <b>Periodicidad Pago</b>
     */
    public void setPeriodicidadPago(String periodicidadPago) {
        this.periodicidadPago = periodicidadPago;
    }

    /**
     * @param nombreCliente_attr <b>Nombre Cliente attr</b>
     */
    public void setNombreCliente_attr(char nombreCliente_attr) {
        this.nombreCliente_attr = nombreCliente_attr;
    }

    /**
     * @param nombreCliente <b>Nombre Cliente</b>
     */
    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    /**
     * @param fechaCurse_attr <b>Fecha Curse attr</b>
     */
    public void setFechaCurse_attr(char fechaCurse_attr) {
        this.fechaCurse_attr = fechaCurse_attr;
    }

    /**
     * @param fechaCurse <b>Fecha Curse</b>
     */
    public void setFechaCurse(Date fechaCurse) {
        this.fechaCurse = fechaCurse;
    }

    /**
     * @param codigoMoneda_attr <b>Moneda attr</b>
     */
    public void setCodigoMoneda_attr(char codigoMoneda_attr) {
        this.codigoMoneda_attr = codigoMoneda_attr;
    }

    /**
     * @param codigoMoneda <b>Moneda</b>
     */
    public void setCodigoMoneda(String codigoMoneda) {
        this.codigoMoneda = codigoMoneda;
    }

    /**
     * @param glosaMoneda_attr <b>Glosa Moneda attr</b>
     */
    public void setGlosaMoneda_attr(char glosaMoneda_attr) {
        this.glosaMoneda_attr = glosaMoneda_attr;
    }

    /**
     * @param glosaMoneda <b>Glosa Moneda</b>
     */
    public void setGlosaMoneda(String glosaMoneda) {
        this.glosaMoneda = glosaMoneda;
    }

    /**
     * @param cuotasOrigen_attr <b>Cuotas Origen attr</b>
     */
    public void setCuotasOrigen_attr(char cuotasOrigen_attr) {
        this.cuotasOrigen_attr = cuotasOrigen_attr;
    }

    /**
     * @param cuotasOrigen <b>Cuotas Origen</b>
     */
    public void setCuotasOrigen(int cuotasOrigen) {
        this.cuotasOrigen = cuotasOrigen;
    }

    /**
     * @param fechaUltimoPago_attr <b>Fecha Ultimo Pago attr</b>
     */
    public void setFechaUltimoPago_attr(char fechaUltimoPago_attr) {
        this.fechaUltimoPago_attr = fechaUltimoPago_attr;
    }

    /**
     * @param fechaUltimoPago <b>Fecha Ultimo Pago</b>
     */
    public void setFechaUltimoPago(Date fechaUltimoPago) {
        this.fechaUltimoPago = fechaUltimoPago;
    }

    /**
     * @param saldoCredito_attr <b>Saldo del Credito attr</b>
     */
    public void setSaldoCredito_attr(char saldoCredito_attr) {
        this.saldoCredito_attr = saldoCredito_attr;
    }

    /**
     * @param saldoCredito <b>Saldo del Credito</b>
     */
    public void setSaldoCredito(double saldoCredito) {
        this.saldoCredito = saldoCredito;
    }

    /**
     * @param tasa_attr <b>Tasa attr</b>
     */
    public void setTasa_attr(char tasa_attr) {
        this.tasa_attr = tasa_attr;
    }

    /**
     * @param tasa <b>Tasa</b>
     */
    public void setTasa(double tasa) {
        this.tasa = tasa;
    }

    /**
     * @param glosaTasa_attr <b>Glosa Tasa attr</b>
     */
    public void setGlosaTasa_attr(char glosaTasa_attr) {
        this.glosaTasa_attr = glosaTasa_attr;
    }

    /**
     * @param glosaTasa <b>Glosa Tasa</b>
     */
    public void setGlosaTasa(String glosaTasa) {
        this.glosaTasa = glosaTasa;
    }

    /**
     * @param glosa1_attr <b>Glosa Tasa attr</b>
     */
    public void setGlosa1_attr(char glosa1_attr) {
        this.glosa1_attr = glosa1_attr;
    }

    /**
     * @param glosa1 <b>Glosa Tasa</b>
     */
    public void setGlosa1(String glosa1) {
        this.glosa1 = glosa1;
    }

    /**
     * @param glosa2_attr <b>Glosa Tasa attr</b>
     */
    public void setGlosa2_attr(char glosa2_attr) {
        this.glosa2_attr = glosa2_attr;
    }

    /**
     * @param glosa2 <b>Glosa Tasa</b>
     */
    public void setGlosa2(String glosa2) {
        this.glosa2 = glosa2;
    }

    /**
     * @param glosa3_attr <b>Glosa Tasa attr</b>
     */
    public void setGlosa3_attr(char glosa3_attr) {
        this.glosa3_attr = glosa3_attr;
    }

    /**
     * @param glosa3 <b>Glosa Tasa</b>
     */
    public void setGlosa3(String glosa3) {
        this.glosa3 = glosa3;
    }

    /**
     * @param resultado_attr <b>Indicador de mas attr</b>
     */
    public void setResultado_attr(char resultado_attr) {
        this.resultado_attr = resultado_attr;
    }

    /**
     * @param resultado <b>Indicador de mas</b>
     */
    public void setResultado(char resultado) {
        this.resultado = resultado;
    }

    /**
     * @param totOcurrencias_attr <b>Total Ocurrencias attr</b>
     */
    public void setTotOcurrencias_attr(char totOcurrencias_attr) {
        this.totOcurrencias_attr = totOcurrencias_attr;
    }

    /**
     * @param totOcurrencias <b>Total Ocurrencias</b>
     */
    public void setTotOcurrencias(int totOcurrencias) {
        this.totOcurrencias = totOcurrencias;
    }

    /**
     *  @param detalleDelPago {@link IteracionDetalleDelPago}
     */
    public void setDetalleDelPago(IteracionDetalleDelPago[] detalleDelPago) {
        this.detalleDelPago = detalleDelPago;
    }

    /**
     *
     * @deprecated
     *
     *  @param detalleDelPago {@link IteracionDetalleDelPago}
     */
    public void setIteracionDetalleDelPago(IteracionDetalleDelPago[] detalleDelPago) {
        this.detalleDelPago = detalleDelPago;
    }

    /**
     *  @param i posici&oacuten en el arreglo
     *  @param value {@link IteracionDetalleDelPago}
     */
    public void setDetalleDelPago(int i, IteracionDetalleDelPago value) {
        this.detalleDelPago[i] = value;
    }

    /**
     *
     * @deprecated
     *
     *  @param value {@link IteracionDetalleDelPago}
     *  @param i posici&oacuten en el arreglo
     */
    public void setIteracionDetalleDelPago(IteracionDetalleDelPago value, int i) {
        this.detalleDelPago[i] = value;
    }

    /*******************************************************************************************************
     * toString
     *******************************************************************************************************/
    /**
     *
     */
    public String toString() {

        String s = "";

        s += "[cim_status : "               + cim_status.toString()                                             + "]";
        s += "[cim_respuesta : "            + cim_respuesta.toString()                                          + "]";
        s += "[tipoCancelacion_attr : "     + tipoCancelacion_attr                                              + "]";
        s += "[tipoCancelacion : "          + tipoCancelacion.toString()                                        + "]";
        s += "[montoPrepago_attr : "        + montoPrepago_attr                                                 + "]";
        s += "[montoPrepago : "             + Long.toString(montoPrepago)                                       + "]";
        s += "[tipoCredito_attr : "         + tipoCredito_attr                                                  + "]";
        s += "[tipoCredito : "              + tipoCredito.toString()                                            + "]";
        s += "[rutCliente_attr : "          + rutCliente_attr                                                   + "]";
        s += "[rutCliente : "               + Long.toString(rutCliente)                                         + "]";
        s += "[vrfCliente_attr : "          + vrfCliente_attr                                                   + "]";
        s += "[vrfCliente : "               + String.valueOf(vrfCliente)                                        + "]";
        s += "[indicadorCliente_attr : "    + indicadorCliente_attr                                             + "]";
        s += "[indicadorCliente : "         + String.valueOf(indicadorCliente)                                  + "]";
        s += "[glosaCliente_attr : "        + glosaCliente_attr                                                 + "]";
        s += "[glosaCliente : "             + glosaCliente.toString()                                           + "]";
        s += "[periodicidadPago_attr : "        + periodicidadPago_attr                                         + "]";
        s += "[periodicidadPago : "             + periodicidadPago.toString()                                   + "]";
        s += "[nombreCliente_attr : "       + nombreCliente_attr                                                + "]";
        s += "[nombreCliente : "            + nombreCliente.toString()                                          + "]";
        s += "[fechaCurse_attr : "          + fechaCurse_attr                                                   + "]";
        s += "[fechaCurse : "               + (fechaCurse != null ? fechaCurse.toString() : "(NULL)")           + "]";
        s += "[codigoMoneda_attr : "        + codigoMoneda_attr                                                 + "]";
        s += "[codigoMoneda : "             + codigoMoneda.toString()                                           + "]";
        s += "[glosaMoneda_attr : "         + glosaMoneda_attr                                                  + "]";
        s += "[glosaMoneda : "              + glosaMoneda.toString()                                            + "]";
        s += "[cuotasOrigen_attr : "        + cuotasOrigen_attr                                                 + "]";
        s += "[cuotasOrigen : "             + Integer.toString(cuotasOrigen)                                    + "]";
        s += "[fechaUltimoPago_attr : "     + fechaUltimoPago_attr                                              + "]";
        s += "[fechaUltimoPago : "          + (fechaUltimoPago != null ? fechaUltimoPago.toString() : "(NULL)") + "]";
        s += "[saldoCredito_attr : "        + saldoCredito_attr                                                 + "]";
        s += "[saldoCredito : "             + Double.toString(saldoCredito)                                     + "]";
        s += "[tasa_attr : "                + tasa_attr                                                         + "]";
        s += "[tasa : "                     + Double.toString(tasa)                                             + "]";
        s += "[glosaTasa_attr : "           + glosaTasa_attr                                                    + "]";
        s += "[glosaTasa : "                + glosaTasa.toString()                                              + "]";
        s += "[glosa1_attr : "              + glosa1_attr                                                       + "]";
        s += "[glosa1 : "                   + glosa1.toString()                                                 + "]";
        s += "[glosa2_attr : "              + glosa2_attr                                                       + "]";
        s += "[glosa2 : "                   + glosa2.toString()                                                 + "]";
        s += "[glosa3_attr : "              + glosa3_attr                                                       + "]";
        s += "[glosa3 : "                   + glosa3.toString()                                                 + "]";
        s += "[resultado_attr : "           + resultado_attr                                                    + "]";
        s += "[resultado : "                + String.valueOf(resultado)                                         + "]";
        s += "[totOcurrencias_attr : "      + totOcurrencias_attr                                               + "]";
        s += "[totOcurrencias : "           + Integer.toString(totOcurrencias)                                  + "]";

        if (detalleDelPago != null) {

            s += "[IteracionDetalleDelPago     : " + StringUtil.contenidoDe(detalleDelPago) + "]";

        }

        return s;
    }

}
