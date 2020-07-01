function submitIncomingTextNp(ButtonName)
{ 
	var isChecked = false;
	var checkBoxName = "<%getIncomingBlkTableName()%>";
        var url_param = "";
var count=0;
// Start Inc# 47163 (1 of 3)
var isImgDoc=false;
var maxElements = document.<%getPageName()%>_form.elements.length;
// End Inc# 47163 (1 of 3)
	for (var i=0;i<document.<%getPageName()%>_form.elements.length;i++)
	{

		var e = document.<%getPageName()%>_form.elements[i];
  		var fname = e.name;
		
		if (fname !='sortMethod' && fname.indexOf("col") > 0 && fname.substring(0,fname.indexOf("col")) == checkBoxName && e.type=='checkbox' && e.checked)
		{
                    url_param += fname+",";
		    isChecked = true;
		     count++;
// Start Inc# 47163 (2 of 3)
			 if ( (i+2) < maxElements )
		     {
			     var imageItem = document.<%getPageName()%>_form.elements[i+2]; 
			     var imageItemName = imageItem.name;
			     if ( imageItemName == "imageDoc" && imageItem.value == "1" )
	
			     {
					isImgDoc = true;
			     }				
			 }
		}		
// End Inc# 47163 (2 of 3)
	 
	}

     	if (!isChecked)
	{
		javascript:DisplayErrorMsg(eval("document.<%getPageName()%>_form."+checkBoxName+"col0row0"),"<%getError(NMX00077)%>");
	}
// Start Inc# 47163 (3 of 3)
	else if (isImgDoc)
	{
				javascript:DisplayErrorMsg(eval("document.<%getPageName()%>_form."+checkBoxName+"col0row0"),"<%getError(NMX00094)%>");	
	}
// End Inc# 47163 (3 of 3)
	else if(count>100)
	{
		javascript:DisplayErrorMsg(eval("document.<%getPageName()%>_form."+checkBoxName+"col0row0"),"<%getError(NMX00090)%>");
	}
     	else
	{
	   if (window.confirm("<%getError(NMX01001)%>"))
      	   { 
		  var formName;
		  formName="<%getPageName()%>" + "_form";    
		  eval("document." + formName).SubmitType.value = ButtonName;
			
                  javascript:openmsgwin("<%getWebLocation()%>Page=INCOMINGTEXT&Action=get&fromBlk=true&Print=Y&SelectedRows="+url_param+"<%getCustomizedURLParameters()%>");
   
      	   }
	}
}
