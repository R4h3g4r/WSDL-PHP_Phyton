function safLoanTypeOnChange(cmbLoanType){	
	enableFieldsForAmend();	
			
	var loanTypeVal = GetElemValue(<%getThis(loan_type)%>);
	
	//check if the array of select box is defined
	try{
		var check = eval(group);//group - is a dynamic javascript written by the java code
	}catch(x){
		alert("unexpected error"+x);
		return;
	}
	//check if the array of interest type exist
	try{
		var check = eval(interestTypes);//interestTypes - is a dynamic javascript written by the java code
		var tmp_elem = <%getThis(interest_type_hidden)%>;
		tmp_elem.value = interestTypes[cmbLoanType.options.selectedIndex][0];
		tmp_elem = <%getThis(interest_type)%>;
		tmp_elem.value = interestTypes[cmbLoanType.options.selectedIndex][1];
	}catch(x){	
		//ignore - it means there is only one interest type	
	}
	
	var elem = <%getThis(interest_payment)%>;
	
	//check if next station email is defined
	if(elem!= null && elem!="undefined" && elem.options!=null){
		//delete the current options	
		for (m=elem.options.length-1;m>=0;m--)
			elem.options[m]=null;
		var groupNum = cmbLoanType.options.selectedIndex;	
	
		//create the options dynamicly
		for (i=0;i<group[groupNum].length;i++){
			elem.options[i]=new Option(group[groupNum][i].text,group[groupNum][i].value)
		}	
	}
}
function enableFieldsForAmend(){
	var baseInterestElem = <%getThis(interest_base)%>;
	if(baseInterestElem){
		baseInterestElem.id='comboBox';
		baseInterestElem.disabled=false;
	}
	safInterestBaseRateOnChange(baseInterestElem,2);
}

