function CodeDescription(textElement, comboElement)
{
  var option_found = false;
  textElement.value = textElement.value.toUpperCase();
  for( i=0; i<comboElement.options.length; i++ )
  {
    if ( comboElement.options[i].value == textElement.value)
    {
      comboElement.selectedIndex = i;
      option_found = true;
    }
  }
  if (option_found == false)
  {
    comboElement.selectedIndex = 0;
    textElement.value = "";
  }

  //SIGNATURES_BLK part:
//  if ("<%getPageName()%>_form" == "SIGNATURES_BLK_form")
//  {
//    CalcSum(textElement.value, <%getPageName()%>_form.nElements.value);
//  }
}
