function getItemTotalAmount(ElemName,FieldName){
	var Elem = eval("window.document.<%getPageName()%>_form." + ElemName);
	var iLen = Elem.length;
	var fieldName;
	var fieldValue;
	var result = 0;
	for(k = 0; k < iLen; k++){
		var str=javascript:getRow(ElemName,k);
		var row = str.split("|");
		for(j = 0 ; j < row.length ; j++){
			fieldName = row[j].substring(0,row[j].indexOf('='));
			fieldValue = row[j].substring(row[j].indexOf('=')+1,row[j].length);
			if ( fieldName == FieldName ){
				result = result + parseFloat(fieldValue);
			}
		}

	}
	return result;
}