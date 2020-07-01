function getCurFieldInfArr(colName, allFieldsArr)
{
	var sFieldValueArr;
	var sFieldName;
	var nextElement;
	
	for(var i=0; i < allFieldsArr.length; i++){
		nextElement = allFieldsArr[i];
		sFieldName = nextElement.substring(0,nextElement.indexOf("="));
		if(sFieldName == colName){
			sFieldValue = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
			break;
		}
	}
	return sFieldValue.split(",");
}