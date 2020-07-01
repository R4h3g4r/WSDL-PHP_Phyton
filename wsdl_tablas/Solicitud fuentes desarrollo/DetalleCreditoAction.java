package wcorp.comportamientodepagos.ui.action;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import wcorp.bprocess.creditosgenerales.UtilitarioSimulacion;
import wcorp.comportamientodepagos.servicios.localizador.LocalizadorServicios;
import wcorp.comportamientodepagos.ui.util.RetornosComunes;
import wcorp.comportamientodepagos.util.Constantes;
import wcorp.log4j.Logger;
import wcorp.model.seguridad.SessionBCI;
import wcorp.serv.colocaciones.EstructuraVencimientosConsulta;
import wcorp.serv.colocaciones.ResultConsultaCalendarioPago;
import wcorp.serv.colocaciones.ResultConsultaOperacionCredito;
import wcorp.serv.creditosglobales.CalendarioPago;
import wcorp.util.FechasUtil;
import wcorp.util.StringUtil;
import wcorp.util.TablaValores;
import wcorp.util.bee.FactorCae;

/**
 * <b>Acción que recupera la información de detalle para una operación de crédito específica.</b>
 *
 * Registro de versiones:
 * <UL>
 *   <LI>1.0  10/10/2007 Jorge Jara (Bee): versión inicial.</LI>
 *   <LI>2.1  03/01/2008 Jorge Jara (Bee): Cambios en la firma de los métodos de <code>RetornosComunes</code>.</LI>
 *   <LI>2.2  18/01/2012 Braulio Rivas (Bee): Se agrega indicador CAE y Costo Total del Credito  </LI> 
 * </UL>
 * <P>
 *   <B>Todos los derechos reservados por Banco de Crédito e Inversiones.</B>
 * </P>
 */
public class DetalleCreditoAction extends Action {
    /**
     * Logger de la clase.
     */
    private Logger log = (Logger) Logger.getLogger(this.getClass());
    /**
     * Instancia del localizador de servicios.
     */
    private LocalizadorServicios servicios = LocalizadorServicios.obtenerInstancia();
    /**
     * Simbolo Moneda UF.
     */        
    private static final String SIMBOLO_MONEDA_UF  = "U.FOMENTO";    
    
