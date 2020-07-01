function deleteItemAndFile(Elem,mode){
	var index = -1;
	index = getSelectItemIndex(Elem,mode);
	if(index > -1){
		javascript:deleteItemsFromHidden(Elem,index);
		javascript:deleteItemsFromTable(Elem,index);
		index++;
		//remove file path from FileUpload field according to line number
		var fileElem = eval("window.document.<%getPageName()%>_form." + "FileUpload" + index);
		javascript:deleteFileUpload(fileElem);
	}
}
