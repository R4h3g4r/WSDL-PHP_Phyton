function updateItem(ElemName,SendString,lineNo)
{
	var separatedStrings;
	separatedStrings = javascript:getSeparatedData(SendString)
	javascript:updateItemHidden(ElemName,separatedStrings[1],lineNo);
	javascript:updateItemTable(ElemName,separatedStrings[0],lineNo);
}
