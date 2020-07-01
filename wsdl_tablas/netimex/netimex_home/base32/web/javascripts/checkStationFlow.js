function checkStationFlow(Elem,sType)
{
	if (Elem!=null && Elem.type != "hidden"){
		var sValueSta3 = javascript:GetElemValue(Elem);
		var sValueSta2 = GetElemValue(<%getThis(cmbStation2)%>);
		var sValueSta1 = GetElemValue(<%getThis(cmbStation1)%>);
		var sTransType = GetElemValue(<%getThis(cmbTransaction)%>);
		
		if(sTransType.indexOf('PRE')!=-1 && (sValueSta2!="" || sValueSta3!="")){
			javascript:DisplayErrorMsg(Elem,'<%getErrorMsg(NMO00014)%>');
		}else if(sValueSta1=="")
		   checkMandatory(<%getThis(cmbStation1)%>,'ComboBox');
		else if ( (Trim(sValueSta3 )!="" && sType!="") && (Trim(sValueSta2 )=="")  ){	
			javascript:DisplayErrorMsg(Elem,'<%getErrorMsg(NMO00002)%>');
		}else if ( Trim(sValueSta1)== Trim(sValueSta2) || Trim(sValueSta1)== Trim(sValueSta3) ){
			javascript:DisplayErrorMsg(Elem,'<%getErrorMsg(NMO00003)%>');
		}else if (sValueSta2 != ""  && Trim(sValueSta2)== Trim(sValueSta3)){
			javascript:DisplayErrorMsg(Elem,'<%getErrorMsg(NMO00003)%>');
		}

	}
}
