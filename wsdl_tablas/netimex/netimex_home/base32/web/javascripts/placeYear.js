function placeYear(sDate,yearpos,delim,fullyear)
{
var str=sDate
var res=""
var iCnt=1
var idx=0;
if (yearpos==1)
{
	idx=str.indexOf(delim);
	res=fullyear+delim+str.substr(idx)
}
while ((idx=str.indexOf(delim,idx+1))!=-1)
{
	iCnt++;
	if (iCnt==yearpos)
	{
		res=str.substr(0,idx)+delim+fullyear;
		if (yearpos!=3) res+=delim+str.substr(res.length-1);
	}
}
return res;
}
