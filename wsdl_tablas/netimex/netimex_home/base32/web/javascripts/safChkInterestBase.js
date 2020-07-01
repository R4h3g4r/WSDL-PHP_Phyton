function safChkInterestBase(intBase){
	var ret = true;
	var selectedIntType = document.<%getPageName()%>_form.interest_type_hidden.value;
	// 2 is floating interest type - on that case the interest base is mandatory
	if(selectedIntType=='2' && bIsEmpty(intBase)){		
		ret = javascript:DisplayErrorMsg(intBase,"<%getError(NMX00222)%>");		
	}
	return ret;
}