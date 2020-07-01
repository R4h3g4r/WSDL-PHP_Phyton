function deleteItems(Elem,mode){
	var index = -1;
	index = getSelectItemIndex(Elem,mode);
	if(index > -1){
		javascript:deleteItemsFromHidden(Elem,index);
		javascript:deleteItemsFromTable(Elem,index);
	}
}
