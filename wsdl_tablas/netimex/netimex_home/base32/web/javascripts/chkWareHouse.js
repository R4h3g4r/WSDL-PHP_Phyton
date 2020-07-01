function chkWareHouse()
{
    if ((javascript:TrimIt(document.<%getPageName()%>_form.storage_amount.value)!="") && (document.<%getPageName()%>_form.go_down.selectedIndex==0))
	   {
	javascript:DisplayErrorMsg(document.<%getPageName()%>_form.go_down, "<%getError(CMX20050)%>"); 
		bErrorFound=true;
	   }
}
