function makeSendString() {
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
				fValue = javascript:GetElemValue(window.document.<%getPageName()%>_form.elements[i]);
				str+= fName + '=' + fValue + '|';
				if(fType == "select-one"){
					selInd = window.document.<%getPageName()%>_form.elements[i].selectedIndex;
					sDescriptValue = window.document.<%getPageName()%>_form.elements[i].options[selInd].text;
					str+= fName + sDescriptName + '=' + sDescriptValue + '|';
				}
			}
		}
	}
	return str;
}