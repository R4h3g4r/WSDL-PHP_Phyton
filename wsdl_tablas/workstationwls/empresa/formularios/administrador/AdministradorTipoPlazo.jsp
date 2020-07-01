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
	function fnAccion(metodo,idSolicitud,nombreDelPlazo){
		if(metodo == 'MostrarCuadro'){
			document.getElementById(idSolicitud).style.display = '';
			return;
		}
		if(metodo == 'EsconderCuadro'){
			document.getElementById(idSolicitud).style.display = 'none';
			return;
		}
		document.forms[0].tipoDePlazo.value = idSolicitud;
		document.forms[0].nombreDelPlazo.value = nombreDelPlazo;
		document.forms[0].metodo.value = 'eliminarTipoPlazo';
		document.forms[0].submit();
	}
	</script>
</head>
<body>
	<form action="administracionFormulario.do">
		<input type="hidden" name="metodo"     value="">
		<input type="hidden" name="tipoDePlazo" value="">
		<input type="hidden" name="nombreDelPlazo" value="">
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
							<td><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoTasa"><bean:message key="adm.tasas"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
							
							<td id="pestana-left-over">&nbsp;</td>
							<th ><bean:message key="adm.plazos"/></th>
							<td id="pestana-right-over">&nbsp;</td>
							
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
		<legend style="font-size:13px;color: black;"><b><bean:message key="adm.plazos.ing"/><b></legend>
		<table id="lista-bonita" width="100%" height="100%">
			<tr>
				<th width="30%"><bean:message key="adm.plazo.nom"/></th><th><bean:message key="adm.acciones"/></th>
			</tr>
			<c:forEach var="plazos" items="${formulariosForm.tiposDePlazos}">
			  <c:if test="${plazos.idPlazo != 1}">
				<tr>
				<td>
				<c:out value="${plazos.nombreDelPlazo}"/> 
				</td>
				<td>
				|<a href="ModificarTipoPlazo.jsp?nombreDelPlazo=<c:out value="${plazos.nombreDelPlazo}"/>&idPlazo=<c:out value="${plazos.idPlazo}"/>"><u><bean:message key="adm.modificar"/></u></a> |<a><u onclick="fnAccion('MostrarCuadro','<c:out value="${plazos.idPlazo}"/>')" class="btnEliminar"><bean:message key="adm.eliminar"/></u></a>
				</td>
				</tr>
				<tr style="display: none;" id="<c:out value="${plazos.idPlazo}"/>">
					<td colspan="8">
						<div class="" align="center" style="width: 100%">	
							<div class="alertaModal" align="center">
				  				<div class="mensaje">
				    				<p class="tit">¿Desea eliminar el Plazo <b><c:out value="${plazos.nombreDelPlazo}"/></b>? <input type="button" class="boton" value="Aceptar" onclick="fnAccion('eliminarDetalleFormulario','<c:out value="${plazos.idPlazo}"/>','<c:out value="${plazos.nombreDelPlazo}"/>')"> <input type="button" class="boton" value="Cancelar" onclick="fnAccion('EsconderCuadro','<c:out value="${plazos.idPlazo}"/>');"></p>
				  				</div>
							</div>
						</div>
					</td>
				</tr>
			  </c:if>	
			</c:forEach>
		</table>
		<div>
		<input class="boton160" type="button" value="<bean:message key="adm.plazo.agregar"/>" onclick="document.location.href='AgregarNuevoTipoPlazo.jsp'">
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
 * Archivo           AdministradorTipoPlazo.jsp
 * Descripción       Administrador de los plazos
 * Versión           1.0
 * Fecha creación    05/03/2012
 * Todos los Derechos Reservados por Banco BCI
 * Historia de cambios
 * versión   fecha          autor                               cambios
  =======   ==========     ==============================      ======================================
   1.0      05/03/2012     Alejandro Barra (CVA Ingeniería)   Creación 
   1.1      29/03/2012     Alejandro Barra (CVA Ingeniería)   Se agrega el tipo de Plazo
******************************************************************************************************
--%>
