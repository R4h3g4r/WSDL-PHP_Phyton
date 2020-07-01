//---------------------------
function bIsNumFixedLength(str,iNum) {
var which=0;
var ilNum=0;
//var ilFrac=0;
var ostr = new String(TrimIt(str))
	for (var i = 0; i < ostr.length; i++) {
		var ch = ostr.substring(i, i + 1)
		if (ch=='<%getDecimalSymbol()%>'){
			if (which==1){
				return false;
			}else{
				which=1;
			}
		 }else{
			if (which!=1){
				ilNum++;
			}
		 }	 
	} 
	if (iNum<ilNum){
		Critical_Error=true;
		bErrorFound=true;
		return false;
	}
 return true;
}
//--------------------------
