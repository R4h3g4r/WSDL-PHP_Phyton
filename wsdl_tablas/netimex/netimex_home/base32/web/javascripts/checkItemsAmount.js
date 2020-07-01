function checkItemsAmount(amount)
{
	var nTotalAmount=0;
	var nItemsAmount;
	var sStrTotalAmount;
	var arrTotal;
	var sValue = javascript:GetElemValue(amount);
	
	if (parseFloat(sValue) == 0 || sValue == ""){	
		javascript:DisplayErrorMsg(amount,'<%getErrorMsg(CMX20050)%>');
		bErrorFound=true;
		return false;
	}	
	else
	{			
		sStrTotalAmount = document.PO_MAIN_form.TotalAmount.value;
		arrTotal = sStrTotalAmount.split("*");
		for (i=0; i < arrTotal.length-1; i++)
		{
			nTotalAmount += eval(arrTotal[i]);	
		}
		
		nItemsAmount = Math.round(nTotalAmount*100)/100;
		if (parseFloat(amount.value) != parseFloat(nItemsAmount))
		{
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.amount, "<%getError(POM00001)%>");
			bErrorFound=true;
			return false;
		}		
	}	
	return true;	
}