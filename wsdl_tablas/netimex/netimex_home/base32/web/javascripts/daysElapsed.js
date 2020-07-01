// Calculate the number of days elapsed between two dates?

function daysElapsed(sDate1,sDate2) {
  var iday=<%getDayPosition()%>;
  var imonth=<%getMonthPosition()%>;
  var iyear=<%getYearPosition()%>;
  var day1   = findPart(sDate1, iday);
  var month1 = findPart(sDate1, imonth)-1;
  var year1  = findPart(sDate1, iyear);
  var day2   = findPart(sDate2, iday);
  var month2 = findPart(sDate2, imonth)-1;
  var year2  = findPart(sDate2, iyear);
  year1=AdjustYear(year1);
  year2=AdjustYear(year2);
	//alert(year1 + " " + month1 + " " + day1 + "   =    " + year2 + " " + month2 + " " + day2);
     var difference = Date.UTC(year1, month1, day1, 0,0,0)
                    - Date.UTC(year2, month2, day2, 0,0,0);
     return difference/1000/60/60/24;
 }
//////////////////////////////////////////////////////////////////
//  Date validation routine
		function checkChar(aChar) {
			return ((aChar < "0") || (aChar > "9"))
		}
////////////////////////////////////////////////////////////////////
		function findNext(aStr, Idx) {
			while ((Idx <= aStr.length) && (!checkChar(aStr.charAt(Idx)))) Idx++
			return (Idx <= aStr.length ? Idx : aStr.length+1)
		}
///////////////////////////////////////////////////////////////////////
		function findPart(aString, Which) {
			Which = Which - 1;
			var C = 0
			while ((Which > "0") && (C <= aString.length)) {
				C = findNext(aString, C) + 1
				Which = Which - 1;
			}
			if (C > aString.length) 
                           return "";
                        else 
                           return aString.substring(C,findNext(aString, C));
		}
////////////////////////////////////////////////////////////////////////////
		function AdjustYear(year)
		{
         if (eval(year)<100 && year.length==2)
            { 
			if (eval(year)>70)
			   {return (year=1900 + eval(year));}
			  else
		       {return (year=2000 + eval(year));}
			}
		   else 
		    { 
			 return year;
			}
		}
//////////////////////////////////////////////////////////////////
