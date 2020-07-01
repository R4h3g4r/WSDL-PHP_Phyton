function ChkDocAndTerms()
{
	var ret
	CheckIfZero(document.<%getPageName()%>_form.documents);
	if (ChkAp092doc()<0){
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.documentsOrg, "<%getErrorMsg(NMX00038)%>");
	}
	ret = ChkAp092term();
	if (ret != true){
		javascript:DisplayErrorMsg(ret, "<%getErrorMsg(NMX00037)%>");
	}
	ret = ChkAp027();
	if (ret != true){
	DisplayErrorMsg(ret, "<%getErrorMsg(NMX00036)%>");
	} 
}
///////////////////////////////////////////////////////////////////////////////////
//************************************************************
// CheckIfZero(str)
//
// Michel Zohar	  13.4.99
//
// Check if there is a zero in the javascript grid string.
//************************************************************
function CheckIfZero(elem)
{
	var tempstr;
	var tempstr2;
	var counter;
	var pipe,flag;
	flag=false;
	counter = 0;
	if(typeof(elem.value) == "string") {
		tempstr2 = elem.value;
		pipe = 1;
		while(pipe != -1) {
			counter++;
			pipe = tempstr2.indexOf("|");
			if(pipe == -1)
				tempstr = tempstr2;
			else {
				tempstr = tempstr2.substring(0,pipe);
				tempstr2 = tempstr2.substring((pipe + 1),tempstr2.length); 
			}
	        
			if(counter == 1){
				flag=false; 
		   continue;
			 }
			if(counter == 4){  counter = 0; }
			if (Trim(tempstr) == "0") {
			    if( flag==true){
					javascript:DisplayErrorMsg(document.<%getPageName()%>_form.documentsOrg, "<%getError(NMX00028)%>");
				break;
				}
				else {flag=true};
			}
		}
	}
}

//////////////////////////////////////////////////////////////////////////////////
