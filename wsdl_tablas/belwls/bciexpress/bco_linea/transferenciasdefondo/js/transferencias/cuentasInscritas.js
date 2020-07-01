var existeElNombre;
var existeElNumero;
var existeCuenta;
var conexion1;

function Valida_Rut(Objeto) {
	var tmpstr = "";
	var intlargo = Objeto.value
	if (intlargo.length > 0) {
		crut = Objeto.value
		largo = crut.length;
		if (largo < 2) {
			return false;
		}
		for (i = 0; i < crut.length; i++)
			if (crut.charAt(i) != ' ' && crut.charAt(i) != '.'
					&& crut.charAt(i) != '-') {
				tmpstr = tmpstr + crut.charAt(i);
			}
		rut = tmpstr;
		crut = tmpstr;
		largo = crut.length;

		if (largo > 2)
			rut = crut.substring(0, largo - 1);
		else
			rut = crut.charAt(0);

		dv = crut.charAt(largo - 1);

		if (rut == null || dv == null)
			return 0;

		var dvr = '0';
		suma = 0;
		mul = 2;

		for (i = rut.length - 1; i >= 0; i--) {
			suma = suma + rut.charAt(i) * mul;
			if (mul == 7)
				mul = 2;
			else
				mul++;
		}

		res = suma % 11;
		if (res == 1)
			dvr = 'k';
		else if (res == 0)
			dvr = '0';
		else {
			dvi = 11 - res;
			dvr = dvi + "";
		}

		if (dvr != dv.toLowerCase()) {
			return false;
		}

		return true;
	}
}
function fnLimpiar() { 
	var obj = document.forms[0];
	obj.numeroDeLaCuenta.value = '';
	obj.nombreBeneficiario.value = '';
	obj.rutBeneficiario.value = '';
	obj.nombreDeLaCuenta.value = '';
	obj.emailBeneficiario.value = '';
	obj.codigoDelBanco.value = '-1';
	obj.numeroDeLaCuenta.style.borderColor = '';
	obj.nombreBeneficiario.style.borderColor = '';
	obj.rutBeneficiario.style.borderColor = '';
	obj.nombreDeLaCuenta.style.borderColor = '';
	obj.emailBeneficiario.style.borderColor = '';
	obj.codigoDelBanco.style.borderColor = '';
	obj.numeroDeLaCuenta.focus();
	document.forms[0].agregar.disabled = false;
	return;

}

function emailCheck(emailStr) {
	var msg = "";
	var checkTLD = 1;
	var knownDomsPat = /^(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum)$/;
	var emailPat = /^(.+)@(.+)$/;

	var specialChars = "\\(\\)><@,;:\\\\\\\"\\.\\[\\]";
	var validChars = "\[^\\s" + specialChars + "\]";
	var quotedUser = "(\"[^\"]*\")";
	var ipDomainPat = /^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/;
	var atom = validChars + '+';
	var word = "(" + atom + "|" + quotedUser + ")";
	var userPat = new RegExp("^" + word + "(\\." + word + ")*$");
	var domainPat = new RegExp("^" + atom + "(\\." + atom + ")*$");

	var matchArray = emailStr.match(emailPat);
	if (matchArray == null) {
		return false;
	}
	var user = matchArray[1];
	var domain = matchArray[2];
	for (i = 0; i < user.length; i++) {

		if (user.charCodeAt(i) > 127) {
			return false;
		}
	}

	for (i = 0; i < domain.length; i++) {
		if (domain.charCodeAt(i) > 127) {
			return false;
		}
	}

	if (user.match(userPat) == null) {
		return false;
	}

	var IPArray = domain.match(ipDomainPat);
	if (IPArray != null) {
		for ( var i = 1; i <= 4; i++) {
			if (IPArray[i] > 255) {
				return false;
			}
		}
		return true;
	}

	var atomPat = new RegExp("^" + atom + "$");
	var domArr = domain.split(".");
	var len = domArr.length;
	for (i = 0; i < len; i++) {
		if (domArr[i].search(atomPat) == -1) {
			return false;
		}
	}

	if (checkTLD && domArr[domArr.length - 1].length != 2
			&& domArr[domArr.length - 1].search(knownDomsPat) == -1) {
		return false;
	}

	if (len < 2) {
		return false;
	}
	return true;
}

function msjError(error) {
	return ('<li>' + error + '</li>');
}

function desplegarMsj(msj) {
	var mensaje = '&nbsp;Error al momento de ingresar los Datos';
	mensaje += '<ul>';
	mensaje += msj;
	mensaje += '</ul>';
	document.getElementById('Error').style.display = '';
	document.getElementById('Error').innerHTML = mensaje;
}

