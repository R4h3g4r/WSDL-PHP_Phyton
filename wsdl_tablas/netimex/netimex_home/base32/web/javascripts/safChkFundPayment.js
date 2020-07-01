function safChkFundPayment(fundPayAmtElem){
	var ret = true;
	var fundBalance = javascript:GetElemValue(document.<%getPageName()%>_form.fund_balance_hidden);
	var selectedPaymentType = javascript:GetElemValue(document.<%getPageName()%>_form.payment_type);
	var fundPayAmountVal = javascript:GetElemValue(fundPayAmtElem);
	//PRT is partial payment of interest/fund or both
	if(selectedPaymentType!='PRT' && bIsEmpty(fundPayAmountVal)==false){
		//if it is NOT a partial payment and the amount field has value -> error
		ret = javascript:DisplayErrorMsg(fundPayAmtElem,"<%getError(NMX00232)%>");				
	}else{
		if(selectedPaymentType=='PRT' && bIsEmpty(fundPayAmountVal)==false){						
			//if it is a partial payment and the amount field has value 
			//that is greater than the interest balance ->error
			if(fundBalance < fundPayAmountVal){
				ret = javascript:DisplayErrorMsg(fundPayAmtElem,"<%getError(NMX00230)%>");				
			}
		}		
	}
	return ret;
}