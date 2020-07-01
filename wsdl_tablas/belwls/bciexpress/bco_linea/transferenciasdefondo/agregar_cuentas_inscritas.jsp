<%@ page language="java" %>
<jsp:useBean id="sessionBci" scope="session" class="wcorp.model.seguridad.SessionBCI"></jsp:useBean>
<jsp:setProperty name="sessionBci" property="*" />
<% 
String pathJSP     = sessionBci.getCanal().getPathJSP();
String strJS       = pathJSP + "/bciexpress/js"; 
String strCSS      = pathJSP + "/bciexpress/css"; 
%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/c.tld" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="es" xml:lang="es">

<head>
<title>Agregar Cuentas Inscritas</title>
<link rel="stylesheet" type="text/css" href="<%=strCSS %>/menu_left/style.css"/>
<link rel="stylesheet" type="text/css" href="<%=strCSS %>/bciexpress.css"/>
<link rel="stylesheet" type="text/css" href="<%=strCSS %>/estilos_express.css"/>
		
		<script type="text/javascript" src="<%=strJS %>/beebcitools.js"></script>
		<script type="text/javascript" src="js/comunes.js"></script>
		<script type="text/javascript" src="js/transferencias/cuentasInscritas.js"></script>
</head>
<body onload="fnLimpiar();">
<html:form action="/cuentasInscritas" >
<html:hidden property="dvBeneficiario"/>
<input type="hidden" name="accion"/>
  <table width="785" border="0" cellspacing="0" cellpadding="0" align="left">
    <tr valign="top">
      <td width="5">&nbsp;</td>
      <td width="780">
		  <br />
		<div id="tablaDeDatos">
		  <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
		    <tr>
		      <td bgcolor="#FFFFFF" class="tituloSeccion">Transferencia de Fondos<font class="tituloSubSeccion">&nbsp;Agregar Cuenta Inscrita </font> </td>
		    </tr>
		  </table>
		
		  <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
		    <tr>
		    <td bgcolor="#FFFFFF">
		    <c:if test="${!empty requestScope.mensaje}">
		    	<c:choose>
		    	<c:when test="${requestScope.mensaje=='fue Ingresada'}">
		    <div id="cerrar" class="mensaje_plano_ok">
				</c:when>
				<c:otherwise>
					<div id="cerrar" class="mensaje_plano_error">
				</c:otherwise>
				</c:choose>
		    	Estimado Cliente:<br><br>
		    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Su cuenta <b><c:out value="${cuentasInscritasActionForm.nombreDeLaCuenta}"/></b> <c:out value="${requestScope.mensaje}"/>
		    	<div style="text-align: right">
		    		<span style="cursor: pointer;" onclick="fnCerrarVentana('cerrar')"><u><b>Cerrar Ventana</b></u></span>
		    	</div>
		    </div>
		    </c:if>
		    </td>
		    </tr>
		  </table>
		  
		  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
		    <tr valign="top">
		      <td width="100%">
		        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="T0" align="left">
		          <tr valign="top">
		            <td width="100%">
		              <table width="100%" border="0" cellspacing="0" cellpadding="4" align="center" bgcolor="#eeeeee" class="T1">
		                <tr>
		                  <td class="T1_t1">&nbsp;Agregar Cuenta Inscrita</td>
		                </tr>
		              </table>
		              <table border="0" cellspacing="5" cellpadding="4" bgcolor="#FFFFFF" width="100%" class="T2" align="center">
						  <tr>
							<td align="right" width="30%" class="arial10"><b>N° Cuenta Beneficiario :&nbsp;</b></td>
							<td align="left"  width="46%"  class="arial10" colspan="2"><html:text property="numeroDeLaCuenta" onkeypress="return permite(event)" maxlength="18" styleClass="arial10"/><span id="estadoCuenta"></span></td>
							<td align="right" width="10%" class="arial10"><b>Banco :&nbsp;</b></td>
							<td align="left"              class="arial10">
							<html:select property="codigoDelBanco" styleClass="arial10">
									<html:option value="-1">Seleccione Banco</html:option>
									<html:optionsCollection property="bancos" label="banco" value="codCca"/>
							</html:select>
							</td>
						  </tr>
						  <tr>
							<td align="right"  class="arial10"><b>Nombre del Beneficiario :&nbsp;</b></td>
							<td align="left"  colspan="4" ><html:text property="nombreBeneficiario" size="77" maxlength="40"  styleClass="arial10"/></td>
						  </tr>
						  <tr>
							<td align="right" class="arial10"><b>RUT Beneficiario :&nbsp;</b></td>
							<td align="left" ><html:text property="rutBeneficiario" maxlength="13" onkeypress="return permiteRut(event)"  styleClass="arial10"/>
							</td>
							<td align="right" class="arial10"><b>Email Beneficiario :&nbsp;</b></td>
							<td align="left" colspan="2"><html:text property="emailBeneficiario" size="35" maxlength="45"  styleClass="arial10"/>&nbsp;(opcional)</td>
						  </tr>
						  <tr>
							<td align="right" class="arial10"><b>Inscribir Cuenta como :&nbsp;</b></td>
							<td align="left"  colspan="4" ><html:text property="nombreDeLaCuenta" size="50" maxlength="25"  styleClass="arial10"/><span id="estado"></span></td>
						  </tr>
		              </table>
		            </td>
		          </tr>
		        </table>
		      </td>
		    </tr>
		  </table>
		
		  <br />
		
		  <table width="100%" border="0" cellspacing="0" cellpadding="4" align="center" bgcolor="#FFFFFF" >
			<tr>
			  <td width="50%" valign="top" align="left"></td>
			  <td width="50%" valign="top"  align="right">
				<input type="button" value="Agregar"  name="agregar"  onclick="fnValida()"/>
				<input type="button" value="Limpiar" name="limpiar"  onclick="fnLimpiar()"/>
				<input type="button" value="Volver" name="volver"  onClick="doVolver('listarCuentasInscritas')" />
			  </td>
			</tr>
		  </table>
		</div>
	  </td>
	</tr>
</table>
</html:form>
</body>
</html>
<%--
******************************************************************************************************
* Archivo           agregar_cuentas_inscritas.jsp

* Descripción		Se utiliza para agregar nuevas cuentas para realizar transferencias.

* @author           SEnTRA

* Versión           1.0

* Fecha creación    13-10-2009

* Historia de cambios
   versión   fecha      autor   cambios
   =======   ========== ======= =================================
   1.0       13-10-2009 SEnTRA  versión inicial
******************************************************************************************************
--%>
