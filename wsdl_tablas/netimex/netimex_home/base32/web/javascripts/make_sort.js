function make_sort(new_location)
{
	var smethod
		if (document.<%getPageName()%>_form.sortMethod != null && document.<%getPageName()%>_form.sortMethod[1].checked)
		{ smethod='D';}
		else 
		{ smethod='A';}
	try{
		var sortFieldStr = new String(new_location);
		var array = sortFieldStr.split("=");
		var fieldName = array[1]; 
		document.<%getPageName()%>_form.SortField.value = fieldName;
	}catch(e){}
	window.location='<%getWebLocation()%>Page=<%getPageName()%>&Action=<%getAction()%>&PageNext=<%getPageName()%>' + new_location + '&sortMethod=' + smethod+"<%getCustomizedURLParameters()%>";//avis - generalize url customization
	
}
