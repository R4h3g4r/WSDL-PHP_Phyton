sReflectMethod="chkAllTextForSwiftChar()";
function chkAllTextForSwiftChar()
{
for (i=0;i<document.forms[0].elements.length;i++)
	if (document.forms[0].elements[i].type=='text' || document.forms[0].elements[i].type=='textarea') 
		javascript:chkInvalidSwiftChar(document.forms[0].elements[i]);
}	
