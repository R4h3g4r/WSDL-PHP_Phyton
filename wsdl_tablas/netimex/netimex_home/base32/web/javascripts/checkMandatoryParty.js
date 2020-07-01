function checkMandatoryParty(Elem,baseElem,sType)
{
	if (Elem != null && baseElem != null && javascript:TrimIt(baseElem.value) == ""){
		javascript:checkMandatory(Elem,sType);	
	}else
		return;
}
