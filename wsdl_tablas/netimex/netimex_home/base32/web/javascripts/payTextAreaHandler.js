function payTextAreaHandler(obj)
{
	if (!obj.checked)
	{
		if (document.<%getPageName()%>_form.SYS02.value=="") document.<%getPageName()%>_form.SYS02.value=" ";
	}
	else
	{
		if (document.<%getPageName()%>_form.SYS02.value==" ") document.<%getPageName()%>_form.SYS02.value="";
	}
}
