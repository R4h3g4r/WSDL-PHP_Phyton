function CheckBulkTransPrint()
{
  var sElemName = "<%getPageParametr(CHECKBOX_NAME)%>";
  var flag = false;
  var checkBoxName = "";
  var url_param = "";
  var selected_row = "<%getSelectedRowsConst()%>";
  var spec_page_type = "<%getIsSpecialPageTypeConst()%>";
  var came_from = "<%getPageName()%>";
  for (var i=0;i<document.<%getPageName()%>_form.elements.length;i++)
  {
    var e = document.<%getPageName()%>_form.elements[i];
    var fname = e.name;
    if (fname !='sortMethod' && fname.indexOf("col") > 0 && fname.substring(0,fname.indexOf("col")) == sElemName && document.<%getPageName()%>_form.elements[i].checked){
        flag = true;
	  value = document.<%getPageName()%>_form.elements[i].value;
	  valArray = value.split("<%getUnprintableSymbolInsteadComa()%>");
	  if ( valArray != null && valArray.length > 1 ){
			url_param += fname.substring(fname.indexOf("row")+3,fname.length)+",";
	  }
    }

  }
	document.<%getPageName()%>_form.selected_rows.value=url_param;
   if (flag){
	var w=window.open('','Window_Title','alwaysRaised=yes,width=600,height=100,top=0,left=0,menubar=yes,toolbar=yes,location=yes,status=yes,scrollbars=yes,resizable=yes');
	w.focus();
	w.document.write('<html><head>');
	w.document.write('\n<script language="JavaScript">\n');
	w.document.write('\n function putData(){');
	w.document.write('\n var spec_page_type = "<%getIsSpecialPageTypeConst()%>";');
	w.document.write('\n document.form1.Page.value="<%getPageName()%>";');
	w.document.write('\n document.form1.came_from.value="<%getPageName()%>";');
	w.document.write('\n document.form1.selected_rows.value=top.opener.document.<%getPageName()%>_form.selected_rows.value;');
//	w.document.write('\n window.setTimeout("document.form1.submit()", 6000);');
	w.document.write('\n document.form1.submit();');		

	w.document.write('\n');
	w.document.write('\n}');
	w.document.write('\n<\/script>\n');
	w.document.write('\n</head>');


//	w.document.write('var count=0;');

	w.document.write("<body onLoad=\"putData()\">");
	w.document.write('<FORM Action="<%getWebLocation()%>" method="POST" name="form1">');
	w.document.write('\n<%getTitle(printing in progress,BULK_PRINT)%>');
	w.document.write('\n<input type = "hidden" name="Page">');
	w.document.write('\n<input type = "hidden" name="Action" value="get">');
	w.document.write('\n<input type = "hidden" name="Action" value="put">');
	w.document.write('\n<input type = "hidden" name="PageNext" value="BULK_PRINT">');
	//w.document.write('\n<input type = "hidden" name="selected_rows" >');
	w.document.write('\n<input type = "hidden" name="selected_rows" >');
	w.document.write('\n<INPUT type = "hidden" name="came_from">');
	w.document.write('\n<INPUT type = "hidden" name="isSpecialPageType" value="Y">');
	w.document.write('\n<INPUT type = "hidden" name="isPopup" value="true">');
	w.document.write('<%getCustomizedURLParameters()%>');
	w.document.write('\n</FORM>');
	w.document.write('\n</body>');
	w.document.write('</html>');
	w.document.close();
	//w.location='<%getWebLocation()%>?Page=BULK_SIGN_TRANS_PROCESS&Action=get&PageNext=BULK_PRINT&'+selected_row+'='+url_param+'&came_from='+came_from+'&'+spec_page_type+'=y';
   	return;
   }else{
	GLOBAL_PARAMETER_ON_SUBMIT = 1
	javascript:DisplayErrorMsg(eval("document.<%getPageName()%>_form."+sElemName+"col0row0"),"<%getErrorMsg(NMX00061)%>");
	GLOBAL_PARAMETER_ON_SUBMIT = 0;
   }
	
}
