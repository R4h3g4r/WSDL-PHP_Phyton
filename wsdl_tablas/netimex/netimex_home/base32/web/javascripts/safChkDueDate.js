function safChkDueDate(dueDateElem){
	DueDate=javascript:TrimItd(dueDateElem.value);
	CurrentDate = "<%getCurDate()%>";
	if (DueDate!="")
	{
		if (javascript:daysElapsed(CurrentDate,DueDate) >= 0)
		{
			javascript:DisplayErrorMsg(dueDateElem, "<%getError(NMX00228)%>");
			return false;	 
		}
	}
	return true;
}