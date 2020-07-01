<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="es">
<head>

	<title>Formularios De Cr&eacute;dito</title>
	<link href="/workstationwls/css/popup.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/workstationwls/js/valida_hip.js"></script>
	<script type="text/javascript">
	function fnAgregarTasa(){
		document.getElementById('error').innerHTML = '';
		if(document.getElementById('msj') != null){
			document.getElementById('msj').style.display   = 'none';
		}
		if(trim(document.forms[0].nombreDeLaTasa.value) == ''){
			document.getElementById('error').style.display = '';
			document.getElementById('error').innerHTML = 'Debe ingresar un Nombre de Tasa';
			return;
		}
		document.forms[0].metodo.value = 'agregarTipoTasa';
		document.forms[0].submit();
	}
	</script>
</head>
<body>
    <fmt:setBundle basename="resources.messages-administracionFormulariosEmpresas"/>
	<form action="administracionFormulario.do" >
		<input type="hidden" name="metodo" value="">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td id="pestana-fd">
					<table border="0" cellpadding="0" cellspacing="0" id="pestana">
						<tr>
							<td id="pestana-left-on">&nbsp;</td>
							<td><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionDetalleFormularios"><fmt:message key="adm.formulario"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
							
							<td id="pestana-left-on">&nbsp;</td>
							<td><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoProducto"><fmt:message key="adm.productos"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
							
							<td id="pestana-left-on">&nbsp;</td>
							<td><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoMoneda"><fmt:message key="adm.monedas"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
							
							<td id="pestana-left-over">&nbsp;</td>
							<th style="cursor: pointer" onclick="document.location.href='/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoTasa'"><fmt:message key="adm.tasas"/></th>
							<td id="pestana-right-over">&nbsp;</td>
							
							<td id="pestana-left-on">&nbsp;</td>
							<td ><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoPlazo"><fmt:message key="adm.plazos"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
							
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
		<table width="100%" >
		<tr>
		<td>
		<div id="error" class="subtitulo" style="display: none;"></div>
		<c:if test="${!empty requestScope.mensaje}">
		<div id="msj" class="subtitulo">
			<c:out value="${requestScope.mensaje}"/>
		</div>
		</c:if>
		<fieldset>
		<legend style="font-size:13px;color: black;"><b><fmt:message key="adm.tasas.agr"/><b></legend>
		<table id="lista-bonita" width="100%" height="100%">
			<tr>
				<th width="20%"><fmt:message key="adm.tasa.nom"/></th><td><input class="caja280" type="text" name="nombreDeLaTasa"> </td>
			</tr>
		</table>
		<div>
		<input class="boton160" type="button" value="<fmt:message key="adm.guardar"/>" onclick="fnAgregarTasa()">
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
 * Archivo           AgregarNuevoTipoTasa.jsp
 * Descripción       Agrega un nuevo tipo de tasa
 * Versión           1.0
 * Fecha creación    13/10/2011
 * Todos los Derechos Reservados por Banco BCI
 * Historia de cambios
 * versión   fecha          autor                               cambios
  =======   ==========     ==============================      ======================================
   1.0      13/10/2011     Alejandro Barra (CVA Ingeniería)   Creación 
   1.1      29/03/2012     Alejandro Barra (CVA Ingeniería)   Se agrega el tipo de Plazo
******************************************************************************************************
--%>