function fnValida() {
	var obj = document.forms[0];
	document.forms[0].agregar.disabled = true;
	obj.numeroDeLaCuenta.value = trim(obj.numeroDeLaCuenta.value);
	if (obj.numeroDeLaCuenta.value == "") {
		alert('Debe ingresar un Número de Cuenta para el Beneficiario');
		obj.numeroDeLaCuenta.style.borderColor = 'RED';
		obj.numeroDeLaCuenta.focus();
		document.forms[0].agregar.disabled = false;
		return;
	}
	if (validaNumeros(obj.numeroDeLaCuenta.value) == false) {
		alert('Debe ingresar solo números en la Cuenta del Beneficiario');
		obj.numeroDeLaCuenta.style.borderColor = 'RED';
		obj.numeroDeLaCuenta.focus();
		document.forms[0].agregar.disabled = false;
		return;
	}
	
	
	obj.numeroDeLaCuenta.style.borderColor = '';
	obj.nombreBeneficiario.value = trim(obj.nombreBeneficiario.value);
	if (obj.nombreBeneficiario.value == "") {
		alert('Debe ingresar un Nombre para el Beneficiario');
		obj.nombreBeneficiario.style.borderColor = 'RED';
		obj.nombreBeneficiario.focus();
		document.forms[0].agregar.disabled = false;
		return;
	}
	obj.nombreBeneficiario.style.borderColor = '';
	obj.rutBeneficiario.value = trim(obj.rutBeneficiario.value);
	if (obj.rutBeneficiario.value == "") {
		alert('Debe ingresar el Rut del Beneficiario');
		obj.rutBeneficiario.style.borderColor = 'RED';
		obj.rutBeneficiario.focus();
		document.forms[0].agregar.disabled = false;
		return;
	} else {
		if (!Valida_Rut(obj.rutBeneficiario)) {
			alert('Rut Incorrecto');
			obj.rutBeneficiario.style.borderColor = 'RED';
			obj.rutBeneficiario.focus();
			document.forms[0].agregar.disabled = false;
			return;
		}

	}
	obj.rutBeneficiario.style.borderColor = '';
	obj.nombreDeLaCuenta.value = trim(obj.nombreDeLaCuenta.value);
	if (obj.nombreDeLaCuenta.value == "") {
		alert('Debe ingresar un Nombre para inscribir la cuenta');
		obj.nombreDeLaCuenta.style.borderColor = 'RED';
		obj.nombreDeLaCuenta.focus();
		document.forms[0].agregar.disabled = false;
		return;
	}
	obj.nombreDeLaCuenta.style.borderColor = '';
	obj.emailBeneficiario.value = trim(obj.emailBeneficiario.value);
	if (obj.emailBeneficiario.value != "") {
		if (!emailCheck(obj.emailBeneficiario.value)) {
			alert('El email del beneficiario debe ser de la forma xxx@xxx');
			obj.emailBeneficiario.style.borderColor = 'RED';
			obj.emailBeneficiario.focus();
			document.forms[0].agregar.disabled = false;
			return;
		}
	}
	obj.emailBeneficiario.style.borderColor = '';
	if (obj.codigoDelBanco.value == "-1") {
		alert('Debe seleccionar un Banco');
		obj.codigoDelBanco.style.borderColor = 'RED';
		obj.codigoDelBanco.focus();
		document.forms[0].agregar.disabled = false;
		return;

	}
	obj.codigoDelBanco.style.borderColor = '';
	validarElNombreDeLaCuenta();
	if (existeElNombre == 'TRC') {
		alert('El nombre de la cuenta ya Existe, Por favor ingrese otro nombre');
		obj.nombreDeLaCuenta.style.borderColor = 'RED';
		obj.nombreDeLaCuenta.focus();
		document.forms[0].agregar.disabled = false;
		return;
	}else if(existeElNombre == 'TEL') {
		alert('La cuenta está en estado Eliminada');
		obj.nombreDeLaCuenta.style.borderColor = 'RED';
		obj.nombreDeLaCuenta.focus();
		document.forms[0].agregar.disabled = false;
		return;
	}
	
	obj.nombreDeLaCuenta.style.borderColor = '';
	if (obj.codigoDelBanco.value == "016") {
		validaNumeroDeCuentaEnBci();
		if (existeCuenta != '1') {
			if (existeCuenta == '2') {
				alert('El rut de beneficiario ingresado no está asociado a la Cuenta');
				obj.rutBeneficiario.style.borderColor = 'RED';
				obj.rutBeneficiario.focus();
			}else{
			alert('La cuenta no existe en el Banco BCI, Por favor revise su número de Cuenta');
			obj.numeroDeLaCuenta.style.borderColor = 'RED';
			obj.numeroDeLaCuenta.focus();
			}
			document.forms[0].agregar.disabled = false;
			return;
		}
	}
	validarExisteElNumeroDeLaCuenta();
	if (existeElNumero == 'TRC') {
		alert('La cuenta que desea agregar ya está inscrita');
		obj.numeroDeLaCuenta.style.borderColor = 'RED';
		obj.numeroDeLaCuenta.focus();
		document.forms[0].agregar.disabled = false;
		return;
	}else if(existeElNumero == 'TEL') {
		alert('La cuenta que desea agregar está inscrita, pero en estado Eliminada.  Intente Restaurar.');
		obj.numeroDeLaCuenta.style.borderColor = 'RED';
		obj.numeroDeLaCuenta.focus();
		document.forms[0].agregar.disabled = false;
		return;
	}
	
	obj.numeroDeLaCuenta.style.borderColor = '';
	var rutBeneficiario = obj.rutBeneficiario.value.substring(0,
			(obj.rutBeneficiario.value.length - 1));
	var DvBeneficiario = obj.rutBeneficiario.value
			.substring((obj.rutBeneficiario.value.length - 1));
	obj.rutBeneficiario.value = rutBeneficiario;
	obj.dvBeneficiario.value = DvBeneficiario;
	document.forms[0].accion.value = 'agregarCuentasInscritas';
	document.forms[0].submit();
	return;
}

