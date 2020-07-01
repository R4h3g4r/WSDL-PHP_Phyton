function CheckEL200(){
        var NameStr="";
        var Elem;
        var Temp;
        NameStr=getValueOnRadio(document.forms[0].Sight);
        if (NameStr=="I"){
                Temp=Ap200ChkLoop(NameStr,"i");
                if (Temp !="2"){
                        return Temp;
                }else{
                        NameStr= "N";
                }
        }
        return(Ap200ChkLoop(NameStr,""));
}
function Ap200ChkLoop(NameStr,IsI){
        NameStr+=getValueOnCombo(document.IMPLCISS_form.AvailableWith);
        NameStr+=getValueOnCombo(document.IMPLCISS_form.SettlementBy);
        if (getValueOnCombo(document.IMPLCISS_form.DrawnOn)=="" ){
                NameStr+=0;
        }
	else{
                NameStr+=getValueOnCombo(document.IMPLCISS_form.DrawnOn);
        }
        x = document.AP200_form.elements.length;
        for (i=0;i<x;i++) {
                if (document.AP200_form.elements[i].name == NameStr) {
                        if (document.AP200_form.elements[i].value=="0"){
                                 return "";
                        }else{
                                if (document.AP200_form.elements[i].value=="1"){
                                        Elem = document.IMPLCISS_form.Sight[1]
                                }else
                                 if (document.AP200_form.elements[i].value=="2"){
                                        Elem = document.IMPLCISS_form.AvailableWith
                                 }
                                else
                                 if (document.AP200_form.elements[i].value=="3"){
                                        Elem = document.IMPLCISS_form.SettlementBy
                                 }
                                else
                                 if (document.AP200_form.elements[i].value=="4"){
                                        Elem = document.IMPLCISS_form.DrawnOn
                                 }
                                if (Elem!=document.IMPLCISS_form.Sight[1]) {
                                        Elem.focus();
                                }
                                return("F" + "<%getError(APE001)%>");
//                                return("FCombination of Sight, Draft Drawn On, Available with,Settlement is wrong (AP200)");
			}
                }
        }
        if (IsI!="i"){
           document.IMPLCISS_form.Place.focus();
           return("F" + "<%getError(APE001)%>");
//           return("FCombination of Sight, Draft Drawn On, Available with,Settlement is wrong (AP200)");
        }else{
           return "";
        }
}

