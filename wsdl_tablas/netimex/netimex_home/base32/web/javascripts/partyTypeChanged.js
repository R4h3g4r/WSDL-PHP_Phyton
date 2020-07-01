function partyTypeChanged(name){
	eval("document.<%getPageName()%>_form."+name+"_CODE").value = "";
	eval("document.<%getPageName()%>_form."+name+"_CODECOMBO").value = "";
	eval("document.<%getPageName()%>_form."+name+"_NAMECOMBO").value = "";
	eval("document.<%getPageName()%>_form."+name+"_NAME").value = "";
	eval("document.<%getPageName()%>_form."+name+"_CITY").value = "";
	eval("document.<%getPageName()%>_form."+name+"_STREET").value = "";
	eval("document.<%getPageName()%>_form."+name+"_COUNTRY").value = "";
	eval("document.<%getPageName()%>_form."+name+"_CITY_HIDDEN").value = "";
	eval("document.<%getPageName()%>_form."+name+"_STREET_HIDDEN").value = "";
	eval("document.<%getPageName()%>_form."+name+"_COUNTRY_HIDDEN").value = "";
	validateParty(name);
}