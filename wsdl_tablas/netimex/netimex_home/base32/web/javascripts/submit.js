function submitHidden(field,type){
     var codeValue =  getValueOnCombo(field)
     var fieldName =  field.name.substring(0,field.name.indexOf("_"));
     if(Trim(codeValue) == "" || type == "type"){
       if (eval("field.form." + fieldName + "_CODECOMBO"))
	  eval("field.form." + fieldName + "_CODECOMBO").value = "";
       if (eval("field.form." + fieldName + "_NAMECOMBO"))
	 eval("field.form." + fieldName + "_NAMECOMBO").value = "";
       if (eval("field.form." + fieldName + "_CODE"))
	 eval("field.form." + fieldName + "_CODE").value = "";
       if (eval("field.form." + fieldName + "_NAME"))
	 eval("field.form." + fieldName + "_NAME").value = "";
       if (eval("field.form." + fieldName + "_STREET"))
	 eval("field.form." + fieldName + "_STREET").value = "";
       if (eval("field.form." + fieldName + "_CITY"))
	 eval("field.form." + fieldName + "_CITY").value = "";
       if (eval("field.form." + fieldName + "_COUNTRY"))
	 eval("field.form." + fieldName + "_COUNTRY").value = "";
     }
     if(!Trim(codeValue)==""){
	 parent.PARTY_frame.document.PARTY_form.PartyType.value = "";
	 parent.PARTY_frame.document.PARTY_form.PartyCode.value = "";
	 parent.PARTY_frame.document.PARTY_form.PartyExt.value = "";
	 parent.PARTY_frame.document.PARTY_form.PartyName.value = "";
	 parent.PARTY_frame.document.PARTY_form.Action.value = "get";
	 parent.PARTY_frame.document.PARTY_form.PartyFieldName.value = fieldName;
	 parent.PARTY_frame.document.PARTY_form.MainFormName.value = field.form.name;
	 parent.PARTY_frame.document.PARTY_form.MainFrameName.value = top.frames[0].name;
	 if(type=="code"){
	    var codePos   =  codeValue.indexOf(",");
	    var code	  =  codeValue.substring(0,codePos);
	    var ext	  =  codeValue.substring(codePos+1,codeValue.length);
	    parent.PARTY_frame.document.PARTY_form.PartyCode.value = code;
	    parent.PARTY_frame.document.PARTY_form.PartyExt.value = ext;
	 }else{
	    if(type=="name"){
	       parent.PARTY_frame.document.PARTY_form.PartyName.value = codeValue;
	    }else{
		 parent.PARTY_frame.document.PARTY_form.PartyType.value = codeValue;
	    }
	 }
	 parent.PARTY_frame.document.PARTY_form.submit();
    }
};
