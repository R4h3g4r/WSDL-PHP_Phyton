function changeDots(aString)
{
  var retVal="";
  var delimArr=new Array(<%getAllDateDelimiters()%>)
  var bool=false;
  
  for (var i = 0; i < aString.length; i++)
  {
   for (idx=0;idx<delimArr.length;idx++)
	  if(aString.charAt(i)==delimArr[idx]) bool=true
   if (bool)
	retVal=retVal+"<%getDateSeparator()%>"; 
   else 
    retVal=retVal+aString.charAt(i);
   bool=false;
  }
  return retVal;
}
