function checkIsRejected(){
	var bReject = document.<%getPageName()%>_form.reject.checked;
	if (bReject){
		javascript:checkMandatory(document.<%getPageName()%>_form.SYS02,"TextArea");
		javascript:clearLoans();
	}

}