function doVolver(metodo) {
	document.forms[0].accion.value = metodo;
	document.forms[0].submit();
}

// Metodo que permite solo ingresar Numeros
function permite(elEvento) {
	var permitidos = "0123456789";
	var teclas_especiales = [ 8, 37, 39, 46 ];
	var evento = elEvento || window.event;
	var codigoCaracter = evento.charCode || evento.keyCode;
	var caracter = String.fromCharCode(codigoCaracter);
	if (caracter == "." || caracter == "%") {
		return false;
	}
	var tecla_especial = false;
	for ( var i in teclas_especiales) {
		if (codigoCaracter == teclas_especiales[i]) {
			tecla_especial = true;
			break;
		}
	}
	return permitidos.indexOf(caracter) != -1 || tecla_especial;
}

// Metodo para ingresar solo numeros y la K para el Rut
function permiteRut(elEvento) {
	var permitidos = "0123456789kK";
	var teclas_especiales = [ 8, 37, 39, 46 ];
	var evento = elEvento || window.event;
	var codigoCaracter = evento.charCode || evento.keyCode;
	var caracter = String.fromCharCode(codigoCaracter);
	if (caracter == "." || caracter == "%") {
		return false;
	}
	var tecla_especial = false;
	for ( var i in teclas_especiales) {
		if (codigoCaracter == teclas_especiales[i]) {
			tecla_especial = true;
			break;
		}
	}
	return permitidos.indexOf(caracter) != -1 || tecla_especial;
}

function validarExisteElNumeroDeLaCuenta() {

	var obj = document.forms[0];

	var url = obj.action + "?accion=validaNumeroDeLaCuenta";
	var today = new Date();
	var id = Math.abs(Math.sin(today.getTime()));
	url = url + "&id=" + id;
	validarExisteElNumeroDeLaCuentaAjax(url);

}

function validarExisteElNumeroDeLaCuentaAjax(url) {
	if (url == '') {
		return;
	}
	conexion1 = crearXMLHttpRequest();
	conexion1.open("POST", url, false);
	conexion1.setRequestHeader('Content-Type',
			'application/x-www-form-urlencoded');
	conexion1
			.send(("&numeroDeLaCuenta=" + encodeURIComponent(document.forms[0].numeroDeLaCuenta.value) 
			+ "&rutBeneficiario=" + encodeURIComponent(document.forms[0].rutBeneficiario.value.substring(0,(document.forms[0].rutBeneficiario.value.length - 1))) 
			+ "&codigoDelBanco=" + encodeURIComponent(document.forms[0].codigoDelBanco.value)));
	procesarExisteElNumeroDeLaCuenta();
}

function procesarExisteElNumeroDeLaCuenta() {

	if (conexion1.readyState == 4) {
		if (conexion1.status == 200) {
			existeElNumero = conexion1.responseText;
			document.getElementById('estadoCuenta').innerHTML = '';
		}
	} else {
		document.getElementById('estadoCuenta').innerHTML = '<img src="img/cargando.gif"  alt="Verificando el Número de la Cuenta" />';
	}
}

function validaNumeroDeCuentaEnBci() {

	var obj = document.forms[0];

	var url = obj.action + "?accion=validaNumeroDeCuentaEnBci";
	var today = new Date();
	var id = Math.abs(Math.sin(today.getTime()));
	url = url + "&id=" + id;
	validaNumeroDeCuentaEnBciAjax(url);

}

