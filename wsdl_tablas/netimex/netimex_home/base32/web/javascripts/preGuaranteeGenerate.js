function preGuaranteeGenerate(){	
	
	if(!confirm("Are you sure you want to Generate New Guarantee application?")){
		return;
	}
	document.<%getPageName()%>_form.Page.value="PRE_GUARANTEE_GENERATE";
	document.<%getPageName()%>_form.submit();
	
}

