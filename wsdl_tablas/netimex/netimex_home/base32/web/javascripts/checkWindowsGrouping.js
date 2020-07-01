////////////////////////////
 function checkWindowsGrouping(group,max)
{
var total=0;
var num=0;
var maxlines=max;
var ArrGroup = group.split(",");
var nextElement;

for (var i=0; i < ArrGroup.length; i++)
{
        nextElement = ArrGroup[i];
total+=getLength(eval(nextElement));

}
if (total>maxlines) 
    {
          DisplayErrorMsg(eval(nextElement), "<%getError(NMX10009)%>")
        }


}
function getLength(Elem)
{
 var fieldlen=Elem.cols;
// alert(fieldlen);
// var maxlines=maxlen;
 var crlf=1;

 var linepos=0;
 var textpos=0;
 var Elemname=new String(Elem.name);
 var str= new String(Elem.value);
 var str2=new String("\r");
 if (str.length==0) return 0;
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
 return crlf ;
 }


