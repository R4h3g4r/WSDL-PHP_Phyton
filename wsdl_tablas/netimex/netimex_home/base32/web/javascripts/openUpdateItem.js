function openUpdateItem(Elem,NextPage,mode,document_id,width,height,additional_url_parameters)
{
	/* the version with BCV - keyid functionality*/
	var index = -1;
	var params;
	var fieldName = Elem.name;
	var sUrl = "<%getWebLocation()%>Page=<%getPageName()%>&mode="+mode+"&Action=get&PageNext="+NextPage+"&document_id="+document_id;
	
	var maxLinesAllowed = "";
	if(additional_url_parameters == undefined || additional_url_parameters.length == 0){
		maxLinesAllowed = 99;
	}else{
		var sUrlParams = new String(additional_url_parameters);
		var maxLinesIndex = sUrlParams.indexOf('&maxLines=');
		if(maxLinesIndex < 0){
			maxLinesAllowed = 99;
		}else{
			var temp = new Array();
			temp = sUrlParams.split('&');
			for(i = 0; i < temp.length; i++){
				if(temp[i].indexOf('maxLines') == 0){
					var start = temp[i].indexOf('=') + 1;
					var end   = temp[i].length;
					maxLinesAllowed = temp[i].substring(start,end);
					maxLinesAllowed = parseInt(maxLinesAllowed);
					break;
				}
			}
			if(maxLinesAllowed == ""){
				maxLinesAllowed = 99;
			}
		}
	}
	
	if(Elem.length >= maxLinesAllowed){
			javascript:DisplayErrorMsg(Elem, '<%getErrorMsg(NIM00014)%>' + maxLinesAllowed + " lines.");
	}else{
	
		index = javascript:getSelectItemIndex(Elem,mode);
		var win;
		if(index > -1){
			if (additional_url_parameters != null && additional_url_parameters.length > 0)
				sUrl += additional_url_parameters;
			params = javascript:getRowParams(fieldName,index);
			sUrl += params;
			sUrl += "<%getElemName()%>=" + fieldName + "&";
			sUrl += "<%getLineNo()%>=" + index + "&";
			sUrl += "<%getCustomizedURLParameters()%>";//avis - generalize url customization
			javascript:openNewWindow(sUrl,'DisplayWindow','top=0,left=0,menubar=no,scrollbars=yes,status=no,width='+width+',height='+height);
		}
	}
}




