package wcorp.serv.creditosglobales;

import java.io.Serializable;
import java.util.Date;


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
public class IteracionDetalleDelPago implements Serializable {

    /**
    * Número de versión utilizado durante la serialización.
    */
   private static final long serialVersionUID = 1L;
    /**  <b>Fecha de Pago (attr)</b> */
    private char      fechaPago_attr;
    /**  <b>Fecha de Pago</b> */
    private Date      fechaPago = null;
    /**  <b>Capital Prepago (attr)</b> */
    private char      capitalPrepago_attr;
    /**  <b>Capital Prepago</b> */
    private long      capitalPrepago;
    /**  <b>Valor Intereses (attr)</b> */
    private char      valorIntereses_attr;
    /**  <b>Valor Intereses</b> */
    private long      valorIntereses;
    /**  <b>Comision (attr)</b> */
    private char      comision_attr;
    /**  <b>Comision</b> */
    private long      comision;
    /**  <b>Campos en blanco (attr)</b> */
    private char      capitalAdeudado_attr;
    /**  <b>Campos en blanco</b> */
    private double    capitalAdeudado;
    /**  <b>Reajustes (attr)</b> */
    private char      reajustes_attr;
    /**  <b>Reajustes</b> */
    private long      reajustes;
    /**  <b>Cargos Mora (attr)</b> */
    private char      cargosMora_attr;
    /**  <b>Cargos Mora</b> */
    private long      cargosMora;
    /**  <b>Comision Fogape (attr)</b> */
    private char      comisionFogape_attr;
    /**  <b>Comision Fogape</b> */
    private long      comisionFogape;
    /**  <b>Total Pago (attr)</b> */
    private char      totalPagos_attr;
    /**  <b>Total Pago</b> */
    private long      totalPagos;

    /**
     *
     */
    public IteracionDetalleDelPago() {}

    /**
     *
     * @param fechaPago_attr <b>Fecha de Pago attr</b>
     * @param fechaPago <b>Fecha de Pago</b>
     * @param capitalPrepago_attr <b>Capital Prepago attr</b>
     * @param capitalPrepago <b>Capital Prepago</b>
     * @param valorIntereses_attr <b>Valor Intereses attr</b>
     * @param valorIntereses <b>Valor Intereses</b>
     * @param comision_attr <b>Comision attr</b>
     * @param comision <b>Comision</b>
     * @param capitalAdeudado_attr <b>Campos en blanco attr</b>
     * @param capitalAdeudado <b>Campos en blanco</b>
     * @param reajustes_attr <b>Reajustes attr</b>
     * @param reajustes <b>Reajustes</b>
     * @param cargosMora_attr <b>Cargos Mora attr</b>
     * @param cargosMora <b>Cargos Mora</b>
     * @param comisionFogape_attr <b>Comision Fogape attr</b>
     * @param comisionFogape <b>Comision Fogape</b>
     * @param totalPagos_attr <b>Total Pago attr</b>
     * @param totalPagos <b>Total Pago</b>
     */
    public IteracionDetalleDelPago(char fechaPago_attr, Date fechaPago, char capitalPrepago_attr, long capitalPrepago, char valorIntereses_attr, long valorIntereses, char comision_attr, long comision, char capitalAdeudado_attr, double capitalAdeudado, char reajustes_attr, long reajustes, char cargosMora_attr, long cargosMora, char comisionFogape_attr, long comisionFogape, char totalPagos_attr, long totalPagos) {

        this.fechaPago_attr = fechaPago_attr;
        this.fechaPago = fechaPago;
        this.capitalPrepago_attr = capitalPrepago_attr;
        this.capitalPrepago = capitalPrepago;
        this.valorIntereses_attr = valorIntereses_attr;
        this.valorIntereses = valorIntereses;
        this.comision_attr = comision_attr;
        this.comision = comision;
        this.capitalAdeudado_attr = capitalAdeudado_attr;
        this.capitalAdeudado = capitalAdeudado;
        this.reajustes_attr = reajustes_attr;
        this.reajustes = reajustes;
        this.cargosMora_attr = cargosMora_attr;
        this.cargosMora = cargosMora;
        this.comisionFogape_attr = comisionFogape_attr;
        this.comisionFogape = comisionFogape;
        this.totalPagos_attr = totalPagos_attr;
        this.totalPagos = totalPagos;
    }

