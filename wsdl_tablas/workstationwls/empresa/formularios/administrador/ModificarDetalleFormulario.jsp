<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
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
		
		document.forms[0].metodo.value = 'modificarDetalleFormulario';
		document.forms[0].submit();
	}
	</script>
</head>
<body>
	<html:form action="/administracionFormulario">
		<input type="hidden" name="metodo" value="">
		<input type="hidden" name="idDelFormulario" value="<c:out value="${formulariosForm.idDelFormulario}"/>">
		<input type="hidden" name="nombreFormulario" value="<c:out value="${formulariosForm.nombreDelFormulario}"/>">
		<input type="hidden" name="tipoDeFormulario" value="MN"> 
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td id="pestana-fd">
					<table border="0" cellpadding="0" cellspacing="0" id="pestana">
						<tr>
							<td id="pestana-left-over">&nbsp;</td>
							<th style="cursor: pointer" onclick="document.location.href='/workstationwls/empresa/formularios/administrador/administracionFormulario.do?metodo=desplegarAdministracionDetalleFormularios'"><bean:message key="adm.formulario"/></th>
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
		<div id="error" class="subtitulo" style="display: none;"></div>
		<c:if test="${!empty requestScope.mensaje}">
		<div id="msj" class="subtitulo">
			<c:out value="${requestScope.mensaje}"/>
		</div>
		</c:if>
		<fieldset>
		<legend style="font-size:13px;color: black;"><b><bean:message key="adm.formulario.mod"/></legend>
		<table id="lista-bonita" width="100%" height="100%">
			<tr>
			
				<th width="20%"><bean:message key="adm.formulario.nom"/></th><td>
				<html:text property="nombreDelFormulario" style="width: 50%" styleClass="caja280"/>
				</td>
			</tr>
			<tr>
				<th><bean:message key="adm.formulario.ruta"/></th><td><input class="caja280" type="text" name="urlDelFormulario"  value="<c:out value="${formulariosForm.urlDelFormulario}"/>"></td>
			</tr>
			<tr>
				<th><bean:message key="adm.formulario.producto"/></th>
				<td>
				<select class="caja160" name="tipoDeProducto">
					<option value="-1">Seleccione</option>
					<c:forEach var="producto" items="${formulariosForm.tiposDeProductos}">
						<option <c:if test="${producto.idProducto == formulariosForm.tipoDeProducto}">selected="selected"</c:if> value="<c:out value="${producto.idProducto}"/>">
							<c:out value="${producto.nombreDelProducto}"/>
						</option>
					</c:forEach>	
				</select> 
				</td>
			</tr>
			<tr>
				<th><bean:message key="adm.formulario.moneda"/></th>
				<td>
				<select class="caja160" name="tipoDeMoneda">
					<option value="-1">Seleccione</option>
					<c:forEach var="moneda" items="${formulariosForm.tiposDeMonedas}">
						<option <c:if test="${moneda.idMoneda == formulariosForm.tipoDeMoneda}">selected="selected"</c:if> value="<c:out value="${moneda.idMoneda}"/>">
							<c:out value="${moneda.nombreDeLaMoneda}"/>
						</option>
					</c:forEach>
				</select> 
				</td>
			</tr>
			<tr>
				<th><bean:message key="adm.formulario.tasa"/></th>
				<td>
				<select class="caja160" name="tipoDeTasa">
				<option value="-1">Seleccione</option>
					<c:forEach var="tasa" items="${formulariosForm.tiposDeTasas}">
							<option <c:if test="${tasa.idTasa == formulariosForm.tipoDeTasa}">selected="selected"</c:if> value="<c:out value="${tasa.idTasa}"/>">
							<c:out value="${tasa.nombreDeLaTasa}"/>
							</option>
					</c:forEach>
				</select> 
				</td>
			</tr>
			<tr>
				<th><bean:message key="adm.formulario.plazo"/></th>
				<td>
				<select class="caja160" name="tipoDePlazo">
				<option value="-1">Seleccione</option>
					<c:forEach var="plazo" items="${formulariosForm.tiposDePlazos}">
							<option <c:if test="${plazo.idPlazo == formulariosForm.tipoDePlazo}">selected="selected"</c:if> value="<c:out value="${plazo.idPlazo}"/>">
							<c:out value="${plazo.nombreDelPlazo}"/>
							</option>
					</c:forEach>
				</select> 
				</td>
			</tr>
			<tr>
				<th><bean:message key="adm.formulario.estado"/></th>
				<td>
					<input class="radio" type="radio" value="ACTIVO"   name="estadoDelDocumento" <c:if test="${formulariosForm.estadoDelDocumento == 'ACTIVO'}">checked="checked"</c:if> ><bean:message key="adm.agregarForm.estado.AC"/>
					<input class="radio" type="radio" value="INACTIVO" name="estadoDelDocumento" <c:if test="${formulariosForm.estadoDelDocumento == 'INACTIVO'}">checked="checked"</c:if> ><bean:message key="adm.agregarForm.estado.IN"/>
				</td>
			</tr>
		</table>
		<div>
		<input class="boton160" type="button" value="<bean:message key="adm.modificar"/>" onclick="fnAccion()">
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
 * Archivo           ModificarDetalleFormulario.jsp
 * Descripción       Modifica un formulario
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