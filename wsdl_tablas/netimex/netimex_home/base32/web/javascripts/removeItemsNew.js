function removeItemsNew(fromCtrl) {

 
	var i = 0;
	var j;
	var k = 0;
	var tmp=""
	var oText,oValue;
	var count_o_col=document.<%getPageName()%>_form[fromCtrl].length;
	while (i < (count_o_col - k))
	{
		if (document.<%getPageName()%>_form[fromCtrl].options[i].selected)
		{
			 document.<%getPageName()%>_form[fromCtrl].options[i] = null;
			k++;
		}
		else
		{
			i++;
		}
	}
		
}
