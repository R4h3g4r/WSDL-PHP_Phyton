function chkClauseIdApostrophe(Elem)
{
var i, c, n;
var strText = new String(Elem.value);
javascript:chkInvalidSwiftChar(Elem);
 for (i = 0; i < strText.length; i++)
{
	n = strText.charCodeAt(i);
	c = strText.charAt(i);
	if (c=="'"){
		bErrorFound=false;
		DisplayErrorMsg(Elem, "<%getErrorMsg(NMX00039)%>" + ": " + c);
		return true
		}
}       
return false;
}
