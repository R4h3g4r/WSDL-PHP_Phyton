function checkShippingAmount(Elem)
{
     javascript:NumberFixedCur(Elem,12,3);
     if (Elem.value!="")
     {
	if ( parseFloat(Elem.value)==0 )
		javascript:DisplayErrorMsg(Elem,'<%getErrorMsg(CMX20050)%>');
     }
}
