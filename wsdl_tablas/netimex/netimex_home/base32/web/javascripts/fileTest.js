function fileTest()
{
	var element_value = document.<%getPageName()%>_form.docVersionEditor.value;
	document.<%getPageName()%>_form.fileName.defaultValue = element_value;
	
}	