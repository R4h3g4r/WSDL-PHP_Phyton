function validateTemplateText() {
var elem = document.<%getPageName()%>_form.txtTemplateText;
var template = javascript:GetElemValue(document.<%getPageName()%>_form.txtTemplateText);

var e = template.split("%");
var valid = "true";
// the email text box is empty;
if(e=="") return 0;
//check all variable names in template text
for (index=1;index<e.length;index+=2){
	//compare to all allowed variable names
	for(i=1; i < 10 ;i++){
		optionName = eval('document.<%getPageName()%>_form.lblVarHidden'+i);
		optionValue = GetElemValue(optionName);
		if(optionValue == null || optionValue == ""){
			DisplayErrorMsg(elem,'<%getErrorMsg(NMO00009)%>\n');
			return 1;
		}
		if(e[index]==optionValue){
			break;
		}
	} 
	
}
	return 0;
}

