function chkInvalidSwiftChar(Elem)
{
	var i, c, n;
    var strText = new String(Elem.value);
	var strAdd_SWIFT_Chars = new String('<%getInvalidSwiftChars()%>');
    //var strInvalidChars = new String("~[]#@=¤£½öå<ä¦$*;ÄÅ%>É¢&\"^!_");
    var rExp = new RegExp(String.fromCharCode(160), "g");
	strText = strText.replace(rExp, ' ');
	Elem.value = strText;
    
    for (i = 0; i < strText.length; i++)
	{
		n = strText.charCodeAt(i);
		c = strText.charAt(i);
		if ( n >= 97 && n <= 122)		//a..z	ANSI
		{
			continue;
		}
		else if (n >= 65 && n <= 90)	//A..Z
		{
			continue;
		}
		else if (n >= 48 && n <= 57)	//0..9
		{
			continue;
		}
		else if (c == '/' || c == '-' || c == '?' || c == ':' || c == '(' || 
				c == ')' || c == '.' || c == ',' || c == '\'' || c == '+' || 
				c == ' ' || c == '\r' || c == '\n')
		{
			continue;
		}
		else if (strAdd_SWIFT_Chars.indexOf(c) != -1)
		{
			continue;
		}
		else
		{
			DisplayErrorMsg(Elem, "<%getErrorMsg(NMX00039)%>" + ": " + c);
			return true;
		}

	}
	return false;
}
