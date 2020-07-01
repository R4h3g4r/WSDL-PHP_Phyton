function setUrlEmail(){
	var sUrl="";
	
	if(eval(document.<%getPageName()%>_form.Language.value == "")||eval(document.<%getPageName()%>_form.Language.value == null))
	{
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.Language,"<%getError(CMX20050)%>");
		/*alert("This field must be fill !!");
		document.<%getPageName()%>_form.Language.focus();*/
		return;
	}

	
	
	sUrl = "<%getWebLocation()%>";
	sUrl += "Page=BANK_MENU&";
	sUrl += "Action=get&";
	sUrl += "PageNext=EMAILALERT_TEMPLATE&";
	sUrl += "language_selected=" + escape(javascript:GetElemValue(document.<%getPageName()%>_form.Language));
	sUrl +="<%getCustomizedURLParameters()%>";//avis - generalize url customization
	window.location=sUrl;

}



