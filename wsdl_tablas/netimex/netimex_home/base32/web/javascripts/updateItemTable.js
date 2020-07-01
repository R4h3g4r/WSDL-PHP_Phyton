function updateItemTable(ElemName,SendString,lineNo)
{
	var colNames;
	colNames = eval("get" + ElemName + "ColName()");
	var Elem = eval("window.document.<%getPageName()%>_form." + ElemName);
	var isOverload = false;
	isOverload = eval("is" + ElemName + "OverloadJS()");
	var colName;
	var colValue;
	var newElemText="";
	var fieldInfArr;
	var curFieldInfArr;
	var ElemLen = Elem.options.length;
	var lineNumber = parseInt(lineNo);
	if (!(lineNumber < ElemLen)){
		lineNumber = lineNumber + 1;
		Elem.options.length = lineNumber;
	}
	//if (!isOverload){
		fieldInfArr = eval("get" + ElemName + "FieldSpaceJS()");
		for(var j=0; j < colNames.length; j++){
			colName = colNames[j];
			colValue = javascript:getValueFromString(colName, SendString);
			curFieldInfArr = javascript:getCurFieldInfArr(colName, fieldInfArr);
			newElemText += space1(colValue, curFieldInfArr[0], curFieldInfArr[1]);
}
	//}else{
		//newElemText = javascript:getOverloadMessage();
	//}
	Elem.options[lineNo].text = newElemText;
}


function space1(str, maxlength, align) {
	
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
