function getValueFromString(colName,SendString)
{
	var allFieldsArr;
	var sFieldValue = "";
	var sFieldName;
	var nextElement;
	allFieldsArr = SendString.split("|");
	
	for(var i=0; i < allFieldsArr.length; i++){
		nextElement = allFieldsArr[i];
		sFieldName = nextElement.substring(0,nextElement.indexOf("="));
		if(sFieldName == colName){
			sFieldValue = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
			break;
		}
	}
	return sFieldValue;
}