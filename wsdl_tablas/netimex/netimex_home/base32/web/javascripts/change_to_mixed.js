
function change_to_mixed()
{
  formName= "<%getPageName()%>" + "_form";
  var formParam = eval("document." + formName);
  formParam.signature_level.selectedIndex=5;
}
