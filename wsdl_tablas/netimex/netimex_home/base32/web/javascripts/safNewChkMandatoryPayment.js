//checking if the radio group has a value - since it is mandatory.
function safNewChkMandatoryPayment(radioGroup){
	if(radioGroup){		
		var found_it; //initial value is null because we gave it no other value

		for (var i=0; i<radioGroup.length; i++)  { 
			if (radioGroup[i].checked)  {
				found_it = radioGroup[i].value; //set found_it equal to checked button's value
			} 
		}		
		if(found_it==null){
			DisplayErrorMsg(radioGroup[0],"<%getError(NMX00215)%>");
		}
	}
}