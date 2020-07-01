function chkDate(aString)
{
	if(isDate(aString,"<%Application(APPLICATION_INPUT_DATE_FORMAT)%>")){
		//for some reason if it is a correct date it should return the date string
		//if not when you select the text and click the date control you will see the return string
		return aString;
	}else{
		return false;
	}
/*
  var dayPosition=<%getDayPosition()%>;
  var monthPosition=<%getMonthPosition()%>;
  var yearPosition=<%getYearPosition()%>;
  if (aString.value == "") return;
  var tmpStr=javascript:findPart(aString, 1);
  var dateSeparator="<%getDateSeparator()%>";
  var tmpYear;
  var inputDateFormat="<%Application(APPLICATION_INPUT_DATE_FORMAT)%>";

  if (tmpStr.length==6)
  {
    if (javascript:allNumbers(aString))
    {
      aString=tmpStr.substring(0,2) + dateSeparator + tmpStr.substring(2,4) + dateSeparator + tmpStr.substring(4,6);
    }
  }
  if (tmpStr.length==8)
  {
    if (javascript:allNumbers(aString))
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
  var orgDay = javascript:findPart(aString, dayPosition);
  var orgMonth =javascript:findPart(aString, monthPosition);
  var orgYear = javascript:findPart(aString, yearPosition);
  orgYear=javascript:AdjustYear(orgYear);
  if(orgYear.length==3 || orgYear.length==1||(orgYear.length==4 && eval(orgYear)>2070))
   {
    return false;
   }

  if (orgDay.length>2 || orgMonth.length>2 || orgYear.length>4)
  {
    return false;
  }
  orgYear=javascript:AdjustYear(orgYear);
  orgMonth=eval(orgMonth-1);
  birthday = new Date(orgYear,orgMonth,orgDay);

  var bdyear=eval(birthday.getYear());

  if ((bdyear>99) && (bdyear<2000))
  {
    bdyear = bdyear + 1900;
  }

  tmpYear=orgYear;
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
      aString=javascript:changeDots(aString);
      if (inputDateFormat.indexOf("yyyy")!=-1 || inputDateFormat.indexOf("YYYY")!=-1)
      	aString=javascript:placeYear(aString,yearPosition,dateSeparator,tmpYear);
    }
  }
  var cnt=0;
   for (var idx=0;idx<aString.length;idx++)
	if (aString.charAt(idx)==dateSeparator) cnt++;
  if (cnt!=2) 
	return false;  
  else
    	return aString;
*/
}
