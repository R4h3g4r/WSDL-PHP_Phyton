/////////////////////////////////////////////////////////
function ReplaceInStr(str,ch_in,ch_to){
	var index = 0;
	var ostr = new String(str);
        
	index = ostr.indexOf(ch_in);
	if (index > 0) {
		var left_str = ostr.substring(0,index);
		var right_str = ostr.substring(index+1,ostr.length);
		ostr = left_str + ch_to + right_str;
	      //  alert(ostr);
	}       
	return ostr;		        
}
/////////////////////////////////////////////////////////////
