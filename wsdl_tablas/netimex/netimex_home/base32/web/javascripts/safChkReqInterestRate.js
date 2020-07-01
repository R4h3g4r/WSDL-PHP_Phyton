function safChkReqInterestRate(reqIntRateElem){
	var ret= true;
	var selectedIntType = document.<%getPageName()%>_form.interest_type_hidden.value;
	var reqIntRate = GetElemValue(reqIntRateElem);
	var intBaseRateVal = javascript:GetElemValue(document.<%getPageName()%>_form.interest_base);
	// 2 is floating interest type - on that case the interest base is mandatory
	if(selectedIntType=='2' && !bIsEmpty(reqIntRate)){
		//The requested Interest Rate is relevant only when the Interest Type is FIX.
		javascript:DisplayErrorMsg(reqIntRateElem,"<%getError(NMX00222)%>");
		ret=false;
	}else if (!bIsEmpty(intBaseRateVal) && !bIsEmpty(reqIntRate)){
		//The Requested Interest Rate can be used only when the Interest Base Rate is not used
		javascript:DisplayErrorMsg(reqIntRateElem,"<%getError(NMX00218)%>");
		ret=false;
	}else if(bIsEmpty(intBaseRateVal) && bIsEmpty(reqIntRate)){
		//The Requested Interest Rate or the Interest Base Rate should be defined
		javascript:DisplayErrorMsg(reqIntRateElem,"<%getError(NMX00223)%>");
		ret=false;
	}
	return ret;
}