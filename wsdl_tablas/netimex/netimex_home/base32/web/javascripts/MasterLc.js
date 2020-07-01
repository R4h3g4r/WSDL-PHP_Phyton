function MasterLc(Elem, sText) 
{ // (rem 23)
	if(!document.<%getPageName()%>_form.lc_advised_by_other.checked)
	{
		var sTmp = TrimIt((javascript:GetElemValue(document.<%getPageName()%>_form.lc_type)))
		if (sTmp == "2" || sTmp == "T" )
			checkMandatory(Elem, "CMX20050 displaying");
	}
}
