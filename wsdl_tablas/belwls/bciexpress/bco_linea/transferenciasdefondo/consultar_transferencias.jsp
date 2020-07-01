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

<c:set var="MAX_ALTURA_TABLA_DATOS" value="120"/>
<c:set var="ALTURA_FILA_DATOS" value="20"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>Transferencia de Fondos - Consultar Transferencias</title>
<meta name="cache-control" content="no-cache">
<meta http-equiv="pragma" content="no-cache">
<link rel="stylesheet" href="<%= strCSS %>/bciexpress.css"      type="text/css">
<link rel="stylesheet" href="<%= strCSS %>/menu_left/style.css" type="text/css">
<link rel="stylesheet" href="<%= strCSS %>/estilos_express.css" type="text/css">
<link rel="stylesheet" href="<%= strCSS %>/print.css" media="print" type="text/css"/>

<script language="JavaScript" src="<%= strJS %>/CalendarPopup.js"></script>
<script language="JavaScript" src="<%= strJS %>/AnchorPosition.js"></script>
<script language="JavaScript" src="<%= strJS %>/PopupWindow.js"></script>
<script language="JavaScript" src="<%= strJS %>/date.js"></script>
<script language="JavaScript" src="<%= strJS %>/beebcitools.js"></script>

<script language="JavaScript" src="js/comunes.js"></script>
<script language="JavaScript" src="js/tools.js"></script>

