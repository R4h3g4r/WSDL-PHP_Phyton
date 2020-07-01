function updateItemHidden(ElemName,SendString,lineNo)
{
	var Elem = eval("window.document.<%getPageName()%>_form." + ElemName);
	var ElemHidden = eval("window.document.<%getPageName()%>_form." + ElemName + "_HIDDEN");
	var maxLineNo = Elem.options.length;
	var params;
	var newHiddenField = "";
	var startLine = "<%getStartLine()%>";
	var endLine = "<%getEndLine()%>";
	var isNewLine = true;
	for(var j = 0; j < maxLineNo; j++){
		if(j==lineNo){
			newHiddenField += startLine + SendString + endLine;
			isNewLine = false;
		}else{
			newHiddenField += startLine + getRow(ElemName,j) + endLine;		
		}
	}
	if (isNewLine)
		newHiddenField += startLine + SendString + endLine;
	ElemHidden.value = newHiddenField;
}