function deleteUploadFileItem(){
	var index = -1;
	var Elem = document.<%getPageName()%>_form.Attachments;
	var i=Elem.selectedIndex;
	if (i==-1) 
	{
		DisplayErrorMsg(Elem,'<%getErrorMsg(NIM00008)%>\n');
		return;
	}
	var agree=confirm('<%getErrorMsg(NIM00011)%>\n');
	if (agree){
		index = javascript:getSelectItemIndex(Elem,"D");
		if(index > -1){
			javascript:deleteItemsFromTable(Elem,index);
		}	
	}else{
		return;
	}
	
	
	
	
}
