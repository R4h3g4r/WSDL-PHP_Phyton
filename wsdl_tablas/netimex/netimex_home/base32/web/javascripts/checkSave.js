  function checkSaveButton(ButtonName){
     formName="<%getPageName()%>" + "_form";
     var dealtype="<%getDealType()%>";
     eval("document." + formName).SubmitType.value = ButtonName;

   if (ButtonName=="SaveButton"){
// only for Export
 if (dealtype.substring(0,1)=="1")
 {
 getRefNo();
 }
//ChkAp027();
    for (var i=0;i<document.forms.length;i++){
      for(var j=0;j<document.forms[i].elements.length;j++){
	var result = check(document.forms[i].elements[j]);
	if(result && result.length > 0){
	   errorType = result.substring(0,1);
	   if(errorType == "W" || errorType == "E"){
	    if(!confirm(result.substring(1,result.length))){
		document.forms[i].elements[j].focus();  
		return;
	    }
	   }
	   if(errorType == "F"){
	    alert(result.substring(1,result.length));
	    document.forms[i].elements[j].focus();      
	    return;
	   }
	}
      }
    }
    }
    else

    {
      if (ButtonName=="TemplateButton")
     {
     formName="<%getPageName()%>" + "_form";
     tempname=document.forms[0].reference_no.value  ;
     alert(tempname);
     }
    }
//     alert("submiting form");
     formName="<%getPageName()%>" + "_form";    
	eval("document." + formName).SubmitType.value = ButtonName;
//     alert("document." + formName);

     eval("document." + formName).submit();
}

	 function getRefNo()  {
    var formName;
    var sref;
     formName="<%getPageName()%>" + "_form";
 if (eval("document." + formName).Invoices.options.length>0 )
   {
      var sSendString=eval("document." + formName).Invoices.options[0].text;
	     var sref=sSendString.substring(0,sSendString.indexOf('|'));
	 eval("document." + formName).reference_no.value=Trim(sref);
      }
	}
