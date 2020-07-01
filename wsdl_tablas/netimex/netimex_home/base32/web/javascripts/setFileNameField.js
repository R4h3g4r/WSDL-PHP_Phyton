function setFileNameField()
{
	var name = GetElemValue(document.<%getPageName()%>_form.uploadFile);
	if (name == null || name == "")
		name = javascript:getValueFromUrl("file_name");
	/*if (name == null || name == "")
		name = getValueFromUrl("filename");*/
	document.<%getPageName()%>_form.file_name.value = name;
}
