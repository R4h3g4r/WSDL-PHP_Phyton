function NumberFixed(Elem,iNum,iFrac){

	if (javascript:bIsNum(Elem.value) && !(javascript:bIsNumFixed(Elem.value,iNum,iFrac))) {
		javascript:ErrorMsg(Elem, "<%getError(NMX00059)%>");
	}
} /* End of NumberFixed function */

