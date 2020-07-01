function safChkInterestPayment(intPayAmtElem){
	var ret = true;
	var intBalance = javascript:GetElemValue(document.<%getPageName()%>_form.interest_balance_hidden);
	var selectedPaymentType = javascript:GetElemValue(document.<%getPageName()%>_form.payment_type);
	var intPayAmountVal = javascript:GetElemValue(intPayAmtElem);
	//PRT is partial payment of interest/fund or both
	if(selectedPaymentType!='PRT' && bIsEmpty(intPayAmountVal)==false){
		//if it is NOT a partial payment and the amount field has value -> error
		ret = javascript:DisplayErrorMsg(intPayAmtElem,"<%getError(NMX00232)%>");				
	}else{
		if(selectedPaymentType=='PRT' && bIsEmpty(intPayAmtElem)==false){			
			//if it is a partial payment and the amount field has value 
			//that is greater than the interest balance ->error
			if(intBalance < intPayAmountVal){
				ret = javascript:DisplayErrorMsg(intPayAmtElem,"<%getError(NMX00231)%>");				
			}
		}		
		if(selectedPaymentType=='PRT' && bIsEmpty(intPayAmountVal) && bIsEmpty(document.<%getPageName()%>_form.pay_fund_amt.value)){
			//if it is partial payment and both amount fields are empty -> error
			ret = javascript:DisplayErrorMsg(intPayAmtElem,"<%getError(NMX00233)%>");
		}
	}
	return ret;
}