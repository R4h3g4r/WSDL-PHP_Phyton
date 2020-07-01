function space(str, maxlength, align) {
	
var i=0;
var sp="";

if(str.length>0) 
{
		if (align == "R")
		{
   			if (str.length < maxlength-1)
			{
				for (i=0;i < maxlength-str.length-1;i++)
					sp+=" ";
				sp+=str;
			}
			else
				sp+=str.substring(0,maxlength-1);
		}
		else	
		{	
			if (maxlength-1 > str.length)
			{
				sp+=str;
				for(i=0; i<maxlength-str.length-1;i++)
					sp+=" ";
			}
			else
				sp+=str.substring(0,maxlength-1);
	 	}
			
}
else 
{
	for(i=0; i< maxlength-1;i++)
  		sp+=" ";
}

sp+="|";
return sp;
}
