  function checkSignButton(ButtonName){
    for (var i=0;i<document.forms.length;i++){
      for(var j=0;j<document.forms[i].elements.length;j++){
        var result = check(document.forms[i].elements[j]);
        if(result && result.length > 0){
           errorType = result.substring(0,1);
           if(errorType == "W" ){
            if(!confirm(result.substring(1,result.length))){
		document.forms[i].elements[j].focus();	
              	return;
            }
           }
           if(errorType == "E" || errorType == "F"){
            alert(result.substring(1,result.length));
	    document.forms[i].elements[j].focus();	
            return;
           }
        }
      }
    }
// ---- old version ----
//     alert("submiting form");
//     document.IMPORTLC_form.submit();
// ---- new version by Uri Zeituni ----

	formName="<%getPageName()%>" + "_form";	
	eval("document." + formName).SubmitType.value = ButtonName;
//	alert("document." + formName);
	eval("document." + formName).submit();
  }
