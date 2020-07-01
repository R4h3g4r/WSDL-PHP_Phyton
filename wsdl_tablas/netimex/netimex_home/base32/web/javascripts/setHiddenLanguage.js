function setHiddenLanguage()
{

   document.<%getPageName()%>_form.hiddenLanguage.value = GetElemValue(document.<%getPageName()%>_form.languagesList);
}
