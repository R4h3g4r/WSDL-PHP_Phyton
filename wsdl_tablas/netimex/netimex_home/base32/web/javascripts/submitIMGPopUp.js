function submitIMGPopUp()
{	
	var fileExtElm = document.<%getPageName()%>_form.fileExt;
	var fileExt;
	if(fileExtElm != undefined && fileExtElm.value != undefined){
		fileExt = fileExtElm.value;
	}
	var fileIDElm = document.<%getPageName()%>_form.fileID;
	var fileID;
	if(fileIDElm != undefined && fileIDElm.value != undefined){
		fileID = fileIDElm.value;
	}
	top.opener.newFileUploadItems(fileExt,fileID);
	window.close();

}
