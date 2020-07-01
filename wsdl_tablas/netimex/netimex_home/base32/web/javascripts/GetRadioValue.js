//////////////////////////////////////////////////////////////////////////////////

function GetRadioValue(Elem) { // This function retrun	the "value" of a radio group
	var j = Elem.length;
	var k = -1;
	var i = 0;
	var sResult="";
	for(i = 0; i < j; i++){
	    if(Elem[i].status)
	    {
			sResult = Elem[i].value;
			//alert(sResult);
			return sResult;
		} else if(Elem[i].defaultStatus)
		{
			k = i;
	    }
	} 
	sResult = (k >= 0) ? Elem[k].value : null;
	return sResult;
}
//////////////////////////////////////////////////////////////////////////////////
