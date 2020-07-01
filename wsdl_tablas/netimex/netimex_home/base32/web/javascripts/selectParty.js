function selectParty(){
	var partyTypeValue;
	window.top.opener.document.<%getField(opener_form)%>.<%getField(opener_field)%>_CODECOMBO.value = document.PARTIES_SEARCH_form.result_CODECOMBO.value;
	window.top.opener.document.<%getField(opener_form)%>.<%getField(opener_field)%>_CODE.value = document.PARTIES_SEARCH_form.result_CODE.value;
	window.top.opener.document.<%getField(opener_form)%>.<%getField(opener_field)%>_NAME.value = document.PARTIES_SEARCH_form.result_NAME.value;
	window.top.opener.document.<%getField(opener_form)%>.<%getField(opener_field)%>_NAMECOMBO.value = document.PARTIES_SEARCH_form.result_NAMECOMBO.value;
	window.top.opener.document.<%getField(opener_form)%>.<%getField(opener_field)%>_CITY.value = document.PARTIES_SEARCH_form.result_CITY.value;
	window.top.opener.document.<%getField(opener_form)%>.<%getField(opener_field)%>_CITY_HIDDEN.value = document.PARTIES_SEARCH_form.result_CITY_HIDDEN.value;
	window.top.opener.document.<%getField(opener_form)%>.<%getField(opener_field)%>_COUNTRY.value = document.PARTIES_SEARCH_form.result_COUNTRY.value;
	window.top.opener.document.<%getField(opener_form)%>.<%getField(opener_field)%>_COUNTRY_HIDDEN.value = document.PARTIES_SEARCH_form.result_COUNTRY_HIDDEN.value;
	window.top.opener.document.<%getField(opener_form)%>.<%getField(opener_field)%>_STREET.value = document.PARTIES_SEARCH_form.result_STREET.value;
	window.top.opener.document.<%getField(opener_form)%>.<%getField(opener_field)%>_STREET_HIDDEN.value = document.PARTIES_SEARCH_form.result_STREET_HIDDEN.value;
	if(document.PARTIES_SEARCH_form.party_type_combo && document.PARTIES_SEARCH_form.party_type_combo.options){
		
		partyTypeValue = javascript:getValueOnCombo(document.PARTIES_SEARCH_form.party_type_combo);
		javascript:setValueOnCombo(partyTypeValue, window.top.opener.document.<%getField(opener_form)%>.<%getField(opener_field)%>_TPCOMBO)
	}
	window.top.opener.document.<%getField(opener_form)%>.<%getField(opener_field)%>_STREET_HIDDEN.value = document.PARTIES_SEARCH_form.result_STREET_HIDDEN.value;
	window.top.opener.validateParty('<%getField(opener_field)%>');
	if("<%getField(opener_form)%>" != "SHIPPING_MAIN_form" && document.PARTIES_SEARCH_form.Adv_CODE.value != "" &&
	    window.top.opener.document.<%getField(opener_form)%>.AdvBank_CODE.value == "" && document.PARTIES_SEARCH_form.result_CODE != ""){
		window.top.opener.document.<%getField(opener_form)%>.AdvBank_CODECOMBO.value = document.PARTIES_SEARCH_form.Adv_CODECOMBO.value;
		window.top.opener.document.<%getField(opener_form)%>.AdvBank_CODE.value = document.PARTIES_SEARCH_form.Adv_CODE.value;
		window.top.opener.document.<%getField(opener_form)%>.AdvBank_NAME.value = document.PARTIES_SEARCH_form.Adv_NAME.value;
		window.top.opener.document.<%getField(opener_form)%>.AdvBank_NAMECOMBO.value = document.PARTIES_SEARCH_form.Adv_NAMECOMBO.value;
		window.top.opener.document.<%getField(opener_form)%>.AdvBank_CITY.value = document.PARTIES_SEARCH_form.Adv_CITY.value;
		window.top.opener.document.<%getField(opener_form)%>.AdvBank_CITY_HIDDEN.value = document.PARTIES_SEARCH_form.Adv_CITY_HIDDEN.value;
		window.top.opener.document.<%getField(opener_form)%>.AdvBank_COUNTRY.value = document.PARTIES_SEARCH_form.Adv_COUNTRY.value;
		window.top.opener.document.<%getField(opener_form)%>.AdvBank_COUNTRY_HIDDEN.value = document.PARTIES_SEARCH_form.Adv_COUNTRY_HIDDEN.value;
		window.top.opener.document.<%getField(opener_form)%>.AdvBank_STREET.value = document.PARTIES_SEARCH_form.Adv_STREET.value;
		window.top.opener.document.<%getField(opener_form)%>.AdvBank_STREET_HIDDEN.value = document.PARTIES_SEARCH_form.Adv_STREET_HIDDEN.value;
		window.top.opener.validateParty('AdvBank');
	}
	self.close();
}