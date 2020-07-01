//////////////////////////////////////////////////////////////////////////////////
function NumOfDigitAfterComma(str)
{
  var num_of_digit = 0;
  if(str != undefined && str != ""){
  	var ostr = new String(TrimIt(str));
  	for (var i = 0; i < ostr.length; i++)
  	{
  	   var ch = ostr.substring(i, i + 1);
  	   if (ch=='<%getDecimalSymbol()%>')     
  	   {
  	     for (var j = i+1; j< ostr.length; j++)
 	     {
	  		num_of_digit++;
       	 }
      	 return num_of_digit;
       }
  	}
  }
  return num_of_digit;
}
