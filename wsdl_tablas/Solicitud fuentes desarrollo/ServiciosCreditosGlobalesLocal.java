package wcorp.serv.creditosglobales;

import javax.ejb.EJBException;
import javax.ejb.EJBLocalObject;

import wcorp.util.GeneralException;
import wcorp.util.bee.MultiEnvironment;


/**
 * <B>Todos los derechos reservados por Banco de Crédito e Inversiones.</B>
 * <P>
 *
 * @see ServiciosCreditosGlobalesBean
 */
public interface ServiciosCreditosGlobalesLocal extends EJBLocalObject {

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoRenovacion()
     */
    public Object ingresoRenovacion(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaOperacionCredito()
     */
    public Object consultaOperacionCredito(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaOperacionCreditoPorRut()
     */
    public Object consultaOperacionCreditoPorRut(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoCancelacion()
     */
    public Object ingresoCancelacion(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#contextualizacionIngrCancelacion()
     */
    public Object contextualizacionIngrCancelacion(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#calculoValoresCancelacion()
     */
    public Object calculoValoresCancelacion(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#reingenieriaDeCancelacionesContextualizacion()
     */
    public Object reingenieriaDeCancelacionesContextualizacion(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#reingenieriaDeCancelacionesSimulacion()
     */
    public Object reingenieriaDeCancelacionesSimulacion(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#simulacionCredito()
     */
    public Object simulacionCredito(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaCancelacion()
     */
    public Object consultaCancelacion(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaCalendarioPago()
     */
    public Object consultaCalendarioPago(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#activacionDeOpcAlDia()
     */
    public Object activacionDeOpcAlDia(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaOperClienteAmp()
     */
    public Object consultaOperClienteAmp(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#tipoDeCancelciones()
     */
    public Object tipoDeCancelciones(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#detalleDeCancelciones()
     */
    public Object detalleDeCancelciones(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaDePlcConOccurrencias()
     */
    public Object consultaDePlcConOccurrencias(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoDeDlcLlavesYCampos()
     */
    public Object ingresoDeDlcLlavesYCampos(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoUnitarioDeEvc()
     */
    public Object ingresoUnitarioDeEvc(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoUnitarioCya()
     */
    public Object ingresoUnitarioCya(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoUnitarioDeRdc()
     */
    public Object ingresoUnitarioDeRdc(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoUnitarioIcg()
     */
    public Object ingresoUnitarioIcg(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#liquidacionDeOperacionDeCreditoOpc()
     */
    public Object liquidacionDeOperacionDeCreditoOpc(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoUnitarioDeVen()
     */
    public Object ingresoUnitarioDeVen(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoUnitarioDeOperacionDeCreditoOpc()
     */
    public Object ingresoUnitarioDeOperacionDeCreditoOpc(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoRoc()
     */
    public Object ingresoRoc(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaGnp()
     */
    public Object consultaGnp(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoOperacionCreditoMultilinea()
     */
    public Object ingresoOperacionCreditoMultilinea(Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaOperacionCreditoMultilinea()
     */
    public Object consultaOperacionCreditoMultilinea(Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#modificaOperacionCreditoMultilinea()
     */
    public Object modificaOperacionCreditoMultilinea(Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#eliminaOperacionCreditoMultilinea()
     */
    public Object eliminaOperacionCreditoMultilinea(Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#cambiaEstadoOperacionCreditoMultilinea()
     */
    public Object cambiaEstadoOperacionCreditoMultilinea(Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaOperClienteSuperAmp()
     */
    public Object consultaOperClienteSuperAmp(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaOperacionesProrrogadas()
     */
    public Object consultaOperacionesProrrogadas(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#operaCredito()
     */
    public Object operaCredito(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#getNextIterator()
     */
    public int getNextIterator();

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#activacionDeOpcCtbl()
     */
    public Object activacionDeOpcCtbl(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaDlc()
     */
    public Object consultaDlc(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#cambioEstadoBoletaDlc()
     */
    public Object cambioEstadoBoletaDlc(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaBeneficiario()
     */
    public Object consultaBeneficiario(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoBeneficiario()
     */
    public Object ingresoBeneficiario(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaMasivaBoletas()
     */
    public Object consultaMasivaBoletas(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#eliminacionBeneficiarioBNF()
     */
    public Object eliminacionBeneficiarioBNF(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#modificacionBeneficiarioBNF()
     */
    public Object modificacionBeneficiarioBNF(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#ingresoConceptosPorEntidad()
     */
    public Object ingresoConceptosPorEntidad(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#modificacionConceptosPorEntidad()
     */
    public Object modificacionConceptosPorEntidad(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#eliminacionConceptosPorEntidad()
     */
    public Object eliminacionConceptosPorEntidad(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaConceptosPorEntidad()
     */
    public Object consultaConceptosPorEntidad(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#modicacionDeOpcActivada()
     */
    public Object modicacionDeOpcActivada(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaCertificadoDePrepagoTotal()
     */
    public Object consultaCertificadoDePrepagoTotal(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;

    /*******************************************************************************************************
     * consultaDeCreditosCae
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#consultaDeCreditosCae()
     */
    public Object consultaDeCreditosCae(MultiEnvironment multiEnvironment, Object ibean, Object obean) 
    throws GeneralException, EJBException;

    /*******************************************************************************************************
     * detalleCuadroDePagoCae
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#detalleCuadroDePagoCae()
     */
    public Object detalleCuadroDePagoCae(MultiEnvironment multiEnvironment, Object ibean, Object obean) 
    throws GeneralException, EJBException;
    
    
    /*******************************************************************************************************
     * ingresoSgs
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#calendarioPagoAmp()
    */
    public Object calendarioPagoAmp(MultiEnvironment multiEnvironment, Object ibean, Object obean) throws GeneralException, EJBException;


    /*******************************************************************************************************
     * activacionAlDiaEIngresoCen
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#activacionAlDiaEIngresoCen()
     */
    public Object activacionAlDiaEIngresoCen(MultiEnvironment multiEnvironment, Object ibean, Object obean)
    throws GeneralException, EJBException;    

    /*******************************************************************************************************
     * activacionCtblEIngresoCen
     *******************************************************************************************************/
    /**
     * @see ServiciosCreditosGlobalesBean#activacionCtblEIngresoCen()
     */
    public Object activacionCtblEIngresoCen(MultiEnvironment multiEnvironment, Object ibean, Object obean)
    throws GeneralException, EJBException;  
}