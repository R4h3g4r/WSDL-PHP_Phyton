function DbTextComboBox_TextOnKey(textElement, comboElement){
	var option_found = false;
        var str1,numer;
	textElement.value = textElement.value.toUpperCase()
        numer=textElement.value.length;
        var prevSelectedIndex = comboElement.selectedIndex;
        for( i=0; i<comboElement.options.length; i++ ){
                if (comboElement.options[i].value.substring(0,numer)  == textElement.value){
			comboElement.selectedIndex = i;
			option_found = true;
			break;
		}
	}
        if ((option_found == false)||(textElement.value=="")){
		comboElement.selectedIndex = 0;
		textElement.value = ""
	}
        if(prevSelectedIndex != comboElement.selectedIndex){
                  submitHidden(comboElement,"code");
        }
}
