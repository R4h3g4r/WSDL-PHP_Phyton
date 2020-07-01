function check()
{
	document.<%getPageName()%>_form.SubmitType.value="DeleteButton";
	if (window.confirm("Are You Sure ?"))
	{
		document.<%getPageName()%>_form.submit();
	}
	else
	{
	}
}
