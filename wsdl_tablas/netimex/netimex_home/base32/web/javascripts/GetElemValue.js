//////////////////////////////////////////////////////////////////////////////////

function GetElemValue(Elem) { // This function retrun the form elment value according to his type
	var i;
	if (Elem == null) return "";
	if (Elem.type != null){
		var sType = Elem.type;      
		var sResult="";
		if (sType == "text" || sType == "password" || sType == "textarea" || sType == "hidden") {
			sResult = Elem.value;
		}
		else if (sType == "select-one") { 
			var xxx = Elem.selectedIndex;
			sResult = Elem.options[xxx].value; 
		}
		else if (sType == "checkbox"){
				sResult = Elem.checked?"on":"";
		}
	  	else if(sType == "radio"){
		 	var sName = Elem.name;
		 	var sFormName = Elem.form.name;
			for (i=0;i<eval("document."+sFormName+"."+sName).length;i++)
			    if (eval("document."+sFormName+"."+sName)[i].checked == true)
			       sResult = eval("document."+sFormName+"."+sName)[i].value;
		}
		else if (sType == "file"){
			sResult = Elem.value;
		}
			else if (sType == "select-multiple") { 
			for (i = 0; i < Elem.options.length; i++) {				
				sResult = sResult + Elem.options[i].text;
			} 
		}
		else {
		     window.alert(sType  + " I have to define this type");
		}
	}else{
		 sResult = GetElemValue(Elem[0]);
	}
return sResult;
}
//////////////////////////////////////////////////////////////////////////////////
