function checkMandatory(Elem,sType)
{
	if (Elem!=null && Elem.type != "hidden"){
		var sValue = javascript:GetElemValue(Elem);
			if ( ((parseFloat(sValue)==0 || sValue=="") && sType=="Numeric") || (javascript:Trim(sValue)=="" && sType!="") )	
				javascript:DisplayErrorMsg(Elem,'<%getErrorMsg(CMX20050)%>');
			else if (sValue=="") javascript:DisplayErrorMsg(Elem,'undefined error');
	}else return;
}
