function setPopUpParams()
{
	var tableName = javascript:getValueFromUrl("<%getElemName()%>");
	var lineNumber = javascript:getValueFromUrl("<%getLineNo()%>");
	var existedRid_field_name = '<%getExistedRidConstant()%>';
	var existedRid_value = javascript:getValueFromUrl(existedRid_field_name);
	var cur_rid = getValueFromUrl("rid");


	if((tableName != null) && (tableName != "") && (lineNumber != null) && (lineNumber != ""))
	{
		document.<%getPageName()%>_form.TableName.value = tableName;
		document.<%getPageName()%>_form.LineNumber.value = lineNumber;
	}
	if (existedRid_value != null && existedRid_value != "")
		document.<%getPageName()%>_form.existedRid.value = existedRid_value;
	if (cur_rid != null && cur_rid != "")
		document.<%getPageName()%>_form.curRid.value = cur_rid;	
	javascript:loadHiddenPatryValues();
	
}
