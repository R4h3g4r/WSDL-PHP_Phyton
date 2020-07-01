function makeSendStringBoleroPopUp() {
var str = "";
var fName,fValue,fType;
var sDescriptName = "<%getDescriptionIdentifire()%>";
var sDescriptValue;
var selInd;
var reference_no;
var documents_number;

	for(i=0;i < window.document.<%getPageName()%>_form.length;i++)
	{
		if(window.document.<%getPageName()%>_form.elements[i] != null )
		{
			fName = window.document.<%getPageName()%>_form.elements[i].name;
			fType = window.document.<%getPageName()%>_form.elements[i].type;
			if(fName != "SubmitType" && fName != "Page" && fName != "Action" && fName != "existedRid" && fName != "curRid") 
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
	reference_no = getValueFromUrl("reference_no");
	if (reference_no != null && reference_no != "")
		str+= 'reference_no=' + reference_no + '|';
	documents_number = getValueFromUrl("documents_number");
	if (documents_number != null && documents_number != "")
		str+= 'documents_number=' + documents_number + '|';
	return str;
}