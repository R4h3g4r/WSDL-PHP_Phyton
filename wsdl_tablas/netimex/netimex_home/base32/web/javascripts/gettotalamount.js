function gettotalamount(Elem) 
{
 
var char_symbol = '<%getDecimalSymbol()%>';

   var totalamount = TrimIt(GetElemValue(document.<%getPageName()%>_form.total_amount));
	totalamount = javascript:ReplaceInStr(totalamount,char_symbol,".");
    var sErrorFound;	
    var iNum = 13;
    var iFrac = 2;
     if (Elem != null && Elem.type != "hidden") 
    {
       if (Trim(GetElemValue(document.<%getPageName()%>_form.dec_amount)) != ""
           && Trim(GetElemValue(document.<%getPageName()%>_form.inc_amount)) != "") 
       {
            DisplayErrorMsg(Elem, "<%getError(NMX00067)%>");
            document.<%getPageName()%>_form.dec_amount.value = "";
            document.<%getPageName()%>_form.inc_amount.value = "";
            document.<%getPageName()%>_form.total_amount.value = document.<%getPageName()%>_form.amount.value;
       } 
       else 
       {	
            sErrorFound = "";
           // if (bIsNum(Elem.value))
            if ( bIsNum(Trim(GetElemValue(document.<%getPageName()%>_form.amount)))     &&
		         bIsNum(Trim(GetElemValue(document.<%getPageName()%>_form.inc_amount))) &&
		         bIsNum(Trim(GetElemValue(document.<%getPageName()%>_form.dec_amount)))    )
            {
                 sErrorFound = "isOk";
                 if (!(bIsNumFixedLength(Elem.value,iNum)))
                          sErrorFound="length";
                 else
                          if (!(javascript:Ap008ChkLoop(Elem.value)))
	                         sErrorFound="digit";
                 switch (sErrorFound) 
                 { 
	              case "length" : 
	                  bErrorFound=false;
	                  DisplayErrorMsg(Elem, "<%getError(NMX00059)%>");
	                  break; 
	              case "digit" : 
	                  bErrorFound=false;
	                  DisplayErrorMsg(Elem, "<%getError(NMX00062)%>");
	                  break; 
                 } 
            }
            else
            {
		totalamount = 0;
            }
            if (sErrorFound == "isOk")
            {
			var amount = ReplaceInStr(TrimIt(GetElemValue(document.<%getPageName()%>_form.amount)),char_symbol,"."); 					   
			var dec    = ReplaceInStr(TrimIt(GetElemValue(document.<%getPageName()%>_form.dec_amount)),char_symbol,".");
			var inc    = ReplaceInStr(TrimIt(GetElemValue(document.<%getPageName()%>_form.inc_amount)),char_symbol,".");
			var maxdigits = 0;

			
			if (amount == "" || amount == ".")
			{
				amount = "0";
			}
			if (dec == "" || dec == ".")
			{
				dec = "0";
			}
			if (inc == "" || inc == ".")
			{
				inc = "0";
			}
			if (amount != 0 && amount.indexOf(".") != -1)
			{
				maxdigits = amount.length - amount.indexOf(".");
			}
			if (inc != 0 && inc.indexOf(".") != -1)
			{
				var incdigits = inc.length - inc.indexOf(".");
				if (maxdigits < incdigits)
				{
					maxdigits = incdigits;
				}
			}
			if (dec !=0 && dec.indexOf(".") != -1)
			{
				var decdigits = dec.length - dec.indexOf(".");
				if (maxdigits < decdigits)
				{
					maxdigits = decdigits;
				}
			}
			if (maxdigits > 0)
			{
				var num1 = maxdigits * -1;
				var numpower1 = Math.pow(10,num1);
				var numpower2 = Math.pow(10,maxdigits);
			
				totalamount = (parseInt((parseFloat(amount) + parseFloat(inc) - parseFloat(dec) + (0.5 * numpower1)) * numpower2)) / numpower2;
			}
			else
			{
				totalamount = parseFloat(amount) + parseFloat(inc) - parseFloat(dec);
				
			}
            	    if (totalamount < 0 && Trim(GetElemValue(document.<%getPageName()%>_form.dec_amount)) != "") 
	     	    {
               	          DisplayErrorMsg(Elem, "<%getError(NMX00068)%>");
               		  document.<%getPageName()%>_form.dec_amount.value = "";
	      		  document.<%getPageName()%>_form.total_amount.value = document.<%getPageName()%>_form.amount.value;
            	    }
	    	    else
	       	    {
	     		  document.<%getPageName()%>_form.total_amount.value = ReplaceInStr(totalamount,'.',char_symbol);
	    	    }
            }
            else
            {
       		    document.<%getPageName()%>_form.total_amount.value = ReplaceInStr(totalamount,'.',char_symbol);
            }
        }
     }
}
