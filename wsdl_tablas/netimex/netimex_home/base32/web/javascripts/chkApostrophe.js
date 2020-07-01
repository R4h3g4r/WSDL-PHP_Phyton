
function chkApostrophe(Elem)
{
	var strText = new String(Elem.value);
	var length = strText.length;
	var ret = false;

	for (var i = 0; i < length; i++)
	{
		var c = strText.charAt(i);
		if (c == "'")
		{
			bErrorFound = false;
			javascript:DisplayErrorMsg(Elem, "<%getErrorMsg(NMX00039)%>" + ": " + c);
			ret = true;
			break;
		}
	}	
	return ret;
}

