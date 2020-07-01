///////////////// deleteItems ////////////////////////////////////////
 function deleteItems(fromCtrl,SendString) 
 {
	var i = 0;
	var j;
	var k = 0;
	var inof=-1;
	var tmp="";
	var index;
	
	while (i < (fromCtrl.options.length - k)) 
	{       
		if (fromCtrl.options[i].selected) 
		{
			// remove the item
			for (j = i; j < (fromCtrl.options.length - 1); j++) 
			{
				fromCtrl.options[j].text = fromCtrl.options[j+1].text;
				fromCtrl.options[j].value = fromCtrl.options[j+1].value;
				fromCtrl.options[j].selected = fromCtrl.options[j+1].selected;
			}
			tmp=TrimIt(fromCtrl.options[i].text);
			index = i;
			k++;
		}
		else 
		{
			i++;
		}
	}
	
	for (i = 0; i < k; i++) 
	{
		fromCtrl.options[fromCtrl.options.length - 1] = null;
	 
	}
	
	deleteHiddenItem(index);
	changeStringAfterDel(fromCtrl,index); 
	makeStringToSend(fromCtrl,SendString); 
		
}

///////////////////////////// SelectItem ///////////////////////////// 
function SelectItem(toCtrl)
{
	var i=toCtrl.selectedIndex;
	if (i==-1) 
	{
		alert("Please select one of the elements!");
		return false;
	}	
	
	return true;
}

///////////////////////////// checkMandatoryFieldInPage ///////////////////
function checkMandatoryFieldsInPage()
{	
	var txt1 = GetElemValue(eval(document.ITEM_DETAILS_form.product_name));
	var txt2 = GetElemValue(eval(document.ITEM_DETAILS_form.unit_price));
	var txt3 = GetElemValue(eval(document.ITEM_DETAILS_form.quantity));
	var txt4 = GetElemValue(eval(document.ITEM_DETAILS_form.quantity_measure));
	var txt5 = GetElemValue(eval(document.ITEM_DETAILS_form.item_description));

	if (txt1 = ""){
		javascript:checkMandatory(document.ITEM_DETAILS_form.product_name, 'Text');
		return false;
	}	
	else if (txt2==""){
			javascript:checkMandatory(document.ITEM_DETAILS_form.unit_price, 'Numeric');
			return false;
		 }
		 else if (txt3==""){	
				javascript:checkMandatory(document.ITEM_DETAILS_form.quantity, 'Numeric');
				return false;
			 }
			 else if (txt4==""){	
					javascript:checkMandatory(document.ITEM_DETAILS_form.quantity_measure, 'Text');
					return false;
			      }	
				  else if (txt5==""){
						javascript:checkMandatory(document.ITEM_DETAILS_form.item_description, 'Text');
						return false;
					   }	
					   
	return true;				   
}
 
//////////////////////////// changeStringAfterDel /////////////////////////////////
 function changeStringAfterDel(selectCtrl,index) 
 {
	var i,nCount;
	var outlist = "";
	var sStr;
	var sTmp;
	
	for(i=0; i<selectCtrl.options.length; i++)
	{
		sStr=selectCtrl.options[i].text.substring(0,selectCtrl.options[i].text.length)
		var ii=sStr.indexOf('|');
		while (ii>0){
			if ((ii==2 || ii==3) && (i>=index)) {
				nCount = parseInt(Trim(sStr.substring(0,ii))) - 1;
				outlist+= space(nCount.toString(),2,"L");
			}
			else
				outlist+=sStr.substring(0,ii)+"|";
				
			sStr=sStr.substring((ii+1),sStr.length);
			ii=sStr.indexOf('|');
		}
		selectCtrl.options[i].text = outlist;
		outlist = "";
	}
}
  
 
 //////////////////////////// makeStringToSend /////////////////////////////////
 function makeStringToSend(selectCtrl,SendString) 
 {
	var i;
	var outlist = "";
	var sStr;
	
	for(i=0; i<selectCtrl.options.length; i++)
	{
		sStr=selectCtrl.options[i].text.substring(0,selectCtrl.options[i].text.length)
		var ii=sStr.indexOf('|');
		while (ii>0){
			outlist+=Trim(sStr.substring(0,ii))+"|";
			sStr=sStr.substring((ii+1),sStr.length);
			ii=sStr.indexOf('|');
		}
	}
	SendString.value=outlist;
}

