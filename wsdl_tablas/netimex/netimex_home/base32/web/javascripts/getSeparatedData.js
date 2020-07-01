function getSeparatedData(SendString)
{
	var result = new Array();
	var allArray;
	var fName,fValue;
	var descriptName;
	var descriptValue;
	var descriptLen;
	var arrayIndex;
	var nextElement;
	var gridDataTmp = "";
	var hiddenData = "";
	var gridData = "";
	var separator = "|";
	var equal = "=";

	allArray = SendString.split(separator);
	descriptName = "<%getDescriptionIdentifire()%>";
	descriptLen = descriptName.length;

	for(arrayIndex = 0; arrayIndex < allArray.length; arrayIndex++){
		nextElement = allArray[arrayIndex];
		fName = nextElement.substring(0,nextElement.indexOf("="));
		fValue = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
		if (fName.length > descriptLen && fName.substring(fName.indexOf(descriptName),fName.length) == descriptName){
			gridDataTmp += fName.substring(0,fName.indexOf(descriptName))+ equal + fValue + separator;
		}else{
			hiddenData += fName + equal + fValue + separator;
		}
	}
	
	allArray = hiddenData.split(separator);
	for(arrayIndex = 0; arrayIndex < allArray.length; arrayIndex++){
		nextElement = allArray[arrayIndex];
		fName = nextElement.substring(0,nextElement.indexOf("="));
		fValue = javascript:getValueFromString(fName, gridDataTmp);
		if (fValue == "")
			fValue = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
		gridData += fName + equal + fValue + separator;
	}
	result[0] = gridData;
	//result[1] = hiddenData;
	result[1] = SendString;
	return result;
}
