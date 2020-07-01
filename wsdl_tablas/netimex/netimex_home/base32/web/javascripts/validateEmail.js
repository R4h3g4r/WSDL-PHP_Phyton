function validateEmail(emails) {

if (emails==null) return;
if (GetElemValue(emails).length>500) {
	DisplayErrorMsg(emails,'<%getErrorMsg(NMO00013)%>');
	return 1;	
}
var ok = "1234567890qwertyuiop[]asdfghjklzxcvbnm.@-_QWERTYUIOPASDFGHJKLZXCVBNM";
var e = GetElemValue(emails).split(",");

// the email text box is empty;
if(e=="") return 0;

for (index=0;index<e.length;index++){
	for(i=0; i < e[index].length ;i++){
		if(e[index].length > 50){
			DisplayErrorMsg(emails,'<%getErrorMsg(NMO00011)%>\n' + e[index]+ '\n<%getErrorMsg(NMO00012)%>');
			return 1;
		}
		if(ok.indexOf(e[index].charAt(i))<0){ 
			DisplayErrorMsg(emails,'<%getErrorMsg(NMO00004)%>');
			return 1;
		}	
	} 

	if (document.images) {	
		re = /(@.*@)|(\.\.)|(^\.)|(^@)|(@$)|(\.$)|(@\.)/;
		re_two = /^.+\@(\[?)[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		if (!e[index].match(re) && e[index].match(re_two)) {
			//return 0;
					
		}else{
			DisplayErrorMsg(emails,'<%getErrorMsg(NMO00004)%>');
			return 1;	
		}
		
	}
}// end of for
	return 0;
}

