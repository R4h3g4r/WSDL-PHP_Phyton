
function NumberFixed(Elem,iNum,iFrac){

	if (!(bIsNumFixed(Elem.value,iNum,iFrac))) {
		javascript:ErrorMsg(Elem, "This Field Is Number Field");
	}
} /* End of Number function */
function NumberFixedCur(Elem,iNum,iFrac){

	if (!(bIsNumFixed(Elem.value,iNum,iFrac))) {
		javascript:ErrorMsg(Elem, "This Field Is Number Field");
	}

   /* if (!(javascript:Ap008ChkLoop(Elem.value)))
	{

		//ErrorMsg(Elem, "Number Of Digits After Comma Is Not Correct");
	}*/
} /* End of Number function */
function NumberFixedm(Elem,iNum,iFrac){

	if (!(bIsNumFixedm(Elem.value,iNum,iFrac))) {
// Eliezer begin
//		   < If Not Session("BROWSER_TYPE") = "IE" Then>
//		   Elem.value=" ";
//		  <End IF>
// Eliezer end
		window.alert("This Is Number Field");
		Elem.focus();



		//ErrorMsg(Elem, "This Field Is Number Field");
	}
} /* End of Number function */

//////////////////////////////////////////////////////////////////////////////////
function NumOfDigitAfterComma(str)
{
  var num_of_digit = 0;
  var ostr = new String(TrimIt(str))


  for (var i = 0; i < ostr.length; i++)
  {
     var ch = ostr.substring(i, i + 1)
// Eliezer begin
     //if (ch== '< =Application("DecimalSymbol") >')
     if (ch== '<%getDecimalSymbol()%>')
// Eliezer end
     {
       for (var j = i+1; j< ostr.length; j++)
       {
	//  alert (j)
	  num_of_digit++;
       }

       return num_of_digit;
     }
  }
  return num_of_digit;
} /* End of bIsNum function */

function bIsNumFixed(str,iNum,iFrac) {
var which=0;
var ilNum=0;
var ilFrac=0;
var ostr = new String(TrimIt(str))
 for (var i = 0; i < ostr.length; i++) {
  var ch = ostr.substring(i, i + 1)
// Eliezer begin
  if (ch=='<%getDecimalSymbol()%>')
// Eliezer end
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

// Eliezer begin
  if ((ch < "0" || "9" < ch) && ch != '<%getDecimalSymbol() %>') {
  //if ((ch < "0" || "9" < ch) && ch != '< =Application("DecimalSymbol") >') {
// Eliezer end
   Critical_Error=true;
   return false;

  }
 }
 if ((iNum<ilNum) || (iFrac<ilFrac))
    {Critical_Error=true;
	 bErrorFound=true;
//	 alert("here");
	 return false;}
 return true;
} /* End of bIsNum function */


//-->
function bIsNumFixedm(str,iNum,iFrac) {
//Difference only on check first symbol= "-"
var which=0;
var ilNum=0;
var ilFrac=0;
var ostr = new String(TrimIt(str))
 var minus=ostr.substring(0,1)//check, if first simbol not "-"
 if (minus=="-") {
	var first=1; }
 else
 {var first=0;}
 for (var i = first; i < ostr.length; i++) {
  var ch = ostr.substring(i, i + 1)
// Eliezer begin
  //if (ch=='< =Application("DecimalSymbol") >')
  if (ch=='<%getDecimalSymbol()%>')
// Eliezer end
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
  // Eliezer begin
  if ((ch < "0" || "9" < ch ) && ch != '<%getDecimalSymbol()%>') {
  //if ((ch < "0" || "9" < ch ) && ch != '< =Application("DecimalSymbol") >') {
// Eliezer end
   Critical_Error=true;
   return false;

  }
 }
 if ((iNum<ilNum) || (iFrac<ilFrac))
    {Critical_Error=true;
	 bErrorFound=true;
//	 alert("here");
	 return false;}
 return true;
} /* End of bIsNum function */


function TrimIt(sText){
  var i=0;
  var DocIdStr = new String(sText);
    while ((DocIdStr.length-1>i) && (DocIdStr.charAt(i)==" "))
      i++;
    if (i!=0)
      DocIdStr = DocIdStr.substring(i,DocIdStr.length-1-i);
    i=DocIdStr.length-1;
    while ((i>0) && (DocIdStr.charAt(i)==" "))
      i=i-1;
    if (i!=DocIdStr.length-1)
      DocIdStr = DocIdStr.substring(0,i+1);
    if (DocIdStr.length==0)
      {return ""}
    else
      {return DocIdStr};
}

