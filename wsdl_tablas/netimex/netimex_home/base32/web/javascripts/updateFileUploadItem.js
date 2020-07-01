function updateFileUploadItem()
{
	var combo = document.<%getPageName()%>_form.file_type;
	var comboSelection = combo.options[combo.selectedIndex].text;
	var checkboxSelection = document.<%getPageName()%>_form.col2_checkbox;
	var toCtrl = document.<%getPageName()%>_form.Attachments;
	var i=toCtrl.selectedIndex;
	if (i==-1) 
	{
		DisplayErrorMsg(toCtrl,'<%getErrorMsg(NIM00008)%>\n');
		return;
	}
	if(checkboxSelection == undefined)
	{
		return;
	}
	//if the document type is updated, check the document type is not already in the list	
	var selectionText = toCtrl.options[toCtrl.selectedIndex].text;
	var selectedDocType = selectionText.substring(0,selectionText.indexOf('|'));
	selectedDocType =  Trim(selectedDocType);
	if(comboSelection!=selectedDocType && chkDocTypeAlreadySelected(toCtrl,comboSelection) == 1 ){
		DisplayErrorMsg(toCtrl,'<%getErrorMsg(NIM00009)%>\n');
		return;
	}
	var tmp=toCtrl.options[i].text;
	var upload = "N";
	var valueString = new String(tmp);
	var temp = new Array();
	temp = valueString.split('|');
	
	//var indexOfPipe = valueString.indexOf('|');
	//var indexOfLastPipe = valueString.lastIndexOf('|');
	//var indexStartFileExt;
	//for(indexStartFileExt = indexOfLastPipe-1; valueString.charAt(indexStartFileExt) != '|'; indexStartFileExt--){}
	//var fileExt = valueString.substr(indexStartFileExt+1, indexOfLastPipe-indexStartFileExt-1);
	//var fileId =  valueString.substring(indexOfLastPipe+1,valueString.length);
	var fileExt = Trim(temp[2]);
	var fileId = temp[3];
//	alert("fileId="+fileId);
//	alert("fileExt="+fileExt);
//	if (indexOfPipe != -1)
//	{
//		tmp = valueString.substr(0, indexOfPipe);
//	}
//	else{
//		return;
//	}
	tmp = comboSelection;
   	toCtrl.options[i].selected=false;
   	
	var fileTypeSize = tmp.length;
   	for(j = fileTypeSize; j < 50; j++){
   		tmp+= " ";
   	}
   	
  	
	if(checkboxSelection == undefined || checkboxSelection.checked == true){
		upload = "Y";	
		try{
    	    //validation for file types that were selected by system admin as supported for upload.
				//this is a subset of general group of file types that are supported by NetImex
				<%chkAttachTypes()%>
		}catch(e){
			//javascript:DisplayErrorMsg(toCtrl, "<%getError(NIM00006)%>");			
			return;
		}
	}
   	tmp+= "|" + upload + "  |  " + fileExt+" |"+fileId+"|";
//   	alert(tmp);
   	toCtrl.options[i] = new Option(tmp);
	
}
	