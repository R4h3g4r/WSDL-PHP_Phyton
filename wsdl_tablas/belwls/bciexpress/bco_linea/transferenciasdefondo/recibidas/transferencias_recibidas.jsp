<%@ page language="java" %>
<%@ page errorPage="/belwls/bciexpress/bco_linea/transferenciasdefondo/error.jsp"%>
<jsp:useBean id="sessionBci" scope="session" class="wcorp.model.seguridad.SessionBCI"></jsp:useBean>
<jsp:setProperty name="sessionBci" property="*" />
<%
String pathJSP     = sessionBci.getCanal().getPathJSP();
String strJS       = pathJSP + "/bciexpress/js";
String strCSS      = pathJSP + "/bciexpress/css";
%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@taglib uri="/WEB-INF/fmt.tld" prefix="fmt"%>
<fmt:setLocale value="es_CL" />

<c:set var="accionPaginacion" value="consultarTransferenciasRecibidas"/>
<c:set var="urlAccionPaginacion" value="/belwls/bciexpress/bco_linea/transferenciasdefondo/consultarTransferenciasRecibidas.do"/>
<c:set var="cantidadTotalBloques" value="0"/>
<c:set var="bloqueActual" value="1"/>
<c:if test="${!empty param.bloque}"><c:set var="bloqueActual" value="${param.bloque}"/></c:if>

<c:set var="tituloPagina" value="Transferencias Recibidas en línea desde Otros Bancos"/>
<c:set var="MAX_ALTURA_TABLA_DATOS" value="140"/>
<c:set var="ALTURA_FILA_DATOS" value="20"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>Transferencia de Fondos - Resultado de Consulta Transferencias</title>
<meta name="cache-control" content="no-cache">
<meta http-equiv="pragma" content="no-cache">
<link rel="stylesheet" href="<%=strCSS %>/bciexpress.css"      type="text/css">
<link rel="stylesheet" href="<%=strCSS %>/menu_left/style.css" type="text/css">
<link rel="stylesheet" href="<%=strCSS %>/estilos_express.css" type="text/css">
<link rel="stylesheet" href="<%=strCSS %>/print.css" media="print" type="text/css"/>
<script language="JavaScript" src="js/comunes.js"></script>
<script language="JavaScript" src="js/tools.js"></script>
<script language="JavaScript" src="<%=strJS %>/beebcitools.js"></script>

