function getNextPage(sUrl, sElemName)
{
	var formName;
	var sErrorMessage;
	var e;
	var fname;
	var isChecked;
	var smethod
	if (document.<%getPageName()%>_form.sortMethod != null && document.<%getPageName()%>_form.sortMethod[1].checked)
	{ smethod='D';}
	else 
	{ smethod='A';}
	if(smethod != undefined){
		sUrl = sUrl+"&sortMethod="+smethod;
	}
	try{
		if(document.<%getPageName()%>_form.SortField != undefined && document.<%getPageName()%>_form.SortField.value != undefined){
			if(document.<%getPageName()%>_form.SortField.value != ""){
				sUrl = sUrl+"&Sort="+document.<%getPageName()%>_form.SortField.value;
			}
		}
	}catch(e){}
	
	formName= "<%getPageName()%>" + "_form";
	isChecked = false;
	sErrorMessage = "<%getError(NMX00170)%>";
	

	for (var i=0;i<document.<%getPageName()%>_form.elements.length;i++)
	{
		e = document.<%getPageName()%>_form.elements[i];
		fname = e.name;
		if (fname != eval("'"+sElemName+"'") && fname !='sortMethod' && fname.indexOf("col") > 0 && fname.substring(0,fname.indexOf("col")) == eval("'"+sElemName+"'")){
			isChecked = document.<%getPageName()%>_form.elements[i].checked;
			if (isChecked)
				break;		
		}
	}
	if (isChecked){
		if (!confirm(sErrorMessage))
			return;
	}
	window.location=sUrl;
}
