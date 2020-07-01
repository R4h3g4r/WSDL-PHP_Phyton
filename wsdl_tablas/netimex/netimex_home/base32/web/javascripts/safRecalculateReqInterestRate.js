//calcualting the new interest according to:
// [new rate]=[base rate]+[margin]
// [margin]=[spread]*[spread sign]

//[new rate] must be > 0
function safRecalculateReqInterestRate(numAfterComma){
	// if the interest type is floating then there is no calculation
	var selectedIntType = document.<%getPageName()%>_form.interest_type_hidden.value;
	if(selectedIntType=='2'){
		//clear the requested interest rate
		document.<%getPageName()%>_form.req_interest_rate.value = "";		
		return;
	}
	
	
	if(numAfterComma==null)
		numAfterComma=2;
	//validate spread field
	var spreadElem = document.<%getPageName()%>_form.spread;
	var spreadVal = javascript:GetElemValue(spreadElem);
	var spreadSignElem = document.<%getPageName()%>_form.spread_sign;
	var spreadSignVal = javascript:GetElemValue(spreadSignElem);
	
	//if spread and sign are empty do not calculate	
	if(bIsEmpty(spreadSignVal) && bIsEmpty(spreadVal)){
		return;
	}
	switch (spreadSignVal){
		case("P"):
			if(bIsEmpty(spreadVal)){
				//there must be a value in the spread it the sign is positive
				DisplayErrorMsg(spreadElem,"<%getError(NMX00219)%>");
				spreadVal = 0;
			}
		break;
		case("N"):
			if(bIsEmpty(spreadVal)){
				//there must be a value in the spread it the sign is negative
				DisplayErrorMsg(spreadElem,"<%getError(NMX00219)%>");
				spreadVal = 0;
			}else{
				spreadVal = eval(spreadVal)*-1;
			}
		break;
		case("Z"):
			if(!bIsEmpty(spreadVal)){
				//spread must be empty when zero spread sign
				DisplayErrorMsg(spreadElem,"<%getError(NMX00220)%>");
			}
			spreadVal = 0;
			break;
		default:
			document.<%getPageName()%>_form.req_interest_rate.value = "";
			return;//empty selection
	}
	//set requested interest rate
	var reqIntRate = javascript:GetElemValue(document.<%getPageName()%>_form.base_rate_hidden);
	if(javascript:bIsEmpty(reqIntRate)){
		DisplayErrorMsg(spreadSignElem,"<%getError(NMX00218)%>");//you must select a base rate
	}else{
		//alert("reqIntRate="+reqIntRate+" spreadVal="+spreadVal);
		//add the margin to the base interest rate
		var newRate = eval(reqIntRate)+ eval(spreadVal);
		
		if(!isNaN(newRate)){
			if(newRate<0){
				//must be more than 0
				DisplayErrorMsg(spreadElem,"<%getError(NMX00221)%>");
			}else{
				newRate = newRate.toFixed(numAfterComma);
				if(newRate==0){
					document.<%getPageName()%>_form.req_interest_rate.value = "";		
				}else{
					//remove the functionality of showing the rate calculation!!
					//document.<%getPageName()%>_form.req_interest_rate.value = newRate;		
				}
			}
		}else{
			document.<%getPageName()%>_form.req_interest_rate.value = "";		
		}
	}
}