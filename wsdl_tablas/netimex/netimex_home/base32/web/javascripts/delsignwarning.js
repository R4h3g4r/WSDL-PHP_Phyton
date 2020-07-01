function delsignwarning(hrefstr)
{
   //if (confirm("All other signatures will be Deleted, Are you sure you want to continue?")) 
   if (confirm("<%getErrorMsg(NMX00157)%>")) 
   {
     top.document.location.href = hrefstr;
   }    
}
