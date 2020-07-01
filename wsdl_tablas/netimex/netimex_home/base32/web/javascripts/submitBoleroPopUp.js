function submitBoleroPopUp()
{
	var ElemName = document.<%getPageName()%>_form.TableName.value;
	var lineNo = document.<%getPageName()%>_form.LineNumber.value;
	var SendString = javascript:makeSendStringBoleroPopUp();
	SendString = "<%getLineNo()%>=" + lineNo + "|" + SendString;
	top.opener.updateItem(ElemName,SendString,lineNo);
}