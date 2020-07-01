function confirmEmailNotAccept(acceptElem)
{
	if (!acceptElem.checked)
	{
		if (confirm("<%getErrorMsg(NMX00202)%>"))
		{
			for (var i = 0; i < document.<%getPageName()%>_form.elements.length; i++)
			{
				var e = document.<%getPageName()%>_form.elements[i];
				
				if (e.type == "checkbox")
				{
					e.checked = false;
				}
				else if (e.type == "text" || e.type == "select-one")
				{
					e.value = "";
				}
			}
		}
		else
		{
			iErrorStatus = bstatus;
			acceptElem.focus();	
		}
	}
}

