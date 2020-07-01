function CheckBulkTransDelete()
{
  //var formName;
  //formName= "<%getPageName()%>" + "_form";
  var sElemName = "<%getPageParametr(CHECKBOX_NAME)%>";
  var flag = false;
  for (var i=0;i<document.<%getPageName()%>_form.elements.length;i++)
  {
    var e = document.<%getPageName()%>_form.elements[i];
    var fname = e.name;
    if (fname !='sortMethod' && fname.indexOf("col") > 0 && fname.substring(0,fname.indexOf("col")) == sElemName ){
        flag = (flag || document.<%getPageName()%>_form.elements[i].checked);
    }
  }
   if (flag){
	if (confirm("<%getErrorMsg(NMX01001)%>")) {
		document.<%getPageName()%>_form.SubmitType.value="DeleteButton";
		document.<%getPageName()%>_form.submit();
	}
   return;
   }else{
	GLOBAL_PARAMETER_ON_SUBMIT = 1
	javascript:DisplayErrorMsg(eval("document.<%getPageName()%>_form."+sElemName+"col0row0"),"<%getErrorMsg(NMX00061)%>");
	GLOBAL_PARAMETER_ON_SUBMIT = 0;
   }
	
}
