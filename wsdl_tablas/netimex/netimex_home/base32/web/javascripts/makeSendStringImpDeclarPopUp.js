function makeSendStringImpDeclarPopUp(){

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
			//if(fName == "cmbDepname" || fName == "txtDepdefemail" || fName == "txtDepemaillist")
			{
				fValue = javascript:GetElemValue(window.document.<%getPageName()%>_form.elements[i]);
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