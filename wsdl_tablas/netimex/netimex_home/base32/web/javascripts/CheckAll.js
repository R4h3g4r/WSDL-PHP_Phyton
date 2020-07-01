function CheckAll(sElemName)
{
  var formName;
  formName= "<%getPageName()%>" + "_form";
  var fname;
  for (var i=0;i<document.<%getPageName()%>_form.elements.length;i++)
  {
    var e = document.<%getPageName()%>_form.elements[i];
    fname = e.name;
    if (fname != eval("'"+sElemName+"'") && fname !='sortMethod' && fname.indexOf("col") > 0 && fname.substring(0,fname.indexOf("col")) == sElemName.substring(0,sElemName.indexOf("col")) )
    //alert (e.name);    
        e.checked = eval("document.<%getPageName()%>_form."+ sElemName+".checked");
    
  }
}