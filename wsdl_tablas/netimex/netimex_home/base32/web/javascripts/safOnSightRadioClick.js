function safOnSightRadioClick(radioClicked){
	if(radioClicked[0].checked){ //time is checked
		clearInstallments();
	}else{
		clearTimeFields();
	}
	document.<%getPageName()%>_form.payment_date.value="";
}

function clearInstallments(){
	var fromCtrl = document.<%getPageName()%>_form.Installments;
	if(fromCtrl){
		for (i = 0; i < fromCtrl.options.length; i++) 
		{
			fromCtrl.options[i].value = "";
			fromCtrl.options[i].text = "";	 
		}
	}
}
function clearTimeFields(){
	document.<%getPageName()%>_form.due_date.value="";
	document.<%getPageName()%>_form.tenor_days.value="";
}