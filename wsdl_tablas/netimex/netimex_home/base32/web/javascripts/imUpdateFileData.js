//this function set the values of the selected item in the files upload select
//into the 2 inputs of file_type combo and upload checkbox (col2_checkbox)
function imUpdateFileData(filesSelectBox){
	var i=filesSelectBox.selectedIndex;
	var tmp=" ";
	if(i>=0){
		//get the selected text
		tmp=filesSelectBox.options[i].text;

		var ii=tmp.indexOf('|');
		var fileTypeElem = document.<%getPageName()%>_form.file_type; 
    	if (ii>0){
    		//set file type combo value
    		var fileType=Trim(tmp.substring(0,ii)); 
    		var found=false;  
			for(j=0;j<fileTypeElem.options.length && !found;j++){
				if(fileType==fileTypeElem.options[j].text)
					found=true;
			}
			if(found)
			    fileTypeElem.selectedIndex=j-1;
		    
		    //set Upload check box value
		    tmp=tmp.substring(ii+1,tmp.length);		    
		    var ii=tmp.indexOf('|');  		    
		    if (ii>0){
		    	var upload=Trim(tmp.substring(0,ii));
		    	document.<%getPageName()%>_form.col2_checkbox.checked=("Y"==upload);
		    } 
	    }
	}
}