function setImagingUploadVisibility(){

	if(document.GENERAL_PARAMS_form.imaging_enable.checked == true){
   		document.GENERAL_PARAMS_form.imaging_upload.hidden = false;
   		document.GENERAL_PARAMS_form.imaging_upload.disabled = false;
   	}
   	else{
   		document.GENERAL_PARAMS_form.imaging_upload.checked = false;
   		document.GENERAL_PARAMS_form.imaging_upload.hidden = true;
   		document.GENERAL_PARAMS_form.imaging_upload.disabled = true;
   	}

}