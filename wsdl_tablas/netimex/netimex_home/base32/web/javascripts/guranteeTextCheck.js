function guranteeTextCheck()
{
	var guranteeText = new Array(<%getTextNames()%>);
	var str = javascript:GetElemValue(document.<%getPageName()%>_form.guarantee_type);
	if (str != "")
	{
		for(var i = 0; i < guranteeText.length; i++)
		{
			var hiddenFieldValue = eval("document.<%getPageName()%>_form.h" + guranteeText[i] + ".value");

			if(hiddenFieldValue == str)
			{
				javascript:checkMandatory(eval("document.<%getPageName()%>_form." + guranteeText[i]),"Text");
			}
			else if ((eval("document.<%getPageName()%>_form." + guranteeText[i]+".value") !="") && (hiddenFieldValue != ""))
			{
  				javascript:DisplayErrorMsg(eval("document.<%getPageName()%>_form." + guranteeText[i]),'<%getErrorMsg(NMX00162)%>');
			}
		}
	}
}
