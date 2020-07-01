function submitDealHistory(SubmitType)
{
	/* the version with BCV - keyid functionality*/
if (!javascript:on_submit_deal_history(<%getThis(Dealtype)%>,<%getThis(RefNo)%>,<%getThis(DealNumber)%>) || iErrorStatus != 99){
iErrorStatus = 99;
return;
}
var sUrl="";
sUrl = "<%getWebLocation()%>";
sUrl += "Page=DEALHISTORY&";
sUrl += "Action=put&";
sUrl += "SubmitType=" + SubmitType + "&";
sUrl += "Dealtype=" + escape(javascript:GetElemValue(document.<%getPageName()%>_form.Dealtype)) + "&";
sUrl += "DealNumber=" + escape(GetElemValue(document.<%getPageName()%>_form.DealNumber)) + "&";
sUrl += "save_criteria_dh=" + escape(GetElemValue(document.<%getPageName()%>_form.save_criteria_dh)) + "&";
sUrl += "RefNo=" + escape(GetElemValue(document.<%getPageName()%>_form.RefNo)) + "&";
sUrl += "<%getCustomizedURLParameters()%>";//avis - generalize url customization
if (document.<%getPageName()%>_form.sortMethod != null)
   sUrl += "&sortMethod=" + javascript:GetRadioValue(document.<%getPageName()%>_form.sortMethod);
window.location=sUrl;
}
