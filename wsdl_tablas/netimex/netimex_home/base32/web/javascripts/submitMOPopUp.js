function submitMOPopUp()
{	
	var ElemName = document.<%getPageName()%>_form.TableName.value;
	var lineNo = document.<%getPageName()%>_form.LineNumber.value;
	var SendString = null;
	if(javascript:validateEmail(document.<%getPageName()%>_form.txtDepdefemail)  == "1"){ return;}
	if(javascript:validateEmail(document.<%getPageName()%>_form.txtDepemaillist) == "1"){ return;}
	SendString = javascript:makeSendStringMOPopUp();
	SendString = "<%getLineNo()%>=" + lineNo + "|" + SendString;
	top.opener.updateItem(ElemName,SendString,lineNo);
	window.close();
}