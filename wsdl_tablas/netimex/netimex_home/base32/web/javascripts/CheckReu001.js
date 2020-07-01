//////////////////////////////////////////////////////////////////////////////////
function CheckReu001(Elem)
{
	if (!javascript:bIsEmpty(javascript:GetElemValue(Elem))) 
	{
		var myString = new String("<%getReu001()%>");
		var elemString = new String(javascript:GetElemValue(Elem));
		var cName = Elem.name;
		if(myString.indexOf(elemString) >= 0)
		{
			if (!window.confirm("<%getError(NMX00091)%>"))
			{
				eval("document.<%getPageName()%>_form." + cName + ".focus();");
				return 0;
			}
			else
			{
				eval("document.<%getPageName()%>_form." + cName + ".focus();");
				return 1;
			}

		}
	}
}
///////////////////////////////////////////////////