    /**
     * @return fechaPago_attr <b>Fecha de Pago attr</b>
     */
    public char getFechaPago_attr() {
        return fechaPago_attr;
    }

    /**
     * @return fechaPago <b>Fecha de Pago</b>
     */
    public Date getFechaPago() {
        return fechaPago;
    }

    /**
     * @return capitalPrepago_attr <b>Capital Prepago attr</b>
     */
    public char getCapitalPrepago_attr() {
        return capitalPrepago_attr;
    }

    /**
     * @return capitalPrepago <b>Capital Prepago</b>
     */
    public long getCapitalPrepago() {
        return capitalPrepago;
    }

    /**
     * @return valorIntereses_attr <b>Valor Intereses attr</b>
     */
    public char getValorIntereses_attr() {
        return valorIntereses_attr;
    }

    /**
     * @return valorIntereses <b>Valor Intereses</b>
     */
    public long getValorIntereses() {
        return valorIntereses;
    }

    /**
     * @return comision_attr <b>Comision attr</b>
     */
    public char getComision_attr() {
        return comision_attr;
    }

    /**
     * @return comision <b>Comision</b>
     */
    public long getComision() {
        return comision;
    }

    /**
     * @return capitalAdeudado_attr <b>Campos en blanco attr</b>
     */
    public char getCapitalAdeudado_attr() {
        return capitalAdeudado_attr;
    }

    /**
     * @return capitalAdeudado <b>Campos en blanco</b>
     */
    public double getCapitalAdeudado() {
        return capitalAdeudado;
    }

    /**
     * @return reajustes_attr <b>Reajustes attr</b>
     */
    public char getReajustes_attr() {
        return reajustes_attr;
    }

    /**
     * @return reajustes <b>Reajustes</b>
     */
    public long getReajustes() {
        return reajustes;
    }

    /**
     * @return cargosMora_attr <b>Cargos Mora attr</b>
     */
    public char getCargosMora_attr() {
        return cargosMora_attr;
    }

    /**
     * @return cargosMora <b>Cargos Mora</b>
     */
    public long getCargosMora() {
        return cargosMora;
    }

    /**
     * @return comisionFogape_attr <b>Comision Fogape attr</b>
     */
    public char getComisionFogape_attr() {
        return comisionFogape_attr;
    }

    /**
     * @return comisionFogape <b>Comision Fogape</b>
     */
    public long getComisionFogape() {
        return comisionFogape;
    }

    /**
     * @return totalPagos_attr <b>Total Pago attr</b>
     */
    public char getTotalPagos_attr() {
        return totalPagos_attr;
    }

    /**
     * @return totalPagos <b>Total Pago</b>
     */
    public long getTotalPagos() {
        return totalPagos;
    }

    /**
     * @param fechaPago_attr <b>Fecha de Pago attr</b>
     */
    public void setFechaPago_attr(char fechaPago_attr) {
        this.fechaPago_attr = fechaPago_attr;
    }

    /**
     * @param fechaPago <b>Fecha de Pago</b>
     */
    public void setFechaPago(Date fechaPago) {
        this.fechaPago = fechaPago;
    }

    /**
     * @param capitalPrepago_attr <b>Capital Prepago attr</b>
     */
    public void setCapitalPrepago_attr(char capitalPrepago_attr) {
        this.capitalPrepago_attr = capitalPrepago_attr;
    }

    /**
     * @param capitalPrepago <b>Capital Prepago</b>
     */
    public void setCapitalPrepago(long capitalPrepago) {
        this.capitalPrepago = capitalPrepago;
    }

    /**
     * @param valorIntereses_attr <b>Valor Intereses attr</b>
     */
    public void setValorIntereses_attr(char valorIntereses_attr) {
        this.valorIntereses_attr = valorIntereses_attr;
    }

