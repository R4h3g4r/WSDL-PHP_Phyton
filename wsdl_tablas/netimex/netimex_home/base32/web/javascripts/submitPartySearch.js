//used in bolero_prtsrch
function submitPartySearch(element)
{
	var elementName = element.name;
	document.<%getPageName()%>_form.actionFieldName.value = elementName

	document.<%getPageName()%>_form.submit();
	
	return;
};
