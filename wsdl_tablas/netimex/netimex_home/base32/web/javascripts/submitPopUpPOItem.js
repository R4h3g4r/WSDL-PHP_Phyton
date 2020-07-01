function submitPopUpPOItem()
{
	var nUnitPrice, nQuantity, nTaxAmount, nChargeAmount, nDiscountAmount, nTotalAmount;
	if (document.<%getPageName()%>_form.unit_price != null)	{		var UnitPrice = window.document.<%getPageName()%>_form.unit_price.value;
		if (UnitPrice != "")			nUnitPrice = parseFloat(UnitPrice);				else			nUnitPrice = 0;	}	
	
	if (document.<%getPageName()%>_form.quantity != null)	{		
		var Quantity=document.<%getPageName()%>_form.quantity.value;
		if (Quantity != "")			nQuantity = parseInt(Quantity);
		else
			nQuantity = 0;
	}	
	
	if (document.<%getPageName()%>_form.tax_amount != null)
	{
		var TaxAmount=document.<%getPageName()%>_form.tax_amount.value;		if (TaxAmount != "")
			nTaxAmount = parseFloat(TaxAmount);	
		else
			nTaxAmount = 0;	
	}				
	if (document.<%getPageName()%>_form.charge_amount != null)
	{			var ChargeAmount=document.<%getPageName()%>_form.charge_amount.value;
		if (ChargeAmount!="")			nChargeAmount = parseFloat(ChargeAmount);
		else
			nChargeAmount = 0;	
	}					if (document.<%getPageName()%>_form.discount_amount != null)
	{			var DiscountAmount=document.<%getPageName()%>_form.discount_amount.value;
		if (DiscountAmount!="")			nDiscountAmount = parseFloat(DiscountAmount);			else			nDiscountAmount = 0;		}		
	
	if (document.<%getPageName()%>_form.unit_price != null && document.<%getPageName()%>_form.quantity != null)		{		var nTmp = (nUnitPrice * nQuantity) + nTaxAmount + nChargeAmount - nDiscountAmount;
		nTotalAmount = parseFloat(Math.round(nTmp*100)/100);		total_item_amount = eval("window.document.<%getPageName()%>_form." + "total_item_amount");		total_item_amount.value=nTotalAmount;
	}
	
	var ElemName = javascript:getValueFromUrl("<%getElemName()%>");
	var lineNo = javascript:getValueFromUrl("<%getLineNo()%>");
	var SendString = javascript:makeSendString();
	SendString = "<%getLineNo()%>=" + lineNo + "|" + SendString;
	top.opener.updateItem(ElemName,SendString,lineNo);
}