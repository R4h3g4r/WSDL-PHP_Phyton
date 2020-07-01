<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page import="wcorp.aplicaciones.productos.factoring.consultas.to.InformacionHoldingTO"%>
<%@ page import ="wcorp.aplicaciones.productos.factoring.consultas.struts.forms.PortalFinanciamientoForm"%>
<HTML>
<HEAD>
<TITLE>Bienvenido Proveedor</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<STYLE type=text/css></STYLE>

<SCRIPT src="js/valores.js"></SCRIPT>
<SCRIPT src="js/cambioclave.js"></SCRIPT>
<script language="javascript" src="/belwls/factoring/portalfinanciamiento/js/configuracion.js"          type="text/javascript"></script>
<link rel="stylesheet" href="/belwls/factoring/portalfinanciamiento/css/estilo-paginas.css" type="text/css" media="all">

<SCRIPT src="/belwls/factoring/portalfinanciamiento/js/libreriaBci.js"></SCRIPT>
<SCRIPT>

function ChequearTodos(chkbox, obj2){

	x = document.getElementsByName(obj2);
	if (x != null){
		for (var i=0;i < x.length;i++){
			var elemento = x[i];
			elemento.checked = chkbox.checked
		}
	}	
	
}

function enviar(pos) {

	formulario = document.getElementById('PortalFinanciamientoForm');
	if (pos == ""){
		if (!validarCheck()){
			alert("Debe al menos seleccionar uno para ver resumen");
			return false;
		} else {		
			x   = formulario.getElementsByTagName('input');
			if (x != null){
				for (var i=0;i < x.length;i++){
					if(x[i].id=='indicePagadores'){
						var elemento = x[i];
						if (elemento.checked){
						} else {
							var cad = elemento.value
							document.getElementById("rutPagador"+cad).disabled = "disabled"
							document.getElementById("razonSocialPagador"+cad).disabled = "disabled"
						}
					}
				}
			}
		}	
	} else {
		x   = formulario.getElementsByTagName('input');
		if (x != null){
			for (var i=0;i < x.length;i++){
				if(x[i].id=='indicePagadores'){
					x[i].checked = false;
					if (x[i].value == pos){
						var elemento = x[i];
						elemento.checked = true
						formulario.rutEmpresaPagadora.value = document.getElementById("rutPagador"+pos).value;
						formulario.digitoVerificadorPagador.value=document.getElementById("digitoVerificadorPagador"+pos).value;;
					}
				}
			}
		}
	}

	document.getElementById('cargando' + pos).innerHTML = '<img onClick="" src="/belwls/bciexpress/img/ajax-loader.gif" border="0" id="cargando' + pos + '">';
	document.getElementById('PortalFinanciamientoForm').action = "/belwls/factoring/portalfinanciamiento/traerResumenCuentaProveedorAction.do";
	document.getElementById('PortalFinanciamientoForm').submit();

}

function validarCheck(){
	
	var estado = "false";
	x   = formulario.getElementsByTagName('input');
	if (x != null){
		for (var i=0;i < x.length;i++){
			if(x[i].id=='indicePagadores'){
				var elemento = x[i];
				if (elemento.checked){
					estado = "true"
				}
			}
		}
	}	
	if (estado == "true"){
		return true;
	} else {
		return false;
	}
	
}

function inicio()
{
	formulario = document.getElementById('PortalFinanciamientoForm');
	document.getElementById('PortalFinanciamientoForm').action = "/belwls/factoring/portalfinanciamiento/cerrarSesionAction.do";
	document.getElementById('PortalFinanciamientoForm').submit();

}

function cerrarSesion()
{
	formulario = document.getElementById('PortalFinanciamientoForm');
	document.getElementById('PortalFinanciamientoForm').action = "/belwls/factoring/portalfinanciamiento/cerrarSesionAction.do";
	document.getElementById('PortalFinanciamientoForm').submit();
}

