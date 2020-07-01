<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page import="wcorp.util.TablaValores"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"  prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html"  prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<jsp:useBean id="sessionBci" scope="session" class="wcorp.model.seguridad.SessionBCI"></jsp:useBean>
<jsp:setProperty name="sessionBci" property="*" />
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Formularios BCI Express</title>
    
	<link rel="stylesheet" href="/belwls/bciexpress/css/estilos-bci.css" type="text/css"/>
	<link rel="stylesheet" href="/belwls/bciexpress/css/menu_left/style.css" type="text/css"/>
	<link rel="stylesheet" href="/belwls/bciexpress/css/estilos_express.css" type="text/css"/>
	
	<%
	  String frames_body_array  = (String) sessionBci.getAttrib("frames_body_array"); // BCI
	  String fmenuitems         = (String) sessionBci.getAttrib("fmenuitems"); // BCI
	  String pathJSP     = sessionBci.getCanal().getPathJSP();
	  String strJS       = pathJSP + "/bciexpress/js";
	%>
	<script type="text/javascript" src="/belwls/portalcomex/comun/js/jquery.js"></script>
	<!--menu top-->
		<script language="JavaScript" src="<%=strJS%>/menu_frame/frames_body_array.js" type="text/javascript"></script>
		<script language="JavaScript">
		<%=frames_body_array%>
		</script>
		<script language="JavaScript" src="<%=strJS%>/menu_frame/mmenu.js" type="text/javascript"></script>
		<!-- menu izquierdo -->
		<script type="text/javascript" src="<%=strJS%>/menu_left/coolmenu.js"></script>
		<script type="text/javascript" src="<%=strJS%>/menu_left/fmenuitems.js"></script>
		<script type="text/javascript"><%=fmenuitems%></script>
		
		
    <script type="text/javascript">
     function filtrarResultados(){
     	var producto = document.forms[0].tipoDeProducto.value;
     	var moneda   = document.forms[0].tipoDeMoneda.value;
     	var tasa     = document.forms[0].tipoDeTasa.value;
     	var plazo    = document.forms[0].tipoDePlazo.value;
     	$.ajax( {
				type : "POST",
				url : "inicioFormulario.do?metodo=obtenerFiltrosDeBusqueda",
				data : "&tipoDeProducto=" + producto + "&tipoDeMoneda=" + moneda +
					   "&tipoDeTasa="     + tasa     + "&tipoDePlazo="  + plazo,
				success : function(msg) {
					var xmlDoc;
					if (window.DOMParser) {
						parser = new DOMParser();
						xmlDoc = parser.parseFromString(msg, "text/xml");
					} else {// Internet Explorer
				    	xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
						xmlDoc.async = "false";
						xmlDoc.loadXML(msg);
					}
					if(xmlDoc.getElementsByTagName("tieneResultado")[0].childNodes[0].nodeValue == "SI"){
						if(document.forms[0].tipoDeProducto.value == '-1'){
							var caja = '<select name="tipoDeProducto" style="width: 210px" onchange="filtrarResultados()" >';
							caja += '<option value="-1">Todos</option>';
							var cant = (xmlDoc.getElementsByTagName("idProducto").length);
							
							for(n=0;n<cant;n++){
								if(parseInt(xmlDoc.getElementsByTagName("idProducto")[n].childNodes[0].nodeValue) != 1){
									caja += '<option value='+xmlDoc.getElementsByTagName("idProducto")[n].childNodes[0].nodeValue+'>'+xmlDoc.getElementsByTagName("nombreDelProducto")[n].childNodes[0].nodeValue+'</option>';
								}
							}
							caja+='</select>';
							document.getElementById('producto').innerHTML = caja;
							
						} 
						
						if(document.forms[0].tipoDeMoneda.value == '-1'){
							var caja = '<select name="tipoDeMoneda" style="width: 150px" onchange="filtrarResultados()" >';
							caja += '<option value="-1">Todos</option>';
							var cant = (xmlDoc.getElementsByTagName("idMoneda").length);
							for(n=0;n<cant;n++){
								if(parseInt(xmlDoc.getElementsByTagName("idMoneda")[n].childNodes[0].nodeValue) != 1){
									caja += '<option value='+xmlDoc.getElementsByTagName("idMoneda")[n].childNodes[0].nodeValue+'>'+xmlDoc.getElementsByTagName("nombreDeLaMoneda")[n].childNodes[0].nodeValue+'</option>';
								}
							}
							caja+='</select>';
							document.getElementById('moneda').innerHTML = caja;
						}
						
						if(document.forms[0].tipoDeTasa.value == '-1'){
							var caja = '<select name="tipoDeTasa" style="width: 150px" onchange="filtrarResultados()" >';
							caja += '<option value="-1">Todos</option>';
							var cant = (xmlDoc.getElementsByTagName("idTasa").length);
							for(n=0;n<cant;n++){
								if(parseInt(xmlDoc.getElementsByTagName("idTasa")[n].childNodes[0].nodeValue) != 1){
									caja += '<option value='+xmlDoc.getElementsByTagName("idTasa")[n].childNodes[0].nodeValue+'>'+xmlDoc.getElementsByTagName("nombreDeLaTasa")[n].childNodes[0].nodeValue+'</option>';
								}
							}
							caja+='</select>';
							document.getElementById('tasa').innerHTML = caja;
						}
						
						if(document.forms[0].tipoDePlazo.value == '-1'){
							var caja = '<select name="tipoDePlazo" style="width: 150px" onchange="filtrarResultados()" >';
							caja += '<option value="-1">Todos</option>';
							var cant = (xmlDoc.getElementsByTagName("idPlazo").length);
							for(n=0;n<cant;n++){
								if(parseInt(xmlDoc.getElementsByTagName("idPlazo")[n].childNodes[0].nodeValue) != 1){
									caja += '<option value='+xmlDoc.getElementsByTagName("idPlazo")[n].childNodes[0].nodeValue+'>'+xmlDoc.getElementsByTagName("nombreDelPlazo")[n].childNodes[0].nodeValue+'</option>';
								}
							}
							caja+='</select>';
							document.getElementById('plazo').innerHTML = caja;
						}
					}
					else{
						alert('La consulta no tiene resultados');
					}
					}
		});
     }
    function fnPDF(urlDelDocumento,nombreDelDocumento,idFormulario){
        var url = "/belwls/bciexpress/bco_linea/formularios/documentos/inicioFormulario.do?metodo=desplegarFormulario";
    	url = url +  "&urlDelFormulario=" + urlDelDocumento + "&nombreDelFormulario=" + nombreDelDocumento + "&idDelFormulario=" + idFormulario;
    	window.open(url);
    	return;
    }
    function fnBuscar(){
        document.forms[0].target = ""; 
    	document.forms[0].metodo.value              = 'buscarFormularios';
    	document.forms[0].submit();
    	
    	return;
    }

    function verocultar(cual) {
          var c=cual.nextSibling;
          if(c.style.display=='none') {
               c.style.display='block';
          } else {
               c.style.display='none';
          }
          return false;
     }
    
    </script>
    
  </head>
  <body style="font-family: arial; font-size: 11px">
    <table width="1024">
    <tr valign="top">
    <td width="160">
    	<script type="text/javascript">
		new COOLjsMenu("menu_contratos", MENU_CONTRATO);
		</script>
    </td>
    <td width="864">
    <html:form action="/inicioFormulario" >
   <html:hidden value="" property="metodo"/>
   <html:hidden value="" property="urlDelFormulario"/>
   <html:hidden value="" property="nombreDelFormulario"/>
   <html:hidden value="" property="idDelFormulario"/>
   <html:hidden value="-1" property="tipoDeFormulario"/>
   
    <div class="tbl-box shadow">
		<div class="tit-tbl" id="tit-tbl_factoring">
			<h3><%= TablaValores.getValor("formulariosYContratos.parametros","titulo","desc") %></h3>
		</div>
		<div class="tbl-content" id="tbl_content_factoring">
		    <fieldset id="linea" style="width: 92%">
						<div class="caja-mensaje caja-mensaje-s" style="font-family: arial; font-size: 11px;width: 94%;margin-left: 2px">
						<%= TablaValores.getValor("formulariosYContratos.parametros","aviso","desc") %>
						</div>
			</fieldset>
				<br/><br/>
				<div class="tbl-content" style="width: 90%" id="linea">
				<div style="margin-left: 10px"><%= TablaValores.getValor("formulariosYContratos.parametros","informacion","desc") %>
				<fieldset>
				<a onclick="return verocultar(this);" href="javascript:void(0);">Desplegar / Ocultar Cuadro</a><div style="display: none;">
				<table align="center" bordercolor="#CCCCCC" border="1"  cellspacing="0" cellpadding="1" width="100%">
				<tr>
				<td bgcolor="#999999"><b><%= TablaValores.getValor("formulariosYContratos.parametros","tabla1","producto") %></b></td>
				<td bgcolor="#999999"><b><%= TablaValores.getValor("formulariosYContratos.parametros","tabla1","desc") %></b></td>
				</tr>
				<tr>
				<td rowspan="4"><%= TablaValores.getValor("formulariosYContratos.parametros","tabla2","producto") %></td>
				<td bgcolor="#DDDDDD"><%= TablaValores.getValor("formulariosYContratos.parametros","tabla2","desc1") %></td>
				</tr>
				<tr>
				<td><%= TablaValores.getValor("formulariosYContratos.parametros","tabla2","desc2") %></td>
				</tr>
				<tr>
				<td bgcolor="#DDDDDD"><%= TablaValores.getValor("formulariosYContratos.parametros","tabla2","desc4") %></td>
				</tr>
				<td ><%= TablaValores.getValor("formulariosYContratos.parametros","tabla2","desc5") %></td>
				</tr>
				
				<tr>
				<td rowspan="4"><%= TablaValores.getValor("formulariosYContratos.parametros","tabla3","producto") %></td>
				<td><%= TablaValores.getValor("formulariosYContratos.parametros","tabla3","desc1") %></td>
				</tr>
				<tr>
				<td bgcolor="#DDDDDD"><%= TablaValores.getValor("formulariosYContratos.parametros","tabla3","desc2") %></td>
				</tr>
				<tr>
				<td><%= TablaValores.getValor("formulariosYContratos.parametros","tabla3","desc3") %></td>
				</tr>
				<tr>
				<td bgcolor="#DDDDDD"><%= TablaValores.getValor("formulariosYContratos.parametros","tabla3","desc4") %></td>
				</tr>
				<tr>
				<td rowspan="3"><%= TablaValores.getValor("formulariosYContratos.parametros","tabla4","producto") %></td>
				<td><%= TablaValores.getValor("formulariosYContratos.parametros","tabla4","desc1") %></td>
				</tr>
				<tr>
				<td bgcolor="#DDDDDD"><%= TablaValores.getValor("formulariosYContratos.parametros","tabla4","desc2") %></td>
				</tr>
				<tr>
				<td><%= TablaValores.getValor("formulariosYContratos.parametros","tabla4","desc3") %></td>
				</tr>
				<tr>
				<td rowspan="2"><%= TablaValores.getValor("formulariosYContratos.parametros","tabla5","producto") %></td>
				<td bgcolor="#DDDDDD"><%= TablaValores.getValor("formulariosYContratos.parametros","tabla5","desc1") %></td>
				</tr>
				<tr>
				<td><%= TablaValores.getValor("formulariosYContratos.parametros","tabla5","desc2") %></td>
				</tr>
				</table>
				</fieldset>
				</div>
				<fieldset id="linea" style="width: 98%">
					<c:if test="${!empty formulariosForm.formulariosUsados}">
					<legend style="color: black;"><b><%= TablaValores.getValor("formulariosYContratos.parametros","formulariosUsados","desc1") %></b></legend>
					<table style="font-family: arial; font-size: 11px">
					<c:forEach var="formulariosUsados" items="${formulariosForm.formulariosUsados}" begin="0" end="9" step="1">
					<tr>
					<td><a href="#" onclick="fnPDF('<c:out value="${formulariosUsados.urlDelFormulario}"/>','<c:out value="${formulariosUsados.nombreDelFormulario}"/>','<c:out value="${formulariosUsados.formularioID}"/>')"><c:out value="${formulariosUsados.nombreDelFormulario}"/></a></td>
					</tr>
					</c:forEach>
					</table>
					</c:if>
					<c:if test="${empty formulariosForm.formulariosUsados}">
					<legend style="color: black;"><b><%= TablaValores.getValor("formulariosYContratos.parametros","formulariosUsados","desc1") %></b></legend>
					<table style="font-family: arial; font-size: 11px;" width="95%">
					<tr>
					<td width="90%">
						<div class="caja-mensaje caja-mensaje-s" style="font-family: arial; font-size: 11px;width: 100%">
						<%= TablaValores.getValor("formulariosYContratos.parametros","formulariosUsados","desc2") %> 
						</div>
					</td>
					</tr>
					</table>
					</c:if>
				</fieldset>
				<fieldset id="linea" style="width: 98%" style="font-family: arial; font-size: 11px">
				<legend style="color: black;"><b><%= TablaValores.getValor("formulariosYContratos.parametros","criterio","desc") %></b></legend>
				<table width="100%" style="font-family: arial; font-size: 11px">
				<tr>
				<td><%= TablaValores.getValor("formulariosYContratos.parametros","msjTipoBusqueda","desc2") %></td>
				<td><%= TablaValores.getValor("formulariosYContratos.parametros","msjTipoBusqueda","desc3") %></td>
				<td><%= TablaValores.getValor("formulariosYContratos.parametros","msjTipoBusqueda","desc4") %></td>
				<td><%= TablaValores.getValor("formulariosYContratos.parametros","msjTipoBusqueda","desc5") %></td>
				<td>&nbsp;</td>
				</tr>
				<tr>
				<td id="producto">
				<html:select property="tipoDeProducto" style="width: 210px" onchange="filtrarResultados()" >
					<html:option value="-1">Todos</html:option>
					<logic:iterate id="producto" property="tiposDeProductos" name="formulariosForm">
						<logic:notEqual name="producto" property="idProducto"  value="1">
							<bean:define id="idprod" name="producto" property="idProducto" type="java.lang.Integer"/>
							<html:option value="<%=String.valueOf(idprod)%>"><bean:write name="producto" property="nombreDelProducto"/></html:option>
						</logic:notEqual>
					</logic:iterate>
				</html:select>
				</td>
				<td id="moneda">
				<html:select property="tipoDeMoneda" style="width: 150px" onchange="filtrarResultados()">
					<html:option value="-1">Todos</html:option>
					<logic:iterate id="moneda" property="tiposDeMonedas" name="formulariosForm">
						<logic:notEqual name="moneda" property="idMoneda"  value="1">
							<bean:define id="idmone" name="moneda" property="idMoneda" type="java.lang.Integer"/>
							<html:option value="<%=String.valueOf(idmone)%>"><bean:write name="moneda" property="nombreDeLaMoneda"/></html:option>
						</logic:notEqual>
					</logic:iterate>
				</html:select>
				</td>
				<td id="tasa">
				<html:select property="tipoDeTasa" style="width: 150px" onchange="filtrarResultados()">
					<html:option value="-1">Todos</html:option>
					<logic:iterate id="tasa" property="tiposDeTasas" name="formulariosForm">
						<logic:notEqual name="tasa" property="idTasa"  value="1">
							<bean:define id="idtasa" name="tasa" property="idTasa" type="java.lang.Integer"/>
							<html:option value="<%=String.valueOf(idtasa)%>"><bean:write name="tasa" property="nombreDeLaTasa"/></html:option>
						</logic:notEqual>
					</logic:iterate>
				</html:select>
				</td>
				<td id="plazo">
				<html:select property="tipoDePlazo" style="width: 150px" onchange="filtrarResultados()">
					<html:option value="-1">Todos</html:option>
					<logic:iterate id="plazo" property="tiposDePlazos" name="formulariosForm">
						<logic:notEqual name="plazo" property="idPlazo"  value="1">
							<bean:define id="idplazo" name="plazo" property="idPlazo" type="java.lang.Integer"/>
							<html:option value="<%=String.valueOf(idplazo)%>"><bean:write name="plazo" property="nombreDelPlazo"/></html:option>
						</logic:notEqual>
					</logic:iterate>
				</html:select>
				</td>
				<td>
				<input type="button" onclick="fnBuscar()" value="Buscar">
				</td>
				</tr>
				</table>
				</fieldset>
				<c:if test="${!empty primeraVez}">
				<fieldset id="linea" style="width: 92%">
					<c:if test="${!empty formulariosEncontrados}">
					<legend style="color: black;"><b><%= TablaValores.getValor("formulariosYContratos.parametros","formularios","desc1") %></b></legend>
					<table style="font-family: arial; font-size: 11px">
					<c:forEach var="formularios" items="${formulariosForm.detallesFormularios}">
					<tr>
					<td><a href="#" onclick="fnPDF('<c:out value="${formularios.urlDelFormulario}"/>','<c:out value="${formularios.nombreDelFormulario}"/>','<c:out value="${formularios.formularioID}"/>')"><c:out value="${formularios.nombreDelFormulario}"/></a></td>
					</tr>
					</c:forEach>
					</table>
					</c:if>
					<c:if test="${empty formulariosEncontrados}">
					<legend style="color: black;"><b><%= TablaValores.getValor("formulariosYContratos.parametros","formularios","desc2") %></b></legend>
					<table style="font-family: arial; font-size: 11px;" width="95%">
					<tr>
					<td width="90%">
						<div class="caja-mensaje caja-mensaje-s" style="font-family: arial; font-size: 11px;width: 100%">
						<%= TablaValores.getValor("formulariosYContratos.parametros","sinDocumento","desc") %> 
						</div>
					</td>
					</tr>
					</table>
					</c:if>
				</fieldset>
				</c:if>
			</div>
		</div>
	</div>
	</html:form>
    </td>
    </tr>
    </table>
  </body>
</html>
<%--
 ******************************************************************************************************
 * Archivo           BusquedaFormularios.jsp
 * Descripcin       Busqueda de formualarios.
 * Versin           1.0
 * Fecha creacin    31/08/2011
 * Todos los Derechos Reservados por Banco BCI
 * Historia de cambios
 * versin   fecha          autor                               cambios
  =======   ==========     ==============================      ======================================
   1.0      31/08/2011     Alejandro Barra (CVA Ingeniera)   Creacin 
   1.1      29/11/2011     Jaime Pezoa Nez (BCI)            Se modifica Look & Feel de la pgina. 
   1.2      10/01/2012     Alejandro Barra (CVA Ingeniera)  Se agregan los formularios Usados.
   1.3      14/03/2021     Alejandro Barra (CVA Ingeniera)  Se modifica para hacer los filtros inteligentes.
******************************************************************************************************
--%>
