function submitDealReport(SubmitType) {

	if('ExcelXSLButton'== SubmitType)
		document.<%getPageName()%>_form.ToExcel.value = 'True'
	else
		document.<%getPageName()%>_form.ToExcel.value = 'False'
	
	chkSubmitForm(SubmitType,'N');
}
