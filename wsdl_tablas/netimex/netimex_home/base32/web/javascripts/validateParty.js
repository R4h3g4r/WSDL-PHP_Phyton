function validateParty(name, isPartyType){
	if(isPartyType){
		eval("document.<%getPageName()%>_form."+name+"_NAME.value = document.<%getPageName()%>_form."+name+"_NAMECOMBO.value");		
		eval("document.<%getPageName()%>_form."+name+"_CITY.value = document.<%getPageName()%>_form."+name+"_CITY_HIDDEN.value");		
		eval("document.<%getPageName()%>_form."+name+"_STREET.value = document.<%getPageName()%>_form."+name+"_STREET_HIDDEN.value");		
		eval("document.<%getPageName()%>_form."+name+"_COUNTRY.value = document.<%getPageName()%>_form."+name+"_COUNTRY_HIDDEN.value");		
	}
	if(javascript:isPartyChanged(name)){
		eval("document.<%getPageName()%>_form."+name+"_CODE.value = ''");
		eval("document.<%getPageName()%>_form."+name+"_CODECOMBO.value = ''");
		eval("document.<%getPageName()%>_form."+name+"_NAMECOMBO.value = ''");
		if(eval("document.<%getPageName()%>_form."+name+"_LOOKUP")){
			eval("document.<%getPageName()%>_form."+name+"_LOOKUP.id = 'lookup_button_not_checked'");
			eval("document.<%getPageName()%>_form."+name+"_LOOKUP.value = '...'");
		}
	}else{
		if(eval("document.<%getPageName()%>_form."+name+"_LOOKUP")){
			eval("document.<%getPageName()%>_form."+name+"_LOOKUP.id = 'lookup_button_checked'");
			eval("document.<%getPageName()%>_form."+name+"_LOOKUP.value = 'a'");
		}
	}
}