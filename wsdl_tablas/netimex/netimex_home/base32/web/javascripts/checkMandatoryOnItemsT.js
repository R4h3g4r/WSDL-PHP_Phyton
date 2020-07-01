function checkMandatoryOnItemsT(Elem)
{
	var index = javascript:getSelectItemIndex(Elem,"N");
	if(index < 1)
	{
		javascript:DisplayErrorMsg(Elem,Elem.name+" must contain at list one line")
	}
}
