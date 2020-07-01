function chkInvalidChar(Elem)
{
var i, c, n;
    var strText = new String(Elem.value);
	strText.replace(String.fromCharCode(160), ' ');
    //var strInvalidChars = new String("~[]#@=¤£½öå<ä¦$*;ÄÅ%>É¢&\"^!_");
    
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
				c == ' ' || c == '\r' || c == '\n' || c=='&')
		{
			continue;
		}

		else
		{
			//bErrorFound=false;
			DisplayErrorMsg(Elem, "<%getErrorMsg(NMX00039)%>" + ": " + c);
			return true;
		}

	}
	return false;
}
