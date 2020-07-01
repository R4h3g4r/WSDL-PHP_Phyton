function CalcSum(currency, nElements)
{
	if (document.<%getPageName()%>_form.nElements.value <= 0)
	{
		return;
	}

	document.<%getPageName()%>_form.SumTotal.value = '';
	if (currency == '')
	{
		return;
	}

	var nSum = 0;
	for ( var i=0, j = 1; i < nElements; i++, j++)
	{
		var checked = eval("document.<%getPageName()%>_form.MainTablecol0row" + j + ".checked");
		myString = new String(eval("document.<%getPageName()%>_form.MainTablecol0row" + j + ".value"))
		splitString = myString.split("<%getUnprintableSymbolInsteadComa()%>")
		if (splitString[8].toLowerCase() == currency.toLowerCase() && checked)
		{	
			var n = new Number(splitString[9]);
			nSum += n;
		}
	}
	document.<%getPageName()%>_form.SumTotal.value = nSum;
}	//CalcSum(currency, nElements)
