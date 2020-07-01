function checkEntityLength()
{
	var sTmp=document.<%getPageName()%>_form.EntityID.value;
	if (sTmp.length!=3)
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.EntityID, "<%getErrorMsg(NMX00076)%>");
}
