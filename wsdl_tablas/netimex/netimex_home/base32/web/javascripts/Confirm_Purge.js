function Confirm_Purge()
{

   var bToPurge=false;
   for (i=0;i<document.<%getPageName()%>_form.elements.length;i++){
	if (document.<%getPageName()%>_form.elements[i].type == 'checkbox' && 
		document.<%getPageName()%>_form.elements[i].name.indexOf('tablecol0row') > -1 &&
	    document.<%getPageName()%>_form.elements[i].checked == true){
               bToPurge = true;
        }
   }
   if (bToPurge == false)
   {
       DisplayErrorMsg(document.<%getPageName()%>_form.tablecol0row0,"<%getErrorMsg(NMX00109)%>")    
   }
   else if (window.confirm("Are You Sure ?")) {
	      chkSubmitForm('PurgeButton','N');
        }
}

