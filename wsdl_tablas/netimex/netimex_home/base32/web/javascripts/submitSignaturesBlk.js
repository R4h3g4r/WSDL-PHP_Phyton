function submitSignaturesBlk(SubmitType)
{		 
  if (SubmitType == "Search")
  {
    var sUrl="";
    sUrl = "<%getWebLocation()%>";
    sUrl += "Page=SIGNATURES_BLK&";
    sUrl += "Action=put&";
    sUrl += "SubmitType=" + SubmitType + "&";

    sUrl += "transaction_name=" + escape(javascript:GetElemValue(document.<%getPageName()%>_form.transaction_name)) + "&";
    sUrl += "deal_type=" + escape(GetElemValue(document.<%getPageName()%>_form.deal_type)) + "&";
    sUrl += "deal_no=" + escape(GetElemValue(document.<%getPageName()%>_form.deal_no)) + "&";
    sUrl += "reference_no=" + escape(GetElemValue(document.<%getPageName()%>_form.reference_no)) + "&";
    sUrl += "currency=" + escape(GetElemValue(document.<%getPageName()%>_form.currency)) + "&";
    sUrl += "range_from=" + escape(GetElemValue(document.<%getPageName()%>_form.range_from)) + "&";
    sUrl += "range_to=" + escape(GetElemValue(document.<%getPageName()%>_form.range_to))+ "&";
    sUrl += "tran_origin_radio=" + escape(GetElemValue(document.<%getPageName()%>_form.tran_origin_radio))+ "&";
    sUrl += "user_id=" + escape(GetElemValue(document.<%getPageName()%>_form.user_id));
    sUrl +="<%getCustomizedURLParameters()%>";//avis - generalize url customization
    if (document.<%getPageName()%>_form.sortMethod != null)
    {
      sUrl += "&sortMethod=" + javascript:GetRadioValue(document.<%getPageName()%>_form.sortMethod);
    }
  // sUrl +="&random=" +Math.random();
    window.location=sUrl;
    return;
  }
 
  submitForm(SubmitType);  //SubmitType == "SaveButton"
}	//submitSignaturesBlk(SubmitType)


function submitForm(SubmitType)
{
  var isChecked = false;
  var sType;
  for (var i=0; i< document.<%getPageName()%>_form.elements.length; i++)
  {
    var e = document.<%getPageName()%>_form.elements[i];
    sType = e.type;
    if (sType == 'checkbox')
//    if (e.name != 'sortMethod')
    {
		if (e.checked)
		{
			isChecked = true;
			break;
		}
	}
  }
  
  if (!isChecked)
  {
	alert ("<%getErrorMsg(NMX00035)%>");
	return;
  }
  
  if (document.<%getPageName()%>_form.MainTablecol0row0.checked
	&& !confirm("<%getErrorMsg(NMX00063)%>"))
  {
			return;
  }

  document.<%getPageName()%>_form.Action.value = "put";
  document.<%getPageName()%>_form.SubmitType.value = SubmitType;
  document.<%getPageName()%>_form.submit();
}	//submitForm()
