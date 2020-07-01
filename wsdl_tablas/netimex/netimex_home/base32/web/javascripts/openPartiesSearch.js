		function openPartiesSearch(hrefstr, name)
		{
			/* the version with BCV - keyid functionality*/
		var currency = '';
		var currencyField;
		hrefstr = hrefstr + "&result_CODECOMBO=" + eval("document.<%getPageName()%>_form." + name + "_CODECOMBO.value");
		hrefstr = hrefstr + "&result_CODE=" + eval("document.<%getPageName()%>_form." + name + "_CODE.value");
		hrefstr = hrefstr + "&result_NAME=" + eval("document.<%getPageName()%>_form." + name + "_NAME.value");
		hrefstr = hrefstr + "&result_NAMECOMBO=" + eval("document.<%getPageName()%>_form." + name + "_NAMECOMBO.value");
		hrefstr = hrefstr + "&result_CITY=" + eval("document.<%getPageName()%>_form." + name + "_CITY.value");
		hrefstr = hrefstr + "&result_CITY_HIDDEN=" + eval("document.<%getPageName()%>_form." + name + "_CITY_HIDDEN.value");
		hrefstr = hrefstr + "&result_STREET=" + eval("document.<%getPageName()%>_form." + name + "_STREET.value");
		hrefstr = hrefstr + "&result_STREET_HIDDEN=" + eval("document.<%getPageName()%>_form." + name + "_STREET_HIDDEN.value");
		hrefstr = hrefstr + "&result_COUNTRY=" + eval("document.<%getPageName()%>_form." + name + "_COUNTRY.value");
		hrefstr = hrefstr + "&result_COUNTRY_HIDDEN=" + eval("document.<%getPageName()%>_form." + name + "_COUNTRY_HIDDEN.value");
		hrefstr = hrefstr + "&country=" + eval("document.<%getPageName()%>_form." + name + "_COUNTRY_HIDDEN.value");
		hrefstr += "<%getCustomizedURLParameters()%>"
		if(eval("document.<%getPageName()%>_form." + name + "_TPCOMBO")){
			hrefstr = hrefstr + "&party_type_combo=" + 
				javascript:getValueOnCombo(eval("document.<%getPageName()%>_form." + name + "_TPCOMBO"));
		}
		hrefstr = hrefstr + "&currency=";
		
		if(name == 'Beneficiary'){
			currencyField = document.<%getPageName()%>_form.currency;
			if(currencyField != null){
				if(currencyField.type == 'text'){
					currency = currencyField.value;
				}else{
					javascript:getValueOnCombo(currencyField);
				}	
			}
		}
		hrefstr = hrefstr + currency;
		libraryWindow=javascript:openNewWindow(hrefstr,"displayWindow","menubar=no,scrollbars=yes,status=no,width=390,height=330"); 
		}
