function fn_LineToLeft(toCtrl,boxO,boxC){
  var i=toCtrl.selectedIndex;
  var spaces = "";
  if (i==-1) {
    alert("Select one of the elements!");
  }else{
    if ((boxO.value<100) && (boxC.value<40)){
        tmp=toCtrl.options[i].text;
        var ii=tmp.indexOf('|');
        toCtrl.options[i].text=tmp.substring(0,ii);
        if (Trim(boxO.value)=="") {boxO.value=0}
        if (Trim(boxC.value)=="") {boxC.value=0}
        for(var j = boxO.value.length;j < 6;j++){
                spaces +=" ";

        }
        toCtrl.options[i].text+="|"+ Trim(boxO.value) + spaces + "|" + Trim(boxC.value);
    }
    boxO.value ="";
    boxC.value="";
  }
}

