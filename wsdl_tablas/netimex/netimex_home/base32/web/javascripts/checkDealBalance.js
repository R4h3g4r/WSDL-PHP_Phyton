function checkDealBalance(Elem) 
{
	if (document.<%getPageName()%>_form.acceptance_balance != null)
	{
		var nBalance = <%getField(acceptance_balance)%>;
	        var nAmount = parseFloat(ReplaceInStr(Elem.value, '<%getDecimalSymbol()%>', "."));
		var bReject = document.<%getPageName()%>_form.reject.checked;
            
        	if (nAmount > nBalance)
		{
	        	javascript:DisplayErrorMsg(Elem, "<%getErrorMsg(NMX00025)%>");
        	}
        	else if ((nAmount < nBalance) && !bReject) 
		{
        		if (document.<%getPageName()%>_form.finalcb.checked == false ) 
			{
                		if (confirm("<%getErrorMsg(CMX20029)%>")) 
				{
                        		document.<%getPageName()%>_form.finalcb.checked = true;
                        	}
                	}
		}
		else if (!bReject)
		{
			document.<%getPageName()%>_form.finalcb.checked = true;
		}
	}
}
