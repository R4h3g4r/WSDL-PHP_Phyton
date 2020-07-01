 function getId(box,side)
  {
     if  ("<%getBrowserType()%>" == "IE") {
    if (box.id=="")
	box.id=side;
    }
    else
    {
    if (box.id==undefined)
     box.id=side;
    }

  }
function submitHidden(field1,type1,field2){
     var fieldType = field1.type;
     var codeValue1;
     
     if (fieldType == "text")
	codeValue1 =  field1.value;
     else
	codeValue1 = getValueOnCombo(field1);

     var fieldName;

     if (type1 != "cur")
	 fieldName =  field1.name.substring(0,field1.name.indexOf("_"));
     else
	 fieldName = field2.name.substring(0,field2.name.indexOf("_"));

     var codeValue2;

     if (field2 != null)
     {
	fieldType = field2.type;
     
	if (fieldType == "text")
	   codeValue2 =  field2.value;
	else
	   codeValue2 = getValueOnCombo(field2);
     }
     else
	codeValue2 = "";


     if((Trim(codeValue1) == "" || type1 == "type") && type1 != "cur"){
       if (eval("field1.form." + fieldName + "_CODECOMBO"))
	  eval("field1.form." + fieldName + "_CODECOMBO").value = "";
       if (eval("field1.form." + fieldName + "_NAMECOMBO"))
	 eval("field1.form." + fieldName + "_NAMECOMBO").value = "";
       if (eval("field1.form." + fieldName + "_CODE"))
	 eval("field1.form." + fieldName + "_CODE").value = "";
       if (eval("field1.form." + fieldName + "_NAME"))
	 eval("field1.form." + fieldName + "_NAME").value = "";
       if (eval("field1.form." + fieldName + "_STREET"))
	 eval("field1.form." + fieldName + "_STREET").value = "";
       if (eval("field1.form." + fieldName + "_CITY"))
	 eval("field1.form." + fieldName + "_CITY").value = "";
       if (eval("field1.form." + fieldName + "_COUNTRY"))
	 eval("field1.form." + fieldName + "_COUNTRY").value = "";
     }
     if(!Trim(codeValue1)=="" && type1 != "cur"){
	 parent.HIDDEN_frame.document.HIDDEN_form.HIDDENType.value = "";
	 parent.HIDDEN_frame.document.HIDDEN_form.PARTYCode.value = "";
	 parent.HIDDEN_frame.document.HIDDEN_form.PARTYExt.value = "";
	 parent.HIDDEN_frame.document.HIDDEN_form.PARTYName.value = "";
	 parent.HIDDEN_frame.document.HIDDEN_form.Action.value = "get";
	 parent.HIDDEN_frame.document.HIDDEN_form.PARTYFieldName.value = fieldName;
	 parent.HIDDEN_frame.document.HIDDEN_form.MainFormName.value = field1.form.name;
	 parent.HIDDEN_frame.document.HIDDEN_form.MainFrameName.value = top.frames[0].name;
	 if(type1=="code"){
	    var codePos   =  codeValue1.indexOf(",");
	    var code	  =  codeValue1.substring(0,codePos);
	    var ext	  =  codeValue1.substring(codePos+1,codeValue1.length);
	    parent.HIDDEN_frame.document.HIDDEN_form.PARTYCode.value = code;
	    parent.HIDDEN_frame.document.HIDDEN_form.PARTYExt.value = ext;
	 }else{
	    if(type1=="name"){
	       parent.HIDDEN_frame.document.HIDDEN_form.PARTYName.value = codeValue1;
	    }else{
//		   parent.HIDDEN_frame.document.HIDDEN_form.PARTYType.value = codeValue1;
	    }
	 }
	 if(codeValue2 != "")
	    parent.HIDDEN_frame.document.HIDDEN_form.currency.value = codeValue2;
	 parent.HIDDEN_frame.document.HIDDEN_form.PARTYType.value = field1.id;
	 parent.HIDDEN_frame.document.HIDDEN_form.submit();
    }
    else
    {
	if(codeValue2 != "" && type1 == "cur")
	{
	    var codePos   =  codeValue2.indexOf(",");
	    var code	  =  codeValue2.substring(0,codePos);
	    var ext	  =  codeValue2.substring(codePos+1,codeValue.length);
	    parent.HIDDEN_frame.document.HIDDEN_form.PARTYFieldName.value = fieldName;
	    parent.HIDDEN_frame.document.HIDDEN_form.PARTYCode.value = code;
	    parent.HIDDEN_frame.document.HIDDEN_form.PARTYExt.value = ext;
	    parent.HIDDEN_frame.document.HIDDEN_form.curency.value = codeValue1;
	    parent.HIDDEN_frame.document.HIDDEN_form.PARTYType.value = field2.id;
	    parent.HIDDEN_frame.document.HIDDEN_form.MainFormName.value = field1.form.name;
	    parent.HIDDEN_frame.document.HIDDEN_form.MainFrameName.value = top.frames[0].name;
        
	    parent.HIDDEN_frame.document.HIDDEN_form.submit();
	}
    }
};
