function openUpdatePoItem(Elem,NextPage,mode)
{
	var index = -1;
	var fieldName = Elem.name;
	if(index > -1){
		var name,nextElement;
		var value = "";
		for (var i=0; i < paramsArr.length; i++){
			nextElement = paramsArr[i];
			name = nextElement.substring(0,nextElement.indexOf("="));
			if (name == "item_id"){
				value = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
				break;
			}
		}
			return;
		//alert("Please select one of the elements!");
		return;
	//javascript:openUpdateItem(Elem,NextPage,mode);	
	javascript:updatePoItem(Elem,NextPage,mode);	
}