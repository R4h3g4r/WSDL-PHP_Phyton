function updateFileUploadItem(toCtrl,box,SendString)
{

	var combo = document.<%getPageName()%>_form.file_type;
	var comboSelection = combo.options[combo.selectedIndex].text;
	var checkboxSelection = document.<%getPageName()%>_form.col2_checkbox;
	var toCtrl = document.<%getPageName()%>_form.Attachments;
	
	var i=toCtrl.selectedIndex;
	var tmp=" ";
	
	
	if (i==-1) 
	{
		DisplayErrorMsg(table,'<%getErrorMsg(NIM00008)%>\n');
	}
	else
	{ 
   		toCtrl.options[i].selected=false;	 

	//	tmp=toCtrl.options[i].text;
	//	var ii=tmp.indexOf('|'); 
		
	//	toCtrl.options[i].text="";
		
	//	for (var j=0;j < ii ;j++) 
	//	{ 
	//		
	//		toCtrl.options[i].text+=space(box[j],18);
	//		//box[j].value + 
	//		box[j].value="";
		}
		makeStringToSend(toCtrl,SendString); 
	}
 
}
