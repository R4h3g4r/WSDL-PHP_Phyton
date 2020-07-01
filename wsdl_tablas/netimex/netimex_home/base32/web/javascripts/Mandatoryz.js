function Mandatoryz(Elem, sDispalyText)
{
	var value = javascript:GetElemValue(Elem);
	if (javascript:bIsEmpty(value)) 
	{
		javascript:DisplayErrorMsg(Elem, '<%getErrorMsg(CMX20050)%>');
	}
}

