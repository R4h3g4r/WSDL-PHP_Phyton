function isCanPrint(field_value)
{ 
	var is_can_print = true;
	var tmp = "";
	var is_print_allow = "<%getIncomingBlkIsPrint()%>"
	var start = field_value.indexOf(is_print_allow);
	if (start > -1){
		start += is_print_allow.length;
		tmp = field_value.substring(start,field_value.length);
		tmp = tmp.substring(tmp.indexOf("'")+1,field_value.length);
		tmp = tmp.substring(0,tmp.indexOf("'"));
		if ("false" == tmp)
			is_can_print = false;
	}
	return is_can_print;
}

