function chkNumOfDigitAfterComma(Elem,numDigitsAllowed){
	var str = javascript:GetElemValue(Elem);
	var numDigitsAfterComma = javascript:NumOfDigitAfterComma(str);
	if(numDigitsAfterComma > numDigitsAllowed){
		javascript:DisplayErrorMsg(Elem,'<%getError(NIM00019)%>' + numDigitsAllowed +".");
		return 1;
	}
	return 0;
}