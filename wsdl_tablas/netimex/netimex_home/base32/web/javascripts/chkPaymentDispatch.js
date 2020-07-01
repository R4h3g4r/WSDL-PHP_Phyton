/////////////////////////////////////////////// chkPaymentDispatch
function chkPaymentDispatch(Elem)
{
	var recode_values = new Array(document.<%getPageName()%>_form.payment_method.length);
	var recode_values1 = new Array(document.<%getPageName()%>_form.payment_dispatch.length);
	
	for (var i = 0; i < document.<%getPageName()%>_form.payment_method.length; i++)
	{
		if (document.<%getPageName()%>_form.payment_method[i].value == "")
		{
			recode_values[i] = "";
		}
		else if (document.<%getPageName()%>_form.payment_method[i].value == "SFT")
		{
			recode_values[i] = "S";
		}
		else if (document.<%getPageName()%>_form.payment_method[i].value == "TLX")
		{
			recode_values[i] = "T";
		}
		else
		{
			recode_values[i] = "M";
		}
	}
	
	for (var i = 0; i < document.<%getPageName()%>_form.payment_dispatch.length; i++)
	{
		if (document.<%getPageName()%>_form.payment_dispatch[i].value == "S")
		{
			recode_values1[i] = "S";
		}
		else if (document.<%getPageName()%>_form.payment_dispatch[i].value == "T")
		{
			recode_values1[i] = "T";
		}
		else
		{
			recode_values1[i] = "";
		}
	}


	if (Elem.name == "payment_method")
	{
		var selPM = Elem[Elem.selectedIndex].value;
		var mustDispatchValue = recode_values[Elem.selectedIndex];
		//alert(mustDispatchValue);
		
		if (selPM != "")
		{
			for (var i = 0; i <= recode_values.length; i++)
			{
				for (var k = 0; k < document.<%getPageName()%>_form.payment_dispatch.length; k++)
				{
					if (document.<%getPageName()%>_form.payment_dispatch[k].value == mustDispatchValue)
					{
						document.<%getPageName()%>_form.payment_dispatch[k].selected = true;
						return;
					}
				}
			}
		}
	}
	else	//payment_dispatch
	{
		var pmValue = document.<%getPageName()%>_form.payment_method[document.<%getPageName()%>_form.payment_method.selectedIndex].value		
		if (pmValue  == "SFT")
		{
			for (var i = 0; i <= recode_values1.length; i++)
			{
				if (recode_values1[i] == "S")
				{
					document.<%getPageName()%>_form.payment_dispatch[i].selected = true;
					return;
				}
			}
		}
		else if (pmValue == "TLX")
		{
			for (var i = 0; i <= recode_values1.length; i++)
			{
				if (recode_values1[i] == "T")
				{
					document.<%getPageName()%>_form.payment_dispatch[i].selected = true;
					return;
				}
			}		
		}
	}
}	//chkPaymentDispatch(Elem)



