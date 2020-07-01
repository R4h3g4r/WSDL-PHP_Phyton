 function getRefNo()  {
    var formName;
    var sref;
     formName="<%getPageName()%>" + "_form";
 if (document.forms[0].Invoices.options.length>0 )
   {
      var sSendString=document.forms[0].Invoices.options[0].text;
             var sref=sSendString.substring(0,sSendString.indexOf('|'));
          document.form[0].reference_no.value=Trim(sref);
      }
      alert(sref);
  }
