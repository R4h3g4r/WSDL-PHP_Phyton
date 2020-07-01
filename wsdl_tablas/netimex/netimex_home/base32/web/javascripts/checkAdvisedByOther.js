function checkAdvisedByOther()
{
	if (document.<%getPageName()%>_form.lc_advised_by_other.checked)
	{
		document.<%getPageName()%>_form.master_lc.value = "";
	}
}
