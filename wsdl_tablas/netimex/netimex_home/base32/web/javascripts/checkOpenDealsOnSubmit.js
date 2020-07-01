function checkOpenDealsOnSubmit()
{
	iErrorStatus=99;
	GLOBAL_PARAMETER_ON_SUBMIT = 1;
	var sopendeals;
	var date1, date2, time1, time2, amount1, amount2;
	var selectedIndex = document.<%getPageName()%>_form.open_type.selectedIndex;
	// Uri add for save criteria
	var save_criteria_checked;
	if (document.<%getPageName()%>_form.save_criteria_op != null)
  		save_criteria_checked = document.<%getPageName()%>_form.save_criteria_op.checked;
  	else
  		save_criteria_checked = false;
        
	sopendeals = document.<%getPageName()%>_form.open_type.options[selectedIndex].value;
	date1 = javascript:TrimIt(document.<%getPageName()%>_form.expiry_from.value);
	date2 = javascript:TrimIt(document.<%getPageName()%>_form.expiry_to.value);
	time1 = javascript:TrimIt(document.<%getPageName()%>_form.maturity_from.value);
	time2 = javascript:TrimIt(document.<%getPageName()%>_form.maturity_to.value);
	amount1 = javascript:TrimIt(document.<%getPageName()%>_form.amount_low.value);
	amount2 = javascript:TrimIt(document.<%getPageName()%>_form.amount_high.value);
        
	if ((date1 == "" || javascript:isDate(date1)!=false) && 
			 (date2 == "" || javascript:isDate(date2)!=false))
	{
		if (sopendeals == "")
		{
			if (save_criteria_checked != null && save_criteria_checked)
				return true;
			else
			{
				javascript:DisplayErrorMsg(document.<%getPageName()%>_form.open_type,"<%getErrorMsg(NMX00040)%>");
				return false;
			}
		}
		        
		if ((date1 != "" || date2 != "") && sopendeals!="L"  && sopendeals!="G")
		{
		    javascript:DisplayErrorMsg(document.<%getPageName()%>_form.open_type,"<%getErrorMsg(NMX00032)%>");
		    return false;
		} 
		if ((time1 != "" || time2 != "") && (sopendeals!="C" && sopendeals!="F"))
		{
		    javascript:DisplayErrorMsg(document.<%getPageName()%>_form.open_type,"<%getErrorMsg(NMX00032)%>");
		    return false;
		}
		if (javascript:isDate(time1)!=false || time1=="")
		{
		   if (javascript:isDate(time2)!=false || time2=="")
		   {
		      if (javascript:bIsNumFixed(amount1,13,2) || amount1=="")
		      {
			  if (javascript:bIsNumFixed(amount2,13,2) || amount2=="")
			  {
				return true;
			  }
		      }
		   }
		}
	  }
	  return false;
}
