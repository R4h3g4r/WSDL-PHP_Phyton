function protectChange(Elem1,Elem2)
{
	var sFieldName;
	sFieldName = Elem1.name.substr(Elem1.name.indexOf('_')+1,Elem1.name.length);;

	switch (sFieldName) 
	{ 
		case "NAMECOMBO" : 
			if(Elem1.options[Elem1.selectedIndex].text!=Elem2.value && Elem1.options[Elem1.selectedIndex].value!="")
				Elem2.value=Elem1.options[Elem1.selectedIndex].text;
		break; 
		default :
			if(Elem1.options[Elem1.selectedIndex].value!="")
				Elem2.value = eval("document.<%getPageName()%>_form."+Elem2.name+"_HIDDEN.value");
	} 

 }
