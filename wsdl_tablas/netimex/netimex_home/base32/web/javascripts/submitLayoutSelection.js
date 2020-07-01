function submitLayoutSelection(fieldName)
{
	var HiddenName= javascript:getValueFromUrl("FieldName");
	var mainPageName = javascript:getValueFromUrl("Page");
	var Elem;
	var SendElem;
	var sendString = "";
	
	SendElem = eval("top.opener.document."+ mainPageName+"_form." + HiddenName);
	Elem = eval("document.<%getPageName()%>_form."+fieldName);
	for(var i=0; i < Elem.length; i++){
		sendString += Elem.options[i].value + "|";
	}
	//alert(sendString);
	SendElem.value = sendString;
	self.close();
}
