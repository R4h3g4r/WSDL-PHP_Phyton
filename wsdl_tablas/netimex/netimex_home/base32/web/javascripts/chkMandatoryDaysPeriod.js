function chkMandatoryDaysPeriod(){

	var paymentReason = eval(document.<%getPageName()%>_form.payment_reason);
	var selectedValue = GetElemValue(paymentReason);
	if (selectedValue == "IML"){
		javascript:DisplayErrorMsg(paymentReason, "<%getError(NIL00001)%>");
	}
}