function safOnTenorDaysChange(tenorDaysElem){
	var effDateElem = document.<%getPageName()%>_form.effective_date;		
	var effDateTime = getTimeStamp(effDateElem);
	var newDate = getTenorDaysDate(effDateTime,tenorDaysElem);
	setPaymentDate(newDate);	
}