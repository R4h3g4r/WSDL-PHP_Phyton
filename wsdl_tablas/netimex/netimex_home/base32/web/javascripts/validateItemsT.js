function validateItemsT(iItemsT){
	for(i=0;i<iItemsT.length-1;i++){
		currentOption=iItemsT.options[i];
		currentText=TrimDepartment(currentOption.text);
		for(j=i+1;j<iItemsT.length;j++){
			compareOption=iItemsT.options[j];
			compareText=TrimDepartment(compareOption.text);
			if(currentText==compareText){
				DisplayErrorMsg(iItemsT,"<%getError(NMO00010)%>");
				return 1;
			}
		}
	}
	return 0;
}

function TrimDepartment(sText){
  var i=0;
  var depStr = new String(sText);
    while ((depStr.length-1>i) && (depStr.charAt(i)!="|"))
      i++;
    if (i!=0)
      depStr = depStr.substring(0,i);
    i=depStr.length-1;
    while ((i>0) && (depStr.charAt(i)==" " || depStr.charAt(i)==" " || depStr.charAt(i)==""))
    	i=i-1;
    depStr = depStr.substring(0,i+1);	
    if (depStr.length==0)
      {return ""}
    else
      {return depStr};
}