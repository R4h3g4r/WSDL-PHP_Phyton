function allNumbers(aString)
{
  var Idx=0;
  while ((Idx <= aString.length) && (!javascript:checkChar(aString.charAt(Idx))))
  {
    Idx++;
  }
  if (Idx==aString.length)
  {
    return true;
  }
  else
  {
    return false;
  }
}
