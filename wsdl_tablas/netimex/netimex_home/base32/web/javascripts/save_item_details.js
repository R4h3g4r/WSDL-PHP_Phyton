function save_item_details(sPageMode)
{ 	
	var nTotalAmount,nItemNo,nTmp;
	var SendString = window.top.opener.document.PO_MAIN_form.itemsTable;				
	var nextitem;
	var tmp,tmp1,tmp2,tmp3,tmp4,tmp5;		
	
	if (document.<%getPageName()%>_form.unit_price != null)
		if (UnitPrice != "")
	
	if (document.<%getPageName()%>_form.quantity != null)
		Quantity=document.<%getPageName()%>_form.quantity.value;
		if (Quantity != "")
		else
			nQuantity = 0;
	}				
	if (document.<%getPageName()%>_form.unit_price_measure != null) 
	
		QuantityMeasure = document.<%getPageName()%>_form.quantity_measure.value;		
		window.top.opener.document.PO_MAIN_form.QuantityMeasure.value = QMeasure + QuantityMeasure + "*";
	Quantity = Quantity + " " + QuantityMeasure;	
	TaxAmount =	window.top.opener.document.PO_MAIN_form.TaxAmount.value;
	ChargeAmount = window.top.opener.document.PO_MAIN_form.ChargeAmount.value;
	DiscountAmount = window.top.opener.document.PO_MAIN_form.DiscountAmount.value;
	BuyerProdNo = window.top.opener.document.PO_MAIN_form.BuyerProductNo.value;
	SupplierProdId = window.top.opener.document.PO_MAIN_form.SupplierProductId.value;
	SupplierProdNo = window.top.opener.document.PO_MAIN_form.SupplierProductNo.value;
	TotalAmount = window.top.opener.document.PO_MAIN_form.TotalAmount.value;	
	if (document.<%getPageName()%>_form.tax_amount != null)
	{
		window.top.opener.document.PO_MAIN_form.TaxAmount.value = TaxAmount  + document.<%getPageName()%>_form.tax_amount.value + "*";
			nTaxAmount = parseFloat(document.<%getPageName()%>_form.tax_amount.value);	
		else
			nTaxAmount = 0;	
	}				
	if (document.<%getPageName()%>_form.charge_amount != null)
	{
		window.top.opener.document.PO_MAIN_form.ChargeAmount.value = ChargeAmount + document.<%getPageName()%>_form.charge_amount.value + "*";
		if (document.<%getPageName()%>_form.charge_amount.value!="")
		else
			nChargeAmount = 0;	
	}				
	{
		window.top.opener.document.PO_MAIN_form.DiscountAmount.value = DiscountAmount + document.<%getPageName()%>_form.discount_amount.value + "*";
		if (document.<%getPageName()%>_form.discount_amount.value!="")
		
		window.top.opener.document.PO_MAIN_form.BuyerProductId.value=BuyerProdId  + document.<%getPageName()%>_form.buyer_prod_id.value + "*";
	if (document.<%getPageName()%>_form.buyer_prod_no != null)
		window.top.opener.document.PO_MAIN_form.BuyerProductNo.value=BuyerProdNo  + document.<%getPageName()%>_form.buyer_prod_no.value + "*";	
	if (document.<%getPageName()%>_form.supplier_prod_id != null)
		window.top.opener.document.PO_MAIN_form.SupplierProductId.value=SupplierProdId  + document.<%getPageName()%>_form.supplier_prod_id.value + "*";			
		window.top.opener.document.PO_MAIN_form.SupplierProductNo.value=SupplierProdNo  + document.<%getPageName()%>_form.supplier_prod_no.value + "*";	
		window.top.opener.document.PO_MAIN_form.ItemDescription.value=ItemDesc  + document.<%getPageName()%>_form.item_description.value + "*";		
		
		nTotalAmount = parseFloat(Math.round(nTmp*100)/100);
	}	
			
	tmp2 = space(ProdName,30,"L");
	tmp3 = space(UnitPrice,15,"R");
	tmp4 = space(Quantity,15,"R");
	tmp5 = space(String(nTotalAmount),15,"R");
	
	
	if ( sPageMode == 'N') 
	{
		if(toCtrl.selectedIndex > -1)
			toCtrl.options[toCtrl.selectedIndex].selected=false;
  
		nextitem = toCtrl.options.length;
		nItemNo = nextitem + 1;	
		
		tmp1 = space(String(nItemNo),2,"L");
		tmp = tmp1+tmp2+tmp3+tmp4+tmp5;
		
		toCtrl.options.length = nItemNo;
		toCtrl.options[nextitem].text = tmp;
		toCtrl.options[nextitem].value = nextitem+1;
		
		makeStringToSend(toCtrl,SendString);
	}	
	else
	{
		
		updateHiddenItems(nIndex);		
	
		tmp1 = space(String(nIndex+1),2,"L");
		tmp = tmp1+tmp2+tmp3+tmp4+tmp5;
		
		toCtrl.options[nIndex].selected = false;	    		
      	toCtrl.options[nIndex].text=" ";
      	toCtrl.options[nIndex].text = tmp;
      			
   		makeStringToSend(toCtrl,SendString);
	}				


