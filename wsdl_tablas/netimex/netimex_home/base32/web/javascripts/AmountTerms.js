//////////////////////////////////////////////////////////////////////////////////

function AmountTerms(Elem, sText) { // (rem 6)

	var sTmp = javascript:GetElemValue(Elem);
	var t1;
	var t3;
	var t4;
	if (document.<%getPageName()%>_form.vrid_amount_sum != null && document.<%getPageName()%>_form.vrid_amount_sum.type != "hidden" )     
		t1 = GetElemValue(document.<%getPageName()%>_form.vrid_amount_sum);
	else
		t1 = "";

	if (document.<%getPageName()%>_form.vrid_amount_prc_plus.type != "hidden")
		t3 =GetElemValue(document.<%getPageName()%>_form.vrid_amount_prc_plus);
	else
		t3 = "";
	if (document.<%getPageName()%>_form.vrid_amount_prc_minus.type != "hidden")
		t4 =GetElemValue(document.<%getPageName()%>_form.vrid_amount_prc_minus);
	else
		t4 = "";
	var fSum1 = (t1 + t3 +t4);
	if (sTmp == "2")
	{
	  if (t1!="" && (t3!="" ||t4!=""))
	  {
	   
	     javascript:DisplayErrorMsg(Elem, "<%getError(nmx00046)%>");
	   
	  }
	}
        
	if (sTmp == "2" && fSum1 == ""){
	    javascript:DisplayErrorMsg(Elem, "<%getError(cmx20010)%>");
		if (document.<%getPageName()%>_form.vrid_amount_sum != null)
			javascript:checkMandatory(document.<%getPageName()%>_form.vrid_amount_sum, "Numeric");
		else
			javascript:checkMandatory(document.<%getPageName()%>_form.vrid_amount_prc_plus, "Numeric");
	}  
	else if (sTmp != "2" && fSum1 != "")
	 {
	    	if (document.<%getPageName()%>_form.vrid_amount_sum != null && javascript:GetElemValue(document.<%getPageName()%>_form.vrid_amount_sum)!=""){ 
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.vrid_amount_sum, "<%getError(nmx00010)%>"); 
		}
		else if (GetElemValue(document.<%getPageName()%>_form.vrid_amount_prc_plus)!=""){ 
			DisplayErrorMsg(document.<%getPageName()%>_form.vrid_amount_prc_plus, "<%getError(nmx00010)%>"); 
		}else { 
			DisplayErrorMsg(document.<%getPageName()%>_form.vrid_amount_prc_minus, "<%getError(nmx00010)%>"); 
		}
	 }
    

}
//////////////////////////////////////////////////////////////////////////////////
