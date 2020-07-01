function Number(Elem)
{
if (!(javascript:bIsNum(Elem.value)))
	{
	javascript:ErrorMsg(Elem, "<%getError(NMX00008)%>");
	}

} 

/////////////////////////////////////////////////////////////////////////////////
function NumberFixed(Elem,iNum,iFrac){

	if (!(bIsNumFixed(Elem.value,iNum,iFrac))) {
		javascript:ErrorMsg(Elem, "<%getError(NMX00008)%>");
	}
} 

function NumberFixedCur(Elem,iNum,iFrac){

	if (!(bIsNumFixed(Elem.value,iNum,iFrac))) {
		javascript:ErrorMsg(Elem, "<%getError(NMX00008)%>");
	}

   /* if (!(Ap008ChkLoop(Elem.value)))
	{

		//ErrorMsg(Elem, "Number Of Digits After Comma Is Not Correct");
	}*/
}
function NumberFixedm(Elem,iNum,iFrac){

	if (!(bIsNumFixedm(Elem.value,iNum,iFrac))) {

		window.alert("<%getError(NMX00008)%>");
		Elem.focus();

	}
} 

//////////////////////////////////////////////////////////////////////////////////
function bIsNumFixed(str,iNum,iFrac) {
var which=0;
var ilNum=0;
var ilFrac=0;
var ostr = new String(TrimIt(str))
 for (var i = 0; i < ostr.length; i++) {
  var ch = ostr.substring(i, i + 1);
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
} 



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
  var ch = ostr.substring(i, i + 1);
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
  if ((ch < "0" || "9" < ch ) && ch != '<%getDecimalSymbol()%>') {
   Critical_Error=true;
   return false;

  }
 }
 if ((iNum<ilNum) || (iFrac<ilFrac))
    {Critical_Error=true;
	 bErrorFound=true;
	 return false;}
 return true;
} 

