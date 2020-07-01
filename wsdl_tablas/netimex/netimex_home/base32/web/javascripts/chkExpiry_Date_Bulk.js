//////////////////////////////////////////////////////////////////////////////////

function chkExpiry_Date_Bulk(sDate) {
    var aString;
    var yearPosition=<%getYearPosition()%>;
    var inputDateFormat="<%Application(APPLICATION_INPUT_DATE_FORMAT)%>"; 
    var bResult = true;
    if (!(javascript:bIsEmpty(sDate)))
    {
      if (sDate.length >= 8)
      {
        if (inputDateFormat.length < 10){
          aString = sDate.substring(0,2) +  sDate.substring(3,5) +  sDate.substring(6,8);
        }
        else{
         if (yearPosition == 1){
          aString = sDate.substring(0,4) +  sDate.substring(5,7) +  sDate.substring(8,10);
         }
         if (yearPosition == 2){
          aString = sDate.substring(0,2) +  sDate.substring(3,7) +  sDate.substring(8,10);
         }
         if (yearPosition == 3){
          aString = sDate.substring(0,2) +  sDate.substring(3,5) +  sDate.substring(6,10);
         }
        }
      if (javascript:allNumbers(aString ))
      {
	if ((javascript:daysElapsed('<%getCurDate()%>', sDate)) > 0){
		    //javascript:DisplayErrorMsg(eval("document.<%getPageName()%>_form."+mainElem), "<%getError(cmx00017)%>");
		    bResult = false;
        }
      } 
      }
    } 
    return bResult;
} 
//////////////////////////////////////////////////////////////////////////////////
