function checkForUniqueRid(){

	var rid_values = document.<%getPageName()%>_form.existedRid.value;
	var array_rid_values = rid_values.split("|");
	var cur_rid_value = document.<%getPageName()%>_form.rid.value;
	var array_rid_values_length = array_rid_values.length;
	var old_rid_value = document.<%getPageName()%>_form.curRid.value;
	cur_rid_value = cur_rid_value.toUpperCase();
	document.<%getPageName()%>_form.rid.value = cur_rid_value ;
	for(i = 0 ; i < array_rid_values_length; i++){
		if (array_rid_values[i] != "" && cur_rid_value == array_rid_values[i] && cur_rid_value != old_rid_value){
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.rid, "This RID value already exist !");
			break;
		}
	}
}