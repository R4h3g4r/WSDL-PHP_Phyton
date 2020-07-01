function chkInstallments()
{
   javascript:chkInstSum();
	var sErrorFound;
      sErrorFound = "";

		if (!(javascript:bIsNum(document.<%getPageName()%>_form.box_installments[0].value)))
			sErrorFound="num";
		else
		if (!(javascript:bIsNumFixedLength(document.<%getPageName()%>_form.box_installments[0].value,13)))
			sErrorFound="length";
		else
	      if (!(javascript:Ap008ChkLoop(document.<%getPageName()%>_form.box_installments[0].value)))
			sErrorFound="digit";
		        
		switch (sErrorFound) 
		{ 
		   case "num" : 
				bErrorFound=false;
				javascript:DisplayErrorMsg(document.<%getPageName()%>_form.installments, "<%getError(NMX00059)%>  <%getError(GNR00001)%>   <%getError(NMX00062)%>");
		      break; 
		   case "length" : 
				bErrorFound=false;
				javascript:ErrorMsg(document.<%getPageName()%>_form.installments, "<%getError(NMX00059)%>");
		      break; 
		   case "digit" : 
				bErrorFound=false;
				javascript:ErrorMsg(document.<%getPageName()%>_form.installments, "<%getError(NMX00062)%>");
		      break; 
		} 
}
