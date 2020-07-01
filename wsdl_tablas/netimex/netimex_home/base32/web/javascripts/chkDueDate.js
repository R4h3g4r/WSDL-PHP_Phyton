//////////////////////////////////////////////////////////////////////////////////

function chkDueDate()
{

   if(document.<%getPageName()%>_form.sight==undefined)
	{
		return true;
	}
 
   var igrid_amount;
    var DueDate,k;

    var CurrentDate;
   var sString,n;
    var inst_date=new Array();
	CurrentDate = "<%getCurDate()%>";
	sString = document.<%getPageName()%>_form.installments.value;
    sString =ReplaceInStr(sString,',',".");

    i=sString.indexOf('|');
    igrid_amount=0;
    n=0;

    while(i>0)
    {
		igrid_amount+=eval(javascript:Trim(sString.substring(0,i)));
		sString=sString.substring((i+1),sString.length);
		ii=sString.indexOf('|');
		sString=sString.substring((ii+1),sString.length);
		ii=sString.indexOf('|');  
		inst_date[n]=Trim(sString.substring(0,ii));
		 sString=sString.substring((ii+1),sString.length);
	    i=sString.indexOf('|');
	     n++;

    }
    for(k=0;k<n;k++)
	  {
	   DueDate=javascript:TrimItd(inst_date[k]);
	   if (DueDate!="")
	   {
	    if (javascript:daysElapsed(CurrentDate,DueDate) > 0)
	     {
		  javascript:DisplayErrorMsg(document.<%getPageName()%>_form.due_date, "<%getError(cmx20037)%>(Installments Grid)");
		  return false;
		 
		 }
	   }
      }
    return true;
}
//////////////////////////////////////////////////////////////////////////////////
