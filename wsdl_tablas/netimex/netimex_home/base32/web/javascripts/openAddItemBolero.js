function openAddItemBolero(Elem,NextPage,mode,document_id,width,height)
{
	//This method checks for the max lines allowed for 
	//the recipientsTable or documentsTable.
	//The max lines allowed is 30
	//if the table is documentsTable and the free text field
	//is not empty then only 29 lines are allowed because 
	//the free text is considered as one line
	//maxLinesAllowed is a hidden field in BOLERO_MESSAGE page.
	
	var index = javascript:getSelectItemIndex(Elem,mode);
	var text = javascript:GetElemValue(document.<%getPageName()%>_form.text);
	text = javascript:Trim(text);
	var maxLinesAllowed = javascript:GetElemValue(document.<%getPageName()%>_form.maxLinesAllowed)
	var linesAllowed = maxLinesAllowed;
	var msg = "";
	if(text != null && text != "" && Elem.name == "documentsTable")
	{
		linesAllowed = linesAllowed - 1;
	}
	
	if(index >= linesAllowed )
	{	
		if(linesAllowed == maxLinesAllowed)
		{	
			msg = "Only "+ linesAllowed +" lines are allowed for this table."; 
		}
		else
		{
			msg = "Only "+ linesAllowed +" lines are allowed for this table \n because the Free Text field is considered a document."; 
		}
		
		DisplayErrorMsg(Elem,msg)
	}
	else
	{
		javascript:openUpdateItem(Elem,NextPage,mode,document_id,width,height);
	}
}
