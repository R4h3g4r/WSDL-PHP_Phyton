function previewFileUploadImage(link)
{
	//get selected line index
	var toCtrl = document.<%getPageName()%>_form.Attachments;
	var i=toCtrl.selectedIndex;
	var j;
	var document_id;
	
	//check that an image was selected
	if (i==-1) 
	{
		DisplayErrorMsg(toCtrl,'<%getErrorMsg(NIM00008)%>\n');
		return;
	}
	
	//get document type description
	var imageDesc=toCtrl.options[i].text;
	var valueString = new String(imageDesc);
	var temp = new Array();
	temp = valueString.split('|');
	var fileId = temp[3];
	var indexOfPipe = valueString.indexOf('|');
	if (indexOfPipe != -1)
	{
		imageDesc = valueString.substr(0, indexOfPipe);
	}
	else{
		return;
	}
   	toCtrl.options[i].selected=false;
   	
   	//get document id
   	var combo = document.<%getPageName()%>_form.file_type;
   	imageDesc = javascript:Trim(imageDesc);
   	
   	if(combo != undefined){
		//var comboSelection = combo.options[combo.selectedIndex].text; 
   		for(j = 0; j < combo.options.length; j++){
   			if(imageDesc == combo.options[j].text){
   				document_id = combo.options[j].value;
   				break;
   			}
   		}
   		var fieldSize = 5;
   		for(k = document_id.length; k < fieldSize; k++){
   			document_id +="+";
   		}
   	}
   	else{
   		var doc_types = document.<%getPageName()%>_form.doc_types_hidden.value;
   		var tmp_doc_types;
   		var codes = new Array();
   		var descs = new Array();
   		var m;
		var indexOfPipeOld = 0;
   		var indexOfPipeNew = 0;
   		if(doc_types != undefined){
   		
   		   	var tmp_doc_types = new String(doc_types);
   			for(m=0;;m++){
   				indexOfPipeNew = tmp_doc_types.indexOf('|');
				if (indexOfPipeNew != -1)
				{
					codes[m] = tmp_doc_types.substr(indexOfPipeOld, indexOfPipeNew);
					if(indexOfPipeNew < doc_types.length)
						tmp_doc_types= new String(tmp_doc_types.substr(indexOfPipeNew+1, tmp_doc_types.length));
				}
				else{
					break;
				}
				indexOfPipeNew = tmp_doc_types.indexOf('|');
				if (indexOfPipeNew != -1)
				{
					descs[m] = tmp_doc_types.substr(indexOfPipeOld, indexOfPipeNew);
					if(indexOfPipeNew < doc_types.length)
						tmp_doc_types= new String(tmp_doc_types.substr(indexOfPipeNew+1, tmp_doc_types.length));
				}
				else{
					break;
				}
				indexOfPipeOld = 0;
   			}	
   
   		   	for(j = 0; j < descs.length; j++){
   				if(imageDesc == descs[j]){
   					document_id = codes[j];
   					break;
   				}
   			}	
   		}else{
   			return;
   		}
   	}
   	
   	//avis - remove this info message due to Tovi's request
	//javascript:DisplayMsg('<%getErrorMsg(NIM00030)%>');
	
   	//create preview command page link
	var link = link + "&document_id=" +	document_id+"&file_Id="+fileId;
	//open preview image command page
//	alert(link);
	window.location = link+"&isPopup=true";

}
	           
	           