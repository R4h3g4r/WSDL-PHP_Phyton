function CheckAll_bulkSign(sElemName, nElements)
{
  for (var i=0; i < document.<%getPageName()%>_form.elements.length; i++)
  {
    var e = document.<%getPageName()%>_form.elements[i];

    if (e.name != eval("'" + sElemName + "'") && e.name != 'sortMethod' && e.type != 'radio')
    { 
        e.checked = eval("document.<%getPageName()%>_form."+ sElemName +".checked");
    }
  }
  CalcSum(document.<%getPageName()%>_form.currency.value, nElements);
}	//CheckAll_bulkSign(..)
