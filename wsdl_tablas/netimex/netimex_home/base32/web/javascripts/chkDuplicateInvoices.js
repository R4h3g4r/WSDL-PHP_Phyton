//////////////////////////////////////////////////////////////////////////////////
function chkDuplicateInvoices(inv_Array)
{
    var rows;
    var tmp,i,k;
	 for(i=0;i<inv_Array.length-1;i++)
	  {
	for(k=i+1;k<inv_Array.length;k++)
		{
	if(inv_Array[i]==inv_Array[k]) 
	   {
		  javascript:DisplayErrorMsg(document.<%getPageName()%>_form.amount, "<%getError(CMX00019)%> (Invoice Grid line " + (k+1) + ")");
		  return false;
		}
			   
	   }
	}
	return true;

}
//////////////////////////////////////////////////////////////////////////////////

