var genRefNumber;

function SetFocus()
{
	if (document.<%getPageName()%>_form.reference_no!=undefined && <%isReferenceNoUppercased()%>)
	{
		var s = new String(document.<%getPageName()%>_form.reference_no.value);
		document.<%getPageName()%>_form.reference_no.value = s.toUpperCase();
	}	

	var refNo;
	if(genRefNumber!=null && genRefNumber.length>0)
		refNo = genRefNumber;
	else
		refNo = "<%getGenRefNo()%>";
		
	if (document.<%getPageName()%>_form.gen_ref_num!=null && document.<%getPageName()%>_form.gen_ref_num.checked)
	{
		document.<%getPageName()%>_form.reference_no.value = refNo;
		document.<%getPageName()%>_form.gen_ref_num.focus();
	}
	return;
}
