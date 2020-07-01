<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="es">
<head>

	<title>Formularios De Cr&eacute;dito</title>
	<link href="/workstationwls/css/popup.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/workstationwls/js/valida_hip.js"></script>
	
	<script type="text/javascript">
	function fnAccion(metodo){
		
		document.getElementById('error').innerHTML = '';
		if(document.getElementById('msj') != null){
			document.getElementById('msj').style.display   = 'none';
		}
		
		if(trim(document.forms[0].nombreDelFormulario.value) == ''){
			document.getElementById('error').style.display = '';
			document.getElementById('error').innerHTML = 'Debe ingresar un Nombre al Formulario';
			return;
		}
		if(trim(document.forms[0].urlDelFormulario.value) == ''){
			document.getElementById('error').style.display = '';
			document.getElementById('error').innerHTML = 'Debe ingresar la URL del Documento';
			return;
		}
		
		if(document.forms[0].tipoDeProducto.value == '-1'){
			document.getElementById('error').style.display = '';
			document.getElementById('error').innerHTML = 'Debe seleccionar el Producto';
			return;
		}
		if(document.forms[0].tipoDeMoneda.value == '-1'){
			document.getElementById('error').style.display = '';
			document.getElementById('error').innerHTML = 'Debe seleccionar la Moneda';
			return;
		}
		if(document.forms[0].tipoDeTasa.value == '-1'){
			document.getElementById('error').style.display = '';
			document.getElementById('error').innerHTML = 'Debe seleccionar el Tipo de Tasa';
			return;
		}
		if(document.forms[0].tipoDePlazo.value == '-1'){
			document.getElementById('error').style.display = '';
			document.getElementById('error').innerHTML = 'Debe seleccionar el Tipo de Plazo';
			return;
		}
		
		if(!document.forms[0].estadoDelDocumento[0].checked && !document.forms[0].estadoDelDocumento[1].checked){
			document.getElementById('error').style.display = '';
			document.getElementById('error').innerHTML = 'Debe ingresar el Estado del Formulario';
			return;
		}
		
		
		document.forms[0].metodo.value = 'agregarDetalleFormulario';
		document.forms[0].submit();
	}
	</script>
</head>
<body>
	<fmt:setBundle basename="resources.messages-administracionFormulariosEmpresas"/>
	<html:form action="/administracionFormulario">
		<input type="hidden" name="metodo" value="">
		<html:hidden property="tipoDeFormulario" value="MN"/>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td id="pestana-fd">
					<table border="0" cellpadding="0" cellspacing="0" id="pestana">
						<tr>
							<td id="pestana-left-over">&nbsp;</td>
							<th style="cursor: pointer" onclick="document.location.href='/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionDetalleFormularios'"><fmt:message key="adm.formulario"/></th>
							<td id="pestana-right-over">&nbsp;</td>
							<td id="pestana-left-on">&nbsp;</td>
							<td ><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoProducto"><fmt:message key="adm.productos"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
							<td id="pestana-left-on">&nbsp;</td>
							<td ><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoMoneda"><fmt:message key="adm.monedas"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
							<td id="pestana-left-on">&nbsp;</td>
							<td ><a href="/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionTipoTasa"><fmt:message key="adm.tasas"/></a></td>
							<td id="pestana-right-on">&nbsp;</td>
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
		<legend style="font-size:13px;color: black;"><b><fmt:message key="adm.formulario.agr"/><b></legend>
		<table id="lista-bonita" width="100%" height="100%">
			<tr>
				<th width="20%"><fmt:message key="adm.formulario.nom"/></th><td>
				<html:text property="nombreDelFormulario" styleClass="caja280"/>
				</td>
			</tr>
			<tr>
				<th><fmt:message key="adm.formulario.ruta"/></th><td>
				<html:text property="urlDelFormulario" styleClass="caja280"/>
				</td>
			</tr>
			<tr>
				<th><fmt:message key="adm.formulario.producto"/></th>
				<td>
				
				<html:select property="tipoDeProducto" styleClass="caja160">
					<html:option value="-1">Seleccione</html:option>
					<html:optionsCollection value="idProducto" label="nombreDelProducto" name="formulariosForm" property="tiposDeProductos"/>
				</html:select>
				</td>
			</tr>
			<tr>
				<th><fmt:message key="adm.formulario.moneda"/></th><td>
				<html:select property="tipoDeMoneda" styleClass="caja160">
					<html:option value="-1">Seleccione</html:option>
					<html:optionsCollection value="idMoneda" label="nombreDeLaMoneda" name="formulariosForm" property="tiposDeMonedas"/>
				</html:select>
				</td>
			</tr>
			<tr>
				<th><fmt:message key="adm.formulario.tasa"/></th><td>
				
				<html:select property="tipoDeTasa" styleClass="caja160">
					<html:option value="-1">Seleccione</html:option>
					<html:optionsCollection value="idTasa" label="nombreDeLaTasa" name="formulariosForm" property="tiposDeTasas"/>
				</html:select>
				</td>
			</tr>
			<tr>
				<th><fmt:message key="adm.formulario.plazo"/></th><td>
				
				<html:select property="tipoDePlazo" styleClass="caja160">
					<html:option value="-1">Seleccione</html:option>
					<html:optionsCollection value="idPlazo" label="nombreDelPlazo" name="formulariosForm" property="tiposDePlazos"/>
				</html:select>
				</td>
			</tr>
			<tr>
				<th><fmt:message key="adm.formulario.estado"/></th>
				<td>
				<html:radio property="estadoDelDocumento" value="ACTIVO"   styleClass="radio"/><fmt:message key="adm.agregarForm.estado.AC"/>
				<html:radio property="estadoDelDocumento" value="INACTIVO" styleClass="radio"/><fmt:message key="adm.agregarForm.estado.IN"/>
				</td>
			</tr>
		</table>
		<div>
		<input class="boton160" type="button" value="<fmt:message key="adm.guardar"/>" onclick="fnAccion('Guardar')">
		</div>
		</fieldset>
		</td>
		</tr>
		</table>
		
	</html:form>
</body>
</html>
<%--
 ******************************************************************************************************
 * Archivo           AgregarNuevoDetalleFormulario.jsp
 * Descripción       Agrega un nuevo formulario
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
