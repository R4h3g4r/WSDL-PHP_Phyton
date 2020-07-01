function safInterestBaseRateOnChange(baseRateCmbElem,numAfterComma){
	//if base rate is empty - disable spread fields and enable req interest
	// do opposite if base rate has value
	if(baseRateCmbElem){
		var selectedVal = javascript:GetElemValue(baseRateCmbElem);
		var spreadElem = <%getThis(spread)%>;
		var spreadSignElem = <%getThis(spread_sign)%>;		
		var reqInterestElem = <%getThis(req_interest_rate)%>;
		
		var textBoxClassName = 'textBox';
		var comboBoxStyleName = 'comboBox';
		var isDisabled = false;
		if(bIsEmpty(selectedVal)){			
			textBoxClassName = 'disabledClass';
			comboBoxStyleName = 'disabledStyle';
			isDisabled = true;
			spreadElem.value="";
			spreadSignElem.options.selectedIndex=0;
		}		
		//on the text fields the className is used with read only
		if(spreadElem){
			spreadElem.className=textBoxClassName;
			spreadElem.readOnly=isDisabled;
		}
		
		//the request interest field is opposite of other fields
		//if base rate is selected it should be disabled, enabled otherwise.
		if(reqInterestElem){
			if(isDisabled)
				reqInterestElem.className='textBox';
			else{		
				reqInterestElem.className='disabledClass';
				reqInterestElem.value="";
			}
			reqInterestElem.readOnly=!isDisabled;
		}
		
		//on the combobox fields the id is used with disabled
		if(spreadSignElem){
			
			//always release the disabled flag for combobox
			//do not disable combobox - since it is not being sent on the submit!!!!!
			//in case it was changed from "some value" to empty it will not be saved!!!			
			spreadSignElem.disabled=false;
			spreadSignElem.id=comboBoxStyleName;
		}	
	}
/* //This is old logic that displays the rate in the req interest rate -it is not used now
	if(baseRates!="undefined" && baseRateCmbElem){
		var selectedVal = javascript:GetElemValue(baseRateCmbElem);
		var baseRatesIndex = -1;
		//search the selected index in the baseRates array
		for (i=0;baseRatesIndex<0 && i<baseRates.length;i++){
			if(Trim(baseRates[i][0])==Trim(selectedVal))
				baseRatesIndex=i;
		}
		if(baseRatesIndex>-1){
			//if found set the req base rate
			document.<%getPageName()%>_form.req_interest_rate.value = baseRates[baseRatesIndex][1];
			document.<%getPageName()%>_form.base_rate_hidden.value = baseRates[baseRatesIndex][1];
		}else{
			document.<%getPageName()%>_form.req_interest_rate.value = "";
			document.<%getPageName()%>_form.base_rate_hidden.value = 0;
		}
		
		safRecalculateReqInterestRate(numAfterComma);
	}
*/

}