<script language="JavaScript" type="text/javascript">
<!--
	var strCuentasDestino = "";
	var REC_NUM_TRF = 0;
	var REC_CTA_DST = 1;
	var REC_FEC_PAG = 2;
	var REC_NOM_PAG = 3;
	var REC_RUT_PAG = 4;
	var REC_MNT = 5;
	var REC_BCO_PAG = 6;
	var REC_ORD_FEC_PAG = 7;
	var REC_ORD_RUT_PAG = 8;
	var REC_ORD_MNT = 9;
	var camposRecibidas = ['NumeroTransferencia','CuentaDestino','FechaTransferencia','NombrePagador','RutPagador','Monto','BancoPagador','FechaOrden','RutOrden','MontoOrden'];
	var numCamposRecibidas = camposRecibidas.length;

	<%-- Generacion de arreglo en javascript con los registros obtenidos por la consulta --%>
	<%-- Se hizo de esta forma para permitir el ordenamiento de la tabla por diferentes campos --%>
	var registrosRecibidas = [
	<c:if test="${!empty requestScope.TRANSF_RECIBIDAS}">
		<c:set var="contadorRegistros" value="0"/>
		<c:forEach var="iTransf" items="${requestScope.TRANSF_RECIBIDAS}" varStatus="status">
			<c:if test="${!status.first}">,</c:if>
			<c:if test="${status.last}">
				<c:set var="contadorRegistros" value="${status.count}"/>
				<c:set var="cantidadTotalBloques" value="${iTransf.cantidadBloques}"/>
			</c:if>
			['<c:out value="${iTransf.numeroOperacion}"/>','<c:out value="${iTransf.cuentaDestino}"/>','<fmt:formatDate value="${iTransf.fechaPago}" type="both" pattern="dd/MMM/yyyy HH:mm" />','<c:out value="${iTransf.nombreOriginadorTransferencia}"/>','<fmt:formatNumber value="${iTransf.rutOriginadorTransferencia}"/>-<c:out value="${iTransf.dvOriginadorTransferencia}"/>','<fmt:formatNumber value="${iTransf.monto}"/>','<c:out value="${iTransf.bancoOrigen}"/>','<fmt:formatDate value="${iTransf.fechaPago}" type="both" pattern="yyyyMMddHHmm" />','<fmt:formatNumber value="${iTransf.rutOriginadorTransferencia}" pattern="###0"/>','<fmt:formatNumber value="${iTransf.monto}" pattern="###0"/>']
		</c:forEach>
	</c:if>
	];

	var numRegistrosRecibidas = registrosRecibidas.length;
	var tablaOrdenadaRecibidas = new Array(numRegistrosRecibidas);
	//función ordenaTablaRecibidas
	// campOrdenRecibidas: número que indica el campo elegido para ordenar;
	// si campOrdenRecibidas = -1 los registros no se ordenan.
	// tipoOrdenRecibidas puede ser 'asc' (ascendente) o 'desc' (descendente)
	function ordenaTablaRecibidas(campOrdenRecibidas, tipoOrdenRecibidas){
		// no ordenado
		if (campOrdenRecibidas == -1){
			for(i = 0; i<numRegistrosRecibidas;i++){
				tablaOrdenadaRecibidas[i] = i;
			}
		}
		// ordenado
		else{
			if(campOrdenRecibidas == REC_FEC_PAG){campOrdenRecibidas = REC_ORD_FEC_PAG;}
			if(campOrdenRecibidas == REC_RUT_PAG){campOrdenRecibidas = REC_ORD_RUT_PAG;}
			if(campOrdenRecibidas == REC_MNT){campOrdenRecibidas = REC_ORD_MNT;}
			var aux = new Array();
			var j = 0;
			for(j=0;j<numRegistrosRecibidas;j++){
				aux[j] = new Array(2);
				aux[j][0] = registrosRecibidas[j][campOrdenRecibidas];
				aux[j][1] = j;
			}

			var auxOrdenada;
			if(campOrdenRecibidas == REC_ORD_RUT_PAG || campOrdenRecibidas == REC_ORD_MNT){ //orden por numero
				quickSort(aux,tipoOrdenRecibidas);
				auxOrdenada = aux;
			}else{
				auxOrdenada = aux.sort();
			}

			if (tipoOrdenRecibidas == "desc"){
				auxOrdenada = auxOrdenada.reverse();
			}
			for (t = 0 ; t<numRegistrosRecibidas;t++){
				tablaOrdenadaRecibidas[t] = auxOrdenada[t][1];
			}

		}
		representaTablaRecibidas(campOrdenRecibidas, tipoOrdenRecibidas);
	}

	// función representar los datos ordenados en tabla
	function representaTablaRecibidas(campOrdenRecibidas, tipoOrdenRecibidas){
		var textoTabla = "";
		var indice = "";
		var color = "";
		textoTabla +='<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">';
		for (i = 0;i<numRegistrosRecibidas;i++){
			indice = tablaOrdenadaRecibidas[i];
			if(i%2==0){
				color="white";
			}else{
				color="#eeeeee";
			}
			textoTabla +='<tr height="<c:out value="${ALTURA_FILA_DATOS}"/>px" style="background-color: ' + color + ';">';
			textoTabla +=' <td id="divNoImprimir" width="5"></td>';
			textoTabla +=' <td align="left" width="80" class="arial10">' + registrosRecibidas[indice][REC_CTA_DST] + '</td>';
			textoTabla +=' <td id="divNoImprimir" width="5"></td>';
			textoTabla +=' <td align="left" width="110" class="arial10">' + registrosRecibidas[indice][REC_FEC_PAG] + '</td>';
			textoTabla +=' <td id="divNoImprimir" width="5"></td>';
			textoTabla +=' <td align="left" width="190" class="arial10" style="word-wrap:break-word;">' + registrosRecibidas[indice][REC_NOM_PAG] + '</td>';
			textoTabla +=' <td id="divNoImprimir" width="5"></td>';
			textoTabla +=' <td align="left" width="70" class="arial10">' + registrosRecibidas[indice][REC_RUT_PAG] + '</a></td>';
			textoTabla +=' <td id="divNoImprimir" width="6"></td>';
			textoTabla +=' <td align="right" width="90" class="arial10">' + registrosRecibidas[indice][REC_MNT] + '</td>';
			textoTabla +=' <td width="20"></td>';
			textoTabla +=' <td align="left" width="175" class="arial10" style="word-wrap:break-word;">' + registrosRecibidas[indice][REC_BCO_PAG] + '</td>';
			textoTabla +='</tr>';
		}
		textoTabla +='</table>';
		document.getElementById("scrolltableRecibidas").innerHTML = textoTabla;
	}

	function totalesTTFF(){
		document.getElementById("divCantidadTransferencias").innerHTML = '<b>Total Transferencias : <c:out value="${requestScope.NUMTRANSF_RECIBIDAS}" default="0"/></b>';
	}

