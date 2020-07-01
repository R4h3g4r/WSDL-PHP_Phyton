function safChkTimeOnly(tenorDayElem){
	var ret = true;
	javascript:chkIfSightIsTime(tenorDayElem);
	//in case there are no installments - the user must use Time
	if(document.<%getPageName()%>_form.sight==null){
		var DueDateVal = javascript:GetElemValue(document.<%getPageName()%>_form.due_date);
		if(bIsEmpty(DueDateVal) && bIsEmpty(tenorDayElem.value)){
			//You must enter Tenor Days or Due Date in case of Time selection.
			javascript:DisplayErrorMsg(tenorDayElem,"<%getError(NMX00216)%>");
			ret = false;
		}else if (!bIsEmpty(DueDateVal) && !bIsEmpty(tenorDayElem.value)){
			//Cannot enter both Tenor days and Due date.
			javascript:DisplayErrorMsg(tenorDayElem,"<%getError(CMX20033)%>");
			ret = false;
		}
	}
	return ret;
}