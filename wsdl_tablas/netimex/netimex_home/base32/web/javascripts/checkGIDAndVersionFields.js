function checkGIDAndVersionFields(comboElem)
{
	var code = javascript:getValueOnCombo(comboElem);
	if(code == null)
	{
		return;
	}
	
	var codeString = new String(code);
	code = codeString.substr(0, codeString.indexOf('|'));

	if(code == "000" || code == "999"){
		document.<%getPageName()%>_form.general_id.readOnly  = false;
		document.<%getPageName()%>_form.version.readOnly  = false;
	}else{
		document.<%getPageName()%>_form.general_id.value = "";
		document.<%getPageName()%>_form.general_id.readOnly  = true;

		document.<%getPageName()%>_form.version.readOnly  = true;
		if (!document.all && !document.getElementById){
			document.<%getPageName()%>_form.general_id.blur();
			document.<%getPageName()%>_form.version.blur();
		}
	}
}



