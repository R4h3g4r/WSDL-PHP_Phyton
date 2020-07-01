function chkAttach()
{
	var idx;
	var filename;
	var errStr="";
	var fileExt="";
	
	
	filename=document.<%getPageName()%>_form.FileUpload.value;
	fileExt=filename.substr(filename.lastIndexOf(".")+1);
	if (filename == undefined || filename == "" ) 
	{
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.FileUpload, "<%getError(NIM00006)%>");
		return;
	}else{
		try{
			if(document.<%getPageName()%>_form.upload != undefined &&
			        document.<%getPageName()%>_form.upload.value != "true"){
			        //check if file is supported By NetImex (not only for upload, but for preview)
			        <%chkSupportedFileType()%>
			}
			else{
				//validation for file types that were selected by system admin as supported for upload.
				//this is a subset of general group of file types that are supported by NetImex
				<%chkAttachTypes()%>
			}
			document.<%getPageName()%>_form.submit();
		}catch(e){
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.FileUpload, "<%getError(NIM00006)%>");			
			return;
		}
	}
	javascript:lockButton();
	return true;
}
