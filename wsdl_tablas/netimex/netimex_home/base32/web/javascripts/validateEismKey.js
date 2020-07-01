function validateEismKey(eismKey) {
	if (eismKey==null) return;
	var e = GetElemValue(eismKey);
	re = /[0-9]/;
	for (index=0;index<e.length;index++){
		if (!e.charAt(index).match(re)) {
			DisplayErrorMsg(eismKey,'<%getErrorMsg(NIM00004)%>\n');
			return 1;
		}
	} 
	return 0;
}


