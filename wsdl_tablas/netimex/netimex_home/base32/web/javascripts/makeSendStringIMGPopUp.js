function makeSendStringIMGPopUp() {
var str = "";
var fName,fValue,fType;
var sDescriptName = "<%getDescriptionIdentifire()%>";
var sDescriptValue;
var selInd;

	for(i=0;i < window.document.<%getPageName()%>_form.length;i++)
	{
		if(window.document.<%getPageName()%>_form.elements[i] != null )
		{
			fName = window.document.<%getPageName()%>_form.elements[i].name;
			fType = window.document.<%getPageName()%>_form.elements[i].type;
			if(fName != "SubmitType" && fName != "Page" && fName != "Action") 
			{
				if(fName == "doctype" || fName = "document_type"){
					fValue = GetElemValueIMG(window.document.<%getPageName()%>_form.elements[i]);
					if(fValue == null || fValue == ""){continue;}
					//fName = "doctype";
				}
				if(fName == "upload"){fName = "upload";}
				if(fName == "FileUpload"){fName = "filepath";}
				fValue = GetElemValueIMG(window.document.<%getPageName()%>_form.elements[i]);
				var valueString = new String(fValue);
				var indexOfPipe = valueString.indexOf('|');
				if (indexOfPipe != -1)
				{
					fValue = valueString.substr(0, indexOfPipe);
				}
				str+= fName + '=' + fValue + '|';
				if(fType == "select-one"){
					indexOfPipe = valueString.lastIndexOf('|');
					str+= "dtd_name" + "=" + valueString.substr(indexOfPipe + 1, valueString.length) + '|';
					
					selInd = window.document.<%getPageName()%>_form.elements[i].selectedIndex;
					sDescriptValue = window.document.<%getPageName()%>_form.elements[i].options[selInd].text;
					str+= fName + sDescriptName + '=' + sDescriptValue + '|';
				}
			}
		}
	}
	return str;
}


function GetElemValueIMG(Elem) { // This function retrun the form elment value according to his type
	var i;
	if (Elem == null) return "";
	if (Elem.type != null){
		var sType = Elem.type;      
		var sResult="";
		if (sType == "text" || sType == "textarea" || sType == "hidden") {
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
		else if (sType == "select-multiple") { 
			for (i = 0; i < Elem.options.length; i++) {				
				sResult = sResult + Elem.options[i].text;
			} 
		}
		else {
		     window.alert(sType  + " type is undefined.");
		}
	}else{
		 sResult = GetElemValue(Elem[0]);
	}
return sResult;
}