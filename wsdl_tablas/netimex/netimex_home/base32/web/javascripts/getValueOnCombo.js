function getValueOnCombo(field){
	if (field != null)
	{
            var i = field.selectedIndex;
            if(i != -1){
                return field.options[i].value;
            }
            return("");
	}
	else
	    return("");
}