function traerConsultasProveedor() {

	formulario = document.getElementById('PortalFinanciamientoForm');
	document.getElementById('PortalFinanciamientoForm').action = "/belwls/factoring/portalfinanciamiento/desplegarInterfazDeConsultaAction.do";
	document.getElementById('PortalFinanciamientoForm').submit();

}

</SCRIPT>

<%

	InformacionHoldingTO informacionHoldingTO = (InformacionHoldingTO) request.getAttribute("informacionHoldingTO");
	PortalFinanciamientoForm portalFinanciamientoForm = (PortalFinanciamientoForm) request.getAttribute("portalFinanciamientoForm");

%>

<META content="MSHTML 6.00.2800.1141" name=GENERATOR>
</HEAD>
<BODY text=#000000 link=#666666 bgColor=#ffffff leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<BR>
<FORM name="PortalFinanciamientoForm" id="PortalFinanciamientoForm" method="post" >

	<INPUT type="hidden" name="rutUsuario"   value="">
	<INPUT type="hidden" name="digitoVerificadorUsuario"   value="">

	<INPUT type="hidden" name="codigoColorCorporativo" id="codigoColorCorporativo" value="<c:out value='${requestScope.informacionHoldingTO.informacionInterfazTO.codigoColorCorporativo}'/>">
	
	<INPUT type="hidden" name="imagenBanco" id="imagenBanco" value="<c:out value='${requestScope.informacionHoldingTO.informacionInterfazTO.imagenBanco}'/>">
	<INPUT type="hidden" name="ubicacionImagenCorporativa" id="ubicacionImagenCorporativa" value="<c:out value='${requestScope.informacionHoldingTO.informacionInterfazTO.ubicacionImagenCorporativa}'/>">
	<INPUT type="hidden" name="imagenCorporativa" id="imagenCorporativa" value="<c:out value='${requestScope.informacionHoldingTO.informacionInterfazTO.imagenCorporativa}'/>">	

	<INPUT type="hidden" name="rutDelHolding" id="rutDelHolding" value="<%=portalFinanciamientoForm.getRutDelHolding()%>">
	<INPUT type="hidden" name="digitoVerificadorDelHolding" id="digitoVerificadorDelHolding"  value="<%=portalFinanciamientoForm.getDigitoVerificadorDelHolding()%>">

	<INPUT type="hidden" name="rutEmpresaRepresentada" id="rutEmpresaRepresentada" value="<%=portalFinanciamientoForm.getRutEmpresaRepresentada()%>">
	<INPUT type="hidden" name="digitoVerificadorEmpresaRepresentada" id="digitoVerificadorEmpresaRepresentada" value="<%=portalFinanciamientoForm.getDigitoVerificadorEmpresaRepresentada()%>">

	<INPUT type="hidden" name="rutEmpresaPagadora" id="rutEmpresaPagadora" value="">
	<INPUT type="hidden" name="digitoVerificadorPagador" id="digitoVerificadorPagador" value="">	
	<INPUT type="hidden" name="razonSocialPagador" id="razonSocialPagador" value="">	
	
	<INPUT type="hidden" name="rutProveedor" id="rutProveedor" value="<%=portalFinanciamientoForm.getRutProveedor()%>">
	<INPUT type="hidden" name="digitoVerificadorProveedor" id="digitoVerificadorProveedor" value="<%=portalFinanciamientoForm.getDigitoVerificadorProveedor()%>">	
	<INPUT type="hidden" name="tipoDeConsulta" id="tipoDeConsulta" value="interfazProveedor">			
	<table border="0" cellpadding="0" cellspacing="0" width="78%" align="center" >
		<tr>
			<c:choose>
				<c:when test="${requestScope.informacionHoldingTO.informacionInterfazTO.imagenCorporativa == 'SI'}">
					<td valign="top" width="20%" align="left">
						<img src="<c:out value='${requestScope.informacionHoldingTO.informacionInterfazTO.ubicacionImagenCorporativa}'/>" border="0" >
					</td>
				</c:when>	
				<c:otherwise>
					<td width="20%"><img height=9 src="/belwls/factoring/portalfinanciamiento/img/mrc_0_spacer6x6.gif" width=130></td>
				</c:otherwise>
			</c:choose>
			<td align="right" nowrap="nowrap">
				<img src="/belwls/factoring/portalfinanciamiento/img/Logo_portal2.bmp" >
			</td>
		</tr>
	</table>
	<table cellSpacing=0 cellPadding=0 border=0 width="80%" align="center" >
		<tr>
			<td width=8 ><img height=9 src="/belwls/factoring/portalfinanciamiento/img/mrc_0_spacer6x6.gif" width=8></td>
			<td>

				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr>
   						 <td bgColor=#eeeeee valign="bottom"><img height=4 src="/img/pixel_gris.gif"></td>
					</tr>
				</table>
	
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td align="left" class="Ggris" style="color:#666666 ; font-family:Arial, Helvetica, sans-serif; font-size:13px" width="100%" nowrap="nowrap">
							&nbsp;&nbsp;
							<script>
								document.write(DateDay());
							</script>
						</td>
						<td valign="top" align="right" width="20%" nowrap="nowrap" class="textosCentro">
							<a href="javascript:traerConsultasProveedor();" style="color:#666666">Consultas Proveedor</a>						
							&nbsp;&nbsp;
						</td>
						<td valign="top" align="left" width="20%" nowrap="nowrap" style="color:#666666" class="textosCentro">
							&nbsp;
							Financiamiento							
						</td>
						<td width="20%" align="center" nowrap="nowrap" class="textosCentro">
							&nbsp;&nbsp;
							<a href="javascript:cerrarSesion();" style="color:#666666"> Cerrar Sesi&oacute;n </a>
						</td>
						
					</tr>
				</table>
				<br>

				<table cellSpacing=0 cellPadding=0 border=0 width="100%">
								<tr>
									<td>



							<table>
								<tr><td height="40%"></td></tr>
							</table>
							
							<table cellSpacing=0 cellPadding=0 width="100%" border=0 height="50%">
								<tr valign="top">
									<td>
										<br>
										<br>									
										<%

											if ((informacionHoldingTO != null) && (informacionHoldingTO.getInformacionPagadorTO().length > 0))
											{
										%>
										
										<table cellSpacing=0 cellPadding=0 border=0 align="center" width="60%">
											
											<tr>
												<td>
												  <table cellSpacing=0 cellPadding=0 border=0 width="100%" align="center">
																	<tr>
															<td bgcolor=#<%=informacionHoldingTO.getInformacionInterfazTO().getCodigoColorCorporativo()%>>
																<table cellSpacing=0 cellPadding=0 border=0 align="center" width="100%" >
														<tr>
																		<td width="30%" align="center" class="textosColumnaTituloTabla" ><b>RUT Pagador </b></td>
																		<td width="45%" align="center" class="textosColumnaTituloTabla" ><b>Raz&oacute;n Social</b></td>
																		<td width="20%" align="center" class="textosColumnaTituloTabla" >
																			<b>Todos</b>&nbsp;
																			<input type="checkbox" name="checkbox11" value="checkbox" onClick="ChequearTodos(this, 'indicePagadores');" />
																		</td>
																<td width="5%"></td>			
																	</tr>
																</table>
															</td>
														</tr>
													</table>
													<table border=1 width="100%">
														<tr>
														<td>
														<table cellSpacing=0 cellPadding=3 border=0 width="100%">
														<%
															for (int i = 0; i < informacionHoldingTO.getInformacionPagadorTO().length; i++)
															{
														%>
														<tr>
															<td width="30%" align="center" class="textosColumnaTabla">
																<%=informacionHoldingTO.getInformacionPagadorTO()[i].getRutDelPagador()%>- <%=informacionHoldingTO.getInformacionPagadorTO()[i].getDigitoVerificadorDelPagador()%>&nbsp;
															</td>
															<td width="45%" align="center" class="textosColumnaTabla">
																<a href="javascript:enviar(document.getElementById('posicion<%=i%>').value);">
																	<%=informacionHoldingTO.getInformacionPagadorTO()[i].getRazonSocialDelPagador()%>
																	<INPUT type="hidden" name="posicion" id="posicion<%=i%>" value="<%=i%>">
																</a>
															</td>
															<td width="20%" align="center" class="textosCentro">
																<input type="checkbox" name="indicePagadores" id="indicePagadores" onClick="ChequearTodos(this, '' );" value="<%=i%>" />
															</td>
															<td width="5%"><div id="cargando<%=i%>"></div></td>	
														</tr>
														<INPUT type="hidden" name="rutPagador<%=i%>" id="rutPagador<%=i%>" value="<%=informacionHoldingTO.getInformacionPagadorTO()[i].getRutDelPagador()%>">
														<INPUT type="hidden" name="digitoVerificadorPagador<%=i%>" id="digitoVerificadorPagador<%=i%>" value="<%=informacionHoldingTO.getInformacionPagadorTO()[i].getDigitoVerificadorDelPagador()%>">
														<INPUT type="hidden" name="razonSocialPagador<%=i%>" id="razonSocialPagador<%=i%>" value="<%=informacionHoldingTO.getInformacionPagadorTO()[i].getRazonSocialDelPagador()%>">

														<%  
															}
														%>
													</table>
													</td>
												  </tr>	
												</table>
												</td>
											</tr>

										</table>
										<br>
										<table cellSpacing=0 cellPadding=0 width="245" border=0 align="center">
											<tr>
												<td width="80%" align="right">
													<input type="button" value="Ver resumen" onClick="enviar('')"> 
												</td>
												<td width="20%" align="left"><div id="cargando"></div></td>
											<tr>
										</table>
										<%  
											} else {
										%>
							
										<br>
										<table width="100%" border="0" cellpadding="0" cellspacing="1" align="center">
											<tr>	
												<td align="center" class="textosCentroSubtitulo"><b>No posee datos para la consulta</b></td>
											</tr> 	
										</table>
										<br>

										<%
											}
										%>

									</TD>
								</TR>
							</table>
							<br><br><br>
							<table cellspacing=0 cellpadding=0 border=0 width="100%" height="23">
								<tr>
									<td align="right" >
										<a href="javascript:inicio();" class="textosCentro">Volver</a>
									</td>
								</tr>
							</table>
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr>
   						 <td bgColor=#eeeeee valign="bottom"><img height=4 src="/img/pixel_gris.gif"></td>
					</tr>
				</table>
							
						</td>
					</tr>
				</table>
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr>
   						 <td align="right">
						 										<c:choose>
											<c:when test="${requestScope.informacionHoldingTO.informacionInterfazTO.imagenBanco == 'SI'}">
												<img src="/belwls/factoring/portalfinanciamiento/img/bci-fac.jpg" align="right">
											</c:when>
											<c:otherwise>
												&nbsp;
											</c:otherwise>
										</c:choose>
						 </td>
					</tr>
				</table>					
			</td>
		</tr>
	</table>



</FORM>
</BODY>
</HTML>
<%
// ARCHIVO:    /belwls/factoring/portalfinanciamiento/inicioPortalProveedor.jsp
// APLICACIÓN: Portal Financiamiento Personalizado.
// FUNCIÓN:    Página que despliega los pagadores existentes para la empresa proveedora que ingresó al portal.
//
// REGISTRO DE VERSIONES Y AUTORES:
//  1.0  17/11/2010 Francisca Craig: versión inicial.					
%>