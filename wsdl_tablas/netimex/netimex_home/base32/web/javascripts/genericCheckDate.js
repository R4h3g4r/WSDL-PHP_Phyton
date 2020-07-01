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

if(cal != null)
{
// Set the day for the first column in the calendar grid. By default this
// is Sunday (0) but it may be changed to fit the conventions of other
// countries.
cal.setWeekStartDay(1); // week is Monday - Sunday
// Text for the word "Today" appearing on the calendar
cal.setTodayText("<%getCalendarToday()%>");
// Set the month names to be used. Default are English month names
cal.setMonthNames(<%getCalendarMonth()%>);
// Set the text to be used above each day column. The days start with 
// sunday regardless of the value of WeekStartDay
	cal.setDayHeaders(<%getCalendarDay()%>);
}

