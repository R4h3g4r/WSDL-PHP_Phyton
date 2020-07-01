function isDate(aString)
{
  var iday=<%getDayPosition()%>;
  var imonth=<%getMonthPosition()%>;
  var iyear=<%getYearPosition()%>;
  var tmpStr=findPart(aString, 1);
  var dateSeparator="<%getDateSeparator()%>";
  if (tmpStr.length==6)
  {
    if (allNumbers(aString))
    {
      aString=tmpStr.substring(0,2) + dateSeparator + tmpStr.substring(2,4) + dateSeparator + tmpStr.substring(4,6);
    }
  }
  if (tmpStr.length==8)
  {
    if (allNumbers(aString))
    {
      if (iyear==3)
      {
        aString=tmpStr.substring(0,2) + dateSeparator + tmpStr.substring(2,4) + dateSeparator + tmpStr.substring(4,8);
      }
      else
      {
        if (iyear==2)
        {
          aString=tmpStr.substring(0,2) + dateSeparator + tmpStr.substring(2,6) + dateSeparator + tmpStr.substring(6,8);
        }
        else
        {
          aString=tmpStr.substring(0,4) + dateSeparator + tmpStr.substring(4,6) + dateSeparator + tmpStr.substring(6,8);
        }
      }
    }
  }
  var orgDay = findPart(aString, iday);
  var orgMonth = findPart(aString, imonth);
  var orgYear = findPart(aString, iyear);
  if (orgDay.length>2 || orgMonth.length>2 || orgYear.length>4)
  {
    return false;
  }
  orgYear=AdjustYear(orgYear);
  orgMonth=eval(orgMonth-1);
  birthday = new Date(orgYear,orgMonth,orgDay);
  var bdyear=eval(birthday.getYear());
  if ((bdyear>99) && (bdyear<2000))
  {
    bdyear = bdyear + 1900;
  }
  if (orgYear<2000)
  {
    orgYear=eval(orgYear)-1900
  }
  if (birthday=="Invalid Date")
  {
    return false;
  }
  else
  {
    if ((eval(orgYear)!=eval(bdyear)) ||
        (eval(orgMonth)!=eval(birthday.getMonth())) ||
        ((orgDay)!=eval(birthday.getDate())))
    {
      return false;
    }
    else
    {
      aString=changeDots(aString);
      return aString;
    }
  }
}
