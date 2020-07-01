function AddRecipientsItem(Elem,next_page,mode,documentId,windowWidth,windowHeight){
	var line;
	var value;
	var col_name = "rid";
	var field_name = Elem.name;
	var maxLineNo = Elem.options.length;
	var result = "&" + "<%getExistedRidConstant()%>" + "=";
	var delim = "|";
	for(var Index = 0; Index < maxLineNo; Index++){
		line=javascript:getRow(field_name,Index);
		value = javascript:getValueFromString(col_name,line);
		result += value + delim;
	}
	javascript:openUpdateItem(Elem,next_page,mode,documentId,windowWidth,windowHeight,result);
}