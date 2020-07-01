function chkLoans()
{
	var line = new Array(4);
	var length = line.length + 1;
	var i = 1;
	var ret = true;

	for(i = 1; i < length; i++)
	{		
		var amountElem = eval("document.<%getPageName()%>_form.amount" + i);
		var amount = javascript:GetElemValue(amountElem);

		var currencyElem = eval("document.<%getPageName()%>_form.currency" + i);
		var currency = javascript:GetElemValue(currencyElem);

		var loanTypeElem = eval("document.<%getPageName()%>_form.loan_type" + i);
		var loanType = javascript:GetElemValue(loanTypeElem);

		var effectiveDateElem = eval("document.<%getPageName()%>_form.effective_date" + i);
		var effectiveDate = javascript:GetElemValue(effectiveDateElem);

		var periodDaysElem = eval("document.<%getPageName()%>_form.period_days" + i);
		var periodDays = javascript:GetElemValue(periodDaysElem);

		var maturityDateElem = eval("document.<%getPageName()%>_form.maturity_date" + i);
		var maturityDate = javascript:GetElemValue(maturityDateElem);

		if (!javascript:bIsEmpty(amount)
			|| !javascript:bIsEmpty(currency)
			|| !javascript:bIsEmpty(loanType)
			|| !javascript:bIsEmpty(effectiveDate)
			|| !javascript:bIsEmpty(periodDays)
			|| !javascript:bIsEmpty(maturityDate))
		{
			if (javascript:bIsEmpty(amount))
			{
				ret = false;
				javascript:DisplayErrorMsg(amountElem, "<%getError(CMX20050)%>");
			}
			else if (javascript:bIsEmpty(currency))
			{
				ret = false;
				javascript:DisplayErrorMsg(currencyElem, "<%getError(CMX20050)%>");
			}
			else if (javascript:bIsEmpty(loanType))
			{
				ret = false;
				javascript:DisplayErrorMsg(loanTypeElem, "<%getError(CMX20050)%>");
			}
			else if (javascript:bIsEmpty(effectiveDate))
			{
				ret = false;
				javascript:DisplayErrorMsg(effectiveDateElem, "<%getError(CMX20050)%>");
			}
			else if (javascript:bIsEmpty(periodDays) && javascript:bIsEmpty(maturityDate))
			{
				ret = false;
				javascript:DisplayErrorMsg(periodDaysElem, "<%getError(NMX00013)%>");
			}
			else if (!javascript:bIsEmpty(periodDays) && !javascript:bIsEmpty(maturityDate))
			{
				ret = false;
				javascript:DisplayErrorMsg(periodDaysElem, "<%getError(NMX00013)%>");
			}
			else if (javascript:bIsEmpty(periodDays))
			{
				if (javascript:daysElapsed(maturityDate, effectiveDate) <= 0)
				{
					ret = false;
					javascript:DisplayErrorMsg(maturityDateElem, "<%getError(NMX00023)%>");
				}
			}
		}
	}
	return ret;
}
