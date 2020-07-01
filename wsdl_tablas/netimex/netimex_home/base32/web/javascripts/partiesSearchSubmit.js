function partiesSearchSubmit(searchAction){
	var sField;
	var selectedIndex;
	if(document.<%getPageName()%>_form.party_type_combo &&  document.<%getPageName()%>_form.party_type_combo.options){
		selectedIndex =  document.<%getPageName()%>_form.party_type_combo.selectedIndex;
		sField = document.<%getPageName()%>_form.party_type_combo.options[selectedIndex].value;
		if(sField==""){
			javascript:DisplayErrorMsg(
					document.<%getPageName()%>_form.party_type_combo,"<%getErrorMsg(CMX20050)%>");
			return;
		}
	}
	selectedIndex = document.<%getPageName()%>_form.search_by.selectedIndex;
	sField = document.<%getPageName()%>_form.search_by.options[selectedIndex].value;
	if(sField == ""){
		javascript:DisplayErrorMsg(
			document.<%getPageName()%>_form.search_by,"<%getErrorMsg(CMX20050)%>");
		return;
	}

	selectedIndex = document.<%getPageName()%>_form.search_method.selectedIndex;
	sField = document.<%getPageName()%>_form.search_method.options[selectedIndex].value;
	if(sField == ""){
		javascript:DisplayErrorMsg(
			document.<%getPageName()%>_form.search_method,"<%getErrorMsg(CMX20050)%>");
		return;
	}
	if(sField == "C" && document.<%getPageName()%>_form.search_text.value == "" ){
		javascript:DisplayErrorMsg(
			document.<%getPageName()%>_form.search_text,"<%getErrorMsg(CMX20050)%>");
		return;
	}
	
	document.<%getPageName()%>_form.request_type.value = searchAction;
	document.<%getPageName()%>_form.submit();
}