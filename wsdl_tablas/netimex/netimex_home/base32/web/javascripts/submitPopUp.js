function submitPopUp()
{
	var ElemName = javascript:getValueFromUrl("<%getElemName()%>");
	var lineNo = javascript:getValueFromUrl("<%getLineNo()%>");
	var SendString = javascript:makeSendString();
	SendString = "<%getLineNo()%>=" + lineNo + "|" + SendString;
	top.opener.updateItem(ElemName,SendString,lineNo);
}