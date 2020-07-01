function setDocTypeCodeAndDesc(comboElem)
{
	var code = javascript:getValueOnCombo(comboElem);
	var desc = javascript:getTextOnCombo(comboElem);
	if(code != null && code != "")
	{
		document.<%getPageName()%>_form.doc_type_code.value = code;
	}
	if(desc != null && desc != "")
	{
		document.<%getPageName()%>_form.doc_type_desc.value = desc;
	}
	
}
