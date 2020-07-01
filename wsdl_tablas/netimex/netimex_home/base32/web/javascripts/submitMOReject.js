function submitMOReject(){
	var isRMDefined = <%isRMDefinedForCustomer()%>;	
	
	var moc01 = document.<%getPageName()%>_form.MOC01;
	var moc02 = document.<%getPageName()%>_form.MOC02;
	var existMoc;
	if(moc01!= null && moc01!="undefined"){
		existMoc = moc01;
	}else{
		existMoc = moc02;
	}
	//check if mo comments 01 is defined
	if( !isValidMandatory(existMoc,"TextArea")){
		return;
	}	
	
	//raise warning in case there is no RM defined for this customer;
	if(isRMDefined==false){
		alert('<%getErrorMsg(NMO00006)%>');
	}
	if(!confirm("Are you sure you want to Reject this application?")){
		return;
	}
	
	document.<%getPageName()%>_form.Page.value="MO_REJECT";
	document.<%getPageName()%>_form.submit();
}

function isValidMandatory(Elem,sType)
{
	var valid=true;
	if (Elem!=null && Elem.type != "hidden"){
		var sValue = javascript:GetElemValue(Elem);
		if ( ((parseFloat(sValue)==0 || sValue=="") && sType=="Numeric") || (javascript:Trim(sValue)=="" && sType!="") ){
			javascript:DisplayErrorMsg(Elem,'<%getErrorMsg(CMX20050)%>');
			valid = false;
		}else if (sValue=="") javascript:DisplayErrorMsg(Elem,'undefined error');
	}
	return valid;
}