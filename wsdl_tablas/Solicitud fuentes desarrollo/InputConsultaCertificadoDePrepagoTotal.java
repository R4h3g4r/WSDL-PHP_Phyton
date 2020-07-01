package wcorp.serv.creditosglobales;

import java.io.Serializable;


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
public class InputConsultaCertificadoDePrepagoTotal implements Serializable {

    /**
    * Número de versión utilizado durante la serialización.
    */
   private static final long serialVersionUID = 1L;
    /**  <b>numero requerimiento (CIM)</b> */
    private String    cim_reqnum = null;
    /**  <b>Numero Operacion</b> */
    private String    caiOperacion = null;
    /**  <b>Numero Operacion</b> */
    private int       iicOperacion;
    /**  <b>Monto Prepago $</b> */
    private long      montoPrepago;

    /**
     *
     */
    public InputConsultaCertificadoDePrepagoTotal() {}

    /**
     *
     * @param cim_reqnum <b>numero requerimiento (CIM)</b>
     * @param caiOperacion <b>Numero Operacion</b>
     * @param iicOperacion <b>Numero Operacion</b>
     * @param montoPrepago <b>Monto Prepago $</b>
     */
    public InputConsultaCertificadoDePrepagoTotal(String cim_reqnum, String caiOperacion, int iicOperacion, long montoPrepago) {

        this.cim_reqnum = cim_reqnum;
        this.caiOperacion = caiOperacion;
        this.iicOperacion = iicOperacion;
        this.montoPrepago = montoPrepago;
    }

    /**
     * @return cim_reqnum <b>numero requerimiento (CIM)</b>
     */
    public String getCim_reqnum() {
        return cim_reqnum;
    }

    /**
     * @return caiOperacion <b>Numero Operacion</b>
     */
    public String getCaiOperacion() {
        return caiOperacion;
    }

    /**
     * @return iicOperacion <b>Numero Operacion</b>
     */
    public int getIicOperacion() {
        return iicOperacion;
    }

    /**
     * @return montoPrepago <b>Monto Prepago $</b>
     */
    public long getMontoPrepago() {
        return montoPrepago;
    }

    /**
     * @param cim_reqnum <b>numero requerimiento (CIM)</b>
     */
    public void setCim_reqnum(String cim_reqnum) {
        this.cim_reqnum = cim_reqnum;
    }

    /**
     * @param caiOperacion <b>Numero Operacion</b>
     */
    public void setCaiOperacion(String caiOperacion) {
        this.caiOperacion = caiOperacion;
    }

    /**
     * @param iicOperacion <b>Numero Operacion</b>
     */
    public void setIicOperacion(int iicOperacion) {
        this.iicOperacion = iicOperacion;
    }

    /**
     * @param montoPrepago <b>Monto Prepago $</b>
     */
    public void setMontoPrepago(long montoPrepago) {
        this.montoPrepago = montoPrepago;
    }

    /*******************************************************************************************************
     * toString
     *******************************************************************************************************/
    /**
     *
     */
    public String toString() {

        String s = "";

        s += "[cim_reqnum : "           + cim_reqnum.toString()             + "]";
        s += "[caiOperacion : "         + caiOperacion.toString()           + "]";
        s += "[iicOperacion : "         + Integer.toString(iicOperacion)    + "]";
        s += "[montoPrepago : "         + Long.toString(montoPrepago)       + "]";

        return s;
    }

}