///////////////////////////// updateHiddenItems /////////////////////////////
function updateHiddenItems(nIndex)
{	
	var retStr = "";
			
	retStr = updateValueInStr(window.top.opener.document.PO_MAIN_form.BuyerProductId.value,nIndex);
	window.top.opener.document.PO_MAIN_form.BuyerProductId.value = retStr;
	
	retStr = updateValueInStr(window.top.opener.document.PO_MAIN_form.BuyerProductNo.value,nIndex);
	window.top.opener.document.PO_MAIN_form.BuyerProductNo.value = retStr;
	
	retStr = updateValueInStr(window.top.opener.document.PO_MAIN_form.SupplierProductId.value,nIndex);
	window.top.opener.document.PO_MAIN_form.SupplierProductId.value = retStr;
	
	retStr = updateValueInStr(window.top.opener.document.PO_MAIN_form.SupplierProductNo.value,nIndex);
	window.top.opener.document.PO_MAIN_form.SupplierProductNo.value = retStr;
	
	retStr = updateValueInStr(window.top.opener.document.PO_MAIN_form.ItemDescription.value,nIndex);
	window.top.opener.document.PO_MAIN_form.ItemDescription.value = retStr;
	
	retStr = updateValueInStr(window.top.opener.document.PO_MAIN_form.TaxAmount.value,nIndex);
	window.top.opener.document.PO_MAIN_form.TaxAmount.value = retStr;
	
	retStr = updateValueInStr(window.top.opener.document.PO_MAIN_form.ChargeAmount.value,nIndex);
	window.top.opener.document.PO_MAIN_form.ChargeAmount.value = retStr;
	
	retStr = updateValueInStr(window.top.opener.document.PO_MAIN_form.DiscountAmount.value,nIndex);
	window.top.opener.document.PO_MAIN_form.DiscountAmount.value = retStr;
	
	retStr = updateValueInStr(window.top.opener.document.PO_MAIN_form.QuantityMeasure.value,nIndex);
	window.top.opener.document.PO_MAIN_form.QuantityMeasure.value = retStr;
	
	retStr = updateValueInStr(window.top.opener.document.PO_MAIN_form.UnitPriceMeasure.value,nIndex);
	window.top.opener.document.PO_MAIN_form.UnitPriceMeasure.value = retStr;
	
	retStr = updateValueInStr(window.top.opener.document.PO_MAIN_form.TotalAmount.value,nIndex);
	window.top.opener.document.PO_MAIN_form.TotalAmount.value = retStr;
}

///////////////////////////// updateValueInStr /////////////////////////////
function updateValueInStr(FieldValueStr,nIndex)
{
	var sendStr = "";
	var len; 
	
	arrHidden = FieldValueStr.split("*");
	len = arrHidden.length-1;
	for (i=0; i < len-1; i++)
	{
		if (i != nIndex)
			sendStr = sendStr + arrHidden[i] + "*";	
		else
			sendStr = sendStr + arrHidden[len-1] + "*";			
	}
	
	return sendStr;
}