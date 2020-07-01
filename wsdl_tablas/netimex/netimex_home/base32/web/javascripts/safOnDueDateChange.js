function safOnDueDateChange(dueDateElem){		
	var dueDateTime = getTimeStamp(dueDateElem);
	if(dueDateTime>0)
		setPaymentDate(new Date(dueDateTime));	
}