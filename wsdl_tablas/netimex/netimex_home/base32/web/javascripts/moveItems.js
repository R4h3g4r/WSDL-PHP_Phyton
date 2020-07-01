function moveItems(fromCtrl, toCtrl) {
	javascript:addItemsNew(fromCtrl, toCtrl);
	javascript:removeItemsNew(fromCtrl);javascript:addValueToHidden(toCtrl);
}
function addValueToHidden(fieldName){

	var hiddenString = "";
	var hiddenField=fieldName.split("_",1) //split using blank space as delimiter
	var hiddenElem = eval(<%getForm()%> +".H"+hiddenField[0]);


	if(hiddenElem !=null){
		var Elem = eval(<%getForm()%>+"."+hiddenField[0]+"_TO");
		for(var i=0; i < Elem.length; i++){
		hiddenString += Elem.options[i].value + "|";
		}	
		hiddenElem.value = hiddenString ;	
	}

}
