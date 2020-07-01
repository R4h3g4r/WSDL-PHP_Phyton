function safOnEffectiveDateChange(effDateElem){	
	var tenorDaysElem = document.<%getPageName()%>_form.tenor_days;
	if(!bIsEmpty(tenorDaysElem.value)){
		var effDateTime = getTimeStamp(effDateElem);
		var newDate = getTenorDaysDate(effDateTime,tenorDaysElem);
		setPaymentDate(newDate);
	}
}

