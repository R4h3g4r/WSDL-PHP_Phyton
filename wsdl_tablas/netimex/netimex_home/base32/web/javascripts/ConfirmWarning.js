function ConfirmWarning(Elem,sText)
{
 var bDisplayAlert=true;
 if (iErrorStatus!=99) bDisplayAlert=false;

 if (Elem.type != 'hidden' && bDisplayAlert)
  {
   if (!confirm(sText))
   {
     Elem.focus();
     iErrorStatus=SEVERITY_ERROR;
   }
  }
}
