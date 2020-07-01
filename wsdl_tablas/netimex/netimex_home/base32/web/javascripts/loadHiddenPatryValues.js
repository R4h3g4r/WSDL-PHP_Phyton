function loadHiddenPatryValues()
{
	if (document.<%getPageName()%>_form.name_HIDDEN != null && document.<%getPageName()%>_form.name != null)
		document.<%getPageName()%>_form.name_HIDDEN.value = document.<%getPageName()%>_form.name.value;
	if (document.<%getPageName()%>_form.street_HIDDEN != null && document.<%getPageName()%>_form.street != null)
		document.<%getPageName()%>_form.street_HIDDEN.value = document.<%getPageName()%>_form.street.value;
	if (document.<%getPageName()%>_form.city_HIDDEN != null && document.<%getPageName()%>_form.city != null)
		document.<%getPageName()%>_form.city_HIDDEN.value =document.<%getPageName()%>_form.city.value;
	if (document.<%getPageName()%>_form.country_HIDDEN != null && document.<%getPageName()%>_form.country != null)
		document.<%getPageName()%>_form.country_HIDDEN.value = document.<%getPageName()%>_form.country.value;
	if (document.<%getPageName()%>_form.rid_HIDDEN != null && document.<%getPageName()%>_form.rid != null)
		document.<%getPageName()%>_form.rid_HIDDEN.value = document.<%getPageName()%>_form.rid.value;
	if (document.<%getPageName()%>_form.extension_HIDDEN != null && document.<%getPageName()%>_form.extension != null)
		document.<%getPageName()%>_form.extension_HIDDEN.value = document.<%getPageName()%>_form.extension.value;
}
