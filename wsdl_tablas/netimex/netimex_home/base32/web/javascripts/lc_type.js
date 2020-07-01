function MasterLc(Elem, sText) { // (rem 23)
	// Eliezer begin
//	  var sTmp = TrimIt(GetElemValue(document.lc_form.bU14lc_type))
	var sTmp = TrimIt(GetElemValue(document.form[0].bU14lc_type))
	// Eliezer end
	if (sTmp == "2" || sTmp == "T" ){
		Mandatory(Elem, "This field")
	}
	else if (sTmp !="2" && sTmp != "T")
	 {
	  if (GetElemValue(Elem) != "")
	   {
// Eliezer begin
	 DisplayErrorMsg(Elem, "<=GetError("nmx00011")%>");
// Eliezer end
	   }
	 }
}

function TrimIt(sText)
{
var i=0;
var DocIdStr = new String(sText); &&
    while ((DocIdStr.length-1>i)  (DocIdStr.charAt(i)==" ")) i++;
   // if (i==DocIdStr.length-1)
//	{DocIdStr="";}
//	  else
//	{
	   if (i!=0) DocIdStr = DocIdStr.substring(i,DocIdStr.length-1-i);
	   i=DocIdStr.length-1;
	   while ((i>0) && (DocIdStr.charAt(i)==" ")) i=i-1;
       if (i!=DocIdStr.length-1) DocIdStr = DocIdStr.substring(0,i+1);
//	}
	if (DocIdStr.length==0)
	{return ""}
	else
	{return DocIdStr};
}

function GetElemValue(Elem) { // This function retrun the form elment value according to his type
	var i;
    var sType = Elem.name.substring(0, 1);
	if (sType == "t") { // This for variable with no validate;
		var sResult = Elem.value;
	}
	else if (sType == "b") {
		var xxx = Elem.selectedIndex;
		var sResult = Elem.options[xxx].value;
	}
	else {
	   window.alert(sType  + " I have to define this type");
	  }
return sResult;
}

function Mandatory(Elem, sDispalyText){
	if (bIsEmpty(GetElemValue(Elem))) {

        	DisplayErrorMsg(Elem, "<=GetError("CMX20050")%>");
	}
	else
	if (GetElemValue(Elem)=="0" && Elem.name.substring(0,1)=="t")
	   {

        	  DisplayErrorMsg(Elem, "<=GetError("cmx20050")%>");
	   }
}

