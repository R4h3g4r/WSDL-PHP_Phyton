function bIsNumFixed(str,iNum,iFrac) {
var which=0;
var ilNum=0;
var ilFrac=0;
var ostr = new String(javascript:TrimIt(str))
 for (var i = 0; i < ostr.length; i++) {
  var ch = ostr.substring(i, i + 1)
// Eliezer begin
  if (ch=='<%getDecimalSymbol()%>')
     {if (which==1)
             {return false;}
                else
                 {which=1;}
         }
        else
         {
      if (which==1)
             {ilFrac++;}
                else
                 {ilNum++;}
         }

  if ((ch < "0" || "9" < ch) && ch != '<%getDecimalSymbol() %>') {
   Critical_Error=true;
   return false;

  }
 }
 if ((iNum<ilNum) || (iFrac<ilFrac))
    {Critical_Error=true;
         bErrorFound=true;
         return false;}
 return true;
} /* End of bIsNum function */
