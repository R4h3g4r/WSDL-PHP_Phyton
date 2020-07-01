//////////////////////////////////////////////////////////////////////////////////

function chkExpiry_Date(Elem, sText) {
    var aString;
    var yearPosition=<%getYearPosition()%>;
    var inputDateFormat="<%Application(APPLICATION_INPUT_DATE_FORMAT)%>"; 
    if (!(javascript:bIsEmpty(Elem.value)))
    {
      if (Elem.value.length >= 8)
      {
        if (inputDateFormat.length < 10){
          aString = Elem.value.substring(0,2) +  Elem.value.substring(3,5) +  Elem.value.substring(6,8);
        }
        else{
         if (yearPosition == 1){
          aString = Elem.value.substring(0,4) +  Elem.value.substring(5,7) +  Elem.value.substring(8,10);
         }
         if (yearPosition == 2){
          aString = Elem.value.substring(0,2) +  Elem.value.substring(3,7) +  Elem.value.substring(8,10);
         }
         if (yearPosition == 3){
          aString = Elem.value.substring(0,2) +  Elem.value.substring(3,5) +  Elem.value.substring(6,10);
         }
        }
      if (javascript:allNumbers(aString ))
      {
	if ((javascript:daysElapsed('<%getCurDate()%>', Elem.value)) > 0){
		    javascript:DisplayErrorMsg(Elem, "<%getError(cmx00017)%>")
        }
      } 
      }
    } 
} 
//////////////////////////////////////////////////////////////////////////////////
