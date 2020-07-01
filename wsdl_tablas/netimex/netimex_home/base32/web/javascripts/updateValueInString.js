function updateValueInString(colName,colNewValue,rowString)
{
	var allFieldsArr;
	var sFieldValue = "";
	var sFieldName;
	var nextElement;
	var delim = "|";
	var equal = "=";
	var updatedString = "";
	allFieldsArr = rowString.split(delim);
	
	for(var i=0; i < allFieldsArr.length; i++){
		nextElement = allFieldsArr[i];
		sFieldName = nextElement.substring(0,nextElement.indexOf("="));
		if(sFieldName == colName)
			sFieldValue = colNewValue;
		else
			sFieldValue = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
		updatedString += sFieldName + equal + sFieldValue + delim;
	}
	return updatedString;
}