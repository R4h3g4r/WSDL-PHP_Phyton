function chkNotPastDate(dateElem){
	theDate=javascript:TrimItd(dateElem.value);
	CurrentDate = "<%getCurDate()%>";
	if (theDate!="")
	{		
		if (javascript:daysElapsed(CurrentDate,theDate) >0)
		{
			javascript:DisplayErrorMsg(dateElem, "<%getError(NMX00229)%>");
			return false;	 
		}
	}
	return true;
}