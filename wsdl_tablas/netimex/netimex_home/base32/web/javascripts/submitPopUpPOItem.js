function submitPopUpPOItem()
{
	var nUnitPrice, nQuantity, nTaxAmount, nChargeAmount, nDiscountAmount, nTotalAmount;
	if (document.<%getPageName()%>_form.unit_price != null)
		if (UnitPrice != "")
	
	if (document.<%getPageName()%>_form.quantity != null)
		var Quantity=document.<%getPageName()%>_form.quantity.value;
		if (Quantity != "")
		else
			nQuantity = 0;
	}	
	
	if (document.<%getPageName()%>_form.tax_amount != null)
	{
		var TaxAmount=document.<%getPageName()%>_form.tax_amount.value;
			nTaxAmount = parseFloat(TaxAmount);	
		else
			nTaxAmount = 0;	
	}				
	if (document.<%getPageName()%>_form.charge_amount != null)
	{	
		if (ChargeAmount!="")
		else
			nChargeAmount = 0;	
	}				
	{	
		if (DiscountAmount!="")
	
	if (document.<%getPageName()%>_form.unit_price != null && document.<%getPageName()%>_form.quantity != null)	
		nTotalAmount = parseFloat(Math.round(nTmp*100)/100);
	}
	
	var ElemName = javascript:getValueFromUrl("<%getElemName()%>");
	var lineNo = javascript:getValueFromUrl("<%getLineNo()%>");
	var SendString = javascript:makeSendString();
	SendString = "<%getLineNo()%>=" + lineNo + "|" + SendString;
	top.opener.updateItem(ElemName,SendString,lineNo);
}