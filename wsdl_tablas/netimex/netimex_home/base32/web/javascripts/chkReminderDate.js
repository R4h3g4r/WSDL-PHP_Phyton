function chkReminderDate(reminderField, expiryField, lastShipmentField){

	var reminderDate     = reminderField.value;
	if(expiryField != null)
	{
		var expiryDate       = expiryField.value;
	}
	else
	{
		var expiryDate = "";
	}
	if (lastShipmentField != null)
	{
		var lastShipmentDate = lastShipmentField.value;
	}
	else
	{
		var lastShipmentDate = "";
	}
	var currentdate;
	sysdate = new Date();
	var dayPosition = <%getDayPosition()%>;
 	var monthPosition = <%getMonthPosition()%>;
	var yearPosition = <%getYearPosition()%>;
	var dateSeparator = "<%getDateSeparator()%>";
	datearray = new Array(3);
	
	datearray[dayPosition]=sysdate.getDate();
	datearray[monthPosition]=sysdate.getMonth()+1;
	datearray[yearPosition]=sysdate.getYear();
	currentdate = datearray[1]+dateSeparator+datearray[2]+dateSeparator+datearray[3];


	if (reminderDate != "")
	{
		if (lastShipmentDate != "")
		{
			if (javascript:daysElapsed(reminderDate,lastShipmentDate) > 0)
			{
				javascript:DisplayErrorMsg(document.<%getPageName()%>_form.reminder_date, "<%getError(DOC00001)%>");
			}
		}
		if (expiryDate != "")
		{
			if (javascript:daysElapsed(reminderDate,expiryDate) > 0)
			{
				javascript:DisplayErrorMsg(document.<%getPageName()%>_form.reminder_date, "<%getError(DOC00001)%>");
			}
		}
		if (javascript:daysElapsed(reminderDate,currentdate) < 0)
		{
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.reminder_date, "<%getError(DOC00002)%>");
		}
	}
}