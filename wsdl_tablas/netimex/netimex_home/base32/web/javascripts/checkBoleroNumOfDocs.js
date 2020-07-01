function checkBoleroNumOfDocs()
{
	//This method checks the number of documents
	//in a bolero message
	//it checks that the documents table and the Free text field
	//together are 30 because the Free Text field 
	//is considered a document
	
	var index = javascript:getSelectItemIndex(document.<%getPageName()%>_form.documentsTable,"N");
	var text = javascript:Trim(javascript:GetElemValue(document.<%getPageName()%>_form.text));
	var maxLinesAllowed = javascript:GetElemValue(document.<%getPageName()%>_form.maxLinesAllowed)
	var msg = "";
	
	if(text == "")
	{
		return;
	}
	
	if(index >= maxLinesAllowed)
	{	
		msg = "Only "+ (maxLinesAllowed - 1) +" lines are allowed for documents table \n because the Free Text field is considered a document. \n"; 
		msg = msg + "you have to delete one document or the Free Text.";
		
		DisplayErrorMsg(document.<%getPageName()%>_form.text,msg)
	}
	
}
