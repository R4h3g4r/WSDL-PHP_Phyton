function newFileUploadItems(fileExt,fileID)
{
	var combo = document.<%getPageName()%>_form.file_type;
	var comboSelection = combo.options[combo.selectedIndex].text;
	var checkboxSelection = document.<%getPageName()%>_form.col2_checkbox;
	var table = document.<%getPageName()%>_form.Attachments;
	var nextitem;
	var i;
	var j;
	var itemexists;
	var nextitem;
    var tmp="";
        
	if(table.selectedIndex > -1)
	{
		table.options[table.selectedIndex].selected=false;
	}

	if (comboSelection != "" ) 
	{
		tmp = comboSelection;
		
   		for(j = tmp.length; j < 50; j++){
   			tmp+= " ";
   		} 
		tmp += "|";
		if(checkboxSelection != undefined){
			tmp = tmp + (checkboxSelection.checked == true ? "Y" : "N")+ "  |";
		}
		if(fileExt != undefined){
			tmp = tmp + " " + fileExt + "|";
		}
		if(fileID != undefined){
			tmp = tmp +" "+ fileID +"|";
		}
	  	nextitem = table.options.length;
	  	table.options[nextitem] = new Option(tmp);
		table.options[nextitem].value =nextitem+1;

     }else{
     	DisplayErrorMsg(table,'<%getErrorMsg(NIM00007)%>\n');
     }
	javascript:submitFileUpload();
	
	//clean the selection - incident 45774
	document.<%getPageName()%>_form.col2_checkbox.checked=false;
	document.<%getPageName()%>_form.file_type.selectedIndex=0;
}