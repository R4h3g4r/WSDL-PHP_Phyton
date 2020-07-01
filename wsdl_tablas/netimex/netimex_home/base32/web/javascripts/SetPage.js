function SetPage( PageName )
{
	if(document.TITLES_TRANSLATION_form.languagesList != null &&
	   document.TITLES_TRANSLATION_form.languagesList.value == "")
	{
		alert("This field must be fill !!");
		document.TITLES_TRANSLATION_form.languagesList.focus();
		return;
	}
	document.TITLES_TRANSLATION_form.dfNextPageNumber.value = PageName;
      	document.TITLES_TRANSLATION_form.submit();
}
