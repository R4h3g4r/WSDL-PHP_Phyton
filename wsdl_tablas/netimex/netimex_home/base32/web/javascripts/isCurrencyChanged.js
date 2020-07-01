function isCurrencyChanged()
{
	if (document.<%getPageName()%>_form.customer_local_currency!= null && document.<%getPageName()%>_form.customer_local_currency_old!= null && document.<%getPageName()%>_form.customer_local_currency.value != document.<%getPageName()%>_form.customer_local_currency_old.value)
	{
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.customer_local_currency, "<%getErrorMsg(NMX10010)%>");
	}
}
