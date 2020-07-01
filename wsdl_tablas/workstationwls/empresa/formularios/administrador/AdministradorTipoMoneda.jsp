<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="es">
<head>

	<title>Formularios De Cr&eacute;dito</title>
	<style type="text/css">
	.lightbox_eliminar {
		Z-INDEX: 1002; BORDER-BOTTOM: #666 2px solid;  TEXT-ALIGN: left; BORDER-LEFT: #666 2px solid; PADDING-BOTTOM: 3px; PADDING-LEFT: 3px; WIDTH: 402px; PADDING-RIGHT: 3px; DISPLAY:none ; BACKGROUND: #fff; BORDER-TOP: #666 2px solid; BORDER-RIGHT: #666 2px solid; PADDING-TOP: 3px
	}
	
	.lightbox_sin_eliminar{
		Z-INDEX: 1002; BORDER-BOTTOM: #666 2px solid;  TEXT-ALIGN: left; BORDER-LEFT: #666 2px solid; PADDING-BOTTOM: 3px; PADDING-LEFT: 3px; WIDTH: 402px; PADDING-RIGHT: 3px; DISPLAY:none ; BACKGROUND: #fff; BORDER-TOP: #666 2px solid; BORDER-RIGHT: #666 2px solid; PADDING-TOP: 3px
	}
	</style>
	<link href="/workstationwls/css/popup.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" 	src="/portalwls/transferenciaalextranjero/js/lightbox.js"></script>
	<script type="text/javascript">
	function fnAccion(metodo,idSolicitud,nombreDeLaMoneda){
		if(metodo == 'MostrarCuadro'){
			document.getElementById(idSolicitud).style.display = '';
			return;
		}
		if(metodo == 'EsconderCuadro'){
			document.getElementById(idSolicitud).style.display = 'none';
			return;
		}
		
		document.forms[0].tipoDeMoneda.value = idSolicitud;
		document.forms[0].nombreDeLaMoneda.value = nombreDeLaMoneda;
		document.forms[0].metodo.value = 'eliminarTipoMoneda';
		document.forms[0].submit();
		
	}
	</script>
	
</head>
<body>
	<form action="administracionFormulario.do">
		<input type="hidden" name="metodo" value="">
		<input type="hidden" name="tipoDeMoneda" value="">
		<input type="hidden" name="nombreDeLaMoneda" value="">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td id="pestana-fd">
					<table border="0" cellpadding="0" cellspacing="0" id="pestana">
						<tr>
							<td id="pestana-left-on">&nbsp;</td>
							<td><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionDetalleFormularios"><bean:message key="adm.formulario"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
							
							<td id="pestana-left-on">&nbsp;</td>
							<td><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoProducto"><bean:message key="adm.productos"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
							
							<td id="pestana-left-over">&nbsp;</td>
							<th ><bean:message key="adm.monedas"/></th>
							<td id="pestana-right-over">&nbsp;</td>
							
							<td id="pestana-left-on">&nbsp;</td>
							<td ><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoTasa"><bean:message key="adm.tasas"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
							<td id="pestana-left-on">&nbsp;</td>
							<td ><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoPlazo"><bean:message key="adm.plazos"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
		<table width="100%" >
		<tr>
		<td>
		<c:if test="${!empty requestScope.mensaje}">
		<div id="msj" class="subtitulo">
			<c:out value="${requestScope.mensaje}"/>
		</div>
		</c:if>
		<fieldset>
		<legend style="font-size:13px;color: black;"><b><bean:message key="adm.moneda.ing"/><b></legend>
		<table id="lista-bonita" width="100%" height="100%">
		<tr>
			<th width="30%"><bean:message key="adm.moneda.nom"/></th><th><bean:message key="adm.acciones"/></th>
		</tr>
		<c:forEach var="monedas" items="${formulariosForm.tiposDeMonedas}">
		  <c:if test="${monedas.idMoneda != 1}">	
			<tr>
			<td>
			<c:out value="${monedas.nombreDeLaMoneda}"/> 
			</td>
			<td>
			|<a href="ModificarTipoMoneda.jsp?nombreDeLaMoneda=<c:out value="${monedas.nombreDeLaMoneda}"/>&idMoneda=<c:out value="${monedas.idMoneda}"/>"><u><bean:message key="adm.modificar"/></u></a> |<a><u onclick="fnAccion('MostrarCuadro','<c:out value="${monedas.idMoneda}"/>')" class="btnEliminar"><bean:message key="adm.eliminar"/></u></a>
			</td>
			</tr>
			<tr style="display: none;" id="<c:out value="${monedas.idMoneda}"/>">
					<td colspan="8">
						<div class="" align="center" style="width: 100%">
							<div class="alertaModal" align="center">
				  				<div class="mensaje">
				    				<p class="tit">�Desea eliminar la Moneda <b><c:out value="${monedas.nombreDeLaMoneda}"/></b>? <input type="button" class="boton" value="Aceptar" onclick="fnAccion('eliminarDetalleFormulario','<c:out value="${monedas.idMoneda}"/>','<c:out value="${monedas.nombreDeLaMoneda}"/>')"> <input type="button" class="boton" value="Cancelar" onclick="fnAccion('EsconderCuadro','<c:out value="${monedas.idMoneda}"/>');"></p>
				  				</div>
							</div>
						</div>
					</td>
			</tr>
		  </c:if>	
		</c:forEach>
		</table>
		<div>
		<input class="boton160" type="button" value="<bean:message key="adm.moneda.agregar"/>" onclick="document.location.href='AgregarNuevoTipoMoneda.jsp'">
		</div>
		</fieldset>
		</td>
		</tr>
		</table>
	</form>
</body>
</html>
<%--
 ******************************************************************************************************
 * Archivo           AdministradorTipoMoneda.jsp
 * Descripci�n       Administrador de las monedas
 * Versi�n           1.0
 * Fecha creaci�n    13/10/2011
 * Todos los Derechos Reservados por Banco BCI
 * Historia de cambios
 * versi�n   fecha          autor                               cambios
  =======   ==========     ==============================      ======================================
   1.0      13/10/2011     Alejandro Barra (CVA Ingenier�a)   Creaci�n 
   1.1      29/03/2012     Alejandro Barra (CVA Ingenier�a)   Se agrega el tipo de Plazo
******************************************************************************************************
--%>
