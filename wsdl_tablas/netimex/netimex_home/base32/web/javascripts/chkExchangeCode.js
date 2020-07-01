function chkExchangeCode(){

	var exchangeCodeElem = document.REMITTANCE_form.exchange_code;
	
	if(exchangeCodeElem == undefined){
		return;
	}else if(exchangeCodeElem.type == "hidden"){
		return;
	}
	
	var paymentReasonElem = document.REMITTANCE_form.payment_reason;
	if(paymentReasonElem == undefined){
		return;
	} 
	
	var paymentReason = paymentReasonElem.value;
	if(paymentReason != undefined && paymentReason != "IMP"){
		var exchangeCode = exchangeCodeElem.value;
		if(exchangeCode == undefined || exchangeCode == ""){	
			javascript:DisplayErrorMsg(exchangeCodeElem, 'Exchange Code ' + '<%getErrorMsg(NIM00013)%>');
		}
	}
	return;
}