    /**
     * @param valorIntereses <b>Valor Intereses</b>
     */
    public void setValorIntereses(long valorIntereses) {
        this.valorIntereses = valorIntereses;
    }

    /**
     * @param comision_attr <b>Comision attr</b>
     */
    public void setComision_attr(char comision_attr) {
        this.comision_attr = comision_attr;
    }

    /**
     * @param comision <b>Comision</b>
     */
    public void setComision(long comision) {
        this.comision = comision;
    }

    /**
     * @param capitalAdeudado_attr <b>Campos en blanco attr</b>
     */
    public void setCapitalAdeudado_attr(char capitalAdeudado_attr) {
        this.capitalAdeudado_attr = capitalAdeudado_attr;
    }

    /**
     * @param capitalAdeudado <b>Campos en blanco</b>
     */
    public void setCapitalAdeudado(double capitalAdeudado) {
        this.capitalAdeudado = capitalAdeudado;
    }

    /**
     * @param reajustes_attr <b>Reajustes attr</b>
     */
    public void setReajustes_attr(char reajustes_attr) {
        this.reajustes_attr = reajustes_attr;
    }

    /**
     * @param reajustes <b>Reajustes</b>
     */
    public void setReajustes(long reajustes) {
        this.reajustes = reajustes;
    }

    /**
     * @param cargosMora_attr <b>Cargos Mora attr</b>
     */
    public void setCargosMora_attr(char cargosMora_attr) {
        this.cargosMora_attr = cargosMora_attr;
    }

    /**
     * @param cargosMora <b>Cargos Mora</b>
     */
    public void setCargosMora(long cargosMora) {
        this.cargosMora = cargosMora;
    }

    /**
     * @param comisionFogape_attr <b>Comision Fogape attr</b>
     */
    public void setComisionFogape_attr(char comisionFogape_attr) {
        this.comisionFogape_attr = comisionFogape_attr;
    }

    /**
     * @param comisionFogape <b>Comision Fogape</b>
     */
    public void setComisionFogape(long comisionFogape) {
        this.comisionFogape = comisionFogape;
    }

    /**
     * @param totalPagos_attr <b>Total Pago attr</b>
     */
    public void setTotalPagos_attr(char totalPagos_attr) {
        this.totalPagos_attr = totalPagos_attr;
    }

    /**
     * @param totalPagos <b>Total Pago</b>
     */
    public void setTotalPagos(long totalPagos) {
        this.totalPagos = totalPagos;
    }

    /*******************************************************************************************************
     * toString
     *******************************************************************************************************/
    /**
     *
     */
    public String toString() {

        String s = "";

        s += "[fechaPago_attr : "       + fechaPago_attr                                        + "]";
        s += "[fechaPago : "            + (fechaPago != null ? fechaPago.toString() : "(NULL)") + "]";
        s += "[capitalPrepago_attr : "  + capitalPrepago_attr                                   + "]";
        s += "[capitalPrepago : "       + Long.toString(capitalPrepago)                         + "]";
        s += "[valorIntereses_attr : "  + valorIntereses_attr                                   + "]";
        s += "[valorIntereses : "       + Long.toString(valorIntereses)                         + "]";
        s += "[comision_attr : "        + comision_attr                                         + "]";
        s += "[comision : "             + Long.toString(comision)                               + "]";
        s += "[capitalAdeudado_attr : " + capitalAdeudado_attr                                  + "]";
        s += "[capitalAdeudado : "      + Double.toString(capitalAdeudado)                      + "]";
        s += "[reajustes_attr : "       + reajustes_attr                                        + "]";
        s += "[reajustes : "            + Long.toString(reajustes)                              + "]";
        s += "[cargosMora_attr : "      + cargosMora_attr                                       + "]";
        s += "[cargosMora : "           + Long.toString(cargosMora)                             + "]";
        s += "[comisionFogape_attr : "  + comisionFogape_attr                                   + "]";
        s += "[comisionFogape : "       + Long.toString(comisionFogape)                         + "]";
        s += "[totalPagos_attr : "      + totalPagos_attr                                       + "]";
        s += "[totalPagos : "           + Long.toString(totalPagos)                             + "]";

        return s;
    }

}
