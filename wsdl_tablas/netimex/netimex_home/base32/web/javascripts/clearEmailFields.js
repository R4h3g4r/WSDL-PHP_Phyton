function clearEmailFields()
{
	if (!document.<%getPageName()%>_form.accept.checked)
	{
		if (confirm("<%getError(NMX00201)%>"))
		{
			for (var i = 0; i < document.<%getPageName()%>_form.elements.length; i++)
			{
				e = document.<%getPageName()%>_form.elements[i];
			
				if (e.type == "checkbox" && e.name != 'accept')
				{
					e.checked = false;
					e.disabled = true;
				}
				else if (e.type == "text" || e.type == "select-one")
				{
					e.value = "";
					e.disabled = true;
				}
			}
		}
	}
	else
	{
		for (var i = 0; i < document.<%getPageName()%>_form.elements.length; i++)
		{
			e = document.<%getPageName()%>_form.elements[i];
			
			if (e.type == "checkbox" && e.name != 'accept')
			{
				e.disabled = false;
			}
			else if (e.type == "text" || e.type == "select-one")
			{
				e.disabled = false;
			}
		}
	}
}
