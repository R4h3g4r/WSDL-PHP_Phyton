//////////////////////////////////////////////////////////////////////////////////

function chkIfSightIsTime()
{    
var CurrentDate; 
var DueDate;
var TenorDays;
var DraftAfter;
var sGetSight=" ";

  CurrentDate = "<%getCurDate()%>"; 
  DueDate=document.<%getPageName()%>_form.due_date;
  TenorDays=document.<%getPageName()%>_form.tenor_days;
  DraftAfter=document.<%getPageName()%>_form.draft_after;
  sGetSight=javascript:GetSight();

  switch (sGetSight)
{
//if (GetSight=="Y")
  case "Y":
    if (!javascript:bIsEmpty((DueDate.value)) && DueDate.type != "hidden")
    {
       javascript:DisplayErrorMsg(document.<%getPageName()%>_form.due_date, "<%getError(nmx00005)%>");
       //bErrorFound=true; 
    }
    else{
	if (!bIsEmpty((TenorDays.value)) && TenorDays.type != "hidden")
	{
	   javascript:DisplayErrorMsg(document.<%getPageName()%>_form.tenor_days, "<%getError(nmx00005)%>");
	}
	else{
	    if (!bIsEmpty(javascript:GetElemValue(DraftAfter)) && DraftAfter.type != "hidden")
	    {
	       javascript:DisplayErrorMsg(document.<%getPageName()%>_form.draft_after, "<%getError(nmx00005)%>");
	    }
	}
    }
  //}
break;
 // if (GetSight=="N")
  //{
case "N":
  	// check if the fields are all hidden - credit swiss
  	if (DueDate.type != "hidden" || TenorDays.type != "hidden" || DraftAfter.type != "hidden")
  	{
		if (!bIsEmpty(DueDate.value)  && DueDate.type != "hidden")
		{
		//check due date with current day
 	
		if (daysElapsed(CurrentDate,javascript:TrimIt((DueDate.value))) > 0)
	     		{
			  javascript:DisplayErrorMsg(document.<%getPageName()%>_form.due_date, "<%getError(cmx20037)%>");
		
		 	 }
	  

			if (!bIsEmpty(TenorDays.value) && TenorDays.type != "hidden")
			{
				javascript:DisplayErrorMsg(document.<%getPageName()%>_form.due_date, "<%getError(CMX20033)%>");
			}
			else if (DraftAfter && !bIsEmpty(DraftAfter.value)  && DraftAfter.type != "hidden")
			{
				javascript:DisplayErrorMsg(document.<%getPageName()%>_form.due_date, "<%getError(nmx00006)%>");
			}
		}
		else if (DraftAfter && !bIsEmpty(DraftAfter.value) && DraftAfter.type != "hidden")
		{
			if (((!bIsEmpty(DueDate.value))&& DueDate.type != "hidden") || ((bIsEmpty(TenorDays.value)) && TenorDays.type != "hidden"))
			{
				javascript:DisplayErrorMsg(document.<%getPageName()%>_form.draft_after, "<%getError(nmx00006)%>");
			}       
		}
		else if (!bIsEmpty(TenorDays.value) && TenorDays.type != "hidden")
		{
			if ((!bIsEmpty(DueDate.value) && DueDate.type != "hidden") || (DraftAfter && bIsEmpty(DraftAfter.value) && DraftAfter.type != "hidden"))
			{
				if(!DraftAfter){
					javascript:DisplayErrorMsg(document.<%getPageName()%>_form.tenor_days, "<%getError(NMX00216)%>");
				}else{
					javascript:DisplayErrorMsg(document.<%getPageName()%>_form.tenor_days, "<%getError(nmx00006)%>");
				}
			}       
		}
		else
		{
			if(!DraftAfter){
				javascript:DisplayErrorMsg(document.<%getPageName()%>_form.tenor_days, "<%getError(NMX00216)%>");
			}else{
				javascript:DisplayErrorMsg(document.<%getPageName()%>_form.tenor_days, "<%getError(nmx00006)%>");
			}
		}
	}
  //}
	break;
case "I":
  
//  if (GetSight=="I")
 // {
	if (!bIsEmpty(DueDate.value) && DueDate.type != "hidden") 
	{
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.due_date, "<%getError(nmx00005)%>");
	}
	if (!bIsEmpty(TenorDays.value) && TenorDays.type != "hidden")
	{
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.tenor_days, "<%getError(nmx00005)%>");
	}       
  }
}

//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


