function protectChangeBoleroPopUpParty(Elem1,Elem2)
{
	var sFieldName = Elem2.name;
	if(Elem1.options[Elem1.selectedIndex].value!="")
		Elem2.value = eval("document.<%getPageName()%>_form."+sFieldName+"_HIDDEN.value");

        
        if(Elem2.name =="rid")
	{
		var s = new String(document.<%getPageName()%>_form.rid.value);
		document.<%getPageName()%>_form.rid.value = s.toUpperCase();
	}	
           
}