function checkPassword(){
	var old_p = javascript:GetElemValue(document.<%getPageName()%>_form.old_user_password);
	var new_p = javascript:GetElemValue(document.<%getPageName()%>_form.new_user_password);
	var conf_p = javascript:GetElemValue(document.<%getPageName()%>_form.confirm_new_user_password);
	if (old_p == new_p)
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.new_user_password, "<%getError(NMX00178)%>");
	else
		if (new_p != conf_p)
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.new_user_password, "<%getError(NMX00180)%>");
}