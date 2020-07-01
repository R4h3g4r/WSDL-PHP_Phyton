
function submitHiddenAddPartys(comboAddType){

	 var comboValue;
	 comboValue = javascript:getValueOnCombo(comboAddType);
	 var fieldName;
	 fieldName = comboAddType.name
       if (eval("comboAddType.form." + fieldName + "_CODECOMBO"))
	 {
	  eval("comboAddType.form." + fieldName + "_CODECOMBO").value = "";
	   eval("comboAddType.form." + fieldName + "_CODECOMBO").id = comboValue.substring(0,1);
	  }
       if (eval("comboAddType.form." + fieldName + "_NAMECOMBO"))
	 eval("comboAddType.form." + fieldName + "_NAMECOMBO").value = "";
       if (eval("comboAddType.form." + fieldName + "_CODE"))
	 eval("comboAddType.form." + fieldName + "_CODE").value = "";
       if (eval("comboAddType.form." + fieldName + "_NAME"))
	 eval("comboAddType.form." + fieldName + "_NAME").value = "";
       if (eval("comboAddType.form." + fieldName + "_STREET"))
	 eval("comboAddType.form." + fieldName + "_STREET").value = "";
       if (eval("comboAddType.form." + fieldName + "_CITY"))
	 eval("comboAddType.form." + fieldName + "_CITY").value = "";
       if (eval("comboAddType.form." + fieldName + "_COUNTRY"))
	 eval("comboAddType.form." + fieldName + "_COUNTRY").value = "";

	 parent.HIDDEN_frame.document.HIDDEN_form.PARTYFieldName.value = fieldName;
	 parent.HIDDEN_frame.document.HIDDEN_form.PARTYType.value = "A";//comboAddType.id;//indicate about additional party
	 parent.HIDDEN_frame.document.HIDDEN_form.PARTYCode.value = comboValue;//value of combo
	 parent.HIDDEN_frame.document.HIDDEN_form.MainFormName.value = comboAddType.form.name;
	 parent.HIDDEN_frame.document.HIDDEN_form.MainFrameName.value = top.frames[0].name;
	 parent.HIDDEN_frame.document.HIDDEN_form.Action.value = "get";

	 parent.HIDDEN_frame.document.HIDDEN_form.submit();
};
