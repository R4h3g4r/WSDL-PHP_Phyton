function genericCheckDate(Elem)
{
  var retVal;

  if (Elem.value != "")
  {
    retVal=javascript:chkDate(Elem.value);
    if (!retVal)
    {
      
      javascript:DisplayErrorMsg(Elem, "<%getError(NMX00057)%>")
    }
    else
    {
      Elem.value=retVal;
    }
  }
}









