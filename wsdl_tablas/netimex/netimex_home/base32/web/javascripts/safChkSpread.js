function safChkSpread(spread){
	var ret=true;
	var intBaseRateVal = javascript:GetElemValue(document.<%getPageName()%>_form.interest_base);
	var spreadSignVal = javascript:GetElemValue(document.<%getPageName()%>_form.spread_sign);
	
	//alert("intBaseRateVal="+intBaseRateVal+" spread.value="+spread.value+" spreadSignVal="+spreadSignVal);
	if(!bIsEmpty(intBaseRateVal)){		
		if(!bIsEmpty(spread.value) && spreadSignVal=='Z'){ 	
			//The Plus/Minus can not be Zero when a Spread value is used		
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.spread_sign,"<%getError(NMX00220)%>");
			ret=false;
		}else if(!bIsEmpty(spread.value) && bIsEmpty(spreadSignVal)){
			//The Plus/Minus can not be Empty when a Spread value is used	
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.spread_sign,"<%getError(NMX00227)%>");
			ret=false;
		}else if(bIsEmpty(spread.value) && !bIsEmpty(spreadSignVal) && spreadSignVal!='Z'){
			//The Plus/Minus can not be used when Spread is empty
			javascript:DisplayErrorMsg(spread,"<%getError(NMX00219)%>");
			ret=false;
		}else if(bIsEmpty(spread.value) && bIsEmpty(spreadSignVal)){
			//The Plus/Minus is Mandatory In Case Interest Base Rate is defined.
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.spread_sign,"<%getError(NMX00226)%>");
			ret=false;
		}
	}else{
		//Spread, Plus/Minus fields must be empty when no Interest Base Rate is selected
		if(!bIsEmpty(spread.value) || !bIsEmpty(spreadSignVal)){
			DisplayErrorMsg(spread,"<%getError(NMX00217)%>");
			ret=false;
		}
	}
	return ret;
}