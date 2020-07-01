/////////16611/////////////////////////////////////////////////////////////////////////

function chkEarliest_shipment(Elem, sText) {
    var days_for_present=document.<%getPageName()%>_form.days_for_present.value;
	if (TrimIt(days_for_present)=="") 
	   {days_for_present=0;}
    //alert(daysElapsed(document.lc_form.tUDCexpiry_date.value,document.lc_form.tUDDlatest_shipment_date.value));
    if ((Elem != null && TrimIt(Elem.value)!=" " || TrimIt(document.<%getPageName()%>_form.latest_shipment_date.value)=="") && TrimIt(document.<%getPageName()%>_form.expiry_date.value)!="")
	{ 
	 if (Elem != null && daysElapsed(Elem.value, document.<%getPageName()%>_form.expiry_date.value) > 0){
		    javascript:DisplayErrorMsg(Elem, "<%getError(nmx00004)%>")
	  }
	else if (TrimIt(document.<%getPageName()%>_form.latest_shipment_date.value)!="") 
	{
        
    if (daysElapsed(document.<%getPageName()%>_form.latest_shipment_date.value, document.<%getPageName()%>_form.expiry_date.value) > 0){
		    javascript:DisplayErrorMsg(document.<%getPageName()%>_form.latest_shipment_date, "<%getError(nmx00058)%>")
	  }
	  else if (days_for_present > 0 ){
		   if(daysElapsed(document.<%getPageName()%>_form.expiry_date.value,document.<%getPageName()%>_form.latest_shipment_date.value) 
			> days_for_present){
		    javascript:ConfirmWarning(document.<%getPageName()%>_form.latest_shipment_date, "<%getError(cmx20019)%>");
		   }
                   if(daysElapsed(document.<%getPageName()%>_form.expiry_date.value,document.<%getPageName()%>_form.latest_shipment_date.value) 
			< days_for_present){
		    javascript:ConfirmWarning(document.<%getPageName()%>_form.latest_shipment_date, "<%getError(cmx20020)%>");
		   }
	  }
	}
    }
	if (Elem != null && TrimIt(Elem.value)!="" && TrimIt(document.<%getPageName()%>_form.latest_shipment_date.value)!="")
	{
	   if (daysElapsed(Elem.value, document.<%getPageName()%>_form.latest_shipment_date.value) > 0){
	    DisplayErrorMsg(Elem, "<%getError(nmx00003)%>")}
	}
} 


//////////////////////////////////////////////////////////////////////////////////
