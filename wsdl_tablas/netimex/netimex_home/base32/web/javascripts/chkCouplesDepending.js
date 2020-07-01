
function chkCouplesDepending(fieldOne , fieldTwo){
	if(fieldOne==null || fieldTwo==null){
		alert ('one of the fields are not defind');
		return;
	}
	var fieldOneValue = fieldOne.value;
	var fieldTwoValue = fieldTwo.value;	
	if (TrimIt(fieldTwoValue) != ''){
		if(TrimIt(fieldOneValue) == ''){
			DisplayErrorMsg(fieldOne,"the two fields must be at association")
		}
	}		
	else if (TrimIt(fieldOneValue) != ''){
		if(TrimIt(fieldTwoValue) == ''){
			DisplayErrorMsg(fieldTwo,"the two fields must be at association")
		}
	}
	else
		return true;	
}
