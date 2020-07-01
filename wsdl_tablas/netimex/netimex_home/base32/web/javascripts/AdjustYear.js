function AdjustYear(year)
{
  if (eval(year)<100 && year.length==2)
  {
    if (eval(year)>70)
    {
      return (year=1900 + eval(year));
    }
    else
    {
      return (year=2000 + eval(year));
    }
  }
  else
  {
    return year;
  }
}
