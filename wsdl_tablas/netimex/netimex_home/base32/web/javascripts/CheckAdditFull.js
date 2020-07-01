//////////////////////////////////////////////////////////////////
function CheckAdditFull(Elem){


 var sPrefix;

 sPrefix = Elem.name.substr(0,Elem.name.indexOf('_'));
 //alert(sPrefix);

 var txt1 = javascript:GetElemValue(eval("document.<%getPageName()%>_form." + sPrefix + "_CODECOMBO"));
 var txt2 = GetElemValue(eval("document.<%getPageName()%>_form." + sPrefix + "_NAME"));
 var txt3 = GetElemValue(eval("document.<%getPageName()%>_form." + sPrefix + "_STREET"));
 var txt4 = GetElemValue(eval("document.<%getPageName()%>_form." + sPrefix + "_CITY"));
 var txt5 = Elem.value;
  if (!((txt1=="" && txt2=="" && txt3=="" && txt4=="" && txt5=="") || (txt1!="" && txt2!="" && txt3!="" && txt4!="" && txt5!=""))){
  
   if (txt1==""){
     javascript:checkMandatory(eval("document.<%getPageName()%>_form." + sPrefix + "_CODECOMBO"),'Text');
     }
     else if (txt2==""){
	    javascript:checkMandatory(eval("document.<%getPageName()%>_form." + sPrefix + "_NAME"),'Text');
	  }
	  else if (txt3==""){
		 javascript:checkMandatory(eval("document.<%getPageName()%>_form." + sPrefix + "_STREET"),'Text');
	       }
	       else if (txt4==""){
		      javascript:checkMandatory(eval("document.<%getPageName()%>_form." + sPrefix + "_CITY"),'Text');
		    }
  
  } 

}
//-->

