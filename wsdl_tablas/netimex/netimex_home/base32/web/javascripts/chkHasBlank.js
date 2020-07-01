function chkHasBlank(str)
{
 for (i=0;i<str.length;i++)
 {
	if (str.charAt(i)!=" " || escape(str.charAt(i))!="%20") return false;
 }
 return true;
}