<script language="JavaScript" type="text/javascript">
<!--
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
	var REA_NUM_TRF = 0;
	var REA_NUM_DET = 1;
	var REA_FEC_PAG = 2;
	var REA_NOM_TRF = 3;
	var REA_RUT_DST = 4;
	var REA_NOM_DST = 5;
	var REA_MNT = 6;
	var REA_CTA_ORI = 7;
	var REA_CTA_DST = 8;
	var REA_BCO_DST = 9;
	var REA_COD_EST = 10;
	var REA_ORD_FEC_PAG = 11;
	var REA_ORD_RUT_DST = 12;
	var REA_ORD_MNT = 13;
	var camposRealizadas = ['NumeroTransferencia','NumeroDetalle','FechaTransferencia','NombreTransferencia','RutBeneficiario','NombreBeneficiario','Monto','CuentaOrigen','CuentaDestino','BancoDestino','Estado','FechaOrden','RutOrden','MontoOrden'];
	var camposRecibidas = ['NumeroTransferencia','CuentaDestino','FechaTransferencia','NombrePagador','RutPagador','Monto','BancoPagador','FechaOrden','RutOrden','MontoOrden'];

	<%-- Generacion de arreglos en javascript con los registros obtenidos por la consulta --%>
	<%-- Se hizo de esta forma para permitir el ordenamiento de la tabla por diferentes campos --%>
	var registrosRealizadas = [
	<c:if test="${!empty requestScope.TRANSF_REALIZADAS}">
		<c:forEach var="iTransf" items="${requestScope.TRANSF_REALIZADAS}" varStatus="status">
			<c:if test="${!status.first}">,</c:if>
			['<c:out value="${iTransf.numeroTransferencia}"/>','<fmt:formatNumber value="${iTransf.numeroDetalle}" pattern="###0"/>','<fmt:formatDate value="${iTransf.fechaPago}" type="both" pattern="dd/MMM/yyyy HH:mm" />','<c:out value="${iTransf.nombreArchivo}"/>','<fmt:formatNumber value="${iTransf.rutDestino}"/>-<c:out value="${iTransf.dvDestino}"/>','<c:out value="${iTransf.nombreDestinatario}"/>','<fmt:formatNumber value="${iTransf.monto}"/>','<c:out value="${iTransf.cuentaOrigen}"/>','<c:out value="${iTransf.cuentaDestino}"/>','<c:out value="${iTransf.glosaBancoDestino}"/>','<c:out value="${iTransf.estado}"/>','<fmt:formatDate value="${iTransf.fechaPago}" type="both" pattern="yyyyMMddHHmm" />','<fmt:formatNumber value="${iTransf.rutDestino}" pattern="###0"/>','<fmt:formatNumber value="${iTransf.monto}" pattern="###0"/>']
		</c:forEach>
	</c:if>
	];

	var registrosRecibidas = [
	<c:if test="${!empty requestScope.TRANSF_RECIBIDAS}">
		<c:forEach var="iTransf" items="${requestScope.TRANSF_RECIBIDAS}" varStatus="status">
			<c:if test="${!status.first}">,</c:if>
			['<c:out value="${iTransf.numeroOperacion}"/>','<c:out value="${iTransf.cuentaDestino}"/>','<fmt:formatDate value="${iTransf.fechaPago}" type="both" pattern="dd/MMM/yyyy HH:mm" />','<c:out value="${iTransf.nombreOriginadorTransferencia}"/>','<fmt:formatNumber value="${iTransf.rutOriginadorTransferencia}"/>-<c:out value="${iTransf.dvOriginadorTransferencia}"/>','<fmt:formatNumber value="${iTransf.monto}"/>','<c:out value="${iTransf.bancoOrigen}"/>','<fmt:formatDate value="${iTransf.fechaPago}" type="both" pattern="yyyyMMddHHmm" />','<fmt:formatNumber value="${iTransf.rutOriginadorTransferencia}" pattern="###0"/>','<fmt:formatNumber value="${iTransf.monto}" pattern="###0"/>']
		</c:forEach>
	</c:if>
	];

	var numRegistrosRealizadas = registrosRealizadas.length;
	var tablaOrdenadaRealizadas = new Array(numRegistrosRealizadas);

	var numRegistrosRecibidas = registrosRecibidas.length;
	var tablaOrdenadaRecibidas = new Array(numRegistrosRecibidas);

	//función ordenaTablaRealizadas
	// campOrdenRealizadas: número que indica el campo elegido para ordenar;
	// si campOrdenRealizadas = -1 los registros no se ordenan.
	// tipoOrdenRealizadas puede ser 'asc' (ascendente) o 'desc' (descendente)
	function ordenaTablaRealizadas(campOrdenRealizadas, tipoOrdenRealizadas, nombreTablaRealizadas){
		// no ordenado
		if (campOrdenRealizadas == -1){
			var i=0;
			for(i = 0; i<numRegistrosRealizadas;i++){
				tablaOrdenadaRealizadas[i] = i;
			}
		}
		// ordenado
		else{
			if(campOrdenRealizadas == REA_FEC_PAG){campOrdenRealizadas = REA_ORD_FEC_PAG;}
			if(campOrdenRealizadas == REA_RUT_DST){campOrdenRealizadas = REA_ORD_RUT_DST;}
			if(campOrdenRealizadas == REA_MNT){campOrdenRealizadas = REA_ORD_MNT;}
			var aux = new Array();
			var j = 0;
			for(j=0;j<numRegistrosRealizadas;j++){
				aux[j] = new Array(2);
				aux[j][0] = registrosRealizadas[j][campOrdenRealizadas];
				aux[j][1] = j;
			}

			var auxOrdenada;
			if(campOrdenRealizadas == REA_ORD_RUT_DST || campOrdenRealizadas == REA_ORD_MNT){ //orden por numero
				quickSort(aux,tipoOrdenRealizadas);
				auxOrdenada = aux;
			}else{
				auxOrdenada = aux.sort();
			}

			if (tipoOrdenRealizadas == "desc"){
				auxOrdenada = auxOrdenada.reverse();
			}
			for (t = 0 ; t<numRegistrosRealizadas;t++){
				tablaOrdenadaRealizadas[t] = auxOrdenada[t][1];
			}

		}
		representaTablaRealizadas(campOrdenRealizadas, tipoOrdenRealizadas, nombreTablaRealizadas);
	}

	// función representar los datos ordenados en tabla
	function representaTablaRealizadas(campOrdenRealizadas, tipoOrdenRealizadas, nombreTablaRealizadas){
		var textoTabla = "";
		var indice = "";
		var xcolor = "";
		var classFont = "";
		var estiloLink = "";
		textoTabla +='<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">';
		for (i = 0;i<numRegistrosRealizadas;i++){
			indice = tablaOrdenadaRealizadas[i];
			if(i%2==0){
				xcolor="white";
			}else{
				xcolor="#eeeeee";
			}
			if(registrosRealizadas[indice][REA_COD_EST] == 'REC'){
				classFont = 'arial10_red';
				estiloLink = 'style="color:red;"';
			}else{
				classFont = 'arial10';
				estiloLink = '';
			}
			textoTabla +='<tr height="<c:out value="${ALTURA_FILA_DATOS}"/>px" style="background-color: ' + xcolor + ';">';
			textoTabla +=' <td id="divNoImprimir" width="10"></td>';
			textoTabla +=' <td align="left" width="80" class="'+classFont+'">' + registrosRealizadas[indice][REA_CTA_ORI] + '</td>';
			textoTabla +=' <td align="left" width="8"></td>';
			textoTabla +=' <td align="left" width="155" class="'+classFont+'" style="word-wrap:break-word;">' + registrosRealizadas[indice][REA_NOM_TRF] + '</td>';
			textoTabla +=' <td align="left" width="5"></td>';
			textoTabla +=' <td align="left" width="85" class="'+classFont+'"><a href="#" onclick="javascript:verDetalle(\''+registrosRealizadas[indice][REA_NUM_TRF]+'\',\''+registrosRealizadas[indice][REA_NUM_DET]+ '\');" '+estiloLink+'>' + registrosRealizadas[indice][REA_RUT_DST] + '</a></td>';
			textoTabla +=' <td align="left" width="4"></td>';
			textoTabla +=' <td align="left" width="140" class="'+classFont+'" style="word-wrap:break-word;">' + registrosRealizadas[indice][REA_NOM_DST] + '</td>';
			textoTabla +=' <td align="left" width="5"></td>';
			textoTabla +=' <td align="right" width="68" class="'+classFont+'">' + registrosRealizadas[indice][REA_MNT] + '</td>';
			textoTabla +=' <td align="left" width="5"></td>';
			textoTabla +=' <td align="right" width="75" class="'+classFont+'">' + registrosRealizadas[indice][REA_CTA_DST] + '</td>';
			textoTabla +=' <td align="left" width="13"></td>';
			textoTabla +=' <td align="left" width="108" class="'+classFont+'"style="word-wrap:break-word;">' + registrosRealizadas[indice][REA_BCO_DST] + '</td>';
			textoTabla +='</tr>';
		}
		textoTabla +='</table>';
		document.getElementById("scrolltableRealizadas").innerHTML = textoTabla;
	}

	// campOrdenRecibidas: número que indica el campo elegido para ordenar;
	// si campOrdenRecibidas = -1 los registros no se ordenan.
	// tipoOrdenRecibidas puede ser 'asc' (ascendente) o 'desc' (descendente)
	function ordenaTablaRecibidas(campOrdenRecibidas, tipoOrdenRecibidas)
	{
		if (campOrdenRecibidas == -1){ // no ordenado
			for(var i=0; i<numRegistrosRecibidas; i++){
				tablaOrdenadaRecibidas[i] = i;
			}
		}else{ // ordenado
			if(campOrdenRecibidas == REC_FEC_PAG){campOrdenRecibidas = REC_ORD_FEC_PAG;}
			if(campOrdenRecibidas == REC_RUT_PAG){campOrdenRecibidas = REC_ORD_RUT_PAG;}
			if(campOrdenRecibidas == REC_MNT){campOrdenRecibidas = REC_ORD_MNT;}
			var aux = new Array();
			for(var j=0; j<numRegistrosRecibidas; j++){
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
			for(var t=0; t<numRegistrosRecibidas; t++){
				tablaOrdenadaRecibidas[t] = auxOrdenada[t][1];
			}

		}
		representaTablaRecibidas(campOrdenRecibidas, tipoOrdenRecibidas);
	}

	// función representar los datos ordenados en tabla
	function representaTablaRecibidas(campOrdenRecibidas, tipoOrdenRecibidas){
		var textoTabla = "";
		var indice = "";
		var xcolor = "";
		textoTabla +='<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">';
		for (i = 0;i<numRegistrosRecibidas;i++){
			indice = tablaOrdenadaRecibidas[i];
			if(i%2==0){
				xcolor="white";
			}else{
				xcolor="#eeeeee";
			}
			textoTabla +='<tr height="<c:out value="${ALTURA_FILA_DATOS}"/>px" style="background-color: ' + xcolor + ';">';
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
			textoTabla +=' <td id="divNoImprimir" width="20"></td>';
			textoTabla +=' <td align="left" width="175" class="arial10" style="word-wrap:break-word;">' + registrosRecibidas[indice][REC_BCO_PAG] + '</td>';
			textoTabla +='</tr>';
		}
		textoTabla +='</table>';
		document.getElementById("scrolltableRecibidas").innerHTML = textoTabla;
	}
//-->
</script>

<script language="JavaScript">
<!--
	document.write(getCalendarStyles());

	var calendar1 = new CalendarioPopup("mattKruseCalendarDIV");
	calendar1.setMonthNames('enero','febrero','marzo','abril','mayo','junio','julio','agosto','septiembre','octubre','noviembre','diciembre');
	calendar1.setDayHeaders('Do','Lu','Ma','Mi','Ju','Vi','Sa');
	calendar1.setTodayText("Fecha de hoy");
	calendar1.showYearNavigation();
	calendar1.setWeekStartDay(1);

	function CalendarioPopup() {
		var c;
		if (arguments.length>0) {
			c = new PopupWindow(arguments[0]);
			}
		else {
			c = new PopupWindow();
			c.setSize(150,175);
			}
		c.offsetX = -2;
		c.offsetY = 25;
		c.autoHide();
		// Calendar-specific properties
		c.monthNames = new Array("January","February","March","April","May","June","July","August","September","October","November","December");
		c.monthAbbreviations = new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
		c.dayHeaders = new Array("S","M","T","W","T","F","S");
		c.returnFunction = "CP_tmpReturnFunction";
		c.returnMonthFunction = "CP_tmpReturnMonthFunction";
		c.returnQuarterFunction = "CP_tmpReturnQuarterFunction";
		c.returnYearFunction = "CP_tmpReturnYearFunction";
		c.weekStartDay = 0;
		c.isShowYearNavigation = false;
		c.displayType = "date";
		c.disabledWeekDays = new Object();
		c.disabledDatesExpression = "";
		c.yearSelectStartOffset = 2;
		c.currentDate = null;
		c.todayText="Today";
		c.cssPrefix="";
		c.isShowNavigationDropdowns=false;
		c.isShowYearNavigationInput=false;
		window.CP_calendarObject = null;
		window.CP_targetInput = null;
		window.CP_dateFormat = "MM/dd/yyyy";
		// Method mappings
		c.copyMonthNamesToWindow = CP_copyMonthNamesToWindow;
		c.setReturnFunction = CP_setReturnFunction;
		c.setReturnMonthFunction = CP_setReturnMonthFunction;
		c.setReturnQuarterFunction = CP_setReturnQuarterFunction;
		c.setReturnYearFunction = CP_setReturnYearFunction;
		c.setMonthNames = CP_setMonthNames;
		c.setMonthAbbreviations = CP_setMonthAbbreviations;
		c.setDayHeaders = CP_setDayHeaders;
		c.setWeekStartDay = CP_setWeekStartDay;
		c.setDisplayType = CP_setDisplayType;
		c.setDisabledWeekDays = CP_setDisabledWeekDays;
		c.addDisabledDates = CP_addDisabledDates;
		c.setYearSelectStartOffset = CP_setYearSelectStartOffset;
		c.setTodayText = CP_setTodayText;
		c.showYearNavigation = CP_showYearNavigation;
		c.showCalendar = CP_showCalendar;
		c.hideCalendar = CP_hideCalendar;
		c.getStyles = getCalendarStyles;
		c.refreshCalendar = CP_refreshCalendar;
		c.getCalendar = CP_getCalendar;
		c.select = CP_select;
		c.setCssPrefix = CP_setCssPrefix;
		c.showNavigationDropdowns = CP_showNavigationDropdowns;
		c.showYearNavigationInput = CP_showYearNavigationInput;
		c.copyMonthNamesToWindow();
		// Return the object
		return c;
	}

	function mensaje(elemento) {
		if(elemento.value =="P") alert("Las Transferencias Programadas están consideradas para la FASE 2");
	}

	function doConsultar(){
		var xform = document.ConsultarTransferenciasForm;
		var sNombreArchivo = xform.nombreArchivo; //archivo a consultar
		var ctrl = xform.tipoTransferencia;
		var valor ="";
		for(i=0;i<ctrl.length;i++){
			if(ctrl[i].checked) valor = ctrl[i].value;
		}

		//Transferencias Realizadas
		if(valor == "REA"){
			if(sNombreArchivo.value == ''){
				xform.accion.value = 'consultarTransferenciasRealizadas';
				xform.action = '/belwls/bciexpress/bco_linea/transferenciasdefondo/consultarTransferenciasRealizadas.do';
			}else{ // Es consulta por nombre de archivo
				xform.accion.value = 'consultarTransferenciasRealizadasViaArchivo';
				xform.action = '/belwls/bciexpress/bco_linea/transferenciasdefondo/consultarTransferenciasRealizadas.do';
			}
		}

		//Transferencias Pendientes
		if(valor == "PEN"){
			if(sNombreArchivo.value == ''){
				xform.accion.value = 'consultarTransferenciasPendientes';
				xform.action = '/belwls/bciexpress/bco_linea/transferenciasdefondo/consultarTransferenciasPendientes.do';
			}else{ // Es consulta por nombre de archivo
				xform.accion.value = 'consultarTransferenciasPendientesViaArchivo';
				xform.action = '/belwls/bciexpress/bco_linea/transferenciasdefondo/consultarTransferenciasPendientes.do';
			}
		}

		//Transferencias Recibidas
		if(valor == "REC"){
			xform.accion.value = 'consultarTransferenciasRecibidas';
			xform.action = '/belwls/bciexpress/bco_linea/transferenciasdefondo/consultarTransferenciasRecibidas.do';
		}

		//Transferencias Programads
		if(valor == "PRO"){
			alert("Opcion no disponible"); //Para la segunda etapa
			return;
		}

		if(doValidarFormulario(valor)){
			xform.submit();
		}

	}

	function doValidarFormulario(opcion){
		var xform = document.ConsultarTransferenciasForm;
		var fechaEsObligatoria = true;
		var ctrl = xform.tipoBusquedaFecha;
		var valorTipoBusquedaFecha ="";

		for(i=0;i<ctrl.length;i++){
			if(ctrl[i].checked) valorTipoBusquedaFecha = ctrl[i].value;
		}

		if(opcion != "REC"){
			xform.numeroTransferencia.value = trim(xform.tmpNumTrf.value);
			xform.rutBeneficiario.value = "";
			xform.rut.value = trim(xform.rut.value);
			if(xform.rut.value!="" && !valida(xform.rut)){ //El rut no es obligatorio
				return false;
			}

			xform.rutBeneficiario.value = xform.rut.value;
			xform.rutBeneficiario.value = str_replace(xform.rutBeneficiario.value, ".", "");
			xform.rutBeneficiario.value = str_replace(xform.rutBeneficiario.value, "-", "");
			xform.dvBeneficiario.value = xform.rutBeneficiario.value.substring(xform.rutBeneficiario.value.length-1);
			xform.rutBeneficiario.value = xform.rutBeneficiario.value.substring(0, xform.rutBeneficiario.value.length-1);

			if(trim(xform.nombreArchivo.value)!=""){
				fechaEsObligatoria = false;
			}

			if(xform.numeroTransferencia.value!=""){
				fechaEsObligatoria = false;
			}
		}

		if(valorTipoBusquedaFecha == "D"){
			if(xform.dia.value==""){
				if(fechaEsObligatoria){
					alert("Debe ingresar fecha (Dia)");
					return false;
				}
			}else{
				if(!fnValidaFecha(xform.dia, 'del Dia')){
					return false;
				}
				if(!fnValidaContraFechaDelDia(xform.dia)){
					return false;
				}
			}
		}else{
			if(xform.fechaDesde.value=="" || xform.fechaHasta.value==""){
				if(fechaEsObligatoria){
					alert("Debe ingresar fecha Desde y fecha Hasta");
					return false;
				}
			}
			if(!fnValidaFecha(xform.fechaDesde, 'Desde') || !fnValidaFecha(xform.fechaHasta, 'Hasta')){
				return false;
			}
			if(!fnVerificaDiasDiferenciaFecha(xform.fechaDesde, xform.fechaHasta)){
				return false;
			}
		}

		return true;

	}

	function cambiarEstadosTRF(element) {
		if("REC" == element.value){
				id("tituloEstado").innerHTML = '&nbsp;';
				id("tiposDeEstados").innerHTML = '&nbsp;';
				id("tituloCuenta").innerHTML = '<b>Cuenta Destino</b>';
				id("tituloRutBeneficiario").innerHTML = '&nbsp;';
				id("divRut").innerHTML = '&nbsp;';
				/////id("tituloNombreArchivo").innerHTML = '&nbsp;';
				/////id("divNombreArchivo").innerHTML = '&nbsp;';
				id("tituloNumTransferencia").innerHTML = '&nbsp;';
				id("divNumTransferencia").innerHTML = '&nbsp;';
		}else{
			id("tituloCuenta").innerHTML = '<b>Cuenta Origen</b>';
			id("tituloEstado").innerHTML = '<b>Estado</b>';

			id("tituloRutBeneficiario").innerHTML = '<b>Rut Beneficiario</b>';
			id("divRut").innerHTML = '&nbsp;&nbsp;<input maxlength="12" size="8" name="rut" class="arial10" style="width: 80"/>';
			/////id("tituloNombreArchivo").innerHTML = '<b>Nombre Archivo</b>';
			/////id("divNombreArchivo").innerHTML = '&nbsp;&nbsp;<input maxlength="30" size="25" name="nombreArchivo" class="arial10" style="width: 200"/>';
			id("tituloNumTransferencia").innerHTML = '<b>N&uacute;mero Transferencia</b>';
			id("divNumTransferencia").innerHTML = '&nbsp;&nbsp;<input maxlength="6" size="10" name="tmpNumTrf" class="arial10" onkeypress="return permite(event)"/>';

			if ("PEN" == element.value) {
				id("tiposDeEstados").innerHTML = estadosPendientes();
			}else{
				if ("REA" == element.value){
					id("tiposDeEstados").innerHTML = estadosRealizadas();
				}
			}
		}
	}

	function estadosPendientes() {
		var td = "&nbsp;<select class=\"combo\" tabindex=\"3\" name=\"estado\" style=\"width: 80\">";
		td += "<option value=\"\">" + "" + "</option>";
		//td += "<option value=\"ING\">" + "Ingresada" + "</option>";
		td += "<option value=\"PEN\">" + "Por Firmar" + "</option>";
		td += "<option value=\"PRP\">" + "En Proceso" + "</option>";
		//td += "<option value=\"PEN\">" + "Por Inscribir" + "</option>";
		//td += "<option value=\"FIR\">" + "Firmada" + "</option>";
		td += "<option value=\"ELI\">" + "Eliminada" + "</option>";
		//td += "<option value=\"PRP\">" + "Caduca" + "</option>";
		td += "</select>";
		return td;
	}

	function estadosRealizadas() {
		var td = "&nbsp;<select class=\"combo\" tabindex=\"3\" name=\"estado\" style=\"width: 80\">";
		td += "<option value=\"\">" + "" + "</option>";
		td += "<option value=\"PRO\">" + "OK" + "</option>";
		td += "<option value=\"REC\">" + "No Ok" + "</option>";
		td += "</select>";
		return td;
	}

	function verDetalle(idTransf, idDetalle){
		var xform = document.ConsultarTransferenciasForm;
		xform.operNumTransferencia.value = idTransf;
		xform.numeroDetalle.value = idDetalle;
		xform.accion.value = 'consultarDetalleTransferencia';
		xform.action = '/belwls/bciexpress/bco_linea/transferenciasdefondo/consultarTransferencias.do';
		xform.submit();
	}

	function crearLabel(){
		var xform = document.ConsultarTransferenciasForm;
		var divs = document.getElementById("divRealizadas");
		if(divs!=null && typeof(divs)!='undefined') nuevo_evento(divs, "click", function(){xform.tipoTransferencia[0].click();});
		var divs = document.getElementById("divPendientes");
		if(divs!=null && typeof(divs)!='undefined') nuevo_evento(divs, "click", function(){xform.tipoTransferencia[1].click();});
		var divs = document.getElementById("divRecibidas");
		if(divs!=null && typeof(divs)!='undefined') nuevo_evento(divs, "click", function(){xform.tipoTransferencia[2].click();});
		/*var divs = document.getElementById("divProgramadas");
		if(divs!=null && typeof(divs)!='undefined') nuevo_evento(divs, "click", function(){xform.tipoTransferencia[3].click();});*/
		var divs = document.getElementById("divFechaDia");
		if(divs!=null && typeof(divs)!='undefined') nuevo_evento(divs, "click", function(){xform.tipoBusquedaFecha[0].click();});
		var divs = document.getElementById("divFechaPeriodo");
		if(divs!=null && typeof(divs)!='undefined') nuevo_evento(divs, "click", function(){xform.tipoBusquedaFecha[1].click();});
	}

	function cargaValores(){
		//try{
			var xform = document.ConsultarTransferenciasForm;
			var pTipoTrf = "<c:out value="${param.tipoTransferencia}" default=""/>";
			if(pTipoTrf == "PEN"){
				xform.tipoTransferencia[1].click();
			}else if(pTipoTrf == "REC"){
				xform.tipoTransferencia[2].click();
			}else{
				xform.tipoTransferencia[0].click();
			}
			var pTipoFec = "<c:out value="${param.tipoBusquedaFecha}" default=""/>";
			if(pTipoFec == "P"){
				xform.tipoBusquedaFecha[1].click();
				xform.dia.disabled = false;
			}else{
				xform.tipoBusquedaFecha[0].click();
				xform.fechaDesde.disabled = false;
				xform.fechaHasta.disabled = false;

			}

			if(pTipoTrf != "REC"){
				xform.rut.value = "<c:out value="${param.rutBeneficiario}" default=""/>" + "<c:out value="${param.dvBeneficiario}" default=""/>";
				xform.estado.value = "<c:out value="${param.estado}" default=""/>";
				xform.nombreArchivo.value = "<c:out value="${param.nombreArchivo}" default=""/>";
				xform.tmpNumTrf.value = "<c:out value="${param.numeroTransferencia}" default=""/>";
			}

			xform.cuentaOrigen.value = "<c:out value="${param.cuentaOrigen}" default=""/>";
			xform.dia.value = "<c:out value="${param.dia}" default=""/>";
			xform.fechaDesde.value = "<c:out value="${param.fechaDesde}" default=""/>";
			xform.fechaHasta.value = "<c:out value="${param.fechaHasta}" default=""/>";
			//alert('cargaValores()');
		//}catch(Err){}
	}

	function activarDiaFecha(){
		if(!document.forms[0].tipoBusquedaFecha[0].checked){
			document.forms[0].tipoBusquedaFecha[0].checked=true;
			deshabilitar(document.ConsultarTransferenciasForm.fechaDesde);
			deshabilitar(document.ConsultarTransferenciasForm.fechaHasta);
			habilitar(document.ConsultarTransferenciasForm.dia);
		}
	}

	function activarRangoFecha(){
		if(!document.forms[0].tipoBusquedaFecha[1].checked){
			document.forms[0].tipoBusquedaFecha[1].checked=true;
			deshabilitar(document.ConsultarTransferenciasForm.dia);
			habilitar(document.ConsultarTransferenciasForm.fechaDesde);
			habilitar(document.ConsultarTransferenciasForm.fechaHasta);
		}
	}

	function redimensionaTablas(alturaMax){
		try{
			var altura = parseInt(alturaMax, 10);
			var obj = null;
			obj = document.getElementById("tr_tabla_realizadas");
			//alert(obj.id);alert(obj.clientHeight);
			if(obj.clientHeight > altura){
				obj.style.height = altura;
				var obj2 = document.getElementById("ultimaColEncRea");
				if(typeof(obj2)!='undefined') obj2.style.display = 'block';
			}

			obj = document.getElementById("tr_tabla_recibidas");
			//alert(obj.id);alert(obj.clientHeight);
			if(obj.clientHeight > altura){
				obj.style.height = altura;
				var obj2 = document.getElementById("ultimaColEncRec");
				if(typeof(obj2)!='undefined') obj2.style.display = 'block';
			}
		}catch(Err){
			//
		}
	}

//-->
</script>

</head>

<body text="#000000" bgColor="#ffffff" leftMargin="4" topMargin="4" marginwidth="4" marginheight="4" onLoad="redimensionar(820 ,600)">
<form name="ConsultarTransferenciasForm" method="post">
	<input type="hidden" name="accion"               value=""/>
	<input type="hidden" name="operNumTransferencia" value=""/>
	<input type="hidden" name="numeroTransferencia"  value=""/>
	<input type="hidden" name="numeroDetalle"        value=""/>
	<input type="hidden" name="rutBeneficiario"      value=""/>
	<input type="hidden" name="dvBeneficiario"      value=""/>
	<table id="tablaGenConmenu" width="785" border="0" cellspacing="0" cellpadding="0" align="left">
	  <tr valign="top">
		<td id="divNoImprimir" width="5">&nbsp;</td>
		<td id="colPrincipal" width="780">
			<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
				<tr>
					<td bgcolor="#FFFFFF" class="tituloSeccion">Transferencia&nbsp;de&nbsp;Fondos<font class="tituloSubSeccion">&nbsp;Consultar&nbsp;Transferencias</font> </td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
				<tr>
					<td align="left" valign="bottom" bgcolor="#FFFFFF">
						<font class="arial10">Esta&nbsp;consulta&nbsp;tiene&nbsp;disponible&nbsp;6&nbsp;(&nbsp;seis&nbsp;)&nbsp;meses&nbsp;de&nbsp;información.</font>
					</td>
				</tr>
				<tr>
					<td align="left" valign="bottom" bgcolor="#FFFFFF">
						<font class="arial10">El&nbsp;rango&nbsp;para&nbsp;consultar&nbsp;por&nbsp;periodo&nbsp;es&nbsp;de&nbsp;1&nbsp;(&nbsp;un&nbsp;)&nbsp;mes&nbsp;máximo.</font>
					</td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr valign="top">
					<td id="divNoImprimir" width="100%">
						<table width="100%" border="0" cellspacing="0" cellpadding="4" align="center" bgcolor="#FFFFFFF" class="T1">
						<tr>
							<td class="T1" width="131">Buscar&nbsp;por</td>
						</tr>
						</table>
						<table width="100%" border="0" cellpadding="0" cellspacing="0" class="T0">
						<tr>
							<td>
								<table width="80%" border="0" align="center" cellpadding="0" cellspacing="4">
								<tr><td height="5" colspan="4" align="center"></td></tr>
								<tr>
									<td width="100" align="center" class="arial10"><DIV id="divRealizadas"><input type="radio" name="tipoTransferencia" value="REA" onClick="cambiarEstadosTRF(this)"><b>Realizadas</b></DIV></td>
									<td width="100" align="center" class="arial10"><DIV id="divPendientes"><input type="radio" name="tipoTransferencia" value="PEN" onClick="cambiarEstadosTRF(this)"><b>Pendientes</b></DIV></td>
									<td width="250" align="center" class="arial10" colspan="2"><DIV id="divRecibidas"><input type="radio" name="tipoTransferencia" value="REC" onClick="cambiarEstadosTRF(this)"><b>Recibidas en l&iacute;nea desde Otros Bancos</b></DIV></td>
								</tr>
								<tr><td height="5" colspan="4" align="center"></td></tr>
								</table>
								<!--*********************-->
								<table width="100%" border="0" align="center" cellpadding="0" cellspacing="4">
								<tr>
									<td>
										<table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
										<tr>
											<td width="150" align="right" class="arial10"><div id="tituloCuenta"><b>Cuenta Origen</b></div></td>
											<td width="140" align="left"  class="arial10">&nbsp;
												<select name="cuentaOrigen" class="combo" style="width:100">
													<option value="" class="arial10"> &nbsp; </option>
													<c:if test="${!empty requestScope.CUENTAS_CORRIENTES}">
														<c:forEach var="iCuentas" items="${requestScope.CUENTAS_CORRIENTES}">
															<option value="<c:out value="${iCuentas.key}"/>" class="arial10"> <c:out value="${iCuentas.key}"/> </option>
														</c:forEach>
													</c:if>
												</select>
											</td>
											<td width="110" align="right" class="arial10"><div id="tituloRutBeneficiario"><b>Rut Beneficiario</b></div></td>
											<td width="120" class="arial10"><div id="divRut">&nbsp;&nbsp;<input maxlength="12" size="8" name="rut" class="arial10" style="width: 80"/></div></td>
											<td width="60" align="right" class="arial10"><div id="tituloEstado"><b>Estado</b></div></td>
											<td align="left" class="arial10">
												<div id="tiposDeEstados" class="enlinea">
												<select class="combo" tabindex="3" name="estado" style="width: 80">
													<option value=""></option>
													<option value="PRO">OK</option>
													<option value="REC">No Ok</option>
												</select>
												</div>
											</td>
										</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td>
										<table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
										<tr>
											<td width="150" align="right" class="arial10"><div id="tituloNumTransferencia"><b>&nbsp;N&uacute;mero Transferencia</b></div></td>
											<td align="left" class="arial10"><div id="divNumTransferencia" class="enlinea">&nbsp;&nbsp;<input maxlength="6" size="10" name="tmpNumTrf" class="arial10" onkeypress="return permite(event)"/></div></td>
											<td width="130" align="right" colspan="2" class="arial10">&nbsp;<input type="hidden" name="nombreArchivo" value=""/></td>
										</tr>
										</table>
									</td>
								</tr>
								</table>
								<!--
								<table width="100%" border="0" align="center" cellpadding="0" cellspacing="4">
								<tr>
									<td>
										<table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
										<tr>
											<td width="130" align="right" class="arial10"><div id="tituloCuenta"><b>Cuenta Origen</b></div></td>
											<td width="140" align="left"  class="arial10">&nbsp;
												<select name="cuentaOrigen" class="combo" style="width:100">
													<option value="" class="arial10"> &nbsp; </option>
													<c:if test="${!empty requestScope.CUENTAS_CORRIENTES}">
														<c:forEach var="iCuentas" items="${requestScope.CUENTAS_CORRIENTES}">
															<option value="<c:out value="${iCuentas.key}"/>" class="arial10"> <c:out value="${iCuentas.key}"/> </option>
														</c:forEach>
													</c:if>
												</select>
											</td>
											<td width="110" align="right" class="arial10"><div id="tituloRutBeneficiario"><b>Rut Beneficiario</b></div></td>
											<td width="120" class="arial10"><div id="divRut">&nbsp;&nbsp;<input maxlength="12" size="8" name="rut" class="arial10" style="width: 80"/></div></td>
											<td width="60" align="right" class="arial10"><div id="tituloEstado"><b>Estado</b></div></td>
											<td align="left" class="arial10">
												<div id="tiposDeEstados" class="enlinea">
												<select class="combo" tabindex="3" name="estado" style="width: 80">
													<option value=""></option>
													<option value="PRO">OK</option>
													<option value="REC">No Ok</option>
												</select>
												</div>
											</td>
										</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td>
										<table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
										<tr>
											<td width="130" align="right" class="arial10"><div id="tituloNombreArchivo"><b>Nombre Archivo</b></div></td>
											<td width="305" align="left" class="arial10"><div id="divNombreArchivo" class="enlinea">&nbsp;&nbsp;<input maxlength="30" size="25" name="nombreArchivo" class="arial10" style="width: 200"/></div></td>
											<td width="125" align="right" class="arial10"><div id="tituloNumTransferencia"><b>&nbsp;N&uacute;mero Transferencia</b></div></td>
											<td align="left" class="arial10"><div id="divNumTransferencia" class="enlinea">&nbsp;&nbsp;<input maxlength="6" size="10" name="tmpNumTrf" class="arial10" onkeypress="return permite(event)"/></div></td>
										</tr>
										</table>
									</td>
								</tr>
								</table>
								-->
								<table cellspacing="3" cellpadding="0" border="0" align="center" width="100%">
								<tbody>
								<tr>
									<td bgcolor="#ffffff" align="left" width="26%" class="arial10">
										<div id="divFechaDia" class="enlinea"><input type="radio" name="tipoBusquedaFecha" value="D" onClick="deshabilitar(document.ConsultarTransferenciasForm.fechaDesde);deshabilitar(document.ConsultarTransferenciasForm.fechaHasta);habilitar(document.ConsultarTransferenciasForm.dia);"><b>D&iacute;a</b></DIV></td>
									<td bgcolor="#ffffff" align="left" width="9%" class="arial10">
										<div id="divFechaPeriodo" class="enlinea"><input type="radio" name="tipoBusquedaFecha" value="P" onClick="deshabilitar(document.ConsultarTransferenciasForm.dia);habilitar(document.ConsultarTransferenciasForm.fechaDesde);habilitar(document.ConsultarTransferenciasForm.fechaHasta);"><b>Periodo</b></DIV></td>
									<td bgcolor="#ffffff" align="left" valign="bottom" width="15%" class="arial10">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Desde</td>
									<td bgcolor="#ffffff" align="left" valign="bottom" width="15%" class="arial10">
										Hasta</td>
									<td class="arial10" bgcolor="#ffffff" align="left" width="35%"></td>
								</tr>
								<tr class="arial10">
									<td class="arial10" bgcolor="#ffffff" align="left" width="25%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input maxlength="10" name="dia" size="10" class="arial10" onKeyPress="return permiteFecha(event)"/>
										<a id="anchorfh" name="anchorfh" title="día" onClick="calendar1.select(document.ConsultarTransferenciasForm.dia,'anchorfh','dd/MM/yyyy'); activarDiaFecha(); return false;" href="#">
										<img align="top" src="img/calendar/btn_date2_up.gif" style="border: 0px solid ;"/>
										</a>
									</td>
									<td class="arial10" bgcolor="#ffffff" align="left" width="8%">													</td>
									<td class="arial10" bgcolor="#ffffff" align="left" width="20%">&nbsp;&nbsp;&nbsp;&nbsp;
										<input maxlength="10" name="fechaDesde" size="10" class="arial10" onKeyPress="return permiteFecha(event)"/>
										<a id="anchorfd" name="anchorfd" title="Calendario fecha desde" onClick="calendar1.select(document.ConsultarTransferenciasForm.fechaDesde,'anchorfd','dd/MM/yyyy'); activarRangoFecha(); return false;" href="#">
										<img align="top" src="img/calendar/btn_date2_up.gif" style="border: 0px solid ;"/></a>
									</td>
									<td class="arial10" bgcolor="#ffffff" align="left" width="20%">
										<input maxlength="10" size="10" name="fechaHasta" class="arial10" onKeyPress="return permiteFecha(event)"/>
										<a id="anchorph2" class="textos" name="anchorph2" title="Calendario fecha hasta" onClick="calendar1.select(document.ConsultarTransferenciasForm.fechaHasta,'anchorph2','dd/MM/yyyy'); activarRangoFecha(); return false;" href="#">
										<img align="top" src="img/calendar/btn_date2_up.gif" style="border: 0px solid ;"/></a>
									</td>
									<td class="arial10" bgcolor="#ffffff" align="right" width="27%"><input type="button" name="Consultar" value="Consultar" onClick="doConsultar()">&nbsp;&nbsp;</td>
								</tr>
								</tbody>
								</table>
								<div id="mattKruseCalendarDIV" style="position: absolute; visibility: visible; background-color: white; z-index: 5; left: 405px; top: 161px;"></div>
							</td>
						</tr>
						<!--
						<tr>
							<td valign="top" align="right"  class="arial10">
								<input type="button" name="Consultar" value="Consultar" onClick="doConsultar()">&nbsp;&nbsp;
							</td>
						</tr>
						-->
						</table>
					</td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr valign="top">
					<td width="100%">
						<table width="100%" border="0" cellspacing="0" cellpadding="4" align="center" bgcolor="#FFFFFFF" class="T1">
						<tr>
							<td class="T1">Transferencias Realizadas en las &uacute;ltimas 24 Hrs.</td>
						</tr>
						</table>
						<table width="100%" border="0" cellpadding="0" cellspacing="0" class="T0">
						<tr>
							<td id="cabeceraRealizadas">
								<%@ include file="/belwls/bciexpress/bco_linea/transferenciasdefondo/cabecera_tabla_realizadas_24hrs.inc" %>
							</td>
						</tr>
						<tr>
							<td id='tr_tabla_realizadas' style="height:auto">
								<div id="scrolltableRealizadas" style="overflow: auto; height: 100%;">
								</div>
							</td>
						</tr>
						</table>
					</td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr valign="top">
					<td width="100%">
						<table width="100%" border="0" cellspacing="0" cellpadding="4" align="center" bgcolor="#FFFFFFF" class="T1">
							<tr>
								<td class="T1">Transferencias Recibidas en l&iacute;nea desde Otros Bancos en las &uacute;ltimas 24 Hrs.</td>
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
				<tr><td>&nbsp;</td></tr>
			</table>
		</td>
	  </tr>
	</table>
</form>
<br/>
</body>
<script language="JavaScript" type="text/javascript">
<!--
<c:choose>
	<c:when test="${!empty requestScope.TRANSF_REALIZADAS}">
		ordenaTablaRealizadas(-1,'asc','scrolltableRealizadas');
	</c:when>
	<c:otherwise>
		mostrarDiv('cabeceraRealizadas','<font class="arial10">&nbsp;<c:out value="${requestScope.ERROR_TRANSF_REALIZADAS}"/></font>');
	</c:otherwise>
</c:choose>

<c:choose>
	<c:when test="${!empty requestScope.TRANSF_RECIBIDAS}">
		ordenaTablaRecibidas(-1,'asc','scrolltableRecibidas');
	</c:when>
	<c:otherwise>
		mostrarDiv('cabeceraRecibidas','<font class="arial10">&nbsp;<c:out value="${requestScope.ERROR_TRANSF_RECIBIDAS}"/></font>');
	</c:otherwise>
</c:choose>

crearLabel();
cargaValores();
redimensionaTablas('<c:out value="${MAX_ALTURA_TABLA_DATOS}"/>');
//-->
</script>
</html>
<%--
******************************************************************************************************
* Archivo           consultar_transferencias.jsp

* Descripción		Se utiliza para mostrar las transferencias realizadas y recibidas durante las
					últimas 24 hrs, además de seleccionar filtros para realizar las consultas.

* @author           SEnTRA

* Versión           1.0

* Fecha creación    13-10-2009

* Historia de cambios
   versión   fecha      autor   cambios
   =======   ========== ======= =================================
   1.0       13-10-2009 SEnTRA  versión inicial
******************************************************************************************************
--%>

