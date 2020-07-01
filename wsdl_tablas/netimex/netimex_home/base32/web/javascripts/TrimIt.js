function TrimIt(sText){
  var i=0;
  var DocIdStr = new String(sText);
    while ((DocIdStr.length-1>i) && (DocIdStr.charAt(i)==" "))
      i++;
    if (i!=0)
      DocIdStr = DocIdStr.substring(i,DocIdStr.length-1-i);
    i=DocIdStr.length-1;
    while ((i>0) && (DocIdStr.charAt(i)==" "))
      i=i-1;
    if (i!=DocIdStr.length-1)
      DocIdStr = DocIdStr.substring(0,i+1);
    if (DocIdStr.length==0)
      {return ""}
    else
      {return DocIdStr};
}

