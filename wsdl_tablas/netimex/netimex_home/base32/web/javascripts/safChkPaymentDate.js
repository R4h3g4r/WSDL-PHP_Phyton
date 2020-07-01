function safChkPaymentDate(paymentDateElem){
	var ret = true;
	//update the payment date according to most updated data
	var effectiveDateElem = document.<%getPageName()%>_form.effective_date;
	var sightElem = document.<%getPageName()%>_form.sight;
	var sightVal = javascript:GetElemValue(sightElem);
	
	if(!sightElem || sightVal=='N'){			
		//in case of time
		safOnDueDateChange(document.<%getPageName()%>_form.due_date);
		safOnTenorDaysChange(document.<%getPageName()%>_form.tenor_days);
	}else if(sightVal=='I'){
		//in case of installments
		var instLatest = getInstallmentLatestDate(document.<%getPageName()%>_form.Installments);		
		if(instLatest>0)
			setPaymentDate(new Date(instLatest));
	}
	// after updating the payment date check that it is after the effective date
	if(getTimeStamp(effectiveDateElem)> getTimeStamp(paymentDateElem)){	
		//Effective Date must be before the Payment Date, Check Payment Time.	
		ret = javascript:DisplayErrorMsg(document.<%getPageName()%>_form.tenor_days,"<%getError(NMX00224)%>");		
	}
	return ret;
}