function checkEmailMandatoryElements(Elem, sType)
{
	if (document.<%getPageName()%>_form.accept.checked)
	{
	   javascript:checkMandatory(Elem, Elem.type);
	}
}

