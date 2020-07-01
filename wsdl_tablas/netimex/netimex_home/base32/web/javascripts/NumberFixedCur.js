function NumberFixedCur(Elem, iNum, iFrac)
{
	var sErrorFound;
      sErrorFound = "";

		if (!(javascript:bIsNum(Elem.value)))
			sErrorFound="num";
		else
		if (!(javascript:bIsNumFixedLength(Elem.value,iNum)))
			sErrorFound="length";
		else
	      if (!(javascript:Ap008ChkLoop(Elem.value)))
			sErrorFound="digit";
		        
		switch (sErrorFound) 
		{ 
		   case "num" : 
				bErrorFound=false;
				javascript:DisplayErrorMsg(Elem, "<%getError(NMX00059)%> <%getError(GNR00001)%>    <%getError(NMX00062)%>");
		      break; 
		   case "length" : 
				bErrorFound=false;
				javascript:DisplayErrorMsg(Elem, "<%getError(NMX00059)%>");
		      break; 
		   case "digit" : 
				bErrorFound=false;
				javascript:DisplayErrorMsg(Elem, "<%getError(NMX00062)%>");
		      break; 
		} 

} //end of NumberFixedCur(..)