    /**
     * Realiza una consulta para obtener el detalle de un crédito específico.  
     *
     * Registro de versiones:
     * <UL>
     *   <LI>1.0  10/10/2007 Jorge Jara (Bee): versión inicial.</LI>
     *   <LI>2.1  03/01/2008 Jorge Jara (Bee): Cambios en la firma de los métodos de <code>RetornosComunes</code>.
     *   <LI>2.2  18/01/2012 Braulio Rivas (Bee): Se agrega indicador CAE y Costo Total del Credito  </LI> 
     *   <LI>2.3  24/02/2012 Carlos Alvarez R. (Bee): Se agregan modificaciones para calculo de CAE específico de productos con ballon  </LI>  
     * </UL>
     * 
     * @param mapping Mapping de Struts.
     * @param form Formulario (bean) de Struts.
     * @param request Petición HTTP.
     * @param response Respuesta HTTP.
     * @throws Exception Excepción de ejecución para el Action.
     * @return Redirección a página para vista de detalle del crédito requerido.
     */
    public ActionForward execute(ActionMapping mapping,
                                 ActionForm form,
                                 HttpServletRequest request,
                                 HttpServletResponse response) throws Exception {
        log.debug("********** DetalleCreditoAction");
        
        DynaActionForm bean = (DynaActionForm) form;
        
        SessionBCI sessionBCI = (SessionBCI)request.getSession(false).getAttribute(Constantes.SESSION_BCI);
        if (sessionBCI == null) {
            String msj = "No existe una sesión BCI activa. Por favor ingrese nuevamente al sitio.";
            return RetornosComunes.retornoPorErrorEntrada(msj, mapping, request, log);
        }
      
        try {
            bean.set("nombreEjecutivo", sessionBCI.getColaborador().getNombreCompleto());
            bean.set("nombreCliente", sessionBCI.getCliente().getFullName());
            bean.set("rutCliente", sessionBCI.getCliente().getFullRut());
        }
        catch (Exception e) {
            String msj = "Error al obtener datos de ejecutivo y cliente desde sesión BCI.";
            return RetornosComunes.retornoPorExcepcion(e, msj, mapping, request, log);
        }
        
        String numeroOperacion = request.getParameter("numeroOperacion");
        
        // Obtener el número de operación
        if ((numeroOperacion == null) || (numeroOperacion.trim().equals(""))) {
            String msj = "Error en ID de operación solicitada: " + numeroOperacion;
            return RetornosComunes.retornoPorErrorEntrada(msj, mapping, request, log);
        }
        bean.set("numeroOperacion", numeroOperacion);
        
        try {
        	log.debug("Consulta Operacion de Crédito");
            ResultConsultaOperacionCredito detalle = servicios.consultaOperacionCredito(numeroOperacion);
        	
        	ArrayList mesesNoPago = new ArrayList();
        	if (detalle.getEstructura_vencimientos() != null 
        	&& detalle.getEstructura_vencimientos().length > 0){
        		for (int i = 0; i < detalle.getEstructura_vencimientos().length; i++) {
        			EstructuraVencimientosConsulta estructura = detalle.getEstructura_vencimientos()[i];
        			if (estructura.getValorVctoCalculoBase() != null 
        			&& estructura.getValorVctoCalculoBase().equals("NP")){
        				Date vencimiento = estructura.getFechaPrimerVcto();
        				if (log.isDebugEnabled()){
        					log.debug("Agregando mes no pago: " + (vencimiento.getMonth() + 1));
        				}
        				mesesNoPago.add(new Integer(vencimiento.getMonth() + 1));
        			}
				}
        	}

        	
            boolean muestraCAE = true;
            String tipoOperacion = detalle.getTipoOperacion();
            String[] productosCAE = StringUtil.divide(TablaValores.getValor(Constantes.
            SIMULA_CURSA_CREDITO_PARAMETROS,
                    "productosSinCAE",
                    "codigos"),",");
           
            for (int i = 0; i < productosCAE.length; i++) {
				String codigoProducto = productosCAE[i];
				if (tipoOperacion.equals(codigoProducto)){
					muestraCAE = false;
					break;
				}
			}
            if (log.isDebugEnabled()){
            	log.debug("tipoOperacion: " + tipoOperacion);
            	log.debug("muestraCAE: " + muestraCAE);
            }
            
        	log.debug("Consulta Calendario de Pago");

            
            double costoTotalCredito = 0;
            double porcentajeCAE = 0;
            
            if (muestraCAE){
                
	            ResultConsultaCalendarioPago resultCalendarioPago = servicios.
	            consultaCalendarioPago(numeroOperacion);
	            
                String tipoProducto = resultCalendarioPago.getTipoOperacion() + resultCalendarioPago.getCodigoAuxiliar();                
                
                boolean productoCuoton = false;
                String[] productoConCuoton = StringUtil.divide(TablaValores.getValor(Constantes.
                                               SIMULA_CURSA_CREDITO_PARAMETROS,
                                               "productoConCuoton",
                                               "codigos"),",");
                                                                                                                                  
               for (int i = 0; i < productoConCuoton.length; i++) {
                   String codigoProducto = productoConCuoton[i];
                   if (tipoProducto.equals(codigoProducto)){
                       productoCuoton = true;
                       break;
                   }
               }                    
                
                int numeroCalendario = 0;

                log.debug("# de Pagos (Calendario de Pagos) : " + resultCalendarioPago.getCalendario().length);
                
                if(resultCalendarioPago.getCalendario() != null && resultCalendarioPago.getCalendario().length > 0){
                    for (int i = 0; i < resultCalendarioPago.getCalendario().length; i++) {
                        if (resultCalendarioPago.getCalendario()[i] == null) {
                            break;
                        }
                        numeroCalendario = i + 1;
                    }
                }
                CalendarioPago[] calendarioPago = new CalendarioPago[numeroCalendario];                
                
                double sumaMontoTotalCredito = 0;
                int largo = calendarioPago.length;
                log.debug("Length de Calendario de Pago : [" + largo + "]");
                for (int i = 0; largo > 0 && i < largo; i++) {
                    calendarioPago[i] = new CalendarioPago();
                    if (log.isDebugEnabled()) {
                        log.debug("Coloca valores del calendario de pago, i = " + i);
	            }

                    calendarioPago[i].setNumVencimiento(resultCalendarioPago.getCalendario()[i].getNumVencimiento());
                    log.debug("numVencimiento " + resultCalendarioPago.getCalendario()[i].getNumVencimiento());

                    calendarioPago[i].setCuota(resultCalendarioPago.getCalendario()[i].getCuota());
                    log.debug("cuota " + resultCalendarioPago.getCalendario()[i].getCuota());

                    calendarioPago[i].setComision(resultCalendarioPago.getCalendario()[i].getComision());
                    log.debug("Comision " + resultCalendarioPago.getCalendario()[i].getComision());

                    calendarioPago[i].setCapitalSigCuota(resultCalendarioPago.getCalendario()[i].getCapitalSigCuota());
                    log.debug("capitalSigCuota " + resultCalendarioPago.getCalendario()[i].getCapitalSigCuota());

                    calendarioPago[i].setIntereses(resultCalendarioPago.getCalendario()[i].getIntereses());
                    log.debug("Intereses " + resultCalendarioPago.getCalendario()[i].getIntereses());

                    calendarioPago[i].setFecVencPago(resultCalendarioPago.getCalendario()[i].getFecVencPago());
                    log.debug("Fecha vencimiento de pago " + resultCalendarioPago.getCalendario()[i].getFecVencPago());

                    if (productoCuoton) {
                        if (i == largo -1) {
                            sumaMontoTotalCredito += resultCalendarioPago.getCalendario()[i].getCapitalSigCuota();
			            		}
                        else {
                            sumaMontoTotalCredito += resultCalendarioPago.getCalendario()[i].getCuota();
			            	}
						      }
                    else {
                        sumaMontoTotalCredito += resultCalendarioPago.getCalendario()[i].getCuota();
		            }
	            }
	            
                costoTotalCredito = sumaMontoTotalCredito;
	            
	            Date primerVencimiento = null;
	            
	            if (primerVencimiento == null && calendarioPago != null && calendarioPago.length > 0){
	            	primerVencimiento = calendarioPago[0].getFecVencPago();
	            }
	            if (log.isDebugEnabled()){
	            	log.debug("Costo Total del Credito: " + costoTotalCredito);
                    log.debug("Tipo de tasa: " + resultCalendarioPago.getTipoTasa());
                    log.debug("Tipo de producto: " + resultCalendarioPago.getTipoOperacion() + resultCalendarioPago.getCodigoAuxiliar());
	            }
	            log.debug("Calcular CAE");
	

                double tasaInteres = resultCalendarioPago.getTasaInteres();
                
                boolean calculoConCalendario = false;
                
                String[] productosCalculoConCalendario = StringUtil.divide(TablaValores.getValor(Constantes.
                                              SIMULA_CURSA_CREDITO_PARAMETROS,
                                              "productosCalculoConCalendario",
                                              "codigos"),",");
                                                                               
                for (int i = 0; i < productosCalculoConCalendario.length; i++) {
                    String codigoProducto = productosCalculoConCalendario[i];
                    if (tipoProducto.equals(codigoProducto)){
                        calculoConCalendario = true;
                        break;
                    }
                }  
                
                boolean productoTasaEspecial = false;
                String[] productosTasaEspecial = StringUtil.divide(TablaValores.getValor(Constantes.
                                               SIMULA_CURSA_CREDITO_PARAMETROS,
                                               "productosTasaEspecial",
                                               "codigos"),",");
                                                                                                                                  
               for (int i = 0; i < productosTasaEspecial.length; i++) {
                   String codigoProducto = productosTasaEspecial[i];
                   if (tipoProducto.equals(codigoProducto)){
                       productoTasaEspecial = true;
                       break;
                   }
               }                
                
                
               float tasaCalculoCAE = 0;
                if (productoTasaEspecial) {
                    log.debug("Valor Spread Cred Original     : " + detalle.getTasaSprea());
                    double tasaTab = UtilitarioSimulacion.getValorMoneda("TBAA", FechasUtil.diaHabilAnteriorAl(new Date()));
                    log.debug("Valor Tasa TAB360     : " + tasaTab);
                    tasaCalculoCAE = new Float(detalle.getTasaSprea() + tasaTab).floatValue();
                    log.debug("Valor Tasa Final     : " + tasaCalculoCAE);                    
                }
	
	            double gastosNotarialesValor = detalle.getGastosNotario();
	            Date fechaCurse = detalle.getFechaCurse();
	            
                if (calculoConCalendario) {
                    
                    double paridad = 1;
                    if (detalle.getGlosaMoneda().trim().equalsIgnoreCase(SIMBOLO_MONEDA_UF)) {
                        paridad = UtilitarioSimulacion.getValorUF(fechaCurse);
                        if (log.isDebugEnabled()) {
                            log.debug("Paridad UF Moneda: " + paridad);
                        }
                    }                   
	            
    	            porcentajeCAE  = FactorCae.obtenerIndiceCAE(resultCalendarioPago.getMontoCredito()/paridad,
                                    detalle.getTotalCuotasOrig(),
                                    tasaCalculoCAE,
                                    primerVencimiento,
    	                            resultCalendarioPago.getImpuesto()/paridad, 
                                    resultCalendarioPago.getValorSeguro()/paridad,
                                    gastosNotarialesValor/paridad,
    	                            mesesNoPago, fechaCurse, calendarioPago);         
                
                }
                else {
                    
	            porcentajeCAE  = FactorCae.obtenerIndiceCAE(resultCalendarioPago.getMontoCredito(),
	                        detalle.getTotalCuotasOrig(),
	                            new Float(tasaInteres).floatValue(),
                                primerVencimiento,
	                        resultCalendarioPago.getImpuesto(),
	                        resultCalendarioPago.getValorSeguro(),
	                        gastosNotarialesValor,
	                        mesesNoPago, fechaCurse);               
	            
                }
	            
	            if (log.isDebugEnabled()){
	            	log.debug("Valor  CAE: " + porcentajeCAE);
	            } 
            }
            
            /* String */ bean.set("tipoOperacion", detalle.getGlosaTipoOperacion());
            /* String */ bean.set("moneda", detalle.getGlosaMoneda());
            /* Double */ bean.set("montoCredito", new Double(detalle.getMontoCredito()));
            /* Double */ bean.set("saldoCredito", new Double(detalle.getSaldoCredito()));
            /* Date */ bean.set("fechaCurse", detalle.getFechaCurse());
            /* Date */ bean.set("fechaContable", detalle.getFechaCurseContab());
            /* Date */ bean.set("fechaColocacion", detalle.getFechaComputacional());
            /* Integer */bean.set("numVencimientosVigentes", new Integer(detalle.getVctosVigentes()));
            /* Integer */bean.set("numVencimientosOriginales", new Integer(detalle.getTotalCuotasOrig()));
            /* Double */ bean.set("montoProximoVencimiento", new Double(detalle.getMontoProxCuota()));
            /* Double */ bean.set("montoReajusteDevengado", new Double(detalle.getReajustesDevengado()));
            /* Date */ bean.set("fechaProximaCuota", detalle.getFechaProxCuota());
            /* Date */ bean.set("fechaVencimientoMax", detalle.getFechaVencimientoMaximo());
            /* String */ bean.set("condicionGarantia", detalle.getCondicionGar());
            /* Date */ bean.set("fechaDevengo", detalle.getFechaDevengo());
            /* String */ bean.set("indSituacionContable", detalle.getSituacionContableLdc());
            /* Integer */bean.set("proximaCuotaAPagar", new Integer(detalle.getProximaCuotaPagar()));
            /* String */ bean.set("tipoCargo", detalle.getCargo());
            /* Double */ bean.set("spread", new Double(detalle.getTasaSprea()));
            /* String */ bean.set("tipoTasaInteres", detalle.getTipoTasaDocumento());
            /* Double */ bean.set("tasaInteres", new Double(detalle.getTasaInteresDocumento()));
            /* Double */ bean.set("montoIntereses", new Double(servicios.montoInteresesCredito(numeroOperacion)));
            /* Double */ bean.set("porcentajeCAE", new Double(porcentajeCAE));            
            /* Double */ bean.set("costoTotalCredito", new Double(costoTotalCredito));
            /* String */ bean.set("muestraCAE", new Boolean(muestraCAE));            
            
        }
        catch (Exception e) {
            String msj = "Error al obtener detalle del crédito (consulta).";
            return RetornosComunes.retornoPorExcepcion(e, msj, mapping, request, log);
        }
        
        bean.set("fechaHora", new Date());
        log.debug("********** Salio DetalleCreditoAction");
        return mapping.findForward("detalle_credito");
    }
}
