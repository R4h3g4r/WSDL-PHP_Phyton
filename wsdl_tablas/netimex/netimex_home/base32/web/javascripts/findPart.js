function findPart(aString, Which)
{
  Which = Which - 1;
  var C = 0;
  while ((Which > "0") && (C <= aString.length))
  {
    C = javascript:findNext(aString, C) + 1;
    Which = Which - 1;
  }
    if (C > aString.length)
    {
      return "";
    }
    else
    {
      return aString.substring(C,javascript:findNext(aString, C));
    }
}
