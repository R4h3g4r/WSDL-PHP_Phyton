function submitPayAcpBlk(SubmitType)
{		 
  submitForm(SubmitType);  //SubmitType == "SaveButton"
}	//submitPayAcpBlk(SubmitType)


function submitForm(SubmitType)
{
  var isChecked = false;
  for (var i=0; i< document.<%getPageName()%>_form.elements.length; i++)
  {
    var e = document.<%getPageName()%>_form.elements[i];
    
    if (e.name != 'sortMethod' && e.name != 'discrepancy_bill')
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
