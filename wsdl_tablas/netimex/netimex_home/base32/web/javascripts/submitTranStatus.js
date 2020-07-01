function submitTranStatus(SubmitType)
{
	/* the version with BCV - keyid functionality*/ 
var sUrl="";
sUrl = "<%getWebLocation()%>";
sUrl += "Page=TRANSACTIONSSTATUS&";
sUrl += "Action=put&";
sUrl += "SubmitType=" + SubmitType + "&";

sUrl += "cmbStatus=" + escape(javascript:GetElemValue(document.<%getPageName()%>_form.cmbStatus)) + "&";
sUrl += "cmbName=" + escape(GetElemValue(document.<%getPageName()%>_form.cmbName)) + "&";
sUrl += "txtDateFrom=" + escape(GetElemValue(document.<%getPageName()%>_form.txtDateFrom)) + "&";
sUrl += "txtDateTo=" + escape(GetElemValue(document.<%getPageName()%>_form.txtDateTo)) + "&";
sUrl += "all_customers_ts=" + escape(GetElemValue(document.<%getPageName()%>_form.all_customers_ts)) + "&";
sUrl += "save_criteria=" + escape(GetElemValue(document.<%getPageName()%>_form.save_criteria)) + "&";
sUrl += "<%getCustomizedURLParameters()%>";//avis - generalize url customization
if (document.<%getPageName()%>_form.sortMethod != null)
   sUrl += "&sortMethod=" + javascript:GetRadioValue(document.<%getPageName()%>_form.sortMethod);
window.location=sUrl;
}
