function on_submit_deal_history(dealtype,refno,dealno)
{
  var sNetimexType = "R"

  // Uri add for save criteria
  var save_criteria_checked;
  if (document.<%getPageName()%>_form.save_criteria_dh != null)
  	save_criteria_checked = document.<%getPageName()%>_form.save_criteria_dh.checked;
  else
  	save_criteria_checked = false;

  if (sNetimexType == "SA") 
  {
	if (dealtype.options[dealtype.selectedIndex].value=="")
	{
		// Uri add for save criteria
		if (save_criteria_checked != null && save_criteria_checked)
			return true;
		else
		{
			javascript:DisplayErrorMsg(dealtype,"<%getErrorMsg(NMX01004)%>");
			return false;
		}
	}
  }

  if ((dealtype.options[dealtype.selectedIndex].value=="" || (refno.value)=="") && (dealno.value)=="")
  {
  	// Uri add for save criteria
  	if (save_criteria_checked != null && save_criteria_checked)
		return true;
	else
	{
  		javascript:DisplayErrorMsg(refno,"<%getErrorMsg(NMX01005)%>");
		   return false;
	}
  }
  else 
      {return true;}
  
}

