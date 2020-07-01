//////////////////////////////////////////////////////////////////////////////////

function CheckInvRefNum()
{
	if (document.<%getPageName()%>_form.reference_no == null
		|| document.<%getPageName()%>_form.reference_no.type != "hidden")
	{
		return;
	}

	var sAction = "<%getMode()%>";
	var sString = document.<%getPageName()%>_form.reference_no.value;
	sString = TrimIt(sString);
	if (sString != "")
	{
		if ("<%getSessionValue(customer_id)%>" != "BANK")
		{ 
			var sOldRefNo = "<%getRefNo()%>";
			if (sAction=="U")
			{
				if ((sString.toUpperCase() != TrimIt(sOldRefNo).toUpperCase()) && sOldRefNo.length > 0) 
				{
					javascript:DisplayErrorMsg(document.<%getPageName()%>_form.amount, "<%getError(NMX00021)%>");   
					document.<%getPageName()%>_form.amount.focus();
					return;
				}
			}
		}
	} //END OF GLOBAL IF 
	else
	{
		var sDealType; 
		var sErrorMsg;
		sDealType = "<%getDealType()%>";
		if (sDealType == '13')
		{
			sErrorMsg = "<%getError(NMX00034)%>";
		}
		else
		{
			sErrorMsg = "<%getError(NMX00022)%>";
		}
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.Invoices, sErrorMsg); 
		//document.<%getPageName()%>_form.amount.focus();
		return;
	}
	   
}
//////////////////////////////////////////////////////////////////////////////////

