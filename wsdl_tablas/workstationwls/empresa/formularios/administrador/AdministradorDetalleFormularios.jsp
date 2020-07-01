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
	</style>
	<link href="/workstationwls/css/popup.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" 	src="/portalwls/transferenciaalextranjero/js/lightbox.js"></script>
	<script type="text/javascript">
	function fnAccion(metodo,idSolicitud,target,nombreDelCliente, correoDelCliente, estadoSolicitud){
		if(metodo == 'MostrarCuadro'){
			document.getElementById(idSolicitud).style.display = '';
			return;
		}
		if(metodo == 'EsconderCuadro'){
			document.getElementById(idSolicitud).style.display = 'none';
			return;
		}
		document.forms[0].idDelFormulario.value = idSolicitud;
		document.forms[0].metodo.value = 'eliminarDetalleFormulario';
		document.forms[0].submit();
		
	}
	function fnAgregarFormulario(){
		document.forms[0].metodo.value = 'redireccionarAgregarFormulario';
		document.forms[0].submit();
		
	}
	
	function fnModificar(idFormulario){
		document.forms[0].idDelFormulario.value = idFormulario;
		document.forms[0].metodo.value = 'obtenerDetalleFormulario';
		document.forms[0].submit();
	}
	
	</script>
	
</head>
<body>
	<form action="administracionFormulario.do" target="">
		<input type="hidden" name="metodo" value="">
		<input type="hidden" name="idDelFormulario" value="">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td id="pestana-fd">
					<table border="0" cellpadding="0" cellspacing="0" id="pestana">
						<tr>
							<td id="pestana-left-over">&nbsp;</td>
							<th><bean:message key="adm.formulario"/></th>
							<td id="pestana-right-over">&nbsp;</td>
							<td id="pestana-left-on">&nbsp;</td>
							<td ><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoProducto"><bean:message key="adm.productos"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
							<td id="pestana-left-on">&nbsp;</td>
							<td ><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoMoneda"><bean:message key="adm.monedas"/></a></td>
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
		<table width="100%" >
		<tr>
		<td>
		<c:if test="${!empty requestScope.mensaje}">
		<div id="msj" class="subtitulo">
			<c:out value="${requestScope.mensaje}"/>
		</div>
		</c:if>
		<fieldset>
		<legend style="font-size:13px;color: black;"><b><bean:message key="adm.formulario.ing"/><b></legend>
		<table id="lista-bonita" width="100%" height="100%">
		<tr>
			<th width="40%"><bean:message key="adm.formulario.nom"/></th><th><bean:message key="adm.formulario.ruta"/></th><th><bean:message key="adm.formulario.tipoForm"/></th><th><bean:message key="adm.formulario.producto"/></th><th><bean:message key="adm.formulario.moneda"/></th><th><bean:message key="adm.formulario.tasa"/></th><th><bean:message key="adm.formulario.plazo"/></th><th><bean:message key="adm.formulario.estado"/></th><th><bean:message key="adm.formulario.acciones"/></th>
		</tr>
		<c:forEach var="formulario" items="${formulariosForm.detallesFormularios}">
		<tr>
		<td >
		<c:out value="${formulario.nombreDelFormulario}"/>
		</td>
		<td>
		<c:out value="${formulario.urlDelFormulario}"/>
		</td>
		<td>
		<c:out value="${formulario.glosaTipoDeFormulario}"/>
		</td>
		<td>
		<c:out value="${formulario.glosaTipoProducto}"/>
		</td>
		<td>
		<c:out value="${formulario.glosaTipoMoneda}"/>
		</td>
		<td>
		<c:out value="${formulario.glosaTipoTasa}"/>
		</td>
		<td>
		<c:out value="${formulario.glosaTipoPlazo}"/>
		</td>
		<td>
		<c:out value="${formulario.estadoDelFormulario}"/>
		</td>
		<td>
		|<a href="#" onclick="fnModificar('<c:out value="${formulario.formularioID}"/>')"><u><bean:message key="adm.modificar"/></u></a> |<a><u onclick="fnAccion('MostrarCuadro','<c:out value="${formulario.formularioID}"/>')" class="btnEliminar" ><bean:message key="adm.eliminar"/></u></a>
		</td>
		</tr>
		<tr style="display: none;" id="<c:out value="${formulario.formularioID}"/>">
		<td colspan="8">
			<div class="" align="center" style="width: 100%">
				<div class="alertaModal" align="center">
	  				<div class="mensaje">
	    				<p class="tit">¿Desea eliminar el Formulario <b><c:out value="${formulario.nombreDelFormulario}"/></b>? <input type="button" class="boton" value="Aceptar" onclick="fnAccion('eliminarDetalleFormulario','<c:out value="${formulario.formularioID}"/>','_top')"> <input type="button" class="boton" value="Cancelar" onclick="fnAccion('EsconderCuadro','<c:out value="${formulario.formularioID}"/>');"></p>
	  				</div>
				</div>
			</div>
		</td>
		</tr>
		</c:forEach>
		</table>
		<div>
		<input class="boton160" type="button" value="<bean:message key="adm.formulario.agregar"/>" onclick="fnAgregarFormulario()">
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
 * Archivo           AdministradorDetalleFormularios.jsp
 * Descripción       Administrador de los formularios
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