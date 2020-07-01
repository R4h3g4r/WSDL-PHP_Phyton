function submitMOSelectedTemplate(templateCode,element){

	javascript:setValueOn(element,templateCode);
	document.<%getPageName()%>_form.Action.value="get";
	document.<%getPageName()%>_form.Page.value="MO_TEMPLATE_CONFIG";
	document.<%getPageName()%>_form.submit();	
	
}