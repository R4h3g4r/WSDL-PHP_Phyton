function referenceNoToUpper(element)
{
	if (<%isReferenceNoUppercased()%>)
	{
		var s = new String(element.value);
		element.value = s.toUpperCase();
	}	
}	//referenceNoToUpper
