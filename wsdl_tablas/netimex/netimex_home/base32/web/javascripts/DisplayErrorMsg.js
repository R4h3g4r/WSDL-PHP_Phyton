function DisplayErrorMsg(Elem,sText)
{
	var bDisplayAlert=true;
	var isMinNS4 = (navigator.appName.indexOf("Netscape") >= 0 && parseFloat(navigator.appVersion) >= 4) ? 1 : 0;
	var isMinIE4 = (document.all) ? 1 : 0;
	//alert("isMinNS4="+isMinNS4);
	//alert("isMinIE4="+isMinIE4);
	if (!isMinNS4 && !isMinIE4){
		window.alert("Browser type not supported");
		return 0;
	}

	if (iErrorStatus!=99) bDisplayAlert=false;
	iErrorStatus=bstatus;
	  //  FOCUS_Element=Elem;
	if ( bDisplayAlert)
	   {
			if(isMinIE4 || (isMinNS4 && GLOBAL_PARAMETER_ON_SUBMIT))
				window.alert(sText);
	 if (Elem.type != 'hidden')
		Elem.focus();
	if (Elem.type == 'textarea')
		Elem.select();
	   }

}
