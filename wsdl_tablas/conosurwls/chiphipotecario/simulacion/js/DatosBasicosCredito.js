var max = 0;
var min = 10000000;


function setPieYFinanciamiento() {

	var valorPropiedadStr = document.getElementById(((activePesos)?"tempValorPropiedad":"valorPropiedad")).value;
	var montoCreditoStr   = document.getElementById(((activePesos)?"tempCredito":"credito")).value;
	
	if(trim(valorPropiedadStr) == "" || trim(montoCreditoStr) == "")
		return;
	
	var valorPropiedad    = parseInt(sinFormato(valorPropiedadStr));
	var montoCredito      = parseInt(sinFormato(montoCreditoStr));	

	if(montoCredito > valorPropiedad) {
		alert("Estimado Cliente, el monto del crédito no puede ser mayor al de la propiedad");
		document.getElementById("credito").value = "";
		document.getElementById("credito").focus();
		document.getElementById("tempCredito").value = "";
		return;
	}
	document.getElementById("pie").innerHTML            = parseFloat((valorPropiedad - montoCredito)).toFixed(2);
	document.getElementById("piepesoss").innerHTML      = formato(((valorPropiedad - montoCredito) * UF),false);	
	document.getElementById("financiamiento").innerHTML = ((montoCredito / valorPropiedad) * 100).toFixed(2) + " %";
}

function buscarRangoGlobal() {
	for(var t=0;t<rangosArr.length;t++){
		aux = rangosArr[t];
		min = (aux.minCredito < min)?aux.minCredito:min;
		max = (aux.maxCredito > max)?aux.maxCredito:max;
	}
}
function validaRangos() {
	var obj            = document.forms[0];
	var credito        = parseInt(sinFormato((activePesos)?obj.tempCredito.value:obj.credito.value),10);
	var valorPropiedad = parseInt(sinFormato((activePesos)?obj.tempValorPropiedad.value:obj.valorPropiedad.value),10);
	
	if(idProducto != 30){
		if(valorPropiedad < min || valorPropiedad > max) {
			alert("Estimado Cliente, por favor ingrese un valor de propiedad entre UF " + formato(min,true) + " y UF " + formato(max,true));
			return false;
		}
	}
		
	for(var t = 0;t < rangosArr.length;t ++) {
		aux = rangosArr[t];	
		//if(aux.maxCredito >= valorPropiedad && aux.minCredito <= valorPropiedad) {
		if(aux.maxCredito >= credito && aux.minCredito <= credito) {
			var financiamiento = parseFloat((credito / valorPropiedad)*100);
			if(financiamiento < aux.minPjeFin || financiamiento > aux.maxPjeFin) {
				minFinan = (aux.minPjeFin * valorPropiedad) / 100;
				maxFinan = (aux.maxPjeFin * valorPropiedad) / 100;				
				//nota: piedieron que sea un porcentaje
				alert("Estimado Cliente, por favor ingrese un monto de crédito entre " + formato(aux.minPjeFin,false) + "% y " + formato(aux.maxPjeFin,false)+"%");			
				return false;
			}
		} else {
			alert("Estimado Cliente, por favor ingrese un monto de crédito entre U.F." + formato(aux.minCredito,false) + " y U.F." + formato(aux.maxCredito,false));	
			return false;
		}
		
	}
	return true;
}

function simularCredito() {
	if(!validaRangos()){
		return;
	}

	var valorPropiedadStr = document.getElementById(((activePesos)?"tempValorPropiedad":"valorPropiedad")).value;
	var montoCreditoStr   = document.getElementById(((activePesos)?"tempCredito":"credito")).value;
	
	if(valorPropiedadStr == "") {
		alert("Debe ingresar un valor de propiedad.");
		document.getElementById(((activePesos)?"tempValorPropiedad":"valorPropiedad")).focus();
		return;
	}
	if(montoCreditoStr == "") {
		alert("Debe ingresar un monto de crédito.");
		 document.getElementById(((activePesos)?"tempCredito":"credito")).focus();
		return;
	}	

document.getElementById("valorPropiedadUf").value = parseInt(sinFormato(document.getElementById(((activePesos)?"tempValorPropiedad":"valorPropiedad")).value));
	document.getElementById("montoCreditoUf").value = parseInt(sinFormato(document.getElementById(((activePesos)?"tempCredito":"credito")).value));
	document.getElementById("pieUf").value = document.getElementById("valorPropiedadUf").value-document.getElementById("montoCreditoUf").value;
	document.getElementById("valorPropiedadPesos").value = document.getElementById("valorPropiedadUf").value * UF;	
	document.getElementById("montoCreditoPesos").value = document.getElementById("montoCreditoUf").value * UF
	document.getElementById("piePesos").value = document.getElementById("pieUf").value * UF	
	document.getElementById("pjeFinanciamiento").value = document.getElementById("montoCreditoUf").value/document.getElementById("valorPropiedadUf").value;
	
	var obj = document.forms[0];
	obj.action = "simulacionAction.do";
	obj.submit();
}
