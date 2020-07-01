
// Empty: devuelve verdadero si value es vacio
function Empty(value) {
    var pattern=new RegExp("^[ ]*$");
    return value.match(pattern) || value.length==0;
}

// isInteger: devuelve verdero si value es un entero
function isInteger(value) {
    var pattern=new RegExp("^[0-9]+$");
    return value.match(pattern);
}

// isDouble: devuelve verdero si value es un double
function isDouble(value) {
    var pattern=new RegExp("^[0-9]+(\\.[0-9]+){0,1}$");
    return value.match(pattern);
}

// isMoney: devuelve verdadero si un valor es tipo moneda
function isMoney(value, isEnglish) {

	if (isEnglish) {
	    var pattern=new RegExp("^[0-9]+(\\.[0-9]+){0,1}$");
	    return value.match(pattern);
	} else {
	    var pattern=new RegExp("^[0-9]+(,[0-9]+){0,1}$");
	    return value.match(pattern);
	}

}

// isMail: devuelve verdadero si value es una direccion de correo valida
function isMail(value) {
    try
	{
		var pattern=new RegExp("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
		return value.match(pattern);
	}
	catch(e)
	{
		return false;
	}
}

// isURI, devuelve verdadero si value es una uri valida, falso en caso contrario
function isURL(value) {	  
	var pattern=new RegExp("^([a-z]*://){0,1}([a-zA-Z0-9_\\-]+\\.)+[a-zA-Z0-9_\\-]+(:[0-9]+)*$");
	return value.match(pattern);
}

// isDate: devuelve verdadero si value es una fecha valida en formato dd/mm/aaaa
function isDate(value) {
    var pattern1=new RegExp("^(0[0-9]|[1-2][0-9]|30|31)/(0[13-9]|1[0-2])/[1-9][0-9][0-9][0-9]");
    var pattern2=new RegExp("^(0[0-9]|[1-2][0-9])/(0[0-9]|1[0-2])/[1-9][0-9][0-9][0-9]");

    if (value.match(pattern1) || value.match(pattern2)) {
        if (parseInt(value.substr(6,4))%4!=0 && parseInt(value.substr(3,2))==2 && parseInt(value.substr(0,2))==29) {
            return false;
        } else return true;
    } else return false;
}


// isTime: devuelve verdadero si value es una hora valida en formato hh:mm:ss
function isTime(value) {
    var pattern=new RegExp("^[ 0-2][0-9]:[0-5][0-9]$");
    return value.match(pattern);
}


// isAlpha: devuelve verdadero si la cadena contiene solo caracteres alfabeticos o espacios
function isAlpha(value) {
	var pattern=new RegExp("^[a-zA-Z\\s]+$");
    return value.match(pattern);
}

// isModule11: devuelve verdadero si value es valido para el modulo 11
function isRut(value) {
    var pattern=new RegExp("^(([0-9]{1,2}\\.[0-9]{3}\\.[0-9]{3})|([0-9]{7,8}))\\-([0-9K])$", "i");
    var pattern_point=new RegExp("\\.", "g");
    var pattern_dv=new RegExp("([0-9]+)\\-([0-9K])", "i");

    value=Trim(value);
    if (value.match(pattern)) {
        value=value.replace(pattern_point, "");
        if (value.match(pattern_dv)) {
            number=new String(RegExp.$1);
            dv=new String(RegExp.$2);
            sum = 0;
            mul = 2;
            if(number!=null && number.length >0){
            	for (i = number.length - 1 ; i >= 0; i--) {
            		sum += number.charAt(i) * mul;
            		mul == 7 ? mul = 2:mul++;
            	}
            }
            rest = sum % 11;
            if (rest == 1) dvr = 'K';
            else if (rest == 0) dvr = '0';
            else  {
                dvr = 11-rest;
            }
            return dvr==dv.toUpperCase();

        }
    }
}

// LTrim: Quita espacios en blanco a la izquerda de una cadena
function LTrim(value) {
    var pattern=new RegExp("^\\s+", "g")
    return value.replace(pattern, "");
}

// RTrim: Quita espacios en blanco a la derecha de una cadena
function RTrim(value) {
    var pattern=new RegExp("\\s+$", "g")
    return value.replace(pattern, "");
}

// Trim: Quita espacios en blanco a la derecha y a la izquierda de una cadena
function Trim(value) {
    return RTrim(LTrim(value));
}

// Str2Date: Convierte un valor string en formato dd/mm/aaaa a fecha
function Str2Date(sDate) {

	if (!isDate(sDate)) return;
	sDate = new String(sDate);

	aDate = new Array();
	aDate = sDate.split('/');

	return new Date(aDate[2], aDate[1]-1, aDate[0], 0, 0,0 );

}

// DateCmp(A, B): Compara dos fechas devuelve 0=iguales, 1=A>B, -1=B>A
function DateCmp(dDateA, dDateB) {

	if (dDateA.getTime() == dDateB.getTime()) return 0;
	if (dDateA.getTime() > dDateB.getTime()) return 1;
	else return -1;

}

// DayAdd(dDate, iDays): Suma (o resta) dias a una fecha dada
function DayAdd(dDate, iDays) {
	dDate.setTime(dDate.getTime()+iDays*24*60*60*1000);
	return dDate;
}


// isSelected: devuelve verdadero si un select tiene elementos seleccionados (multiselect) o 
// si es la opcion seleccionada no es la primera (select normal)
function isSelected (obj) {
	if (obj.multiple) {
		// Es un Select Mutliple
		for (i=0;i<obj.options.length;i++) {
			if (obj.options[i].selected) return true;
		}	
		return false;
	} else if (obj.multiple==false) {	
		// Es un Select Simple
		return obj.selectedIndex!=0;

	} else {
		// Es un Option
		var i;

        for (i=0;i<obj.length;i++) {
            if (obj[i].checked) return true;
        }       
		return false;
	}
}	

// MonthAdd: nos permite sumar meses a una fecha 
// dDat es la fecha y iMonths la cantidad de meses a sumar
function MonthAdd(dDat, iMonths) {
	var dDate=new Date(dDat);
	var month=dDate.getMonth()+iMonths;
	if (month>11) {
		dDate.setYear(dDate.getYear()+parseInt((month+1)/12));
		month=(month+1)%12-1;
	}
	dDate.setMonth(month);
	return dDate;	  						   	     			   			
}

// Repeat: devuelve la cadena sValue repetida iLenght veces.   
function Repeat(sValue, iLenght) {
	var sText='';   			
	for(i=1;i<=iLenght;i++) {
		sText=sText+sValue;
	}   			   
	return sText;
}

// LPad, rellena por la izquierda svalue con el caracter sChar hasta un largo iLenght.
function LPad(sValue, sChar, iLenght) {
	sValue=String(sValue);
	sValue=Repeat(sChar, iLenght-sValue.length)+sValue;
	return sValue;   			   			   			
}


// unserializeArray: deserializa el parametro param y devuelve un arreglo hash 
function unserializeArray(param) {
	var i, j, text, value, aux;
	objects = param.split("|");
	var aObjects = new Array();
	for(i = 0; i < objects.length; i++) {
		vars = objects[i].split("&");

		var object = new Array();
		if(vars!=null && vars.length>0){
			for (j = 0; j < vars.length; j++) {
				aux = vars[j].split("=");
				object[aux[0]] = aux[1];
			}
			aObjects[aObjects.length] = object;
		}
	}
	return aObjects;
}//subirPagina: sube el scroll a tope de una página.
function subirPagina(){
    parent.parent.scrollTo(0, 0);
    window.scrollTo(0, 0);
}
//bloquearBoton:permite ocultar botón de accion y mostrar boton bloqueado para evitar doble click.
function bloquearBoton(botonAccion, botonBloqueado){
    document.getElementById(botonAccion).style.display = "none";
    document.getElementById(botonBloqueado).style.display = "";
}