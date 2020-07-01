function deleteItemsFromTable(Elem,index){
	for (var i=index; i < Elem.options.length; i++){
		if(i < Elem.options.length-1){
			Elem.options[i].text = Elem.options[i+1].text;
			Elem.options[i].value = Elem.options[i+1].value;
			Elem.options[i].selected = Elem.options[i+1].selected;
		}else{
			Elem.options[i] = null;		
		}
	}
}
