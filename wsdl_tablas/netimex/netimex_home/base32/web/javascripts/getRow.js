function getRow(FieldName,Index)
{
	var hfName = FieldName+"_HIDDEN";
	var hfValue;
	var sLine="";
	var startLine = "<%getStartLine()%>";
	var endLine = "<%getEndLine()%>";
	
	hfValue = eval("document.<%getPageName()%>_form."+hfName+".value");
	for(i=0;hfValue.indexOf(startLine) > -1 && hfValue.indexOf(endLine) > -1 ;i++){
		if(i > Index)
			break;
		if(Index == i)
			sLine = hfValue.substring(startLine.length,hfValue.indexOf(endLine));		
		hfValue = hfValue.substring(hfValue.indexOf(endLine)+endLine.length,hfValue.length);
	}
	return sLine;
}