function PrintRefNo()
{
   var refNo;
	refNo = "<%getGenRefNo()%>";
	genRefNumber = refNo;
	if(document.<%getPageName()%>_form.gen_ref_num != undefined){
   if (document.<%getPageName()%>_form.gen_ref_num.checked)
   {
     document.<%getPageName()%>_form.reference_no.value = refNo;
     document.<%getPageName()%>_form.gen_ref_num.focus();
   }
   else
   {
      if (  document.<%getPageName()%>_form.reference_no.value !="")
      {
        document.<%getPageName()%>_form.reference_no.value="";
      }

   }
  }

}
