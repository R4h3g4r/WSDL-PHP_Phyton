function getTextOnCombo(elem)
{
	if(elem != null)
	{
		var text = elem.options[elem.selectedIndex].text;
		return text;
	}
	
	return "";
}
