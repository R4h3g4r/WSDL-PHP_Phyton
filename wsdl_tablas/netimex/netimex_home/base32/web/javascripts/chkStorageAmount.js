function chkStorageAmount()
{
 if (TrimIt(document.<%getPageName()%>_form.storage_amount.value)!="")
 //if (document.<%getPageName()%>_form.amount.value!="")
    {
      if ((eval(document.<%getPageName()%>_form.amount.value) < eval(document.<%getPageName()%>_form.storage_amount.value)))
	     {
	  javascript:DisplayErrorMsg(document.<%getPageName()%>_form.storage_amount, "<%getError(CMX00015)%>"); 
		  bErrorFound=true;
	     }
    }
}
