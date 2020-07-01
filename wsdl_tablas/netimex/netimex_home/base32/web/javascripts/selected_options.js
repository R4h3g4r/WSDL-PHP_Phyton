function selected_options()
{  
  var confirm_flag = 0;
  var isNotFirst = 0;
   for (var i=0;i<(document.<%getPageName()%>_form.elements.length);i++)
   { 
    if (document.<%getPageName()%>_form.elements[i].type=='checkbox')
    {
     if (document.<%getPageName()%>_form.elements[i].checked==true && isNotFirst != 0)
     {
      confirm_flag = 1;
     }
     else
     {
      isNotFirst = 1;
     }
    }
   }
  if (confirm_flag ==1 )
  {
       //alert("submit");
       document.<%getPageName()%>_form.SubmitType.value='SelectButton';
       document.<%getPageName()%>_form.submit();
  }
  else
  {
       alert("<%getErrorMsg(NMX00035)%>"); 
  }
}
