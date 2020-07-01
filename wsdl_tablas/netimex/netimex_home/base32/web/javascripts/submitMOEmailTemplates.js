function submitMOEmailTemplates(){	

	if(checkMandatoryLanguage(document.<%getPageName()%>_form.cmbLanguage, "Language field") == 1){
		return;
	}
	document.<%getPageName()%>_form.Action.value="get";
	document.<%getPageName()%>_form.Page.value="MO_EMAIL_TEMPLATES_DEF";
	document.<%getPageName()%>_form.submit();	
	
}

function checkMandatoryLanguage(Elem,sType)
{
	if (Elem!=null && Elem.type != "hidden"){
		var sValue = javascript:GetElemValue(Elem);
			if ( ((parseFloat(sValue)==0 || sValue=="") && sType=="Numeric") || (javascript:Trim(sValue)=="" && sType!="") ){
				javascript:DisplayErrorMsg(Elem,'<%getErrorMsg(CMX20050)%>');
				return 1;	
			}
			else if (sValue=="") {
				javascript:DisplayErrorMsg(Elem,'undefined error');
				return 1;
			}
	}else return 0;
}