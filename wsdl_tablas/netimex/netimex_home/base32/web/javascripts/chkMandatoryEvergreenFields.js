function chkMandatoryEvergreenFields(){

var evergreen =document.<%getPageName()%>_form.evergreen.checked;
var tmpexpdate,tmprenumber,tmprenletter,tmpdaysnotice;
	if (evergreen == true)
	 {
	  javascript:checkMandatory(document.<%getPageName()%>_form.ultimate_expiry_date, "Date");
	  checkMandatory(document.<%getPageName()%>_form.renewal_period, "Numeric");
	  checkMandatory(document.<%getPageName()%>_form.renewal_type, "This field");
	  checkMandatory(document.<%getPageName()%>_form.non_renewal_days_notice, "Numeric");   
	 }
	else 
	 {
	   if (document.<%getPageName()%>_form.ultimate_expiry_date != null && document.<%getPageName()%>_form.ultimate_expiry_date.type != "hidden"){
	   	tmpexpdate    = javascript:GetElemValue(document.<%getPageName()%>_form.ultimate_expiry_date);
	   	if (javascript:TrimIt(tmpexpdate)!='')
	      	javascript:DisplayErrorMsg(document.<%getPageName()%>_form.ultimate_expiry_date, "<%getError(NMX00080)%>");
	   }
	   if (document.<%getPageName()%>_form.renewal_period != null  && document.<%getPageName()%>_form.renewal_period.type != "hidden"){
	   	tmprenumber   = javascript:GetElemValue(document.<%getPageName()%>_form.renewal_period);
	   	if (javascript:TrimIt(tmprenumber)!='')
	      	javascript:DisplayErrorMsg(document.<%getPageName()%>_form.renewal_period, "<%getError(NMX00080)%>");
	   }
	   if (document.<%getPageName()%>_form.renewal_type != null  && document.<%getPageName()%>_form.renewal_type.type != "hidden"){
	   	tmprenletter  = GetElemValue(document.<%getPageName()%>_form.renewal_type);
	   	if (javascript:TrimIt(tmprenletter)!='')
	      	javascript:DisplayErrorMsg(document.<%getPageName()%>_form.renewal_type, "<%getError(NMX00080)%>");
	   }
	   if (document.<%getPageName()%>_form.non_renewal_days_notice != null  && document.<%getPageName()%>_form.non_renewal_days_notice.type != "hidden"){
	   	tmpdaysnotice = javascript:GetElemValue(document.<%getPageName()%>_form.non_renewal_days_notice);
	   	if (javascript:TrimIt(tmpdaysnotice)!='')
	      	javascript:DisplayErrorMsg(document.<%getPageName()%>_form.non_renewal_days_notice, "<%getError(NMX00080)%>");
	   }
	 }
    

}
