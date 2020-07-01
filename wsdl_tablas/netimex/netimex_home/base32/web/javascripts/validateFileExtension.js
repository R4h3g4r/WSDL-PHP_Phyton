function validateFileExtension(fileExtension) {
	if (fileExtension==null) return;
	var e = GetElemValue(fileExtension);

	//check input length
	if (e.length>4){
		DisplayErrorMsg(fileExtension,'<%getErrorMsg(NIM00002)%>');
		return 1;	
	}
	re = /[a-zA-Z0-9@_]/;
	for (index=0;index<e.length;index++){
		if (!e.charAt(index).match(re)) {
			DisplayErrorMsg(fileExtension,'<%getErrorMsg(NIM00002)%>\n');
			return 1;
		}
	} 
	return 0;
}


