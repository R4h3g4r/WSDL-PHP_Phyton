function updatePoItem(Elem,NextPage,mode)
{
	/* the version with BCV - keyid functionality*/
	var index = -1;
	var params;
	var fieldName = Elem.name;
	var sUrl = "<%getWebLocation()%>Page=<%getPageName()%>&mode="+mode+"&Action=get&PageNext="+NextPage;
	index = javascript:getSelectItemIndex(Elem,mode);
	if(index > -1){
		params = javascript:getRowParams(fieldName,index);
		sUrl += params;
		sUrl += "<%getElemName()%>=" + fieldName + "&";
		sUrl += "<%getLineNo()%>=" + index + "&";
		sUrl += "<%getCustomizedURLParameters()%>";//avis - generalize url customization
		javascript:openNewWindow(sUrl,'DisplayWindow','menubar=yes,scrollbars=yes,status=no,width=755,height=360');
		
	}
}
