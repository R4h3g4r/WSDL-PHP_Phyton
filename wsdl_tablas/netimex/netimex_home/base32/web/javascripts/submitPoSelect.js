function submitPoSelect(ButtonName)
{ 
	
	//document.PO_CRITERIA_form.SubmitType.value = ButtonName;
	//document.PO_CRITERIA_form.submit();
	
	var isChecked = false;   
	
	var sUrl = "";
	sUrl = "<%getWebLocation()%>";
	sUrl += "Page=PO_SELECT_ITEMS&";
	sUrl += "Action=get&";
	sUrl += "PageNext=PO_SELECT_ITEMS&";
	var sRefNo="";
	var strAllRrefNo = document.<%getPageName()%>_form.allPoRefNoHide.value;
	if (strAllRrefNo.length > 0)
	{
		var arrAllRefNo = strAllRrefNo.split("|");
		var arrLen = arrAllRefNo.length-1;
		for(var i=0;i<=arrLen-1;i++)
		{
			var e = eval("document."+"<%getPageName()%>"+"_form."+"poTablecol0row" + (i+1));
			if (e.type == 'checkbox' && e.checked == true)
			{	
				var tmp = arrAllRefNo[i]+"|";
				sRefNo += tmp;
				if(isChecked == false)
				{
					isChecked = true;
				}
			}
		}
		if (!isChecked)
		{
			alert("<%getError(NMX00077)%>");
		}
		else
		{
			sUrl += "PARAMETERS="+ sRefNo;
			window.location=sUrl+"<%getCustomizedURLParameters()%>";//avis - generalize url customization;
		}
	}
}