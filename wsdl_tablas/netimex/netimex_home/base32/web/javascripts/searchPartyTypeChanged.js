function searchPartyTypeChanged(){
	document.PARTIES_SEARCH_form.val_list.options.length = 1;
	document.PARTIES_SEARCH_form.val_list.options[0].value = "";
	document.PARTIES_SEARCH_form.val_list.options[0].text = "";
	javascript:partyTypeChanged("result");
}