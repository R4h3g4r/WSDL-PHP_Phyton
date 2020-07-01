
function checkSubTotals(){
	var subTotals = window.document.DEAL_REPORT_form.SubTotals;
	var dataItem = window.document.DEAL_REPORT_form.dataItem;
	var allCustomers = window.document.DEAL_REPORT_form.AllCustomers;
	var dataItemVal = javascript:GetElemValue(dataItem);

	if (subTotals != null && (subTotals.checked))
	{
		if(dataItem!= null)
		{
			if((dataItemVal !='TD') && 
		           (dataItemVal !='CP') &&
			   (dataItemVal !='CU') &&
			   (dataItemVal !='CT'))
			
			   if (allCustomers == null || allCustomers.value == '0')
				javascript:DisplayErrorMsg(window.document.DEAL_REPORT_form.dataItem,'<%getErrorMsg(NMX00169)%>');		
			   else
				javascript:DisplayErrorMsg(window.document.DEAL_REPORT_form.dataItem,'<%getErrorMsg(NMX00089)%>');		

			if (((allCustomers == null) || 
			    !(allCustomers.checked)) && 
			     (dataItemVal =='CT'))
				javascript:DisplayErrorMsg(window.document.DEAL_REPORT_form.dataItem,'<%getErrorMsg(NMX00088)%>');
		}
	}
}
