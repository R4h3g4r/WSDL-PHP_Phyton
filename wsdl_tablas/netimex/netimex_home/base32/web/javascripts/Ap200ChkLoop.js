//////////////////////////////////////////////////////////////////////////////////
function Ap200ChkLoop(NameStr,IsI)
{
    
	if(document.<%getPageName()%>_form.sight==undefined)
	{
		return 1;
	}
	NameStr+=eval(javascript:GetElemValue(document.<%getPageName()%>_form.available_with));
	NameStr+=eval(GetElemValue(document.<%getPageName()%>_form.settlement_by));
	if (GetElemValue(document.<%getPageName()%>_form.draft_drawn_on)=="" )
	{NameStr+=0}
	else{
	NameStr+=eval(GetElemValue(document.<%getPageName()%>_form.draft_drawn_on))
   }
    x = document.Ap200.elements.length;
    for (i=0;i<x;i++) {
		if (document.Ap200.elements[i].name == NameStr) {
		     if (document.Ap200.elements[i].value=="0")
			    {
				 return 1;
			    }
			   else
			    {
				 if (document.Ap200.elements[i].value=="1")
				   {Elem = document.<%getPageName()%>_form.sight[1]}
				 else if (document.Ap200.elements[i].value=="2")
				   {Elem = document.<%getPageName()%>_form.available_with}
				 else if (document.Ap200.elements[i].value=="3")
				   {Elem = document.<%getPageName()%>_form.settlement_by}
				 else if (document.Ap200.elements[i].value=="4")
				   {Elem = document.<%getPageName()%>_form.draft_drawn_on}
                                 javascript:DisplayErrorMsg(document.<%getPageName()%>_form.available_with, "<%getError(cmx20015)%>");
				 //alert("<%getError(cmx20015)%>"); 
				 if (Elem!=document.<%getPageName()%>_form.sight[1]) {Elem.focus();}
				 return 0;
				}
			}
	}
	if (IsI!="i")
	  {
	   //document.lc_form.bUD4available_with.focus();
	   //document.<%getPageName()%>_form.expiry_place.focus();
	   javascript:DisplayErrorMsg(document.<%getPageName()%>_form.available_with, "<%getError(cmx20015)%>");
       return 0;
	  }
	 else 
      {
	   return 2;
	  }	 
}

//////////////////////////////////////////////////////////////////////////////////