///////////////////////////// deleteHiddenItem /////////////////////////////
function deleteHiddenItem(nIndex)
{	
	var retStr = "";
			
	retStr = deleteValueInStr(document.PO_MAIN_form.BuyerProductId.value,nIndex);
	document.PO_MAIN_form.BuyerProductId.value = retStr;
	
	retStr = deleteValueInStr(document.PO_MAIN_form.BuyerProductNo.value,nIndex);
	document.PO_MAIN_form.BuyerProductNo.value = retStr;
	
	retStr = deleteValueInStr(document.PO_MAIN_form.SupplierProductId.value,nIndex);
	document.PO_MAIN_form.SupplierProductId.value = retStr;
	
	retStr = deleteValueInStr(document.PO_MAIN_form.SupplierProductNo.value,nIndex);
	document.PO_MAIN_form.SupplierProductNo.value = retStr;
	
	retStr = deleteValueInStr(document.PO_MAIN_form.ItemDescription.value,nIndex);
	document.PO_MAIN_form.ItemDescription.value = retStr;
	
	retStr = deleteValueInStr(document.PO_MAIN_form.TaxAmount.value,nIndex);
	document.PO_MAIN_form.TaxAmount.value = retStr;
	
	retStr = deleteValueInStr(document.PO_MAIN_form.ChargeAmount.value,nIndex);
	document.PO_MAIN_form.ChargeAmount.value = retStr;
	
	retStr = deleteValueInStr(document.PO_MAIN_form.DiscountAmount.value,nIndex);
	document.PO_MAIN_form.DiscountAmount.value = retStr;
	
	retStr = deleteValueInStr(document.PO_MAIN_form.QuantityMeasure.value,nIndex);
	document.PO_MAIN_form.QuantityMeasure.value = retStr;
	
	retStr = deleteValueInStr(document.PO_MAIN_form.UnitPriceMeasure.value,nIndex);
	document.PO_MAIN_form.UnitPriceMeasure.value = retStr;
	
}
////////////////////////////// spase ///////////////////////////////////////
function space(str, maxlegth, align) {
	
var i=0;
var coma=0;
var sp="";
var del=".";
//var del='<%getDecimalSymbol()%>';

if(str.length>0) 
{
		if (align == "R")
		{
   			coma=str.indexOf(del);
			if (coma==-1)   coma=str.length;
			for (i=3;i<maxlegth-coma-1;i++)
				sp+=" ";
			sp+=str;
			for (i=str.length-coma ;i<4;i++)
				sp+=" ";
		}
		else	
		{
			sp+=str;
			for(i=0; i<maxlegth-str.length;i++)
				sp+=" ";
	 	}
			
}
else 
{
	for(i=0; i< maxlegth;i++)
  		sp+=" ";
}

sp+="|";
return sp;
}



///////////////////////////// deleteValueInStr /////////////////////////////
function deleteValueInStr(FieldValueStr,nIndex)
{
	var sendStr = "";
	var len; 
	
	arrHidden = FieldValueStr.split("*");
	for (i=0; i < arrHidden.length-1; i++)
	{
		if (i != nIndex)
			sendStr = sendStr + arrHidden[i] + "*";	
	}
	
	return sendStr;
}


function Trim(sText)
{
	var i = 0;
	var DocIdStr = new String(sText);
    while (
	   (DocIdStr.length > i) && 
	   (
	    (DocIdStr.charAt(i) ==" ")||(escape(DocIdStr.charAt(i)) =="%A0")
	    )
    )  i++;
        
	DocIdStr = DocIdStr.substring(i, DocIdStr.length);
	i = DocIdStr.length - 1;
	while (
	       ( i > 0) && (
	    (DocIdStr.charAt(i) ==" ")||(escape(DocIdStr.charAt(i)) =="%A0")
	    )
	    ) i--;      
    DocIdStr = DocIdStr.substring(0, i + 1);
	return DocIdStr;
}