//-->
</script>

<script language="JavaScript">
<!--
	function doExcel(){
		var xform = document.ConsultarTransferenciasForm;
		xform.accion.value = 'consultarTransferenciasRecibidasExcel';
		xform.action = '/belwls/bciexpress/bco_linea/transferenciasdefondo/consultarTransferenciasRecibidas.do';
		xform.submit();
	}

	function doVolver(){
		var xform = document.ConsultarTransferenciasForm;
		xform.accion.value = 'consultarTransferencias';
		xform.action = '/belwls/bciexpress/bco_linea/transferenciasdefondo/consultarTransferencias.do';
		xform.submit();
	}

	function redimensionaTablas(alturaMax){
		try{
			var altura = parseInt(alturaMax, 10);
			var obj = null;

			obj = document.getElementById("tr_tabla_recibidas");
			//alert(obj.id);alert(obj.clientHeight);
			if(obj.clientHeight > altura){
				obj.style.height = altura;
				var obj2 = document.getElementById("ultimaColEncRec");
				if(typeof(obj2)!='undefined') obj2.style.display = 'block';
				//if(typeof(obj2)!='undefined') obj.style.width = 19;
			}
		}catch(Err){
			//
		}
	}

	function llenaDivImpresion(){
		document.getElementById("tablaDatosPaginaImprimir").innerHTML = document.getElementById("tablaDatosPagina").innerHTML;
	}

//-->
</script>

</head>

<body text="#000000" bgColor="#ffffff" leftMargin="4" topMargin="4"	marginwidth="4" marginheight="4">
<form name="ConsultarTransferenciasForm" method="post">
	<input type="hidden" name="accion" value=""/>
	<input type="hidden" name="bloque" value="<c:out value="${param.bloque}" default="1"/>"/>

	<input type="hidden" name="tipoTransferencia" value="<c:out value="${param.tipoTransferencia}" default=""/>"/>
	<input type="hidden" name="cuentaOrigen" value="<c:out value="${param.cuentaOrigen}" default=""/>"/>
	<input type="hidden" name="rutBeneficiario" value="<c:out value="${param.rutBeneficiario}" default=""/>"/>
	<input type="hidden" name="dvBeneficiario" value="<c:out value="${param.dvBeneficiario}" default=""/>"/>
	<input type="hidden" name="estado" value="<c:out value="${param.estado}" default=""/>"/>
	<input type="hidden" name="tipoBusquedaFecha" value="<c:out value="${param.tipoBusquedaFecha}" default=""/>"/>
	<input type="hidden" name="dia" value="<c:out value="${param.dia}" default=""/>"/>
	<input type="hidden" name="fechaDesde" value="<c:out value="${param.fechaDesde}" default=""/>"/>
	<input type="hidden" name="fechaHasta" value="<c:out value="${param.fechaHasta}" default=""/>"/>
