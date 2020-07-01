function setEmailDisable() 
{
	for (var i = 0; i < document.<%getPageName()%>_form.elements.length; i++)
	{
	  e = document.<%getPageName()%>_form.elements[i];    
	  
	  if (e.name != 'accept' 
		&& (e.type == "checkbox" || e.type == "text" || e.type == "select-one")) 
    	  {
		e.disabled = true;
	  }
    }
}