function moWorkListSearch(){
	document.forms["<%getPageName()%>_form"].action='<%getWebLocation()%>';
	document.forms["<%getPageName()%>_form"].method='post';
	document.forms["<%getPageName()%>_form"].submit();
}