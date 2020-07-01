function chkBankingCharges(compareElem){

	var res = true;
	if(compareElem != undefined && compareElem.options != undefined && compareElem.options.selectedIndex != undefined){
		var compareValue = compareElem.options[compareElem.options.selectedIndex].text;
		if(compareValue != undefined  && compareValue == "DDA Acount"){
			for(i = 1; i < 3; i++){
				var targetElem = eval("document.REMITTANCE_form.pay_item"+i);
				if(targetElem != undefined && targetElem.options != undefined && targetElem.options.selectedIndex != undefined){
				      res = false;
				      var targetValue = javascript:GetElemValue(targetElem);
				      if(targetValue != null && targetValue == compareValue){
				      		res = true;
				      		break;
				      }             
				}
			}
		}	
	}	
	if(res == false){
		javascript:DisplayErrorMsg(compareElem, '<%getErrorMsg(NIM00020)%>');
	}	
			
}