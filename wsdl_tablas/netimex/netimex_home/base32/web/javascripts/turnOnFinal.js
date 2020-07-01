
function turnOnFinal(Elem)
{
	if (document.<%getPageName()%>_form.acceptance_balance != null)
	{
		var nAmount = parseFloat(javascript:ReplaceInStr(Elem.value, '<%getDecimalSymbol()%>', "."));
		var nBalance = <%getField(acceptance_balance)%>;
		var bReject = document.<%getPageName()%>_form.reject.checked;
                


		if (nAmount == nBalance && !bReject)
		{
        		document.<%getPageName()%>_form.finalcb.checked = true;
		}
		else 
		{
			document.<%getPageName()%>_form.finalcb.checked = false;
		}
	}
	javascript:NumberFixedCur(Elem,13,2);
}

