function DisplayMsg(mess) {
	IE4 = document.all;
   (IE4) ? makeMsgBox("Netimex Message",mess,4,0,0,0) : alert(mess);
}


