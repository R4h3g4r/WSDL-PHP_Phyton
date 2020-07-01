function submitMOApprove(){	
	var nextStation = <%getThis(cmbNextStation)%>
	var nextEmail = <%getThis(cmbNextStationEmail)%>;
	//check if next station is chosen
	if(nextStation!= null && nextStation!="undefined" && !isValidMandatory(nextStation,"Combobox")){		
		return;
	}	
		
	var stationVal = GetElemValue(nextStation);
	if(stationVal!='stobo'){				
		//check if next station email is chosen
		if(nextEmail!= null && nextEmail!="undefined" && !isValidMandatory(nextEmail,"Combobox")){	
			return;
		}
	}
	if(!confirm("Are you sure you want to Approve this application?")){
		return;
	}
	document.<%getPageName()%>_form.Page.value="MO_APPROVE";
	document.<%getPageName()%>_form.submit();
	
}

