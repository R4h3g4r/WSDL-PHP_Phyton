	    //////////////////////////////////////////////////////////////////////////////////
function checkLength(Elem,maxlen)
{
 var fieldlen=Elem.cols;
// alert(fieldlen);
 var maxlines=maxlen;
 var crlf=1;

 var linepos=0;
 var textpos=0;
 var Elemname=new String(Elem.name);
 var str= new String(Elem.value);
 str2=new String("\r");
 while (textpos<str.length)
 {   
   if (str2==str.charAt(textpos))
   {
     linepos=0;
	 textpos+=2;
	 crlf++;
   }
   else
   {
    if (linepos>fieldlen)
	{
	  linepos=0;
      textpos++;
	  crlf++;
	}
	else
	{
      linepos++;
	  textpos++;
	}
   }
 }
 if (crlf>maxlines) 
    {
	 javascript:DisplayErrorMsg(Elem, "<%getError(NMX00018)%>");
	}
}
