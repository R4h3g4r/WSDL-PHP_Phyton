function getItems()
{	
	var ItemsStr=" ";
	var arrItems,arrBuyerId,arrBuyerNo,arrSupId,arrSupNo,arrItemDesc;
	var arrTax,arrCharge,arrDiscount,arrQMeasure,arrUPMeasure;
	var BuyerIdStr,BuyerNoStr,SuppIdStr,SuppNoStr,ItemDescStr;
	var TaxStr,ChargeStr,DiscountStr,QMeasureStr,UPMeasureStr;
	var sQuantity,len;
	var sMainPageName;
	sMainPageName = "PO_MAIN"
	var toCtrl = eval("window.top.opener.document." + sMainPageName + "_form.ItemsTable");
	var i = toCtrl.selectedIndex;
		
	ItemsStr = toCtrl.options[i].text;
	arrItems = ItemsStr.split("|");
	
	document.ITEM_DETAILS_form.product_name.value = Trim(arrItems[1]);
	document.ITEM_DETAILS_form.unit_price.value = Trim(arrItems[2]);
	sQuantity = Trim(arrItems[3]);
	len = sQuantity.length;
	if (sQuantity.substring(len-3,len) != "")
		document.ITEM_DETAILS_form.quantity.value = sQuantity.substring(0,len-3);
	else
		document.ITEM_DETAILS_form.quantity.value = sQuantity;	
		
	BuyerIdStr = eval("window.top.opener.document." + sMainPageName + "_form.BuyerProductId.value");
	arrBuyerId = BuyerIdStr.split("*");
	BuyerNoStr = eval("window.top.opener.document." + sMainPageName + "_form.BuyerProductNo.value");
	arrBuyerNo = BuyerNoStr.split("*");
	SuppIdStr = eval("window.top.opener.document." + sMainPageName + "_form.SupplierProductId.value");
	arrSupId = SuppIdStr.split("*");
	SuppNoStr = eval("window.top.opener.document." + sMainPageName + "_form.SupplierProductNo.value");
	arrSupNo = SuppNoStr.split("*");
	ItemDescStr = eval("window.top.opener.document." + sMainPageName + "_form.ItemDescription.value");
	arrItemDesc = ItemDescStr.split("*");
	TaxStr = eval("window.top.opener.document." + sMainPageName + "_form.TaxAmount.value");
	arrTax = TaxStr.split("*");
	ChargeStr = eval("window.top.opener.document." + sMainPageName + "_form.ChargeAmount.value");
	arrCharge = ChargeStr.split("*");
	DiscountStr = eval("window.top.opener.document." + sMainPageName + "_form.DiscountAmount.value");
	arrDiscount = DiscountStr.split("*");
	QMeasureStr = eval("window.top.opener.document." + sMainPageName + "_form.QuantityMeasure.value");
	arrQMeasure = QMeasureStr.split("*");
	UPMeasureStr = eval("window.top.opener.document." + sMainPageName + "_form.UnitPriceMeasure.value");
	arrUPMeasure = UPMeasureStr.split("*");
	
	document.ITEM_DETAILS_form.buyer_prod_id.value = Trim(arrBuyerId[i]);
	document.ITEM_DETAILS_form.buyer_prod_no.value = Trim(arrBuyerNo[i]);
	document.ITEM_DETAILS_form.supplier_prod_id.value = Trim(arrSupId[i]);
	document.ITEM_DETAILS_form.supplier_prod_no.value = Trim(arrSupNo[i]);
	document.ITEM_DETAILS_form.item_description.value = arrItemDesc[i];
	document.ITEM_DETAILS_form.tax_amount.value = Trim(arrTax[i]);
	document.ITEM_DETAILS_form.charge_amount.value = Trim(arrCharge[i]);
	document.ITEM_DETAILS_form.discount_amount.value = Trim(arrDiscount[i]);
	document.ITEM_DETAILS_form.quantity_measure.value = Trim(arrQMeasure[i]);
	document.ITEM_DETAILS_form.unit_price_measure.value = Trim(arrUPMeasure[i]);
}