function validaNumeroDeCuentaEnBciAjax(url) {
	if (url == '') {
		return;
	}

	conexion1 = crearXMLHttpRequest();
	conexion1.open("POST", url, false);
	conexion1.setRequestHeader('Content-Type',
			'application/x-www-form-urlencoded');
	conexion1
			.send(("&numeroDeLaCuenta=" + encodeURIComponent(document.forms[0].numeroDeLaCuenta.value) + "&rutBeneficiario=" + encodeURIComponent(document.forms[0].rutBeneficiario.value)) );
	procesarNumeroDeCuentaEnBci();
}

function procesarNumeroDeCuentaEnBci() {

	if (conexion1.readyState == 4) {
		if (conexion1.status == 200) {
			existeCuenta = conexion1.responseText;
			document.getElementById('estadoCuenta').innerHTML = '';
		}
	} else {
		document.getElementById('estadoCuenta').innerHTML = '<img src="img/cargando.gif"  alt="Verificando el Número de la Cuenta" />';
	}
}

function validarElNombreDeLaCuenta() {

	var obj = document.forms[0];

	var url = obj.action + "?accion=validaElNombreDeLaCuenta";
	var today = new Date();
	var id = Math.abs(Math.sin(today.getTime()));
	url = url + "&id=" + id;
	validaNombreAjax(url);

}

function validaNombreAjax(url) {
	if (url == '') {
		return;
	}
	url += "&nombreDeLaCuenta=" + encodeURIComponent(document.forms[0].nombreDeLaCuenta.value);
	conexion1 = crearXMLHttpRequest();
	if (window.XMLHttpRequest) {
		conexion1.open("POST", url, false);
		conexion1.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		conexion1.send(null);
		existeElNombre = conexion1.responseText;
	}else{
		conexion1.open("POST", url, false);
		conexion1.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		conexion1.send();
	}
	
	procesarEventos();

}

function procesarEventos() {
	if (conexion1.readyState == 4) {
		if (conexion1.status == 200) {
			existeElNombre = conexion1.responseText;
			document.getElementById('estado').innerHTML = '';
		}
	} else {
		document.getElementById('estado').innerHTML = '<img src="img/cargando.gif"  alt="Verificando el Nombre de la Cuenta" />';
	}
}

function crearXMLHttpRequest() {
	var xmlHttp = null;
	if (window.ActiveXObject)
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	else if (window.XMLHttpRequest)
		xmlHttp = new XMLHttpRequest();
	return xmlHttp;
}

function fnConsultarCuentasEliminadas() {
	document.forms[0].accion.value = 'listarCuentasEliminadas';
	document.forms[0].submit();
}

function fnAgregar() {
	document.forms[0].accion.value = 'ingresarCuentaInscrita';
	document.forms[0].submit();
}
function fnCerrarVentana(id) {

	document.getElementById(id).style.display = 'none';

}

function doEliminar() {

	var alMenosUnRegistro = false;
	if(typeof(document.forms[0].cuentasAEliminar.length)!='undefined'){
		for ( var i = 0; i < document.forms[0].cuentasAEliminar.length; i++) {

			if (document.forms[0].cuentasAEliminar[i].checked) {
				alMenosUnRegistro = true;
				break;
			}

		}
	}else{
		if (document.forms[0].cuentasAEliminar.checked) {
			alMenosUnRegistro = true;
		}
	}
	if (alMenosUnRegistro) {
		document.forms[0].accion.value = 'eliminarCuentaInscrita';
		document.forms[0].submit();
		return;
	} else {
		alert('Debe seleccionar un Registro');
		return;
	}

}

function doRestaurar() {

	var alMenosUnRegistro = false;
	if(typeof(document.forms[0].cuentasARestaurar.length)!='undefined'){
		for ( var i = 0; i < document.forms[0].cuentasARestaurar.length; i++) {

			if (document.forms[0].cuentasARestaurar[i].checked) {
				alMenosUnRegistro = true;
				break;
			}

		}
	}else{
		if (document.forms[0].cuentasARestaurar.checked) {
			alMenosUnRegistro = true;
		}
	}
	if (alMenosUnRegistro) {
		document.forms[0].accion.value = 'restaurarCuentaEliminada';
		document.forms[0].submit();
		return;
	} else {
		alert('Debe seleccionar un Registro');
		return;
	}

}

function activarBotonAccion(botCheckbox, botAccion){
	var alMenosUnRegistro = false;
	if(typeof(botCheckbox.length)!="undefined"){
		for ( var i = 0; i < botCheckbox.length; i++) {
			if (botCheckbox[i].checked) {
				alMenosUnRegistro = true;
				break;
			}
		}
	}else{
		if(botCheckbox.checked) 
			alMenosUnRegistro = true;	
	}
	if(alMenosUnRegistro){
		botAccion.disabled = false;
	}else{
		botAccion.disabled = true;
	}
	
}
