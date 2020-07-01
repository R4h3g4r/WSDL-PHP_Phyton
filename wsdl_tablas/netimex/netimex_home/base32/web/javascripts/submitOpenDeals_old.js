function submitOpenDeals()
{
	var sopendeals;
	var date1, date2, time1, time2, amount1, amount2;
	var selectedIndex = document.<%getPageName()%>_form.open_type.selectedIndex;
        
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
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.open_type,"<%getErrorMsg(NMX00040)%>");
		}
		        
		if ((date1 != "" || date2 != "") && sopendeals!="L")
		{
		    javascript:DisplayErrorMsg(document.<%getPageName()%>_form.open_type,"<%getErrorMsg(NMX00032)%>");
		} 
		if ((time1 != "" || time2 != "") && (sopendeals!="C" && sopendeals!="F"))
		{
		    javascript:DisplayErrorMsg(document.<%getPageName()%>_form.open_type,"<%getErrorMsg(NMX00032)%>");
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
