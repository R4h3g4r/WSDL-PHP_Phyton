function openUpdatePoItem(Elem,NextPage,mode)
{
	var index = -1;	index = Elem.selectedIndex;
	var fieldName = Elem.name;	
	if(index > -1){		var params = javascript:getRow(fieldName,index);		var paramsArr = params.split("|");
		var name,nextElement;
		var value = "";
		for (var i=0; i < paramsArr.length; i++){
			nextElement = paramsArr[i];
			name = nextElement.substring(0,nextElement.indexOf("="));
			if (name == "item_id"){
				value = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
				break;
			}
		}		if (value == ""){			//alert("There are no items in this Purchase Order!");			alert("<%getError(POM00007)%>");
			return;		}	}	else{
		//alert("Please select one of the elements!");		alert("<%getError(NMX00077)%>");
		return;	}
	//javascript:openUpdateItem(Elem,NextPage,mode);	
	javascript:updatePoItem(Elem,NextPage,mode);	
}