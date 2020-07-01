function chkColumnsDepending(dataTable , col1, col2)
{
	var fName;
	var comparedField;
	sName=new String();
	
	for(i=0;i < window.document.<%getPageName()%>_form.length;i++)
	{
		if(window.document.<%getPageName()%>_form.elements[i] != null )
		{
			fName = window.document.<%getPageName()%>_form.elements[i].name;
			sName = fName.toString();
			if(sName.substring(0,sName.indexOf("row")) == dataTable+"col"+col1) 
			{
				if(window.document.<%getPageName()%>_form.elements[i].checked)
				{
					comparedField = sName.replace("col"+col1,"col"+col2);		
					if(!eval("window.document.<%getPageName()%>_form."+comparedField).checked)
					{
						javascript:DisplayErrorMsg(eval("window.document.<%getPageName()%>_form."+comparedField),"<%getErrorMsg(DOC00000)%>");
					}
				}
			}
		}
	}		
	return;
}
