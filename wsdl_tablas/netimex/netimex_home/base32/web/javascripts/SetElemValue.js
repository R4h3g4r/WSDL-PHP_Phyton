function SetElemValue(Elem, new_value){// This function set the form elment value according to his type
	var i;
	if (Elem == null) return "";
	if (Elem.type != null){
		var sType = Elem.type;      
		var sResult;
		if (sType == "text" || sType == "password" || sType == "textarea" || sType == "hidden") {
			Elem.value = new_value;
		}
		else if (sType == "select-one") { 
			var xxx = Elem.selectedIndex = 0;
		}
		else if (sType == "checkbox"){
				Elem.checked = false;
		}
	  	else if(sType == "radio"){
		 	/*var sName = Elem.name;
		 	var sFormName = Elem.form.name;
			for (i=0;i<eval("document."+sFormName+"."+sName).length;i++)
			    if (eval("document."+sFormName+"."+sName)[i].checked == true)
			       sResult = eval("document."+sFormName+"."+sName)[i].value;*/
		}
		else if (sType == "file"){
				Elem.value = new_value;
		}
            else if (sType == "select-multiple"){
			sResult = "";
                  for(var lineNo = 0; lineNo < Elem.options.length; lineNo++){
                      Elem.options[lineNo].text = new_value;
                  }
            }
		else {
		     window.alert(sType  + " I have to define this type");
		}
	}else{
		 SetElemValue(Elem[0], new_value);
	}
}