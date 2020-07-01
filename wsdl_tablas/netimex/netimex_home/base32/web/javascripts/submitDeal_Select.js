function submitDeal_Select(SubmitType)
{
	/* the version with BCV - keyid functionality*/
var sUrl="";
sUrl = "<%getWebLocation()%>";
sUrl += "Page=DEAL_SELECT&";
sUrl += "Action=put&";
sUrl += "SubmitType=" + SubmitType + "&";
sUrl += "dealNo=" + escape(javascript:GetElemValue(document.<%getPageName()%>_form.dealNo)) + "&";
sUrl += "refNo=" + escape(GetElemValue(document.<%getPageName()%>_form.refNo)) + "&";
sUrl += "CounterParty=" + escape(GetElemValue(document.<%getPageName()%>_form.CounterParty)) + "&";
sUrl += "CounterPartyName=" + escape(GetElemValue(document.<%getPageName()%>_form.CounterPartyName)) + "&";
sUrl += "AmountLow=" + escape(GetElemValue(document.<%getPageName()%>_form.AmountLow)) + "&";
sUrl += "DealType=" + escape(GetElemValue(document.<%getPageName()%>_form.DealType)) + "&";
sUrl += "AmountHigh=" + escape(GetElemValue(document.<%getPageName()%>_form.AmountHigh)) + "&";
sUrl += "Currency=" + escape(GetElemValue(document.<%getPageName()%>_form.Currency))+ "&";
sUrl += "save_criteria_ds=" + escape(GetElemValue(document.<%getPageName()%>_form.save_criteria_ds))+ "&";
sUrl += "all_customers=" + escape(GetElemValue(document.<%getPageName()%>_form.all_customers)) + "&";
sUrl += "<%getCustomizedURLParameters()%>";//avis - generalize url customization
if (document.<%getPageName()%>_form.HandlingBank != null)
   sUrl += "&HandlingBank=" + escape(GetElemValue(document.<%getPageName()%>_form.HandlingBank));
if (document.<%getPageName()%>_form.sortMethod != null)
   sUrl += "&sortMethod=" + javascript:GetRadioValue(document.<%getPageName()%>_form.sortMethod);
window.location=sUrl;
}

