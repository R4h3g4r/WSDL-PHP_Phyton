function genericCheckDate(Elem)
{
  var retVal;
  if (Elem.value != "")
  {
    retVal=isDate(Elem.value);
    if (!retVal)
    {
      Elem.focus();
    }
    else
    {
      Elem.value=retVal;
    }
  }
}

function checkvalue_date(aString)
{
  var dayPosition=<%getDayPosition()%>;
  var monthPosition=<%getMonthPosition()%>;
  var yearPosition=<%getYearPosition()%>;
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
      if (yearPosition==3)
      {
        aString=tmpStr.substring(0,2) + dateSeparator + tmpStr.substring(2,4) + dateSeparator + tmpStr.substring(4,8);
      }
      else
      {
        if (yearPosition==2)
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
  var orgDay = findPart(aString, dayPosition);
  var orgMonth = findPart(aString, monthPosition);
  var orgYear = findPart(aString, yearPosition);

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
    orgYear=eval(orgYear)-1900;
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

function findPart(aString, Which)
{
  Which = Which - 1;
  var C = 0;
  while ((Which > "0") && (C <= aString.length))
  {
    C = findNext(aString, C) + 1;
    Which = Which - 1;
  }
    if (C > aString.length)
    {
      return "";
    }
    else
    {
      return aString.substring(C,findNext(aString, C));
    }
}

function findNext(aStr, Idx)
{
  while ((Idx <= aStr.length) && (!checkChar(aStr.charAt(Idx))))
  {
    Idx++;
  }
  return (Idx <= aStr.length ? Idx : aStr.length+1);
}

function checkChar(aChar)
{
  return ((aChar < "0") || (aChar > "9"));
}

function allNumbers(aString)
{
  var Idx=0;
  while ((Idx <= aString.length) && (!checkChar(aString.charAt(Idx))))
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

function changeDots(aString)
{
  var retVal="";
  for (var i = 0; i < aString.length; i++)
  {
    if (aString.charAt(i)==".")
    {
      retVal=retVal+"-";
    }
    else
    {
      retVal=retVal+aString.charAt(i);
    }
  }
  return retVal;
}
