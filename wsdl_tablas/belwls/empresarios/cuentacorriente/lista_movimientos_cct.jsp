<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"  %>
<jsp:useBean id="sessionBci" scope="session" class="wcorp.model.seguridad.SessionBCI"></jsp:useBean>
<%
			String frames_body_array  = (String) sessionBci.getAttrib("frames_body_array"); 
			String fmenuitems         = (String) sessionBci.getAttrib("fmenuitems"); // BCI 

			int numeroDePagina_str             = Integer.parseInt( String.valueOf( request.getParameter("pagina") ) );
			int registrosPorPagina_str         = Integer.parseInt( String.valueOf( request.getParameter("filas") ) );
			int cantidadDePaginasObtenidas_str = Integer.parseInt( String.valueOf( request.getAttribute("cantidadPaginas") ) );
			int cantidadMovimientosHoy = 0;
			int cantidadMovimientosSemana = 0;
			int cantidadMovimientosMes = 0;
			String tipoConsulta = (String)request.getAttribute("tipoConsulta");
			if (request.getAttribute("cantidadMovimientosHoy") != null ){
				cantidadMovimientosHoy = ((Number)request.getAttribute("cantidadMovimientosHoy")).intValue();
			}else {
				cantidadMovimientosHoy = 0;		
			}	
			if (request.getAttribute("cantidadMovimientosSemana") != null) {
				cantidadMovimientosSemana = ((Number)request.getAttribute("cantidadMovimientosSemana")).intValue();
			}
			else {
				cantidadMovimientosSemana = 0;
			}
			if (request.getAttribute("cantidadMovimientosMes") != null) {
				cantidadMovimientosMes = ((Number)request.getAttribute("cantidadMovimientosMes")).intValue();
			}
			else {
				cantidadMovimientosMes = 0;
			}
			
			String stringHoy = "";
			String stringSemana = "";
			String stringMes = "";
			int hoyEnabled = 0;
			int semanaEnabled = 0;
			int mesEnabled = 0;
			
			if (cantidadMovimientosHoy > 0){
				stringHoy = "Movimientos de Hoy ("+ cantidadMovimientosHoy +")";
				hoyEnabled = 1;
			}else if(cantidadMovimientosHoy == 0){
				stringHoy ="Movimientos de Hoy(0)";
				hoyEnabled = 0;
			}else {
				stringHoy = "Movimientos de Hoy()";
				hoyEnabled = 0;
			}
			if (cantidadMovimientosSemana > 0) {
				stringSemana = "Movimientos Semana Actual("+ cantidadMovimientosSemana +")";
				semanaEnabled = 1;
			}
			else if (cantidadMovimientosSemana == 0) {
				stringSemana = "Movimientos Semana Actual(0)";
				semanaEnabled = 0;
			}
			else {
				stringSemana = "Movimientos Semana Actual()";
				semanaEnabled = 0;
			}
			if (cantidadMovimientosMes > 0) {
				stringMes= "Movimientos Mes Actual("+ cantidadMovimientosMes +")";
				mesEnabled = 1;
				
			}
			else if (cantidadMovimientosMes == 0) {
				stringMes= "Movimientos Mes Actual(0)";
				mesEnabled = 0;
			}
			else {
				stringMes= "Movimientos Mes Actual()";
				mesEnabled = 0;
			}
			
		%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title><bean:message key="cartolactacte.titulo.pagina"/></title>
		
		
		<link href="<%=request.getContextPath()%>/belwls/common/css/empresarios.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath()%>/belwls/empresarios/cuentacorriente/css/panorama.cuentas.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath()%>/belwls/empresarios/cuentacorriente/css/impresion.panorama.cuentas.css" rel="stylesheet" type="text/css" media="print">
		<link href="<%=request.getContextPath()%>/belwls/empresarios/cuentacorriente/css/estilos-bci-pag.css" rel="stylesheet" type="text/css">
				
		<script type="text/javascript" src="<%=request.getContextPath()%>/belwls/common/js/cartola.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/belwls/common/js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/belwls/common/js/googleanalitics.js"></script>
		
		<%
		String banca  = (String) sessionBci.getCliente().tipoBanca;
		String tipoUsuario = (String) sessionBci.getCliente().tipoUsuario;
		%>
		<script type="text/javascript">
		    var _gaq = _gaq || []; 
		    var mx_content='/SitioPrivado/ManejoCaja/Cuentas/Cartola/MovimientosdelDia';
		    _gaq.push(['_setAccount', setAccount]); 
		    _gaq.push(['_setCustomVar',1,'Banca','<%=banca%>',2]); 
		    _gaq.push(['_setCustomVar',2,'TipoUsuario','<%=tipoUsuario%>',3]); 
		    _gaq.push(['_trackPageview',location.pathname+location.search+(location.search.match(/\?/)?"&":"?")+"mxr="+mx_content]); 
		    (function() { 
		        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; 
		        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js'; 
		        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s); 
		    })();
		</script>
		
		<script type="text/javascript">
		$(document).ready(function(){
			$("#cuentaCorrienteSeleccionada").change(function() {
				$("#saldosRet").html('<span class="cargando">Cargando...</span>');
				$("#contenidoMovimientos").html("");
				location.href = "<%=request.getContextPath()%>/belwls/empresarios/cuentacorriente/movimientosCtaCte.do?method=movimientosDeHoy&tipoConsulta=H&pagina=1&filas=10&objeto=" + this.value;
			});
		
			$("#tmovimientos tr:odd").css("background-color", "#fff"); // filas impares
			$("#tmovimientos tr:even").css("background-color", "#eeeeee"); // filas pares
		
			$('#imgCarga').toggle();  
			$('#detalle').toggle();  
		
		    $("#vermas").click( function() {
		        ruta="<%=request.getContextPath()%>/belwls/common/images/";
		    	if ($("#detalle").is(':visible')) {
		    		imagen=ruta+"mas.png";
		        	$("#imgDetalle").attr('src',imagen);
		        	document.getElementById('msgVer').innerHTML = "<bean:message key="cartolactacte.texto.vermas"/>";
		    	}
		    	else {
		    		imagen=ruta+"menos.png";
		        	$("#imgDetalle").attr('src',imagen);
		        	document.getElementById('msgVer').innerHTML = "<bean:message key="cartolactacte.texto.vermenos"/>";
		    	}
		    	$('#detalle').toggle();      
		    });
			
		});
		
		function transferenciasEnLinea () {
			var opciones="toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=yes, width=800, height=365, top=85, left=140";
			window.open("/belwls/empresarios/panoramaglobal/inicio/llamarTransferenciasEnLinea.do?objeto="+$("#cuentaCorrienteSeleccionada").val(),"",opciones);
		}
		
		function cargarMovimientosHoy(objeto, esconderImgCarga){
			form = document.forms[0];
			form.action="<%=request.getContextPath()%>/belwls/empresarios/cuentacorriente/cartola/cargarMovimientosHoy.do?objeto="+objeto;
			form.submit();
		}
		
		function cargarMinicartola(objeto, esconderImgCarga){
			form = document.forms[0];
			form.action="<%=request.getContextPath()%>/belwls/empresarios/cuentacorriente/cartola/cargarMinicartola.do?objeto="+objeto;
			form.submit();
		}
		
		function guardarExcelHoy(objeto, tipoConsulta, filas, pagina){
			form = document.forms[0];
			form.action="<%=request.getContextPath()%>/belwls/empresarios/cuentacorriente/movimientosCtaCte.do?method=movimientosDeHoy&objeto="+objeto+"&accion=excel&tipoConsulta="+tipoConsulta+"&filas="+filas+"&pagina="+pagina;
			form.submit();
		}
		
		function imprimirPDF(objeto, tipoConsulta, filas, pagina){
			var opciones="toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=yes, width=508, height=365, top=85, left=140";			
			var ruta = "<%=request.getContextPath()%>/belwls/empresarios/cuentacorriente/movimientosCtaCte.do?method=movimientosDeHoy&objeto="+objeto+"&accion=pdf&tipoConsulta="+tipoConsulta+"&filas="+filas+"&pagina="+pagina;
			window.open(ruta,"",opciones);
		}
		
		
		
		</script>
		
		<!-- FRAGMENTO MOV DE HOY -->
		
		
		
		<script type="text/javascript">
		
		$(function(){
			$("#tmovimientos tr:odd").css("background-color", "#fff"); // filas impares
			$("#tmovimientos tr:even").css("background-color", "#eeeeee"); // filas pares
			
		});
		
		function enviarHoy(objeto, registros) {
			var formulario = document.forms[0];
			formulario.action="movimientosCtaCte.do?method=movimientosDeHoy&tipoConsulta=H&pagina=1&filas="+registros+"&objeto="+objeto;
			formulario.submit();
				
		}
		
		function enviarSemana(objeto, registros) {
			
			var formulario = document.forms[0];
			formulario.action="cartola/obtenerMovimientos.do?tipoConsulta=S&pagina=1&filas="+registros+"&objeto="+objeto;
			formulario.submit();
		}
			
		function enviarMes(objeto, registros) {
			
			var formulario = document.forms[0];
			formulario.action="cartola/obtenerMovimientos.do?tipoConsulta=M&pagina=1&filas="+registros+"&objeto="+objeto;
			formulario.submit();
		}
		function enviaPaginacion(numeroPag, registros, cantidadPaginas, objeto) {
			var formulario = document.forms[0];
			formulario.action="movimientosCtaCte.do?method=movimientosDeHoy&filas="+registros+"&pagina=" + numeroPag+"&tipoConsulta=<%= tipoConsulta %>"+"&cantidadPaginas="+cantidadPaginas+"&objeto="+objeto;
			formulario.submit();
		}
		
		</script>
		
		<!-- FIN FRAGMENTO MOV DE HOY -->
		
		<!-- No cambiar el orden de la importacion de los scripts -->
		<script type="text/javascript" src="/common/js/beebcitools.js"></script>
		<script type="text/javascript" src="/belwls/bciexpress/js/menu_frame/frames_body_array.js" ></script>
		<script type="text/javascript">
		
		<%=frames_body_array%>
		
		</script>
		<script type="text/javascript" src="/belwls/bciexpress/js/menu_frame/mmenu.js" type="text/javascript"></script>
		<script type="text/javascript" src="/belwls/bciexpress/js/menu_left/coolmenu.js"></script>
		<script type="text/javascript" src="/belwls/bciexpress/js/menu_left/fmenuitems.js"></script>
		<script type="text/javascript"><%=fmenuitems%></script>
		
		<!-- homeForm  -->
		<form name="homeForm" method="post" action="">
			<input type="hidden" name="objeto" value="<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>">
		</form>
	
	</head>
	<body>
		
		<html:hidden name="cartolaForm" property="totalMovimientosHoy" />
		<html:form action="/movimientosCtaCte.do" styleId="movForm">
		
		<logic:present name="cartolaForm" property="datosCuentaCorriente">
			
			<bean:define id="cartola" name="cartolaForm" property="datosCuentaCorriente"/>
				
		</logic:present>
		
		<div id="wrapper">
			<!-- Menu izquierdo -->
			<div class="izquierdo" style="width:18%;align:center;">
				<c:if test="${empty noEsEmpresario}">
				<jsp:include page="menuIzquierdo.jsp" flush="true" />
			    </c:if>
			    <c:if test="${!empty noEsEmpresario}">
					<script type="text/javascript">
						new COOLjsMenu("menu1", MENU_ITEMS_CUENTAS_CORRIENTES_EN_PESOS_1);
					</script>
				</c:if>
			</div>
			<!-- Contenido pagina -->		
			<div id="contenedor" style="width:75%;">
				<!-- Link volver a panorama de cuentas -->
				<bean:size id="nroCuentasCorrientes" name="cartolaForm" property="cuentasCorrientes"/>
        		<% if( nroCuentasCorrientes.intValue() > 1) { %>           
        	 		<div class="boxContentInner boxContentV">
       					<a class="btnIconLeftArrow btnIconLeft" href="/belwls/empresarios/cuentacorriente/infoCtasCtesEnPesos.do?method=infoCtasCtesEnPesos">
           					Volver a Panorama de cuentas
           				</a>
      				</div>        
        		<% } %>   
				<!-- Combobox cuentas corrientes -->
				<div>
					<span class="titulo">
						Movimientos de Cuenta Corriente Nº : 
					</span> 
					<span>
						<logic:present name="cartolaForm" property="cuentasCorrientes">
							<html:select name="cartolaForm" property="cuentaCorrienteSeleccionada" styleClass="selectCuenta" styleId="cuentaCorrienteSeleccionada">
								<html:optionsCollection name="cartolaForm" property="cuentasCorrientes" label="numCuentaCorriente" value="numCuentaCorriente" />
							</html:select>
						</logic:present> 
						<logic:notPresent name="cartolaForm" property="cuentasCorrientes">
							<bean:message key="cartolactacte.texto.noctacte"/>
						</logic:notPresent>
					</span>
					<br>
					<input type="button" value="Transferir" onclick="javascript:transferenciasEnLinea()" class="boton">
				</div>
					<div id="links" align="right" class="guardar">
						<a href="#" onClick="javascript:guardarExcelHoy('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '<%= tipoConsulta %>', '<%= registrosPorPagina_str %>','<%= numeroDePagina_str %>');">    
							<img src="<%=request.getContextPath()%>/belwls/common/images/guardar.png" border="0" alt="Guardar Excel">
								<bean:message key="cartolactacte.texto.guardarexcel"/>
						</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="#" onClick="javascript:imprimirPDF('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '<%= tipoConsulta %>', '<%= registrosPorPagina_str %>','<%= numeroDePagina_str %>');">
							<img src="<%=request.getContextPath()%>/belwls/common/images/imprimir.png" border="0" alt="Imprimir PDF">
							<bean:message key="cartolactacte.texto.imprimir"/>
						</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
					<div id="saldosRet">
							
							<fieldset class="fst-dat" style="padding:5px">
							
								<legend class="leyenda">
									<bean:message key="cartolactacte.fieldset.cabecera"/>
								</legend>
							
							
								<table width="100%">
									<tbody id="resumen">
										<tr>
											<td class="right">
												<bean:message key="cartolactacte.label.saldocontable9am"/>:
											</td>
											<td class="left etiquetaDeAtributo">
												<logic:present name="cartola" property="saldoContable9AM">
													<bean:write name="cartola" property="saldoContable9AM" format="$ #,##0"/>
												</logic:present> 
												<logic:notPresent name="cartola" property="saldoContable9AM">
													$ 0
												</logic:notPresent>
											</td>
											<td width="30%" class="right">
												<bean:message key="cartolactacte.label.retenciones"/>:
											</td>
											<td width="20%" class="left etiquetaDeAtributo">
												<logic:present name="cartola" property="retHasta3dias">
													<bean:write name="cartola" property="retHasta3dias" format="$ #,##0"/>
												</logic:present> 
												<logic:notPresent name="cartola" property="retHasta3dias">
													$ 0
												</logic:notPresent>
											</td>
										</tr>
										<tr>
											<td class="right">
												<bean:message key="cartolactacte.label.saldocontable"/>:	
											</td>
											<td class="left etiquetaDeAtributo">
												<logic:present name="cartola" property="saldoContable">
													<bean:write name="cartola" property="saldoContable" format="$ #,##0" />
												</logic:present> 
												<logic:notPresent name="cartola" property="saldoContable">
													$ 0
												</logic:notPresent></td>
											<td class="right">
												<bean:message key="cartolactacte.label.retencionesmas"/>:
											</td>
											<td class="left etiquetaDeAtributo">
												<logic:present name="cartola" property="retMas3dias">
													<bean:write name="cartola" property="retMas3dias" format="$ #,##0"/>
												</logic:present> 
												<logic:notPresent name="cartola" property="retMas3dias">
													$ 0
												</logic:notPresent>
											</td>
										</tr>
										<tr>
											<td class="right" width="30%">
												<bean:message key="cartolactacte.label.saldodisponible"/>:
											</td>
											<td width="20%" class="left etiquetaDeAtributo">
												<logic:present name="cartola" property="saldoDisponible">
													<span class="fondoAmarillo">
														<bean:write name="cartola" property="saldoDisponible" format="$ #,##0"/>
													</span>
												</logic:present>
												<logic:notPresent name="cartola" property="saldoDisponible">
													$ 0
												</logic:notPresent>
											</td>
											<td class="right">
												&nbsp;
											</td>
											<td class="left etiquetaDeAtributo">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td class="left">
												<span id="vermas">
													<a href="#">
														<img id="imgDetalle" 
															src="<%=request.getContextPath()%>/belwls/common/images/mas.png" border="0" alt="#">&nbsp;
														<span id="msgVer">
															<bean:message key="cartolactacte.texto.vermas"/>
														</span>
													</a>
												</span>
											</td>
											<td colspan="3">
												&nbsp;
											</td>				
										</tr>
								    </tbody>
								  	<tbody id="detalle">					
										<tr>
											<td class="right">
												<bean:message key="cartolactacte.label.depositosyabonos"/>:
											</td>
											<td class="left etiquetaDeAtributo">
												<logic:present name="cartola" property="abonos">
													<bean:write name="cartola" property="abonos" format="$ #,##0"/>
												</logic:present>
												<logic:notPresent name="cartola" property="abonos">
													$ 0
												</logic:notPresent>
											</td>
											<td class="right">
												<bean:message key="cartolactacte.label.sobregirodisponible"/>:
											</td>
											<td class="left etiquetaDeAtributo">
												<logic:present name="cartola" property="sobregiroDisp">
													<bean:write name="cartola" property="sobregiroDisp" format="$ #,##0" />
												</logic:present> 
												<logic:notPresent name="cartola" property="sobregiroDisp">
													$ 0
												</logic:notPresent>
											</td>
										</tr>
										<tr>
											<td class="right">
												<bean:message key="cartolactacte.label.chequesycargos"/>:
											</td>
											<td class="left etiquetaDeAtributo">
												<logic:present name="cartola" property="cargos">
													<bean:write name="cartola" property="cargos" format="$ #,##0"/>
												</logic:present>
												<logic:notPresent name="cartola" property="cargos">
													$ 0
												</logic:notPresent>
											</td>
											<td class="right">
												<bean:message key="cartolactacte.label.sobregiroutilizado"/>:
											</td>
											<td class="left etiquetaDeAtributo">
												<logic:present name="cartola" property="sobregiroUtil">
													<bean:write name="cartola" property="sobregiroUtil" format="$ #,##0"/>
												</logic:present> 
												<logic:notPresent name="cartola" property="sobregiroUtil">
													$ 0
												</logic:notPresent>
											</td>
										</tr>
										<tr>
											<td class="right">
												&nbsp;
											</td>
											<td class="left etiquetaDeAtributo">
												&nbsp;
											</td>
											<td class="right">
												<bean:message key="cartolactacte.label.interessobregiro"/>:
											</td>
											<td class="left etiquetaDeAtributo">
												<logic:present name="cartola" property="interesSobregiro">
													<bean:write name="cartola" property="interesSobregiro" format="$ #,##0"/>
												</logic:present> 
												<logic:notPresent name="cartola" property="interesSobregiro">
													$ 0
												</logic:notPresent>
											</td>
										</tr>
										<tr>
											<td class="right">
												<bean:message key="cartolactacte.label.ultimoschequescobrados"/>:
											</td>
											<td colspan="3" class="left etiquetaDeAtributo">
												<logic:present name="cartola" property="ultCheques">
												   <logic:iterate id="cheque" name="cartola" property="ultCheques">
												   		<bean:write name="cheque" />&nbsp;
												   </logic:iterate>
												</logic:present>
												<logic:notPresent name="cartola" property="ultCheques">
													no posee cheques 
												</logic:notPresent>
											</td>
										</tr>
								  	</tbody>	
								</table>

						</fieldset>	
					
				</div>
				
				<div id="contenidoMovimientos">	
				<html:hidden name="cartolaForm" property="totalMovimientosHoy" />	
								<fieldset class="fst-dat" style="padding: 5px">
									<legend class="leyenda"> Movimientos </legend>
									<span class="noimprimir">
										<bean:message key="cartolactacte.texto.mostrar"/>:
									</span>
										<% if (hoyEnabled == 1) {
											if (tipoConsulta.compareToIgnoreCase("H") == 0) {
											%>
												<span class="etiquetaDeAtributo">
														<%= stringHoy %> ,
												</span>
											<%	
											} else {
											%>
												<span class="etiquetaDeAtributo">
													<a  href="#" onClick="javascript:enviarHoy('
														<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '10');"> 
														<%= stringHoy %> , 
													</a> 
												</span>
											<%			
											}
										
										
										   } else {
										   %>
										   	<span class="etiquetaDeAtributo">
												<a class="linkText" href="" onclick="return false;">
													<font color="gray">
														<%= stringHoy %> , 
													</font>
												</a> 
											</span>
										   <%
										
											}
										
											%>
										 &nbsp;
										<span class="etiquetaDeAtributo">
											<a href="#" onclick="cargarMinicartola('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>')">
												<bean:message key="cartolactacte.texto.minicartola"/> , 
											</a> 
										</span>
										 
										<% if (semanaEnabled == 1) {
											if (tipoConsulta.compareToIgnoreCase("S") == 0) {
											%>
												&nbsp;
												<span class="etiquetaDeAtributo">
													<%= stringSemana %> 
												</span>
											
											
											<%
											}
											else {%>
										&nbsp;
										<span class="etiquetaDeAtributo">
											<a  href="#" onClick="javascript:enviarSemana('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '10');"> <%= stringSemana %> , </a> 
										</span>
										 
										<%}
										}
										else {%>
										&nbsp;
										<span class="etiquetaDeAtributo">
											<a class="linkText" href="" onclick="return false;"> <font color="gray"> <%= stringSemana %> , </font> </a> 
										</span>
										  
										<%
										}
										if (mesEnabled == 1) {
											if (tipoConsulta.compareToIgnoreCase("M") == 0) {
											%>
												&nbsp;
												<span class="etiquetaDeAtributo">
													<%= stringMes %>
												</span>
											
											
											<%
											}
											else {%>
											&nbsp;
										<span class="etiquetaDeAtributo">
											<a  href="#" onClick="javascript:enviarMes('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '10');"> <%= stringMes %> </a> 
										</span>
										 
										<%}
										}
										else {%>
										&nbsp;
										<span class="etiquetaDeAtributo">
											<a class="linkText" href="" onclick="return false;"> <font color="gray"> <%= stringMes %> </font> </a>
										</span>
										
										<%
										}
										%>
										<br>
										<br>
										<div id="imgCarga">
											<img src="<%=request.getContextPath()%>/belwls/common/images/loading.png" alt="cargando">
										</div>
										<div id="datosMovimientos">
										
											<c:choose>
												<c:when test="${requestScope.nroMovimientos > 0}">
													
													<c:if test="${requestScope.cantidadPaginas > 0}">
														<table id="tmovimientos" >
															<thead>
																<tr>
																	<th style="text-align:center;">Fecha</th>
																	<th style="text-align:center;">Oficina</th>
																	<th style="text-align:center;">Movimiento</th>
																	<th style="text-align:center;">Nº Documento</th>							
																	<th style="text-align:center;">Cargo</th>
																	<th style="text-align:center;"s>Abono</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach items="${requestScope.movimientos}" var="movimientos" varStatus="status" >
																	<tr>
																		<td width ="60px">
																			<c:out value="${movimientos.fecha}"/>
																		</td>
																		<td width ="120px">
																			<c:out value="${movimientos.oficina}"/>
																		</td>
																		<td >
																			<c:out value="${movimientos.tipoMovimiento}"/>
																		</td>
																		<td align="right" width ="85px">
																			<c:out value="${movimientos.serial}" />
																		</td>
																		<td align="right" width ="85px">
																			<c:out value="${movimientos.cargo}"/> 
																		</td>
																		<td align="right" width ="85px">
																			<c:out value="${movimientos.abono}"/> 
																		</td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													<div id="separa-inv" style="padding-top:2px;"></div>
													<div class="pager noimprimir">
														<center>
															<ul style="margin-left:0px;">
																<%
																	if (cantidadDePaginasObtenidas_str > 1 ) {
																	int rango=2;
																	int aux_rango = 2;
																	if(numeroDePagina_str - rango <= 0) {
																		aux_rango = (2*rango) - numeroDePagina_str + 1;
																	}
																	if (cantidadDePaginasObtenidas_str - numeroDePagina_str < rango){
																		aux_rango = (2*rango) - (cantidadDePaginasObtenidas_str - numeroDePagina_str);
																	}
																	rango = aux_rango;
																%>
																	<%if(numeroDePagina_str!=1){%><li class="pag-anterior"><a href="#" onClick="javascript:enviaPaginacion('<%=numeroDePagina_str-1%>', '<%=registrosPorPagina_str%>', '<%=cantidadDePaginasObtenidas_str%>', '<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>');">&lt; Anterior</a></li>
																	<%} else {%><li class="pag-anterior">&lt; Anterior</li><%}%>
																<%		if((numeroDePagina_str - rango) > 1) {%><li><b>...</b></li><%}
																		for(int indice = 0; indice < cantidadDePaginasObtenidas_str; indice++ ) {
																			int numeroPag = (indice + 1);
																			if((numeroPag >= (numeroDePagina_str - rango)) && (numeroPag <= (numeroDePagina_str + rango))){
																			if (numeroDePagina_str != numeroPag) {
																%>
																					<li><a href="#" onClick="javascript:enviaPaginacion('<%=numeroPag%>', '<%=registrosPorPagina_str%>', '<%=cantidadDePaginasObtenidas_str%>', '<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>');" ><%=numeroPag %></a></li>
																<%
																			} else {
																%>
																					<li class="current"><%=numeroPag%></li>
																<%
																			}
																		}
																		}
																		if((numeroDePagina_str + rango)  < cantidadDePaginasObtenidas_str) {
																		%>
																			<li>
																				<b>...</b>
																			</li> 
																		<% } %> 
																    	<%if(numeroDePagina_str!=cantidadDePaginasObtenidas_str){%><li class="pag-siguiente"><a href="javascript:enviaPaginacion('<%=numeroDePagina_str+1%>', '<%=registrosPorPagina_str%>', '<%=cantidadDePaginasObtenidas_str%>', '<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>');">Siguiente &gt</a></li>
																		<%}else{%><li class="pag-siguiente">Siguiente &gt;</li><%}%>
																		
																<%
																	}
																	else {
																%>
																		<li class="pag-anterior">&lt; Anterior</li>
																		
																		<li>1</li> 
																		
																		<li class="pag-siguiente">Siguiente &gt;</li>
																<%
																	}
																%>
															</ul>
														</center>
													</div>
													<br>
													<table width="100%" align="right" id="tabla6" >
														<tr>
															<td align="right" class="noimprimir"> 
																<span class="etiquetaDeAtributo">Resultados por página: &nbsp;
																	<%
																		String link = "";
																		int cantidadMovimientos = 0;
																									
																		if ( tipoConsulta.compareToIgnoreCase("S") == 0 ) {
																			cantidadMovimientos = cantidadMovimientosSemana;
																			link = "enviarSemana";								
																		} else if ( tipoConsulta.compareToIgnoreCase("M") == 0 ) {
																			cantidadMovimientos = cantidadMovimientosMes;
																			link = "enviarMes";								
																		} else if (tipoConsulta.compareToIgnoreCase("H") == 0) {
																			cantidadMovimientos = cantidadMovimientosHoy;
																			link = "enviarHoy";									
																		}												
																	
																		switch(registrosPorPagina_str){	
																			case 10: 
																				if (cantidadMovimientos > 0) {
																				%>
																					<b> 10 </b>&nbsp;&nbsp;
																				<%
																				}
																				if (cantidadMovimientos > 10) {
																				%>
																					<a  href="#" onClick="javascript:<%=link%>('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '25');">
																					 25
																					</a>&nbsp;&nbsp;
																				<%
																				}
																				if (cantidadMovimientos > 25) {
																				%>
																					<a  href="#" onClick="javascript:<%=link%>('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '50');">
																						50 
																					</a>&nbsp;&nbsp;
																				<%
																				}
																				if (cantidadMovimientos > 50) {
																				%>
																					<a  href="#" onClick="javascript:<%=link%>('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '100');">
																						100
																					</a>
																				<%
																				}
																			break;
																			
																			case 25:
																				if (cantidadMovimientos > 0) {
																				%>
																					<a  href="#" onClick="javascript:<%=link%>('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '10');">
																						10 
																					</a>&nbsp;&nbsp;
																				<%
																				}
																				if (cantidadMovimientos > 10) {
																				%>
																					<b>
  																			    		25 
																					</b>&nbsp;&nbsp;
																				<%
																				}						
																				if (cantidadMovimientos > 25) {
																				%>
																					<a  href="#" onClick="javascript:<%=link%>('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '50');">
																						50 
																					</a>&nbsp;&nbsp;
																				<%
																				}
																				if (cantidadMovimientos > 50) {
																				%>
																					<a  href="#" onClick="javascript:<%=link%>('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '100');">
																						100 
																					</a>
																				<%
																				}
																				break;																			
																			
																			case 50:
																				if (cantidadMovimientos > 0) {
																				%>
																					<a  href="#" onClick="javascript:<%=link%>('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '10');">
																						10 
																					</a>&nbsp;&nbsp;
																				<%
																				}
																				if (cantidadMovimientos > 10) {
																				%>
																					<a  href="#" onClick="javascript:<%=link%>('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '25');">
																				 		25 
																					</a>&nbsp;&nbsp;
																				<%
																				}																				
																				if (cantidadMovimientos > 25) {
																				%>
																					<b>
																						50 
																					</b>&nbsp;&nbsp;
																				<%
																				}
																				if (cantidadMovimientos > 50) {
																				%>
																					<a  href="#" onClick="javascript:<%=link%>('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '100');">
																						100 
																					</a>
																				<%
																				}
																			break;	
																		
																			case 100: 
																				if (cantidadMovimientos > 0) {
																				%>
																					<a  href="#" onClick="javascript:<%=link%>('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '10');">
																						10 
																					</a>&nbsp;&nbsp;
																				<%
																				}
																				if (cantidadMovimientos > 10) {
																				%>
																					<a  href="#" onClick="javascript:<%=link%>('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '25');">
																						25 
																					</a>&nbsp;&nbsp;
																				<%
																				}
																				if (cantidadMovimientos > 25) {
																				%>
																					<a  href="#" onClick="javascript:<%=link%>('<bean:write name="cartolaForm" property="cuentaCorrienteSeleccionada"/>', '50');">
																				    	50 
																					</a>&nbsp;&nbsp;
																				<%
																				}
																				if (cantidadMovimientos > 50) {
																				%>
																					<b> 100 </b>
																				<%
																				}
																			break;				
																		
																			default: 
																			%>
																				<b> ERROR </b>
																			<% 
																			break;							
																		}										
																	%>
																</span>
															</td>
														</tr>
													</table>
												</c:if>
												<c:if test="${requestScope.cantidadPaginas == 0 }">
													<table width="100%" align="center" id="tabla5">
														<tr>
															<td align="center">
																<b>No tiene movimientos en el per&iacute;odo seleccionado.</b>
															</td>
														</tr>
													</table>
									        
												</c:if>
												
												<c:if test="${requestScope.cantidadPaginas == -1 }">
													<table width="100%" align="center" id="tabla5">
														<tr>
															<td align="center">
																<b>No se ha podido obtener la informaci&oacute;n solicitada.</b>
															</td>
														</tr>
													</table>
												</c:if>
											</c:when>
											<c:otherwise>
												<div id="aviso">
													<div id="alerta">&nbsp;</div>
													<div id="contenidoAlerta">
														<span class="titulo">
															<bean:message key="cartolactacte.mensaje.sinmovimientos" />
														</span>
													</div>   
												</div>
											</c:otherwise>
										</c:choose>
									</div>
						 	</fieldset>
						</div>
						
				
			</div>
		</div>
	</html:form>							
</body>
</html>

<%--
******************************************************************************************************
 
 * Archivo           lista_movimientos_cct.jsp
 
 * Descripción       Página que muestra Movimientos de Hoy
 
 * Versión           1.1
 
 * Fecha creación    07/02/2011
 
 * Todos los Derechos Reservados por Banco de Crédito e Inversiones
 
 * Historia de cambios
  versión   fecha          autor                               cambios
  =======   ==========     ==============================      ======================================
  1.0   	21/07/2011     Daniel Soto P. 	     			   Creación 
  1.1   	10/04/2012     Alejandro Barra.	     			   Se agrega el menú antiguo
 ******************************************************************************************************
--%>