////******************************************************************//// 
 function NumberFixed(Elem,iNum,iFrac)
  {
    if (!(bIsNumFixed(Elem.value,iNum,iFrac)))
    {
      javascript:ErrorMsg(Elem, "This Field Is Number Field");
    }
  }

  function NumberFixedm(Elem,iNum,iFrac)
  {
    if (!(bIsNumFixedm(Elem.value,iNum,iFrac)))
    {
      window.alert("This Is Number Field");
      Elem.focus();
      //ErrorMsg(Elem, "This Field Is Number Field");
    }
  }

  function bIsNumFixed(str,iNum,iFrac)
  {
    var which=0;
    var ilNum=0;
    var ilFrac=0;
    var ostr = new String(TrimIt(str))
    for (var i = 0; i < ostr.length; i++)
    {
      var ch = ostr.substring(i, i + 1);
      if (ch=='.')
      {
	if (which==1)
	{
	  return false;
	}
	else
	{
	  which=1;
	}
      }
      else
      {
	if (which==1)
	{
	  ilFrac++;
	}
	else
	{
	  ilNum++;
	}
      }
      if ((ch < "0" || "9" < ch) && ch != '.')
      {
	Critical_Error=true;
	return false;
      }
    }
    if ((iNum<ilNum) || (iFrac<ilFrac))
    {
      Critical_Error=true;
      bErrorFound=true;
      return false;
    }
    return true;
  }

  function TrimIt(sText)
  {
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
    {
      return "";
    }
    else
    {
      return DocIdStr;
    }
  }

  function fn_align(box,side)
  {
    box.id=side;
  }

  function bIsNumFixedm(str,iNum,iFrac)
  {
    //Difference only on check first symbol= "-"
    var which=0;
    var ilNum=0;
    var ilFrac=0;
    var ostr = new String(TrimIt(str));
    var minus=ostr.substring(0,1);//check, if first simbol not "-"
    if (minus=="-")
    {
      var first=1;
    }
    else
    {
      var first=0;
    }
    for (var i = first; i < ostr.length; i++)
    {
      var ch = ostr.substring(i, i + 1);
      if (ch=='.')
      {
	if (which==1)
	{
	  return false;
	}
	else
	{
	  which=1;
	}
      }
      else
      {
	if (which==1)
	{
	  ilFrac++;
	}
	else
	{
	  ilNum++;
	}
      }
      if ((ch < "0" || "9" < ch ) && ch != '.')
      {
	Critical_Error=true;
	return false;
      }
    }
    if ((iNum<ilNum) || (iFrac<ilFrac))
    {
      Critical_Error=true;
      bErrorFound=true;
	//   alert("here");
      return false;
    }
    return true;
  } /* End of bIsNum function */


function bIsNumFixed(str,iNum,iFrac) {
var which=0;
var ilNum=0;
var ilFrac=0;
var ostr = new String(TrimIt(str))
 for (var i = 0; i < ostr.length; i++) {
  var ch = ostr.substring(i, i + 1)
  if (ch=='.')
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
	 
  if ((ch < "0" || "9" < ch) && ch != '.') {
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

////*******************Add open Items**************************
function openAddItem()
{
javascript:openNewWindow('<%getWebLocation()%>Page=PO_MAIN&mode=N&Action=get&PageNext=ITEM_DETAILS<%getCustomizedURLParameters()%>','DisplayWindow','menubar=no,scrollbars=no,status=no,width=730,height=340,screenX=2');
}

////************************Update Items*****************************
function openUpdateItem(toCtrl)
{
	if(SelectItem(toCtrl)) 
	{
		/* the version with BCV - keyid functionality*/
		var url = "<%getWebLocation()%>Page=PO_MAIN&mode=U&Action=get&PageNext=ITEM_DETAILS";
		url += "<%getCustomizedURLParameters()%>"//avis - generalize url customization
		javascript:openNewWindow(url,'DisplayWindow','menubar=no,scrollbars=no,status=no,width=730,height=340,screenX=2');
	}
}