<div id="tablaDatosPagina" class="tablaDatosPagina">
	<table id="tablaGenConmenu" width="785" border="0" cellspacing="0" cellpadding="0" align="left">
		<tr valign="top">
			<td id="divNoImprimir" width="5">&nbsp;</td>
			<td id="colPrincipal" width="780">
				<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
				<tr>
				  <td bgcolor="#FFFFFF" class="tituloSeccion">Transferencia&nbsp;de&nbsp;Fondos<font class="tituloSubSeccion">&nbsp;Consultar&nbsp;Transferencias</font> </td>
				</tr>
				</table>
				<c:if test="${!empty requestScope.TRANSF_RECIBIDAS}">
					<table width="100%" cellspacing="0"  cellpadding="0"><!-- inicio tabla de cuentas global-->
						<tr class="arial10"><td><b>Transferencias Recibidas en l&iacute;nea desde Otros Bancos</b></td></tr>
						<c:choose>
						  <c:when test="${param.tipoBusquedaFecha == 'D'}">
							<tr class="arial10"><td><b>D&iacute;a : </b><c:out value="${requestScope.dia}"/> &nbsp;&nbsp;&nbsp;<div id="divCantidadTransferencias" class="enlinea"><b>Total Transferencias : <c:out value="${requestScope.NUMTRANSF_RECIBIDAS}"/></b></div></td></tr>
						  </c:when>
						  <c:when test="${param.tipoBusquedaFecha == 'P'}">
							<tr class="arial10"><td><b>Periodo : </b><c:out value="${requestScope.fechaDesde}"/> a <c:out value="${requestScope.fechaHasta}"/> &nbsp;&nbsp;&nbsp;<div id="divCantidadTransferencias" class="enlinea"><b>Total Transferencias : <c:out value="${requestScope.NUMTRANSF_RECIBIDAS}"/></b></div></td></tr>
						  </c:when>
						</c:choose>
						<tr><td>&nbsp;</td></tr>
						<tr valign="top">
							<td width="100%">
								<table width="100%" border="0" cellspacing="0" cellpadding="4" align="center" bgcolor="#FFFFFFF" class="T1">
									<tr>
										<td class="T1">Transferencias&nbsp;Recibidas&nbsp;en&nbsp;l&iacute;nea&nbsp;desde&nbsp;Otros&nbsp;Bancos</td>
									</tr>
								</table>
								<table width="100%" border="0" cellpadding="0" cellspacing="0" class="T0">
									<tr>
										<td id="cabeceraRecibidas">
											<%@ include file="/belwls/bciexpress/bco_linea/transferenciasdefondo/cabecera_tabla_recibidas.inc" %>
										</td>
									</tr>
									<tr>
										<td id='tr_tabla_recibidas' style="height:auto">
											<div id="scrolltableRecibidas" style="overflow: auto; height: 100%;">
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<!--<tr valign="top">
							<td width="100%">-->
								<!--%@ include file="/belwls/bciexpress/bco_linea/transferenciasdefondo/paginacion.inc" --%-->
							<!--</td>
						</tr>-->
						<tr valign="top"><td width="100%">&nbsp;</td></tr>
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="4" align="center">
									<tr>
										<td width="50%" align="left"><%@ include file="/belwls/bciexpress/bco_linea/transferenciasdefondo/paginacion.inc" %></td>
										<td id="botones" width="50%" align="right">&nbsp;&nbsp;
											<input type="button" name="Bajar a Excel" value="Bajar a Excel" onClick="doExcel()">
											<input type="button" name="Imprimir" value="Imprimir" onClick="doImprimir()">
											<input type="button" name="Volver" value="Volver" onClick="doVolver()">
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table><!-- FIN tabla global-->
				</c:if>
				<c:if test="${!empty requestScope.MENSAJE_ERROR_TRANSFERENCIAS}">
					<%@ include file="/belwls/bciexpress/bco_linea/transferenciasdefondo/mensajeError.inc" %>
				</c:if>
			</td>
		</tr>
	</table>
</div>
</form>
<div id="tablaDatosPaginaImprimir" class="tablaDatosPaginaImprimir"></div>
<br/>
</body>
<c:if test="${!empty requestScope.TRANSF_RECIBIDAS}">
<script language="JavaScript" type="text/javascript">
<!--
	ordenaTablaRecibidas(-1,'asc');
	totalesTTFF();
	llenaDivImpresion();
	redimensionaTablas('<c:out value="${MAX_ALTURA_TABLA_DATOS}"/>');
//-->
</script>
</c:if>
</html>
<%--
******************************************************************************************************
* Archivo           transferencias_recibidas.jsp

* Descripción		Lista las transferencias recibidas, consultadas según ciertos criterios.

* @author           SEnTRA

* Versión           1.0

* Fecha creación    13-10-2009

* Historia de cambios
   versión   fecha      autor   cambios
   =======   ========== ======= =================================
   1.0       13-10-2009 SEnTRA  versión inicial
******************************************************************************************************
--%>

