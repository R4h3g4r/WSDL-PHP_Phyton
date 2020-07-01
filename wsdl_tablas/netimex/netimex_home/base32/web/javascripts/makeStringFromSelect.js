function makeStringFromSelect(selectCtrl,SendStr) {
	var i;
	var tmp;
	var j = 0;
	var outlist = "";
	var arr;

	for (i = 0; i < selectCtrl.options.length; i++) {
		if (j > 0) {
					outlist = outlist + "|";
		}
   tmp=new String(selectCtrl.options[i].text);
   arr= tmp.split("|");
  outlist+=Trim(selectCtrl.options[i].value)+"|"+Trim(arr[1])+"|"+Trim(arr[2])+"|"+Trim(arr[0]);
		j++;
	}
  SendStr.value=outlist;
	return outlist;
}
