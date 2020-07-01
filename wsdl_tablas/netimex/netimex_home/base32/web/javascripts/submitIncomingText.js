function submitIncomingText(ButtonName)
{ 
	var isChecked = false;
	var checkBoxName = "<%getIncomingBlkTableName()%>";
	for (var i=0;i<document.<%getPageName()%>_form.elements.length;i++)
	{

		var e = document.<%getPageName()%>_form.elements[i];
  		var fname = e.name;
		
		if (fname !='sortMethod' && fname.indexOf("col") > 0 && fname.substring(0,fname.indexOf("col")) == checkBoxName && e.checked)
		{
			isChecked = true;
			break;
		}
	 
	}
	if (!isChecked)
	{
		javascript:DisplayErrorMsg(eval("document.<%getPageName()%>_form."+checkBoxName+"col0row0"),"<%getError(NMX00077)%>");
	}
	else
	{
     	   if (window.confirm("Are You Sure ?"))
      	   { 
			var formName;
			formName="<%getPageName()%>" + "_form";    
			eval("document." + formName).SubmitType.value = ButtonName;

			document.<%getPageName()%>_form.submit();
   
      	   }
	}
}
