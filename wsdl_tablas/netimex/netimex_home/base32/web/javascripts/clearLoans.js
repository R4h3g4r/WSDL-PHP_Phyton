function clearLoans(){
	var amountElem;
	var currencyElem;
	var loanTypeElem;
	var effectiveDateElem;
	var periodDaysElem;
	var maturityDateElem;
	var length = 5;
	for(i = 1; i < length; i++)
	{		
		amountElem = eval("document.<%getPageName()%>_form.amount" + i);
		currencyElem = eval("document.<%getPageName()%>_form.currency" + i);
		loanTypeElem = eval("document.<%getPageName()%>_form.loan_type" + i);
		effectiveDateElem = eval("document.<%getPageName()%>_form.effective_date" + i);
		periodDaysElem = eval("document.<%getPageName()%>_form.period_days" + i);
		maturityDateElem = eval("document.<%getPageName()%>_form.maturity_date" + i);
		if (i == 1 && !( javascript:isElemExist(amountElem) && isElemExist(currencyElem) && isElemExist(loanTypeElem) && isElemExist(effectiveDateElem) && isElemExist(periodDaysElem) && isElemExist(maturityDateElem))){
			break;
		}
		javascript:SetElemValue(amountElem, "");
		SetElemValue(currencyElem, "");
		SetElemValue(loanTypeElem, "");
		SetElemValue(effectiveDateElem, "");
		SetElemValue(periodDaysElem, "");
		SetElemValue(maturityDateElem, "");
	}
}