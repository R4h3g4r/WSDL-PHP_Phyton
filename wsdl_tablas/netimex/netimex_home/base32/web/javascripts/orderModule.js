function orderModule(down, col) 
{
  sl = document.<%getPageName()%>_form[col].selectedIndex;
  if (sl != -1 && document.<%getPageName()%>_form[col].options[sl].value > "") {
    oText = document.<%getPageName()%>_form[col].options[sl].text;
    oValue = document.<%getPageName()%>_form[col].options[sl].value;
    if (document.<%getPageName()%>_form[col].options[sl].value > "" && sl > 0 && down == 0) {
      document.<%getPageName()%>_form[col].options[sl].text = document.<%getPageName()%>_form[col].options[sl-1].text;
      document.<%getPageName()%>_form[col].options[sl].value = document.<%getPageName()%>_form[col].options[sl-1].value;
      document.<%getPageName()%>_form[col].options[sl-1].text = oText;
      document.<%getPageName()%>_form[col].options[sl-1].value = oValue;
      document.<%getPageName()%>_form[col].selectedIndex--;
    } else if (sl < document.<%getPageName()%>_form[col].length-1 && document.<%getPageName()%>_form[col].options[sl+1].value > "" && down == 1) {
      document.<%getPageName()%>_form[col].options[sl].text = document.<%getPageName()%>_form[col].options[sl+1].text;
      document.<%getPageName()%>_form[col].options[sl].value = document.<%getPageName()%>_form[col].options[sl+1].value;
      document.<%getPageName()%>_form[col].options[sl+1].text = oText;
      document.<%getPageName()%>_form[col].options[sl+1].value = oValue;
      document.<%getPageName()%>_form[col].selectedIndex++;
    }
  } else {
        window.alert ("Select one of the elements!"); 
  }
}
