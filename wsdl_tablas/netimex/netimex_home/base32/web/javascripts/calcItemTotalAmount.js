function calcItemTotalAmount()
{
	var nUnitPrice, nQuantity, nTotalAmount,nTaxAmount,nChargeAmount,nDiscountAmount;
	if (document.<%getPageName()%>_form.unit_price != null)
	{
		var UnitPrice = window.document.<%getPageName()%>_form.unit_price.value;
		if (UnitPrice != "")
			nUnitPrice = parseFloat(UnitPrice);
		else
			nUnitPrice = 0;
	}	
	if (document.<%getPageName()%>_form.quantity != null)

	{		
		var Quantity=document.<%getPageName()%>_form.quantity.value;
		if (Quantity != "")
			nQuantity = parseInt(Quantity);
		else
			nQuantity = 0;
	}
	if (document.<%getPageName()%>_form.tax_amount != null)
	{
		var TaxAmount = document.<%getPageName()%>_form.tax_amount.value;
		if (TaxAmount != "")
			nTaxAmount = parseInt(TaxAmount);
		else
			nTaxAmount = 0;
	}	
	if (document.<%getPageName()%>_form.charge_amount != null)
	{
		var ChargeAmount = document.<%getPageName()%>_form.charge_amount.value;
		if (ChargeAmount != "")
			nChargeAmount = parseInt(ChargeAmount);
		else
			nChargeAmount = 0;
	}	
	if (document.<%getPageName()%>_form.discount_amount != null)
	{
		var DiscountAmount = document.<%getPageName()%>_form.discount_amount.value;
		if (DiscountAmount != "")
			nDiscountAmount = parseInt(DiscountAmount);
		else
			nDiscountAmount = 0;
	}	
	if (document.<%getPageName()%>_form.unit_price != null && document.<%getPageName()%>_form.quantity != null)
	{
		var nTmp = nUnitPrice * nQuantity ;
		nTmp = nTmp + nTaxAmount + nChargeAmount - nDiscountAmount ;
		nTotalAmount = parseFloat(Math.round(nTmp*100)/100);
		total_item_amount = eval("window.document.<%getPageName()%>_form." + "total_item_amount");
		total_item_amount.value=nTotalAmount;
	}
	
	javascript: submitPopUp();
}
