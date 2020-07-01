//////////////////////////////////////////////////////////////////
function bIsNum(str) {
var ostr = new String(javascript:TrimIt(str))
 for (var i = 0; i < ostr.length; i++) {
  var ch = ostr.substring(i, i + 1)
  if ((ch < "0" || "9" < ch) && ch != '<%getDecimalSymbol()%>') {
   return false;
  }
 }
 return true;
} /* End of bIsNum function */

//////////////////////////////////////////////////////////////////////////////////
