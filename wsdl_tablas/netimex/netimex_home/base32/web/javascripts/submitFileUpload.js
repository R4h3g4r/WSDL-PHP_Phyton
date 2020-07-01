function submitFileUpload()
{
	var toCtrl = document.<%getPageName()%>_form.Attachments;
	var combo = document.<%getPageName()%>_form.file_type;
	var i = 0;
	var str = "";
	var j = 0;
	
	for(i=0; i <toCtrl.options.length; i++){
		//doc type + upload
		str+= toCtrl.options[i].text;


	}
	document.<%getPageName()%>_form.hattachments.value = str;
}