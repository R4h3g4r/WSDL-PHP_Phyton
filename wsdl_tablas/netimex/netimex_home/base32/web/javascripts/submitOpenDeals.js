/* the version with BCV - keyid functionality*/
var openDealsCheckArray = new Array
(
	new Array ( ' ', 'C', 'N', 'G', 'L', 'F', 'M', 'P', 'S', 'B',  ''),
	new Array ('14', '1', '0', '0', '0', '1', '1', '1', '0', '0', '1'),
	new Array ('13', '1', '1', '0', '0', '1', '1', '1', '0', '0', '1'),
	new Array ('11', '1', '0', '0', '1', '1', '1', '1', '0', '0', '1'),
	new Array ('15', '1', '1', '0', '0', '1', '1', '1', '0', '0', '1'),
	new Array ('04', '1', '0', '0', '0', '1', '1', '1', '0', '0', '1'),
	new Array ('03', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1'),
	new Array ('02', '0', '0', '1', '0', '0', '1', '1', '0', '1', '1'),
	new Array ('01', '1', '0', '0', '1', '1', '1', '1', '1', '1', '1'),
	new Array ('20', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
	new Array ('22', '0', '0', '0', '0', '0', '1', '0', '1', '1', '1'),
	new Array ('52', '0', '0', '1', '0', '0', '1', '1', '0', '1', '1'),
	new Array ('33', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
	new Array (  '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1')
)

function submitOpenDeals(SubmitType)
{
	//BCV - keyid functionality
	var combinationCompatible =  javascript:checkCombinationCompatibility(
		document.<%getPageName()%>_form.open_type, 
		document.<%getPageName()%>_form.deal_type, 
		openDealsCheckArray);
	if (!combinationCompatible)
	{
		ErrorMsg(document.<%getPageName()%>_form.open_type, 
			"<%getErrorMsg(NMX00032)%>");
		iErrorStatus = 99;
		return;
	}

	if (!javascript:checkOpenDealsOnSubmit() || iErrorStatus != 99){
	iErrorStatus = 99;
	return;
	}
	var sUrl="";
	sUrl = "<%getWebLocation()%>";
	sUrl += "Page=OPEN_DEALS&";
	sUrl += "Action=put&";
	sUrl += "SubmitType=" + SubmitType + "&";
	sUrl += "open_type=" + escape(javascript:GetElemValue(document.<%getPageName()%>_form.open_type)) + "&";
	sUrl += "deal_type=" + escape(GetElemValue(document.<%getPageName()%>_form.deal_type)) + "&";
	sUrl += "expiry_from=" + escape(GetElemValue(document.<%getPageName()%>_form.expiry_from)) + "&";
	sUrl += "expiry_to=" + escape(GetElemValue(document.<%getPageName()%>_form.expiry_to)) + "&";
	sUrl += "currency=" + escape(GetElemValue(document.<%getPageName()%>_form.currency)) + "&";
	sUrl += "amount_low=" + escape(GetElemValue(document.<%getPageName()%>_form.amount_low)) + "&";
	sUrl += "maturity_from=" + escape(GetElemValue(document.<%getPageName()%>_form.maturity_from)) + "&";
	sUrl += "maturity_to=" + escape(GetElemValue(document.<%getPageName()%>_form.maturity_to)) + "&";
	sUrl += "amount_high=" + escape(GetElemValue(document.<%getPageName()%>_form.amount_high)) + "&";
	sUrl += "counter_party=" + escape(GetElemValue(document.<%getPageName()%>_form.counter_party)) + "&";
	sUrl += "counter_party_name=" + escape(GetElemValue(document.<%getPageName()%>_form.counter_party_name)) + "&";
	sUrl += "local_currency=" + escape(GetElemValue(document.<%getPageName()%>_form.local_currency))+ "&";
	sUrl += "save_criteria_op=" + escape(GetElemValue(document.<%getPageName()%>_form.save_criteria_op))+ "&";
	sUrl += "all_customers_op=" + escape(GetElemValue(document.<%getPageName()%>_form.all_customers_op)) + "&";
	sUrl += "<%getCustomizedURLParameters()%>";//avis - generalize url customization
	if (document.<%getPageName()%>_form.FilterButton_HIDDEN_MainTable != null)
		sUrl += "&FilterButton_HIDDEN_MainTable=" + escape(GetElemValue(document.<%getPageName()%>_form.FilterButton_HIDDEN_MainTable));

	if (document.<%getPageName()%>_form.sortMethod != null)
	   sUrl += "&sortMethod=" + javascript:GetRadioValue(document.<%getPageName()%>_form.sortMethod);
	window.location=sUrl;
}

