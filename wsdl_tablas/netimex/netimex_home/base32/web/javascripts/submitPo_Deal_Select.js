function submitPo_Deal_Select(SubmitType)
{
var sUrl="";
sUrl = "<%getWebLocation()%>";
sUrl += "Page=PO_DEAL_SELECT&";
sUrl += "Action=put&";
sUrl += "SubmitType=" + SubmitType + "&";
sUrl += "dealNo=" + escape(javascript:GetElemValue(document.<%getPageName()%>_form.dealNo)) + "&";
sUrl += "refNo=" + escape(GetElemValue(document.<%getPageName()%>_form.refNo)) + "&";
sUrl += "counterParty=" + escape(GetElemValue(document.<%getPageName()%>_form.counterParty)) + "&";
sUrl += "amountLow=" + escape(GetElemValue(document.<%getPageName()%>_form.amountLow)) + "&";
sUrl += "amountHigh=" + escape(GetElemValue(document.<%getPageName()%>_form.amountHigh)) + "&";
sUrl += "currency=" + escape(GetElemValue(document.<%getPageName()%>_form.currency))+ "&";
sUrl += "all_customers=" + escape(GetElemValue(document.<%getPageName()%>_form.all_customers));
sUrl += "<%getCustomizedURLParameters()%>";//avis - generalize url customization
if (document.<%getPageName()%>_form.sortMethod != null)
   sUrl += "&sortMethod=" + javascript:GetRadioValue(document.<%getPageName()%>_form.sortMethod);
window.location=sUrl;
}