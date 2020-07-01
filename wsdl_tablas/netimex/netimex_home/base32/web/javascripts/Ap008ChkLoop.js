function Ap008ChkLoop(AmountStr)
{
    var CurrencyStr="";
    var number = 0;
    var sAction = 'N';
    var isCurrencyAsField = (document.<%getPageName()%>_form.currency != null);
    var isAmountAsText = (document.<%getPageName()%>_form.amount == 'text');
    
    if (isCurrencyAsField )
    {
	CurrencyStr = document.<%getPageName()%>_form.currency.value;
	x = document.Ap008.elements.length;
    }
    else
    {
	CurrencyStr = '<%getField(currency)%>';
    }
    
    
    if (CurrencyStr != "" )  
    {
	if (isCurrencyAsField )
	{
		for (i = 0; i < x; i++)
		{
			if (document.Ap008.elements[i].name == CurrencyStr)
			{
				number = javascript:NumOfDigitAfterComma(AmountStr);			
	        		if (number <= document.Ap008.elements[i].value)
				{				   
					return 1;
				}
				else
				{
				   if (isAmountAsText)
				   {
					document.<%getPageName()%>_form.amount.focus();
				   }
					return 0;
				}	        
      			} 
     		}
	}
	else if (document.<%getPageName()%>_form.number_of_digits_after_comma != null)
	{
		number = javascript:NumOfDigitAfterComma(AmountStr);
		if (number <= document.<%getPageName()%>_form.number_of_digits_after_comma.value)
		{
			return 1;
		}
		else
		{
			if (isAmountAsText)
			{
				document.<%getPageName()%>_form.amount.focus();
			}
			return 0;
		}
	}
        //it mean not exist in hidden form or in number_of_digits_after_comma => NumOfDigitAfterComma = 2
        number = javascript:NumOfDigitAfterComma(AmountStr);
        if (number > '2')
        {				   
     		return 0;
        }
    }
    else
    {
	number = javascript:NumOfDigitAfterComma(AmountStr);			
	if (number <= 2)
	{				   
		return 1;
	}
	else
	{
		if (isAmountAsText)
		{
			document.<%getPageName()%>_form.amount.focus();
		}
		return 0;
	}	        
    }
    return 1;
}
//////////////////////////////////////////////////////////////////
