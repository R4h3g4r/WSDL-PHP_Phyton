function getRowParams(FieldName,Index)
{
	var str=javascript:getRow(FieldName,Index);
	var row = str.split("|");
	var fieldName;
	var fieldValue;
	str="";
	for(i = 0 ; i < row.length ; i++){
		fieldName = row[i].substring(0,row[i].indexOf('=')+1);
		fieldValue = row[i].substring(row[i].indexOf('=')+1,row[i].length);
 		str+="&" + fieldName + escape(fieldValue);
	}
	return str;
}