function chkPartialReminder(reminderField){

	var reminderDate     = reminderField.value;
	var radio	     = javascript:GetElemValue(document.<%getPageName()%>_form.radio);
	if (radio == "R" && reminderDate != "")
	{
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.reminder_date, "<%getError(NMX00032)%>");
	}
	if (radio == "S" && reminderDate == "")
	{
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.reminder_date, "<%getError(NMX00032)%>");
	}

}