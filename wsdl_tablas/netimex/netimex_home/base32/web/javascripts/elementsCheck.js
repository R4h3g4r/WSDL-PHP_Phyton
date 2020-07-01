function elementsCheck(elementType) // functionName)
{
var icnt;
 for (iCnt=0;iCnt<document.<%getPageName()%>_form.elements.length && iErrorStatus!=SEVERITY_FATAL && iErrorStatus!=SEVERITY_ERROR;iCnt++)
	if (document.<%getPageName()%>_form.elements[iCnt].type==elementType) 
		javascript:chkInvalidSwiftChar(document.<%getPageName()%>_form.elements[iCnt]);


		//eval(functionName+"(document.<%getPageName()%>_form."+document.<%getPageName()%>_form.elements[iCnt].name+")")
}
