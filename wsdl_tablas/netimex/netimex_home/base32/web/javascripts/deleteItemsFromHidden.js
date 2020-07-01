function deleteItemsFromHidden(Elem,lineNo)
{
	var ElemName = Elem.name;
	var ElemHidden = eval("window.document.<%getPageName()%>_form." + ElemName + "_HIDDEN");
	var maxLineNo = Elem.options.length;
	var params;
	var newHiddenField = "";
	var startLine = "<%getStartLine()%>";
	var endLine = "<%getEndLine()%>";
	var sLineNo = "<%getLineNo()%>";
	var rowString = "";

	for(var j = 0, i = 0; j < maxLineNo; j++){
		if(j==lineNo){
			//newHiddenField += startLine + SendString + endLine;
		}else{
			rowString = javascript:getRow(ElemName,j);
			newHiddenField += startLine + javascript:updateValueInString(sLineNo,i++,rowString) + endLine;		
		}
	}
	ElemHidden.value = newHiddenField;
}
