function protectChangeBoleroPopUpParty(Elem1,Elem2)
{
	var sFieldName = Elem2.name;

	switch (sFieldName) 
	{ 
		case "rid" : 
			if(Elem1.options[Elem1.selectedIndex].value!="")
				Elem2.value = eval("document.<%getPageName()%>_form."+sFieldName+"_HIDDEN.value");
		break; 
		case "extension" : 
			if(Elem1.options[Elem1.selectedIndex].value!="")
				Elem2.value = eval("document.<%getPageName()%>_form."+sFieldName+"_HIDDEN.value");
		break; 
		default :
			Elem2.value = eval("document.<%getPageName()%>_form."+sFieldName+"_HIDDEN.value");
		break;
	} 

 }