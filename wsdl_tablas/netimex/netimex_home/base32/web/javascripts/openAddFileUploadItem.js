function openAddFileUploadItem(Elem,NextPage,mode,document_id,width,height,additional_url_parameters)
{
	var index = -1;
	var params;
	var fieldName = Elem.name;
	var combo = document.<%getPageName()%>_form.file_type;
	var comboSelection = combo.options[combo.selectedIndex].value;
	var docType = combo.options[combo.selectedIndex].text;
	//check that a document type has been selected
	if(docType == undefined || docType == ""){
		DisplayErrorMsg(Elem,'<%getErrorMsg(NIM00010)%>\n');
		return;
	}
	//check that a document type is not already in the selected list.
	if(chkDocTypeAlreadySelected(Elem,docType) == 1){
		DisplayErrorMsg(Elem,'<%getErrorMsg(NIM00009)%>\n');
		return;
	}
	var upload = document.<%getPageName()%>_form.col2_checkbox.checked;
	var sUrl = "<%getWebLocation()%>Page=<%getPageName()%>&mode="+mode+"&Action=get&PageNext="+NextPage+"&document_id="+comboSelection+"&doc_name="+docType+"&upload="+upload;
	index = javascript:getSelectItemIndex(Elem,mode);
	var win;
	if(index > -1){
		if (additional_url_parameters != null && additional_url_parameters.length > 0)
			sUrl += additional_url_parameters;
		//avis - generalize url customization
		javascript:openNewWindow(sUrl+ "<%getCustomizedURLParameters()%>",'DisplayWindow','top=0,left=0,menubar=no,scrollbars=yes,status=no,width='+width+',height='+height);
	}
}

function chkDocTypeAlreadySelected(Elem,docType){
	var status = 0;
	var i = 0;
	
	for(i=0; i<Elem.options.length; i++){
		var selectionText = Elem.options[i].text;
		var selectedDocType = selectionText.substring(0,selectionText.indexOf('|'));
		selectedDocType =  Trim(selectedDocType);
		if(selectedDocType == docType){
			status = 1;
			break;
		}
	}
	return status;
}

