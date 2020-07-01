function chkImportDeclarationsItems(compareElem){
	var compareVal = GetElemValue(compareElem);
	var res = true;
	var importDeclaration = document.<%getPageName()%>_form.importDeclarItemsT;
	if(compareVal != undefined && compareVal.length > 0){
		if(compareVal != "IMP"){
			res = false;
		}
	}else{
		res = false;
	}
	//if payment reason is not Import
	if(res == false){
		//check ImportDeclaration is empty
		
		if(importDeclaration.length > 0){
			javascript:DisplayErrorMsg(compareElem, '<%getErrorMsg(NIM00012)%>');
		}
	}else{
		//if payment reason is Import - ImportDeclaration table is mandatory
		if(importDeclaration.length <1){
			javascript:DisplayErrorMsg(compareElem, '<%getErrorMsg(NIM00023)%>');
		}
		//validate unique ddi number
		if(importDeclaration.options != undefined &&
		  importDeclaration.options.innerText != undefined){
			var linesStr = importDeclaration.options.innerText;
			if(Trim(linesStr).length > 0){
				var array =linesStr.split("|");
				var DDIs = new Array();
				var j = 0;
				var i = 1;
				for(; i < array.length; i = i + 8){
					DDIs[j++] = array[i];
				}
				for(i = 0; i < DDIs.length - 1; i++){
					for(j = i + 1; j < DDIs.length; j++){
						if(DDIs[i] == DDIs[j]){
							javascript:DisplayErrorMsg(importDeclaration, '<%getErrorMsg(NIM00022)%>' + '\n(  DDI Number: '+DDIs[i]+')');
							return;
						}
					}
				}
			
			}
		}
	
	
	}
}