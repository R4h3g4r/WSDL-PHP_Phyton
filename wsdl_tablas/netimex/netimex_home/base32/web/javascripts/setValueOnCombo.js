function setValueOnCombo(text, comboElement){
  var option_found = false;
  for( i=0; i<comboElement.options.length; i++ ){
    if ( comboElement.options[i].value == text){
      comboElement.selectedIndex = i;
      option_found = true;
    }
  }
  if (option_found == false){
    comboElement.selectedIndex = 0;
  }

}
