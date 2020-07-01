<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="es">
<head>

	<title>Formularios De Cr&eacute;dito</title>
	<style type="text/css">
	.lightbox_eliminar {
		Z-INDEX: 1002; BORDER-BOTTOM: #666 2px solid;  TEXT-ALIGN: left; BORDER-LEFT: #666 2px solid; PADDING-BOTTOM: 3px; PADDING-LEFT: 3px; WIDTH: 402px; PADDING-RIGHT: 3px; DISPLAY:none ; BACKGROUND: #fff; BORDER-TOP: #666 2px solid; BORDER-RIGHT: #666 2px solid; PADDING-TOP: 3px
	}
	</style>
	<link href="/workstationwls/css/popup.css" rel="stylesheet" type="text/css" />
	
</head>
<body>
	<form action="/administracionFormulario" target="">
		<input type="hidden" name="metodo" value="">
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
							
							<td id="pestana-left-on">&nbsp;</td>
							<td><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoMoneda"><bean:message key="adm.monedas"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
							
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
		<table width="100%">
		<tr>
		<td align="center">
		<fieldset>
		<legend style="font-size:13px;color: black;"><b><bean:message key="adm.error.formulario"/><b></legend>
		<table id="" width="50%" align="center">
		<tr>
			<th align="center"><c:out value="${requestScope.mensaje}"/> </th>
		</tr>
		<tr>
			<td align="center"><input class="btn-volver" type="button" value="<bean:message key="adm.volver"/>" onclick="window.history.back();"> </td>
		</tr>
		</table>
		</fieldset>
		</td>
		</tr>
		</table>
	</form>
</body>
</html>
<%--
 ******************************************************************************************************
 * Archivo           ErrorAdministrador.jsp
 * Descripción       Pagina de Error
 * Versión           1.0
 * Fecha creación    13/10/2011
 * Todos los Derechos Reservados por Banco BCI
 * Historia de cambios
 * versión   fecha          autor                               cambios
  =======   ==========     ==============================      ======================================
   1.0      13/10/2011     Alejandro Barra (CVA Ingeniería)   Creación 
   1.1      05/03/2012     Alejandro Barra (CVA Ingeniería)   Se agrega el Tipo de Plazo
******************************************************************************************************
--%>