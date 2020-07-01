function findNext(aStr, Idx)
{
  while ((Idx <= aStr.length) && (!javascript:checkChar(aStr.charAt(Idx))))
  {
    Idx++;
  }
  return (Idx <= aStr.length ? Idx : aStr.length+1);
}
