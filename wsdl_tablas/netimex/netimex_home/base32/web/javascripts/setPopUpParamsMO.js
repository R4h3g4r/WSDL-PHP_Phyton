function setPopUpParamsMO()
{
	var tableName = javascript:getValueFromUrl("<%getElemName()%>");
	var lineNumber = javascript:getValueFromUrl("<%getLineNo()%>");
		
	if((tableName != null) && (tableName != "") && (lineNumber != null) && (lineNumber != ""))
	{
		document.<%getPageName()%>_form.TableName.value = tableName;
		document.<%getPageName()%>_form.LineNumber.value = lineNumber;
	}
}
