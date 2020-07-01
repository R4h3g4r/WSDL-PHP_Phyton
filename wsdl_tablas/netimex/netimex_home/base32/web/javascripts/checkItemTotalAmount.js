function checkItemTotalAmount()
{
	var nTotalAmount,nJustAmount;
	if (document.<%getPageName()%>_form.just_amount != null) 
	{
		var JustAmount = document.<%getPageName()%>_form.just_amount.value;
		if (JustAmount != "")
			nJustAmount = parseFloat(JustAmount);
		else
			nJustAmount = 0;
	}
	nTotalAmount=javascript:getItemTotalAmount("items_itemT","total_item_amount");
	if (nTotalAmount != nJustAmount)
	{
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.just_amount, "<%getError(POM00001)%>"); 
		bErrorFound=true;
		return false;
	}
}	
	