function CheckCorrectBulkTransForSign()
{
  if (document.<%getPageName()%>_form.SubmitType.value != "SignButton")
	return;
  var isChecked = false;
  var isCorrect = true;
  var isExpiry = false;
  var value = "";
  var valArray;
  var sElemName = "<%getPageParametr(CHECKBOX_NAME)%>";
  var flag = false;
  var checkBoxName = "";
  var allExpiryRef=" ";
  
  for (var i=0;i<document.<%getPageName()%>_form.elements.length;i++)
  {
    var e = document.<%getPageName()%>_form.elements[i];
    var fname = e.name;
    if (fname !='sortMethod' && fname.indexOf("col") > 0 && fname.substring(0,fname.indexOf("col")) == sElemName && document.<%getPageName()%>_form.elements[i].checked ){
        isChecked = true;
	  value = document.<%getPageName()%>_form.elements[i].value;
	  valArray = value.split("<%getUnprintableSymbolInsteadComa()%>");
	  if ( valArray != null && valArray.length > 12 ){
		if ( valArray[12] != "Yes" ){
			isCorrect = false;
			break;
		}
		if (!javascript:chkExpiry_Date_Bulk(valArray[14])){
			isExpiry = true;
			checkBoxName = fname;
			if (allExpiryRef != "")
			{
				allExpiryRef+='\n';
			}
			allExpiryRef+=valArray[4];
		}
	  }
    }
  }
  if (!isChecked){
	GLOBAL_PARAMETER_ON_SUBMIT = 1
	javascript:DisplayErrorMsg(eval("document.<%getPageName()%>_form."+sElemName+"col0row0"),"<%getErrorMsg(NMX00035)%>");
	GLOBAL_PARAMETER_ON_SUBMIT = 0;
  }else{
	if (!isCorrect){
		GLOBAL_PARAMETER_ON_SUBMIT = 1
		javascript:DisplayErrorMsg(eval("document.<%getPageName()%>_form."+sElemName+"col0row0"),"<%getErrorMsg(NMX10007)%>");
		GLOBAL_PARAMETER_ON_SUBMIT = 0;
	}else 
	if (isExpiry){
		GLOBAL_PARAMETER_ON_SUBMIT = 1
		javascript:DisplayErrorMsg(eval("document.<%getPageName()%>_form."+checkBoxName),"<%getError(CMX20051)%>"+"  "+allExpiryRef);
		GLOBAL_PARAMETER_ON_SUBMIT = 0;
	}else{
		//document.<%getPageName()%>_form.SubmitType.value="SignButton";
		//document.<%getPageName()%>_form.submit();
		return;
	}
  }
}
