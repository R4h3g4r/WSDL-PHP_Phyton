<?xml version="1.0" encoding="ISO-8859-1"?>
<bcimenu>
    <opcion id="cierre">
        <opcion id="cierre_sesion">
            <titulo>Cerrar Sesi�n</titulo>
            <url>vistaCierre</url>
            <permisos>
				<suficientes>EsCliente</suficientes>
			</permisos>		
        </opcion>
    </opcion>
    <opcion id="accesosDirectos">
        <permisos>
			<suficientes>EsCliente</suficientes>
		</permisos>			
        <opcion id="acceso_seguridad">
            <titulo>Seguridad</titulo>
            <url>https://bciimg.bci.cl/sitioseguro/seguridad_tbanc_act.html</url>
			<opcion id="seguridad">
				<titulo>Seguridad</titulo>
				<url>/seguridadwls/webphone/webphone.do?dispatch=seguridadEmergencia</url>
				<permisos>
					<suficientes>EsCliente</suficientes>
				</permisos>
				<opcion id="emergencias">
					<titulo>Emergencias</titulo>
					<opcion id="seg_emer_bloq_onp">
						<titulo>Bloqueos y Orden De No Pago</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_emergencias_BloqueosOrdenNoPago</url>
					</opcion>
					<opcion id="seg_emer_ins_onp">
						<titulo>Instructivo Orden de No Pago</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_emergencias_InfoOrdenNoPago</url>
					</opcion>
					<opcion id="seg_emer_ins_bloq_tdc">
						<titulo>Instructivo Bloqueo de Tarjetas</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_emergencias_InfoBloqueoTarjeta</url>
					</opcion>
					<opcion id="seg_emer_ins_bloq_claves">
						<titulo>Instructivo Bloqueo de Claves</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_emergencias_InfoBloqueoClave</url>
					</opcion>
				</opcion>
				<opcion id="clave_internet">
					<titulo>Claves  TBanc Internet</titulo>
					<opcion id="estado_claves">
						<titulo>Estado de Claves</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_claves_Estado</url>
					</opcion>
					<opcion id="que_es_clave_internet">
						<titulo>�Qu� es Clave Internet?</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_claveinet_Descripcion</url>
					</opcion>
					<opcion id="cambio_clave_internet">
						<titulo>Cambiar Clave Internet</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_claveinet_cambioClave</url>			
					</opcion>
					<opcion id="desbloqueo_clave_telefonica">
						<titulo>Desbloqueo de Clave Telef�nica</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_seg_des_clave_tel</url>					
					</opcion>
				</opcion>
				<opcion id="bci_movilpass">
					<titulo>Tbanc Seguridad</titulo>
					<opcion id="sincronizacion_movilpass">
						<titulo>Pol�ticas de Seguridad</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_politicas</url>
					</opcion>
				</opcion>
				<opcion id="clave_telefonica">
					<titulo>Tbanc Multipass</titulo>
					<opcion id="bloqueo_multipass">
						<titulo>Bloquear Multipass</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_multipass_bloqueo</url>					
					</opcion>
					<opcion id="emg_que_es_multipass">
						<titulo>�Qu� es TbancMultipass?</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_multipass_Descripcion</url>
					</opcion>
					<opcion id="emg_estado_multipass">
						<titulo>Estado TbancMultipass</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_multipass_Estado</url>				
					</opcion>
					<opcion id="emg_solicitar_multipass">
						<titulo>Solicitar TbancMultipass</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_multipass_solicitud</url>
					</opcion>
					<opcion id="emg_configuracion_multipass">
						<titulo>Configuraci�n TbancMultipass</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_multipass_configuracion</url>					
					</opcion>
					<opcion id="emg_sincronizacion_multipass">
						<titulo>Sincronizaci�n TbancMultipass</titulo>
						<url>/cl/tbanc/aplicaciones/personas/seguridad/sincronizarMultipass.jsf</url>					
					</opcion>				
				</opcion>
				<opcion id="bloqtdd">
					<titulo>Habilitaci�n/Deshabilitaci�n uso Tarjeta D�bito</titulo>
					<url>/bcinetwls/tarjetas/tdebito/bloquearTDDCliente.do</url>
				</opcion>
			</opcion>			
        </opcion>
        <opcion id="acceso_emergencias">
            <titulo>Emergencias</titulo>
            <url>/cl/bci/aplicaciones/menu/tbanc/vistas/emergencia/homeEmergencias.jsf</url>
			<opcion id="emg_seguridad">
				<titulo>Seguridad</titulo>
            <url>/seguridadwls/webphone/webphone.do?dispatch=seguridadEmergencia</url>
				<permisos>
					<suficientes>EsCliente</suficientes>
				</permisos>
				<opcion id="emergencias">
					<titulo>Emergencias</titulo>
					<opcion id="emer_bloq_onp">
						<titulo>Bloqueos y Orden De No Pago</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_emergencias_BloqueosOrdenNoPago</url>
					</opcion>
					<opcion id="emer_ins_onp">
						<titulo>Instructivo Orden de No Pago</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_emergencias_InfoOrdenNoPago</url>
					</opcion>
					<opcion id="emer_ins_bloq_tdc">
						<titulo>Instructivo Bloqueo de Tarjetas</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_emergencias_InfoBloqueoTarjeta</url>
					</opcion>
					<opcion id="emer_ins_bloq_claves">
						<titulo>Instructivo Bloqueo de Claves</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_sye_emergencias_InfoBloqueoClave</url>
					</opcion>
				</opcion>
			</opcion>	
        </opcion>
        <opcion id="acceso_mi_perfil">
            <titulo>Mi Perfil</titulo>
            <url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_clientes_perfil</url>
        </opcion>
        <opcion id="acceso_solicitudes">
            <titulo>Servicio Atenci�n al cliente</titulo>
            <url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_clientes_contacto</url>
        </opcion>
    </opcion>
    <opcion id="pestanas">
		<opcion id="mi_banco">
            <titulo>Mi Banco</titulo>
            <url>/cl/bci/aplicaciones/menu/tbanc/vistas/inicio/miBanco.jsf</url>
            <permisos>
				<suficientes>EsCliente</suficientes>
			</permisos>	
			<opcion id="super_cartola">
				<titulo>Supercartola</titulo>
				<url>/cl/bci/aplicaciones/menu/vistas/inicio/vistaSupercartolaTbanc.jsf</url>
			</opcion>				
            <opcion id="cct">
                <titulo>Cuenta Corriente</titulo>
                <permisos>
					<suficientes>CtaCorrentistaoCtaPrimista</suficientes>
				</permisos>				
				<opcion id="cart">
                    <titulo>Cartola</titulo>						
                    <opcion id="saldo_ult_mov">
                        <titulo>Saldo y �ltimos Movimientos</titulo>
                        <url>/cl/bci/aplicaciones/cartola/cuenta/vistaMiniCartolaTbanc.jsf</url>
                    </opcion>
                    <opcion id="cart_act">
                        <titulo>Cartola Actual e Hist�rica</titulo>
                        <url>/cl/bci/aplicaciones/cartola/cuenta/cartolaCuentaTbanc.jsf</url>
                    </opcion>
                </opcion>
				<opcion id="cheque">
                    <titulo>Cheques</titulo>	
					<permisos>
						<suficientes>CtaCorrentista</suficientes>
					</permisos>				
					<opcion id="cns_talonarios">
						<titulo>Consulta Talonarios</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_cc_Activacion</url>
					</opcion>	
					<opcion id="talonario_domicilio">
						<titulo>Solicitud Talonarios</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_cc_SolTalonario</url>
					</opcion>
					<opcion id="talonario_automatico">
						<titulo>Solicitud de Talonario Autom�tico</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_cc_TalonarioAutomatico</url>
					</opcion>
					<opcion id="cns_cheque">
						<titulo>Visualizaci�n de Cheques</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_bci_bel_cc_Visualizacion_Cheques&amp;objeto={#PRODUCTO}&amp;height=500</url>
					</opcion>					
				</opcion>				
				<opcion id="depositos">
					<titulo>Im�genes de boleta de dep�sito</titulo>
					<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_bci_bel_cc_Visualizacion_Boletas</url>
				</opcion>				
				<opcion id="sol_reposiciones">
					<titulo>Solicitudes y Reposiciones</titulo>
					<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_cc_SolicitudesReposiciones</url>
					<permisos>
						<suficientes>CtaCorrentista</suficientes>
					</permisos>
				</opcion>				
			   <opcion id="imp_certificados">
					<titulo>Impresi�n de Certificados</titulo>
					<url>/cl/bci/aplicaciones/solicitudes/certificados/solicitudCertificados.jsf</url>
				</opcion>
                <opcion id="linea_emergencia">
                    <titulo>L�nea de Emergencia</titulo>
                    <url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_bci_bel_cc_Linea_Emergencia</url>
					<permisos>
						<suficientes>CtaCorrentistaConLS</suficientes>
					</permisos>
                </opcion>					
            </opcion>
            <!--opcion id="cta_prima">
                <titulo>Cuenta Prima</titulo>			
                <permisos>
					<suficientes>CtaPrimista</suficientes>
				</permisos>	
				<opcion id="cart_prima">
					<titulo>Cartola</titulo>
					<url>/cl/bci/aplicaciones/cartola/cuenta/cartolaCuenta.jsf</url>
				</opcion>					
				<opcion id="minicartola_prima">
					<titulo>Mini Cartola</titulo>
					<url>/cl/bci/aplicaciones/cartola/cuenta/vistaMiniCartola.jsf</url>
				</opcion>				
				<opcion id="cart_hist_prima">
					<titulo>Cartola Hist�rica</titulo>
					<url>/cl/bci/aplicaciones/cartola/historico/foliosHistorica.jsf</url>
				</opcion>					
            </opcion-->			
            <opcion id="linea_sobregiro">
                <titulo>L�nea de Sobregiro</titulo>			
                <permisos>
					<suficientes>CtaCorrentistaConLS</suficientes>
				</permisos>
                <opcion id="saldo_mov_lsg">
                    <titulo>Cartola L�nea de Sobregiro</titulo>
                    <url>/cl/bci/aplicaciones/cartola/lineasobregiro/cartolaLineaSobregiro.jsf</url>
					</opcion>
                <opcion id="pago_abono_lsg">
                    <titulo>Abono L�nea de Sobregiro</titulo>
                    <url>/cl/bci/aplicaciones/pagos/lineasobregiro/vistaPagoAbonoLSG.jsf</url>
					</opcion>	
				<opcion id="solicitar_lsg">
					<titulo>Solicitar L�nea de Sobregiro</titulo>
					<url>/seguridadwls/CheckSession?servicio=SolLineaSobregiro&amp;canal=110</url>					
					</opcion>					
                <opcion id="aumento_cupo_lsg">
                    <titulo>Aumento de Cupo</titulo>
                    <url>/cl/bci/aplicaciones/solicitudes/lineasobregiro/aumentoCupo.jsf</url>
					</opcion>
            </opcion>
			<opcion id="cuentas_vinculadas">
				<titulo>Cuentas Vinculadas</titulo>								
				<opcion id="cta_vinc_mandato">
					<titulo>Generar Cuentas Vinculadas</titulo>
					<url>/cuentasvinculadaswls/Inscripcion?paso=0</url>										
				</opcion>
				<opcion id="cta_vinc_inscrita">
					<titulo>Consulta Cuentas Inscritas</titulo>
					<url>/cuentasvinculadaswls/Consulta?paso=0</url>			
				</opcion>					
			</opcion>
			<opcion id="seguros">
				<titulo>Seguros</titulo>
				<opcion id="contratar_seguro">
					<titulo>Contratar Seguro</titulo>				
					<opcion id="ctr_seg_ap">
						<titulo>Accidentes Personales</titulo>
						<url>/cl/bci/aplicaciones/productos/seguros/accidentesPersonales/vtaSeguroAPE.jsf</url>
					</opcion>
					<opcion id="ctr_seg_vit">
						<titulo>Seguro Vital</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_clientes_bel_seguros_venta_vital</url>
					</opcion>
					<opcion id="ctr_seg_hog">
						<titulo>Seguro Hogar</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_clientes_bel_seguros_venta_hogar</url>
					</opcion>
					<opcion id="ctr_seg_mul">
						<titulo>Seguro Multiprotecci�n</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_clientes_bel_seguros_venta_multiproteccion</url>
					</opcion>
					<opcion id="ctr_seg_tot">
						<titulo>Seguro Protecci�n Total</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_clientes_bel_seguros_venta_pro_tot</url>
					</opcion>					
					<opcion id="ctr_seg_aut">
						<titulo>Contrata Seguro Automotriz</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_clientes_bel_seguros_cotizacion_automotriz</url>
					</opcion>					
				</opcion>
				<opcion id="consultar_polizas">
					<titulo>Consultar P�lizas</titulo>
					<opcion id="cns_pol_vig">
						<titulo>P�lizas Vigentes</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_seguros_PolizasVigentes</url>
					</opcion>
					<opcion id="cns_soap">
						<titulo>Consultar SOAP</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_clientes_seg_soap_consulta_bci</url>
					</opcion>					
				</opcion>
				<opcion id="decla_salud">
					<titulo>Declaraci�n de Salud</titulo>
					<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_cliente_bci_declaracionpersonaldesalud</url>
				</opcion>
			</opcion>			
	   </opcion>
        <opcion id="pagos_servicios">
            <titulo>Pagos y Servicios</titulo>
            <url>/cl/bci/aplicaciones/menu/tbanc/vistas/pagosServicios/homePagosServicios.jsf</url>
            <permisos>
				<suficientes>EsCliente</suficientes>
			</permisos>
            <opcion id="pago_de_cuentas">
                <titulo>Pago de Cuentas y Servicios</titulo>
                <opcion id="pago_en_linea">
                    <titulo>Pago en L�nea</titulo>
                    <url>/bcinetwls/gestorpagostransferencias/GetMisPels.do</url>		
                </opcion>			
                <opcion id="cartola_de_pagos">
                    <titulo>Cartola de Pagos</titulo>
                    <url>/bcinetwls/consolidados/mostrarCartola.do?paso=INICIO&amp;tipo=efectuados&amp;refrescar=SI&amp;nuevoModelo=on</url>									
                </opcion>		
                <opcion id="pac">
                    <titulo>Pago Autom�tico de Cuentas</titulo>
                    <url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_bci_pyt_pagos_C</url>							
                </opcion>			
                <opcion id="PAT">
                    <titulo>PatPass-Pago Autom�tico con Tarjeta</titulo>
                    <url>/common/pago.htm</url>
                    <permisos>
						<suficientes>ClienteTC</suficientes>
					</permisos>
                </opcion>			
            </opcion>
            <opcion id="servicio_recargas">
                <titulo>Servicios de Recargas</titulo>
                <opcion id="recarga_celular">
                    <titulo>Celular</titulo>
                    <url>/bcinetwls/recargacelulares/obtieneOperadoras.do</url>			
                </opcion>	
                <opcion id="celulares_frecuente">
                    <titulo>Celulares Frecuentes</titulo>
                    <url>/bcinetwls/recargacelulares/eliminaAlias.do?accion=inicio</url>			
                </opcion>					
                <opcion id="recarga_tarjeta_bip">
                    <titulo>Tarjeta BIP!</titulo>
                    <url>/bcinetwls/transantiago/inicioRecargaTarjetaBip.do</url>									
                </opcion>	
                <opcion id="bip_frecuente">
                    <titulo>BIP! Frecuentes</titulo>
                    <url>/bcinetwls/transantiago/tarjetasBipFrecuentes.do?metodo=obtenerTarjetas</url>			
                </opcion>				
            </opcion>			
            <opcion id="pagos_productos_tbanc">
                <titulo>Pagos Productos TBanc</titulo>
                <opcion id="pago_lsg">
                    <titulo>L�nea de Sobregiro</titulo>
                    <url>/cl/bci/aplicaciones/pagos/lineasobregiro/vistaPagoAbonoLSG.jsf</url>
                <permisos>
						<suficientes>CtaCorrentistaConLS</suficientes>
					</permisos>		
                </opcion>
				<opcion id="pago_tdc">
                    <titulo>Tarjetas de Credito</titulo>						
                    <opcion id="pago_tdc_nac">
                        <titulo>Tarjeta de Cr�dito Nacional</titulo>
                        <url>/bcinetwls/tarjetasonline/pagoNacionalAction.do?method=solicitar&amp;objeto={#PRODUCTO}</url>
                    </opcion>
                    <opcion id="pago_tdc_inter">
                        <titulo>Tarjeta de Cr�dito Internacional</titulo>
                        <url>/bcinetwls/tarjetasonline/pagoDeudaInternacionalAction.do?method=solicitar&amp;objeto={#PRODUCTO}</url>
						</opcion>
                </opcion>
                <opcion id="pago_credito_consumo">
                    <titulo>Cuota Flexible Cr�dito Consumo</titulo>
                    <url>/creditoswls/PagoFlexible?paso=0</url>
                </opcion>
                <opcion id="pago_hipotecario">
                    <titulo>Cr�dito Hipotecario</titulo>
                    <url>/bcinetwls/hipotecario/pagoDividendos/pagoDividendosAction.do?accion=inicio&amp;paginaDestino=inicio</url>
                </opcion>
            </opcion>	
			<opcion id="servicios_remotos">
                <titulo>Servicios Remotos</titulo>			
				<opcion id="act_direcciones">
                    <titulo>Actualiza tus Direcciones</titulo>
                    <url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_actualiza_dir</url>
                </opcion>				
                <opcion id="sol_mensajeo">
                    <titulo>Solicitud Mensajero</titulo>
                    <url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_cc_Mensajero</url>
                </opcion>
				<opcion id="remoto_talonario_automatico">
					<titulo>Solicitud de Talonario Autom�tico</titulo>
					<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_cc_SolTalonario</url>
				</opcion>
            </opcion>
            <opcion id="alertas">
                <titulo>Alertas</titulo>			
				<opcion id="tbancmail_suscrip">
					<titulo>Tbancmail Suscripciones</titulo>
					<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_cc_TBancMail</url>
				</opcion>				
				<!--opcion id="aviso_deposito_sueldo">
					<permisos>
						<suficientes>CtaCorrentista</suficientes>
					</permisos>	
                    <titulo>Aviso Dep�sito Sueldo</titulo>
                    <url>/bcinetwls/bciMovil/solicitud.do?method=despliega</url>
				</opcion-->				
			</opcion>
        </opcion>
        <opcion id="ttff">
            <titulo>Transferencias</titulo>
            <url>/cl/bci/aplicaciones/menu/tbanc/vistas/transferencias/homeTransferencias.jsf</url>
            <permisos>
				<suficientes>EsCliente</suficientes>
			</permisos>
            <opcion id="ttff2">
                <titulo>Transferencias</titulo>
                <opcion id="transf_fondos">
                    <titulo>Transferir Fondos</titulo>
                    <url>/bcinetwls/gestorpagostransferencias/GetNuevaTransferencia.do</url>				
                </opcion>			
                <opcion id="transf_prog">
                    <titulo>Transferencias Programadas</titulo>
                    <url>/bcinetwls/gestorpagostransferencias/GetMisProgramaciones.do</url>
					<permisos>
						<suficientes>CtaCorrentistaoCtaPrimista</suficientes>
					</permisos>										
                </opcion>				
                <opcion id="mis_dest">
                    <titulo>Mis Destinatarios</titulo>
                    <url>/bcinetwls/gestorpagostransferencias/GetMisAliasTransferencia.do</url>									
                </opcion>			
            </opcion>
            <opcion id="cartolas_ttff">
                <titulo>Cartolas</titulo>
                <opcion id="cartolas_ttff_realizadas">
                    <titulo>Transferencias Realizadas</titulo>
                    <url>/consolidadoswls/CartolaPagos?paso=INICIO&amp;tipo=efectuados&amp;refrescar=SI&amp;nuevoModelo=on</url>														
                </opcion>			
                <opcion id="cartolas_ttff_recibidas">
                    <titulo>Transferencias Recibidas</titulo>
                    <url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_bci_pyt_abonos_recibidos</url>														
                <permisos>
						<suficientes>CtaCorrentistaoCtaPrimista</suficientes>
					</permisos>																
                </opcion>			
            </opcion>
			<opcion id="aporte_solidario">
                <titulo>Aporte Solidario</titulo>
                <url>/bcinetwls/gestorpagostransferencias/GetNuevaTransferencia.do?accion=Beneficio</url>
					<permisos>
						<suficientes>CtaCorrentista</suficientes>
					</permisos>														
			</opcion>
        </opcion>
        <opcion id="tarjetas">
			<titulo>Tarjetas de Cr�dito</titulo>
			<url>/cl/bci/aplicaciones/menu/tbanc/vistas/inicio/homeTarjeta.jsf</url>
			<permisos>
				<suficientes>EsCliente</suficientes>
			</permisos>
			<opcion id="tdc">
				<permisos>
					<suficientes>ClienteTC</suficientes>
				</permisos>
				<opcion id="estados_cuenta_tdc">
					<titulo>Estados de Cuenta</titulo>
					<opcion id="saldo_tdc">
						<titulo>Saldo</titulo>
						<url>/bcinetwls/tarjetasonline/ConsultaSaldoAction.do?method=obtieneResumenSaldo&amp;objeto={#PRODUCTO}</url>
					</opcion>
					<opcion id="ultimos_mov_tdc">
						<titulo>Ultimos Movimientos</titulo>
						<url>/bcinetwls/tarjetasonline/MovNoFacturadosAction.do?method=mostrarUltimosMovimientos&amp;nacint=N&amp;objeto={#PRODUCTO}</url>
					</opcion>
					<opcion id="estado_cuenta_nacional">
						<titulo>Estado de Cuenta Nacional</titulo>
						<url>/cl/bci/aplicaciones/tarjetas/estadocuenta/nacional/vista/vistaEstadoCuentaNacional.jsf</url>
					</opcion>
					<opcion id="estado_cuenta_inter">
						<titulo>Estado de Cuenta Internacional</titulo>
						<url>/cl/bci/aplicaciones/tarjetas/estadocuenta/internacional/vista/vistaEstadoCuentaInternacional.jsf</url>
					</opcion>	
					<opcion id="estado_cuenta_hist">
						<titulo>Estados de Cuenta Hist�ricos</titulo>
						<url>/cl/bci/aplicaciones/tarjetas/estadocuenta/historico/vista/vistaEstadoCuentaHistorico.jsf</url>
					</opcion>				
				</opcion>
				<opcion id="pago_abono">
					<titulo>Pago/Abono</titulo>	
					<opcion id="pago_deuda_nacional">
						<titulo>Pago deuda Nacional</titulo>
						<url>/bcinetwls/tarjetasonline/pagoNacionalAction.do?method=solicitar&amp;objeto={#PRODUCTO}</url>
					</opcion>
					<opcion id="pago_deuda_internacional">
						<titulo>Pago deuda Internacional</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_bci_bel_tc_PagoDeudaInternacional&amp;objeto={#PRODUCTO}</url>
					</opcion>
				</opcion>
				<opcion id="avance_a_cct">
					<titulo>Avance a Cuenta Corriente</titulo>
					<url>/bcinetwls/tarjetasonline/avanceEfectivoAction.do?method=solicitar&amp;objeto={#PRODUCTO}</url>
				</opcion>
				<opcion id="efectivo_cuotas">
					<titulo>Efectivo en Cuotas</titulo>
					<url>/bcinetwls/tarjetasonline/avanceCuotasAction.do?method=solicitar&amp;objeto={#PRODUCTO}</url>									
				</opcion>
				<!--opcion id="tdc_cambio_fecha">
					<titulo>Cambio Fecha Pago</titulo>
					<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_tc_cambioFechaPago&amp;objeto=000{#PRODUCTO}</url>
				</opcion-->
				<opcion id="pat">
					<titulo>PatPass</titulo>
					<url>/common/pago.htm</url>
				</opcion>				
				<opcion id="tarjeta_virtual">
					<titulo>Tarjet@ Virtual</titulo>
					<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_tc_TarjetaVirtual&amp;objeto=000{#PRODUCTO}</url>
				</opcion>
				<!--opcion id="tdc_adicionales">
					<titulo>Tarjetas Adicionales</titulo>
					<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_tarjetaAdicional&amp;objeto=000{#PRODUCTO}</url>
				</opcion-->
				<opcion id="activacion_tarjeta">
					<titulo>Activaci�n de Tarjetas</titulo>
					<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_tc_ActivacionTDC&amp;objeto={#PRODUCTO}</url>
				</opcion>	
				<!--opcion id="tdc_bloqueo">
					<titulo>Consulta Bloqueo Tarjetas</titulo>
					<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_tc_Bloqueo</url>
				</opcion-->					
				<opcion id="generacion_cambio_pinpass">
					<titulo>Generaci�n o Cambio Pinpass</titulo>
					<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_tc_cambiopin</url>
				</opcion>
				<opcion id="programas_beneficios">
					<titulo>Programas de Beneficios</titulo>
					<opcion id="puntos_bci">
						<titulo>Programa PuntosBci</titulo>
						<url>/bcinetwls/tarjetas/sonrisas/menupesossonrisas.jsp</url>
					</opcion>
					<opcion id="programa_opensky">
						<titulo>Programa Open Sky</titulo>
						<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_bci_bel_cc_Programa_Beneficio</url>
					</opcion>
					<opcion id="programa_yo_neutralizo">
						<titulo>Programa �Yo Neutralizo!</titulo>
						<url>/bcinetwls/tarjetas/donaciones/programaBeneficios.do</url>
					</opcion>	
				</opcion>
				<opcion id="otras_solicitudes_tdc">
					<titulo>Solicitudes</titulo>
					<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_tc_SolicitudesyReposiciones&amp;objeto=000{#PRODUCTO}</url>
				</opcion>
			</opcion>
		</opcion>
        <opcion id="creditos">
            <titulo>Cr�ditos</titulo>
			<url>/cl/bci/aplicaciones/menu/tbanc/vistas/creditos/homeCreditos.jsf</url>
            <permisos>
				<suficientes>EsCliente</suficientes>
			</permisos>
            <opcion id="credito_automotriz">
                <titulo>Cr�dito Automotriz</titulo>
                <opcion id="simule_credito_automotriz">
                    <titulo>Simule y Solicite su Cr�dito Automotriz</titulo>
                    <url>/cl/bci/aplicaciones/productos/colocaciones/simuladorCreditoAutomotriz/vistas/vistaInicioSitioSeguro.jsf</url>
                </opcion>
            </opcion>
            <opcion id="credito_consumo">
                <titulo>Cr�ditos de Consumo</titulo>
                <opcion id="pida_su_credito">
                    <titulo>Simula y Solicita tu Cr�dito</titulo>
                    <url>/cl/bci/aplicaciones/productos/colocaciones/vistaCondicionesSitioSeguro.jsf?producto=CON</url>
                </opcion>				
                <opcion id="pagar_postergar_cuota">
                    <titulo>Pago Cuota Flexible</titulo>
                    <url>/creditoswls/PagoFlexible?paso=0</url>
                </opcion>
                <opcion id="consulta_creditos">
                    <titulo>Mis Cr�ditos</titulo>
                    <url>/cl/bci/aplicaciones/productos/colocaciones/creditos/vistas/resumenCreditos.jsf</url>
                </opcion>
                <!-- - 
                <opcion id="cartola_creditos">
                    <titulo>Cartola de Cr�ditos</titulo>
                    <url>/bcinetwls/common/enespera.jsp?path=/bcinetwls_creditos&amp;servlet=consultaMasivaCreditosVigentes.do&amp;jspReturn=consultaMasivaCreditosVigentesCartola&amp;tipoDeudor=D&amp;codEstadoCredito=A</url>
                </opcion>
                -->
                <opcion id="aumento_cupo_credito">
                    <titulo>Aumento de Cupo</titulo>
                    <url>/cl/bci/aplicaciones/productos/colocaciones/creditos/vistas/aumentoCupoSolicitud.jsf</url>
                </opcion>
                <opcion id="certificados_credito">
                    <titulo>Certificados</titulo>
                    <url>/bcinetwls/certificados/certificados.do?metodo=pasaTipoCertificados&amp;tipoCertificado=Cred</url>											
                </opcion>
            </opcion>
            <opcion id="credito_hipotecario">
                <titulo>Cr�dito Hipotecario</titulo>
                <opcion id="simule_credito_hipotecario">
                    <titulo>Simula y Solicita tu Cr�dito</titulo>
                    <url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_tbanc_bel_cred_Sol_hipotecario</url>
                </opcion>
                <opcion id="pagar_dividendo">
                    <titulo>Pagar Dividendo</titulo>
                    <url>/bcinetwls/hipotecario/pagoDividendos/pagoDividendosAction.do?accion=inicio&amp;paginaDestino=inicio</url>
                </opcion>
                <opcion id="estado_solicitud">
                    <titulo>Estado de Solicitud</titulo>
                    <url>/bcinetwls/hipotecario/GetEstadoSolicitud.do</url>
                </opcion>
                <opcion id="dividendos_cancelados">
                    <titulo>Dividendos Cancelados</titulo>
                    <url>/bcinetwls/hipotecario/pagoDividendos/pagoDividendosAction.do?accion=inicio&amp;paginaDestino=divpagados</url>
                </opcion>
                <opcion id="duplicado_dividendo">
                    <titulo>Duplicado Dividendo</titulo>
                    <url>/bcinetwls/hipotecario/GetOperacionesChip.do</url>
                </opcion>
                <opcion id="certificados_dividendo">
                    <titulo>Certificados Dividendo para SII</titulo>
                    <url>/bcinetwls/hipotecario/GetOperacionesChip.do?_cmd=Certificado</url>
                </opcion>
            </opcion>
        <opcion id="credito_automotriz">
                <titulo>Cr�dito Automotriz</titulo>
                 <opcion id="simule_credito_automotriz">
                    <titulo>Simule y Solicite su Cr�dito Automotriz</titulo>
                    <url>/cl/bci/aplicaciones/productos/colocaciones/simuladorCreditoAutomotriz/vistas/vistaInicioSitioSeguro.jsf</url>
                </opcion>
            </opcion>
        </opcion>
        <opcion id="inversiones">
            <titulo>Inversiones</titulo>
			<url>/cl/bci/aplicaciones/menu/tbanc/vistas/inversiones/homeInversiones.jsf</url>
            <permisos>
				<suficientes>EsCliente</suficientes>
			</permisos>
            <opcion id="resumen_inv">
				<titulo>Resumen Inversiones</titulo>
				<opcion id="resumen_inversiones">
					<titulo>Resumen de inversiones</titulo>
					<url>/bcinetwls/inversioneswls/productos/resumen/index.jsp</url>
				</opcion>			
			</opcion>
            <opcion id="asesoria">
                <titulo>Asesor�a</titulo>				
                <opcion id="analisis_doc">
                    <titulo>Departamento de Estudio An�lisis y Documentaci�n</titulo>
                    <url>/bcinetwls/inversioneswls/asesoria/informes/InformesEstudio.do?accion=consultaDocumentoVigentes</url>
                </opcion>
                <opcion id="nivel_riesgo">
                    <titulo>Determine su Nivel de Riesgo</titulo>
                    <url>/cl/bci/aplicaciones/inversiones/perfilador/vista/vistaPerfiladorInversion.jsf</url>
                </opcion>				
            </opcion>
            <opcion id="fondos_mutuos">
                <titulo>Fondos Mutuos</titulo>
                <opcion id="invertir_ffmm">
                    <titulo>Invertir</titulo>
                    <url>/bcinetwls/inversioneswls/productos/fondos_mutuos/InvertirFondoMutuo.do</url>
                </opcion>
                <opcion id="rescatar_ffmm">
                    <titulo>Rescatar</titulo>
                    <url>/bcinetwls/inversioneswls/productos/fondos_mutuos/EntrarFondoMutuo.do?cartolaRescate=true</url>
                </opcion>
                <opcion id="cartola_saldos_ffmm">
                    <titulo>Cartola de Saldos</titulo>
                    <url>/bcinetwls/inversioneswls/productos/fondos_mutuos/EntrarFondoMutuo.do</url>
                </opcion>
                <opcion id="cartola_mov_ffmm">
                    <titulo>Cartola Hist�rica</titulo>
                    <url>/bcinetwls/inversioneswls/productos/fondos_mutuos/EntrarFondoMutuo.do?cartolaMovimiento=true</url>
                </opcion>
                <opcion id="valores_cuota_ffmm">
                    <titulo>Valores Cuota</titulo>
                    <url>/bcinetwls/inversioneswls/productos/fondos_mutuos/ValorCuota.do</url>
                </opcion>
               <opcion id="saber_mas_ffmm">
                    <titulo>Saber M�s</titulo>
                    <url>/bcinetwls/inversioneswls/productos/fondos_mutuos/saberMasFondoMutuo.do</url>
                </opcion>				
                <opcion id="programar_ffmm">
                    <titulo>Programar Inversi�n</titulo>
                    <url>/bcinetwls/inversionesprogramadas/inversionesProgramadas.do?metodo=buscarRentabilidadFFMM</url>
                </opcion>
                <opcion id="inversion_ffmm_programada">
                    <titulo>Ver Inversiones Programadas</titulo>
                    <url>/bcinetwls/inversionesprogramadas/administraInversionesProgramadas.do?metodo=carga</url>
                </opcion>
                <opcion id="contrato_general_ffmm">
                    <titulo>Contrato General</titulo>
                    <url>/bcinetwls/inversioneswls/productos/fondos_mutuos/ContratoGeneral.do?metodo=cargaModuloContrato</url>
                </opcion>				
            </opcion>
            <opcion id="deposito_a_plazo">
                <titulo>Dep�sito a Plazo</titulo>
                <opcion id="tomar_dap">
                    <titulo>Tomar</titulo>
                    <url>/bcinetwls/inversioneswls/productos/dap/tomarNuevoDapDelCliente.do</url>
                </opcion>
                <opcion id="cartola_dap">
                    <titulo>Cartola</titulo>
                    <url>/bcinetwls/inversioneswls/productos/dap/consultaDapDelCliente.do</url>
                </opcion>
                <opcion id="ope_historicas_dap">
                    <titulo>Operaciones Hist�ricas</titulo>
                    <url>/bcinetwls/inversioneswls/productos/dap/consultaOperacionesHistoricasDap.do</url>
                </opcion>
                <opcion id="saber_mas_dap">
                    <titulo>Saber M�s</titulo>
                    <url>/bcinetwls/inversioneswls/productos/dap/saberMas.do</url>
                </opcion>
            </opcion>
            <opcion id="otr_inversiones">
                <titulo>Opciones de Ahorro e Inversi�n</titulo>
                <opcion id="ahorro_previsional_voluntario">
                    <titulo>Ahorro Previsional Voluntario</titulo>
                    <url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_bci_inversiones_Cartolas_BAM_APV</url>
                </opcion>							
                <opcion id="fondos_inversion_privados">
                    <titulo>Fondos de Inversi�n Privados</titulo>
                    <url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_bci_inversiones_Cartolas_BAM_FIP</url>
                </opcion>				
                <opcion id="adm_cartera">
                    <titulo>Administraci�n de Cartera</titulo>
                    <url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_bci_inversiones_Cartolas_BAM_ADC</url>
                </opcion>				
                <!--opcion id="pactos">
                    <titulo>Pactos</titulo>
                    <url>/bcinetwls/inversioneswls/productos/resumen/ConsultaDetallePactos.do</url>
                </opcion-->
                <!--opcion id="simultaneas">
                    <titulo>Simult�neas</titulo>
                    <url>/bcinetwls/inversioneswls/productos/resumen/ConsultaDetalleSimultaneas.do</url>
                </opcion-->
                <opcion id="fondos_inversion">
                    <titulo>Fondos de Inversi�n</titulo>
                    <url>/bcinetwls/inversioneswls/productos/resumen/ConsultaResumenFInversion.do</url>
                </opcion>
                <!--opcion id="renta_fija">
                    <titulo>Renta Fija</titulo>
                    <url>/bcinetwls/inversioneswls/productos/resumen/ConsultaDetalleRentaFija.do</url>
                </opcion-->	
                <opcion id="cuenta_ahorro">
                    <titulo>Cuentas de Ahorro</titulo>
                    <url>/bcinetwls/inversioneswls/productos/ahorro/IntroAhorro.do</url>
                </opcion>		
                <opcion id="contrato_general_aho">
                    <titulo>Contrato General</titulo>
                    <url>/bcinetwls/inversioneswls/productos/fondos_mutuos/ContratoGeneral.do?metodo=cargaModuloContrato</url>
                </opcion>					
            </opcion>			
            <opcion id="acciones">
                <titulo>Acciones</titulo>
                <!--<opcion id="compra_acciones">
                    <titulo>Compra</titulo>
                    <url>/bcinetwls/inversioneswls/productos/acciones/ingresoOrden.do?accion=comprar&amp;mes={#MES_ACTUAL}&amp;ano={#AGNO_ACTUAL}</url>
                </opcion>
                <opcion id="venta_acciones">
                    <titulo>Venta</titulo>
                    <url>/bcinetwls/inversioneswls/productos/acciones/principalAcciones.do?accion=cartolaVenta&amp;mes={#MES_ACTUAL}&amp;ano={#AGNO_ACTUAL}</url>
                </opcion>	-->		
                <opcion id="opcion_acciones">
                    <titulo>Cartola</titulo>
                    <url>/bcinetwls/inversioneswls/productos/acciones/principalAcciones.do?mes={#MES_ACTUAL}&amp;ano={#AGNO_ACTUAL}</url>
                </opcion>
            </opcion>			
            <opcion id="otros_servicios_inversiones">
                <titulo>Otros Servicios</titulo>
                <opcion id="cert_tributarios">
                    <titulo>Certificados Tributarios</titulo>
                    <url>/bcinetwls/inversioneswls/certificados/consultaCertificados.jsp</url>
                </opcion>
            </opcion>
        </opcion>
		<opcion id="presenta_amigo">
            <titulo>Pres�ntanos Un Amigo</titulo>
			<url>/bcinetwls/autenticacioninterdomain/autenticacionInterdomain.do?page=page_clientes_amigo</url>
            <permisos>
				<suficientes>EsCliente</suficientes>
			</permisos>
        </opcion>
    </opcion>
</bcimenu>