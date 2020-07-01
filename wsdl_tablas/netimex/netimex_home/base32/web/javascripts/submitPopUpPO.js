function submitPopUpPO()
{
	var ElemDesc, i, Elem;
	
	Elem = eval("window.document.<%getPageName()%>_form." + "transportation_type");
	i = Elem.selectedIndex;
	ElemDesc = eval("window.document.<%getPageName()%>_form." + "transportation_desc");
	ElemDesc.value = Elem.options[i].text;
	
	Elem = eval("window.document.<%getPageName()%>_form." + "expiry_country_c");
	i = Elem.selectedIndex;
	ElemDesc = eval("window.document.<%getPageName()%>_form." + "country_desc");
	ElemDesc.value = Elem.options[i].text;
	
	ElemDesc.value = Elem.options[i].text;
	var ElemName = javascript:getValueFromUrl("<%getElemName()%>");
	var lineNo = javascript:getValueFromUrl("<%getLineNo()%>");
	var SendString = javascript:makeSendString();
	SendString = "<%getLineNo()%>=" + lineNo + "|" + SendString;
	top.opener.updatePo(ElemName,SendString,lineNo);
}