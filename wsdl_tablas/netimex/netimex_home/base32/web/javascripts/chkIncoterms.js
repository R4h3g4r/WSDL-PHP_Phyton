function chkIncoterms(){

	var incotermHash  = {<%getIncotermHash()%>};
	var incotermVal = javascript:GetElemValue(document.<%getPageName()%>_form.incoterm);
	var parameter_05 = javascript:GetElemValue(document.<%getPageName()%>_form.parameter_05);
	var leftSelect;
	if(document.<%getPageName()%>_form.documentsDocs != null){
		leftSelect = document.<%getPageName()%>_form.documentsDocs;
		var indexLeft = leftSelect.length;
		var chkDM=false;
		var result = incotermHash[incotermVal];

		if (result == 'Y'){
			for (var i=0 ;i<indexLeft;i++){
				var valID_Left = (document.<%getPageName()%>_form.documentsDocs.options[i].value);
				sub_Left = valID_Left.substr(0,3);
				var indexString = parameter_05.length;
				for (var j=0 ; j<=indexString ; j=j+3) {
					ID_string = parameter_05.substr(j,3);
					subID = ID_string.substr(0,3);
		        	    if (subID == sub_Left) {
						chkDM=true ;
						break;
					}
				}
				if (chkDM==true) 
					break;
			} 
			if (!chkDM)  {
				javascript:DisplayErrorMsg(document.<%getPageName()%>_form.incoterm, "<%getError(NMX00093)%>");
				return false;
			}
		}
	}
	
	return true;
}
