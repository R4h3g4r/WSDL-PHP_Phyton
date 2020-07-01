	function doImprimir(){
		self.print();
	}
	
	function trim(s) {
		return s.replace( /^\s*/, "" ).replace( /\s*$/, "" ); 
	}

	function str_replace(cadena, cambia_esto, por_esto) {
		  return cadena.split(cambia_esto).join(por_esto);
	}

	function mostrarOcultar(id, op) {
		document.getElementById(id).style.display = op;
	}
	
	function fnCerrarVentana(id) {
		document.getElementById(id).style.display = 'none';
	}

	function number_format(n) {
	  var arr=new Array('0'), i=0; 
	  while (n>0) 
		{arr[i]=''+n%1000; n=Math.floor(n/1000); i++;}
	  arr=arr.reverse();
	  for (var i in arr) if (i>0) //padding zeros
		while (arr[i].length<3) arr[i]='0'+arr[i];
	  return arr.join(".");
	}

	//funciones para ordenamiento de tablas
	function quickSort(objArray,aod) {
		procesoQS(objArray,aod,0,objArray.length-1); 
	}

	function procesoQS(objArray,aod,ini,fin) { 
		var i = ini;
		var j = fin;
		var tmp;

		var c = objArray[Math.floor( ( i + j ) / 2 )];

		do { 
			if ( aod == "asc" ) { 
				while ( ( i < fin ) && ( parseInt(c,10) > parseInt(objArray[i],10) ) ) i++;
				while ( ( j > ini ) && ( parseInt(c,10) < parseInt(objArray[j],10) ) ) j--; 
			} else { 
				while ( ( i < fin ) && ( parseInt(c,10) < parseInt(objArray[i],10) ) ) i++;
				while ( ( j > ini ) && ( parseInt(c,10) > parseInt(objArray[j],10) ) ) j--; 
			}

			if ( i < j ) { 
				tmp = objArray[i];
				objArray[i] = objArray[j];
				objArray[j] = tmp; 
			}

			if ( i <= j ) { 
				i++;
				j--; 
				} 
		} while ( i <= j );

		if ( ini < j ) procesoQS(objArray,aod,ini,j);
		if ( i < fin ) procesoQS(objArray,aod,i,fin); 
	}

	//funcion que muestra un mensaje en una capa
	function mostrarDiv(xDiv, xMensaje){
		id(xDiv).innerHTML = xMensaje;
	}
	
	// Añadir el evento onclick a los div etiquetas
	function nuevo_evento(elemento, evento, funcion) {
		  if (elemento.addEventListener) {
				elemento.addEventListener(evento, funcion, false);
		  } else {
				elemento.attachEvent("on"+evento, funcion);
		  }
	}

	//Funciones para operaciones con fechas
	//Recibe como parametros dos objetos html text 
	function fnVerificaDiasDiferenciaFecha(fechaIni, fechaFin){	
		var ndias = 31;
		var today = new Date();
		var fecIni = fnStringToDate(fechaIni.value);
		var fecFin = fnStringToDate(fechaFin.value);
		var xDias = timeDifference(fecFin, fecIni);
		if ( xDias > ndias){
			alert("El rango para consultar por periodo es de 1 ( un ) mes maximo");
			fechaFin.value='';
			fechaFin.focus();
			return false;
		}else{
			if (xDias < 0){
				alert("Fecha Hasta no puede ser mayor a fecha Desde");
				fechaFin.value='';
				fechaFin.focus();
				return false;
			}
		}
		
		if(fnValidaContraFechaDelDia(fechaIni)){
			if(fnValidaContraFechaDelDia(fechaFin)){
				return true;
			}
		}
		return false;
	}

	function fnValidaContraFechaDelDia(fecha){
		var today = new Date();
		var fec = fnStringToDate(fecha.value);
		xDias = timeDifference(fec, today);
		//alert(xDias)
		if(xDias >= 0){
			alert("Fecha de consulta no puede ser mayor a la actual");
			fecha.value='';
			fecha.focus();
			return false;
		}else{
			xDias = diferenciaDeXMeses(fec, 6);
			if(xDias < 0){
				alert("Esta consulta tiene disponible sólo 6 meses de información.\n Ingrese fechas dentro de rango disponible.");
				fecha.value='';
				fecha.focus();
				return false;
			}
		}
		return true;
	}

	function y2k(number) { return (number < 1000) ? number + 1900 : number; }

	function diferenciaDeXMeses(laterdate, diferenciaMeses) {
		var today = new Date();
		var daysDifference = 0;
		try{
			var fecha6Meses = new Date(today.getYear(), today.getMonth() - diferenciaMeses, today.getDate());
			var difference = laterdate.getTime() - fecha6Meses.getTime();
			daysDifference = Math.floor(difference/1000/60/60/24);
		}catch(Err){}
		return daysDifference;
	}	
	
	function timeDifference(laterdate,earlierdate) {
		var difference = laterdate.getTime() - earlierdate.getTime();
		var daysDifference = Math.floor(difference/1000/60/60/24);
		return daysDifference;
	}	

	function fnStringToDate(n) {
		firstSlash = n.indexOf("/");
		secondSlash= n.indexOf("/", firstSlash + 1);

		day = parseInt(n.substring(0, firstSlash), 10);
		month = parseInt(n.substring(firstSlash + 1, secondSlash), 10);
		year = parseInt(n.substring(secondSlash + 1, secondSlash + 5), 10);

		return new Date(year, month - 1, day);
	}

	function fnValidaFecha(obj, title){
		if(obj.value != ""){
			var firstSlash = obj.value.indexOf("/");
			var secondSlash= obj.value.indexOf("/", firstSlash + 1);
			var day = parseInt(obj.value.substring(0, firstSlash), 10);
			var month = parseInt(obj.value.substring(firstSlash + 1, secondSlash), 10);
			var year = parseInt(obj.value.substring(secondSlash + 1, secondSlash + 5), 10);
			if (!isDateValid(day,month,year)) {
				alert('Ingrese una fecha válida en Fecha ' + title);
				obj.value='';
				obj.focus();
				return false;
			}
		}
		return true;
	}

	function isDateValid(day,month,year) {
	// checks if date passed is valid
	// will accept dates in following format:
	// isDate(dd,mm,ccyy), or
	// isDate(dd,mm) - which defaults to the current year, or
	// isDate(dd) - which defaults to the current month and year.
	// Note, if passed the month must be between 1 and 12, and the
	// year in ccyy format.

		var today = new Date();
		year = ((!year) ? y2k(today.getYear()):year);
		month = ((!month) ? today.getMonth():month-1);
		if (!day) return false
		var test = new Date(year,month,day);
		//alert(year+"="+y2k(test.getYear())+" "+month+"="+test.getMonth()+" "+day+"="+test.getDate());
		if ( (y2k(test.getYear()) == year) &&
			 (month == test.getMonth()) &&
			 (day == test.getDate()) )
			return true;
		else
			return false;
	}

	//Funciones para el manejo de paginacion
	/********************************INICIO PAGINACION********************************************/
	function irAPagina(xform, xbloque, xaccion, xaction){
		if(typeof(xform.bloqueDetalle)!='undefined'){
			xform.bloqueDetalle.value = xbloque;
		}else{
			xform.bloque.value = xbloque;
		}
		xform.accion.value = xaccion;
		xform.action = xaction;
		//alert(xform.accion.value);
		//alert(xform.action);
		xform.submit();
		//return true;
	}
	
	function validaBloque(xform, xtotalBloques, xaccion, xaction){
		var max = parseInt(xtotalBloques,10);
		if(xform.bloqueActual.value!=""){
			if((parseInt(xform.bloqueActual.value,10)<1)||(parseInt(xform.bloqueActual.value,10)>max)){
				xform.bloqueActual.value="";
			}else{
				irAPagina(xform, xform.bloqueActual.value, xaccion, xaction);
			}
		}
	}
	/********************************FIN PAGINACION*******************************************/
	
	function redimensionar(alLado, paraAbajo)
	{
		window.resizeTo(alLado, paraAbajo);
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

function validaNumeros(campo){
	var ubicacion
	var caracteres = "0123456789"
	var contador = 0
	for (var i=0; i < campo.length; i++) {
	    ubicacion = campo.substring(i, i + 1)
	    if (caracteres.indexOf(ubicacion) != -1){
		    contador++
	    }else{
		    return false
	    }
	}
	return true
}