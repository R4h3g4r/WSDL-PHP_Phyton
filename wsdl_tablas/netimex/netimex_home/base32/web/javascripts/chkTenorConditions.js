function chkTenorConditions(cashCheckBox){
	var ret=true;
	var fromElem = document.<%getPageName()%>_form.from;	
	var daysPeriodElem = document.<%getPageName()%>_form.days_period;
	var daysPeriodVal = javascript:GetElemValue(daysPeriodElem);	
	var fromVal = javascript:GetElemValue(fromElem);
	var isChecked = javascript:GetElemValue(cashCheckBox);
	
	if(isChecked){
		//in case the check box is selected the days period and from should be empty
		if(!bIsEmpty(fromVal) || !bIsEmpty(daysPeriodVal)){
			if(!bIsEmpty(fromVal))
				javascript:DisplayErrorMsg(fromElem, "<%getError(NMX00500)%>");
			else
				javascript:DisplayErrorMsg(daysPeriodElem, "<%getError(NMX00500)%>");
			ret = false;	 
		}
	}else{
		//the days period and from are mandatory
		if(bIsEmpty(fromVal) || bIsEmpty(daysPeriodVal)){
			if(bIsEmpty(fromVal))
				javascript:DisplayErrorMsg(fromElem, "<%getError(CMX20050)%>");
			else
				javascript:DisplayErrorMsg(daysPeriodElem, "<%getError(CMX20050)%>");
			ret = false;	 
		}
	}
	return ret;
}