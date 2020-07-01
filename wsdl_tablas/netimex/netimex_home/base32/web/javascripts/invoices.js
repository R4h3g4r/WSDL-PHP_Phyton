//grid.stm
 function makeStringToSend(selectCtrl,SendString) {
	var i,count;
	count=0;
	var j = 0;
	var outlist = "";
var sStr;
for(i=0; i<selectCtrl.options.length; i++)
{
 sStr=selectCtrl.options[i].text.substring(0,selectCtrl.options[i].text.length)
   var ii=sStr.indexOf('|');
    while (ii>0){
       outlist+=Trim(sStr.substring(0,ii))+"|";
	sStr=sStr.substring((ii+1),sStr.length);
       ii=sStr.indexOf('|');
   }
 }
SendString.value=outlist;
}


function setReferenceNo(toCtrl)
{
	var sString = "";
	if (toCtrl.options[0] != null)
	{
		sString = toCtrl.options[0].innerText;
	}

	if (sString.length > 0 )
	{
		if ("<%getSessionValue(customer_id)%>" != "BANK")
		{ 
			var i = 0;
			var length = sString.length;
			while ((i < length) && (sString.charAt(i) == ' '))
			{
				i++;
			}
			var sref = sString.substring(i, sString.indexOf('|'));
			if (<%isReferenceNoUppercased()%>)
			{
				sref = sref.toUpperCase();
			}
			document.<%getPageName()%>_form.reference_no.value = sref;
		}

	}
	else
	{
		document.<%getPageName()%>_form.reference_no.value = "";
	}
}	//end of setReferenceNo(toCtrl)


function space(sbox,maxsize){
var sp="";
var befor=0;
var after=0;
var box=sbox.value;
var ch_del='<%getDecimalSymbol()%>';

var del=0;
//alert(sbox.id);
 //alert(isNaN(box));
if ((javascript:bIsNum(box)) &&( sbox.id!="L"))
 {
 del=box.indexOf(ch_del)
 if(del>0)
	{befor=4;
	for(var ii=0; ii<(maxsize-del-befor); ii++){ sp+=" ";}
	 sp+=box;
	 after=box.length-del
	 for(var ii=0; ii<(3-after); ii++){ sp+=" ";}
	 sp+=" |";
	}
  else
  {
	
	befor=4;
	after=0;
	for(var ii=0; ii<(maxsize-box.length-befor); ii++){  sp+=" ";}
					sp+=box;
	 for(var ii=0; ii<(3-after); ii++){ sp+=" ";}
	 sp+=" |";			        
	}
  }
else
{
 //alert("SUPER MAN");
 befor=3;
 box=" "+box;
 sp+=box;
 for(var ii=box.length-1; ii<maxsize; ii++){ sp+=" ";}
					sp+="| ";
}       
  
return sp;
}
////////////////////////////////////////////////////////////

function newItems( toCtrl,box,SendString)
{
	var i;
	var j;
	var itemexists;
	var nextitem;
    	var tmp="";
        
	if(toCtrl.selectedIndex > -1)
	{
		toCtrl.options[toCtrl.selectedIndex].selected=false};
  
		if (box[0].value!="" ) 
		{
			//call hook method if exist 
	    	try{
    			onInstallmentAddItem(toCtrl);
	    	}
	    	catch(ex){
	    	}
			// add the item
			nextitem = toCtrl.options.length;
		        
			for (i=0;i< box.length ;i++) 
			{  
				//alert(box[i].value)box[i].value +
				tmp+= space(box[i],18);
				box[i].value="";
			}
			toCtrl.options[nextitem] = new Option(tmp);
			toCtrl.options[nextitem].value =nextitem+1;
			makeStringToSend(toCtrl,SendString);
			
			if (toCtrl.name == "Invoices")
			{
				setReferenceNo(toCtrl);
			}
     	}
     	else
     	{
		alert("Amount field is Mandatory."); //'Amount fields is mandatory'
     	}
}

 function deleteItems(fromCtrl,box,SendString) 
 {
	var i = 0;
	var j;
	var k = 0;
	var inof=-1;
	var tmp="";
	
	while (i < (fromCtrl.options.length - k)) 
	{       
		if (fromCtrl.options[i].selected) 
		{
			// remove the item
			for (j = i; j < (fromCtrl.options.length - 1); j++) 
			{
				fromCtrl.options[j].text = fromCtrl.options[j+1].text;
				fromCtrl.options[j].value = fromCtrl.options[j+1].value;
				fromCtrl.options[j].selected = fromCtrl.options[j+1].selected;
			}			
			tmp=TrimIt(fromCtrl.options[i].text);
			k++;
		}
		else 
		{
			i++;
		}
	}
	
	for (i = 0; i < k; i++) 
	{
		fromCtrl.options[fromCtrl.options.length - 1] = null;
	 
	}
	for (var j=0;j< box.length ;j++) 
	{     
		box[j].value="";
	}
	
	makeStringToSend(fromCtrl,SendString);
	if (fromCtrl.name == "Invoices")
	{
		setReferenceNo(fromCtrl);
	}
	
	//call hook method if exist 
   	try{
		postInstallmentDeleteItem(fromCtrl);
   	}
   	catch(ex){
   	}
}
 


function UpdateItem(toCtrl,box,SendString)
{
	var i=toCtrl.selectedIndex;
	var tmp=" ";
	if (i==-1) 
	{
		alert("Select, please one of the elements!");
	}
	else
	{ 		
   		toCtrl.options[i].selected=false;	 
   		if (box[0].value!="") 
    		{
       			tmp=toCtrl.options[i].text;
      			var ii=tmp.indexOf('|'); 
      			toCtrl.options[i].text="";
      			for (var j=0;j< box.length ;j++) 
      			{ 
				toCtrl.options[i].text+=space(box[j],18);
				//box[j].value + 
				box[j].value="";
			}
		}
   		makeStringToSend(toCtrl,SendString);
		if (toCtrl.name == "Invoices")
		{
			setReferenceNo(toCtrl);
		}
  	}
  	//call hook method if exist to update the last payment date
   	try{
		postInstallmentUpdateItem(toCtrl);
  	}
   	catch(ex){
   	}
}

 function ReternToBox(toCtrl,box)
{
  var i=toCtrl.selectedIndex;
  var tmp=" ";
  if (i==-1) {
     alert("Select, please one of the elements!");
   }
 else
 { 
  tmp=toCtrl.options[i].text;
	for (i=0;i< box.length ;i++)
	 {      
    var ii=tmp.indexOf('|'); 
    if (ii>0)
    {box[i].value=Trim(tmp.substring(0,ii));   
    tmp=tmp.substring(ii+1,tmp.length);   
    }
  }
 }
}

 function NumberFixed(Elem,iNum,iFrac)
  {
    if (!(bIsNumFixed(Elem.value,iNum,iFrac)))
    {
      javascript:ErrorMsg(Elem, "This Field Is Number Field");
    }
  }

  function NumberFixedm(Elem,iNum,iFrac)
  {
    if (!(bIsNumFixedm(Elem.value,iNum,iFrac)))
    {
      window.alert("This Is Number Field");
      Elem.focus();
      //ErrorMsg(Elem, "This Field Is Number Field");
    }
  }

  function bIsNumFixed(str,iNum,iFrac)
  {
    var which=0;
    var ilNum=0;
    var ilFrac=0;
    var ostr = new String(TrimIt(str))
    for (var i = 0; i < ostr.length; i++)
    {
      var ch = ostr.substring(i, i + 1);
      if (ch=='.')
      {
	if (which==1)
	{
	  return false;
	}
	else
	{
	  which=1;
	}
      }
      else
      {
	if (which==1)
	{
	  ilFrac++;
	}
	else
	{
	  ilNum++;
	}
      }
      if ((ch < "0" || "9" < ch) && ch != '.')
      {
	Critical_Error=true;
	return false;
      }
    }
    if ((iNum<ilNum) || (iFrac<ilFrac))
    {
      Critical_Error=true;
      bErrorFound=true;
	//   alert("here");
      return false;
    }
    return true;
  }

  function TrimIt(sText)
  {
    var i=0;
    var DocIdStr = new String(sText);
    while ((DocIdStr.length-1>i) && (DocIdStr.charAt(i)==" "))
      i++;
    if (i!=0)
      DocIdStr = DocIdStr.substring(i,DocIdStr.length-1-i);
    i=DocIdStr.length-1;
    while ((i>0) && (DocIdStr.charAt(i)==" "))
      i=i-1;
    if (i!=DocIdStr.length-1)
      DocIdStr = DocIdStr.substring(0,i+1);
    if (DocIdStr.length==0)
    {
      return "";
    }
    else
    {
      return DocIdStr;
    }
  }

  function fn_align(box,side)
  {
    box.id=side;
  }

  function bIsNumFixedm(str,iNum,iFrac)
  {
    //Difference only on check first symbol= "-"
    var which=0;
    var ilNum=0;
    var ilFrac=0;
    var ostr = new String(TrimIt(str));
    var minus=ostr.substring(0,1);//check, if first simbol not "-"
    if (minus=="-")
    {
      var first=1;
    }
    else
    {
      var first=0;
    }
    for (var i = first; i < ostr.length; i++)
    {
      var ch = ostr.substring(i, i + 1);
      if (ch=='.')
      {
	if (which==1)
	{
	  return false;
	}
	else
	{
	  which=1;
	}
      }
      else
      {
	if (which==1)
	{
	  ilFrac++;
	}
	else
	{
	  ilNum++;
	}
      }
      if ((ch < "0" || "9" < ch ) && ch != '.')
      {
	Critical_Error=true;
	return false;
      }
    }
    if ((iNum<ilNum) || (iFrac<ilFrac))
    {
      Critical_Error=true;
      bErrorFound=true;
	//   alert("here");
      return false;
    }
    return true;
  } /* End of bIsNum function */


//////////////////////////////////////////////////////////////////
//function bIsNum(str) {
//var ostr = new String(TrimIt(str))
 //for (var i = 0; i < ostr.length; i++) {
 // var ch = ostr.substring(i, i + 1)
 // if ((ch!="-")&&(ch < "0" || "9" < ch) && ch != '.') {
 //  return false;
 // }
 //} 
 //return true;
//} /* End of bIsNum function */

//////////////////////////////////////////////////////////////////////////////////
function bIsNumFixed(str,iNum,iFrac) {
var which=0;
var ilNum=0;
var ilFrac=0;
var ostr = new String(TrimIt(str))
 for (var i = 0; i < ostr.length; i++) {
  var ch = ostr.substring(i, i + 1)
  if (ch=='.')
     {if (which==1) 
	     {return false;}
		else
		 {which=1;}
	 }
	else 
	 {
      if (which==1) 
	     {ilFrac++;}
		else 
		 {ilNum++;}
	 }
	 
  if ((ch < "0" || "9" < ch) && ch != '.') {
   Critical_Error=true;
   return false;

  }
 } 
 if ((iNum<ilNum) || (iFrac<ilFrac))
    {Critical_Error=true;
	 bErrorFound=true;
//	 alert("here");
	 return false;}
 return true;
} /* End of bIsNum function */




function Trim(sText)
{
	var i = 0;
	var DocIdStr = new String(sText);
    while (
	   (DocIdStr.length > i) && 
	   (
	    (DocIdStr.charAt(i) ==" ")||(escape(DocIdStr.charAt(i)) =="%A0")
	    )
    )  i++;
	//alert(escape(DocIdStr.charAt(i)));
    //while ((DocIdStr.length > i) && (escape(DocIdStr.charAt(i)) =="%A0"))  i++;
        
	DocIdStr = DocIdStr.substring(i, DocIdStr.length);
	i = DocIdStr.length - 1;
	while (
	       ( i > 0) && (
	    (DocIdStr.charAt(i) ==" ")||(escape(DocIdStr.charAt(i)) =="%A0")
	    )
	    ) i--;      
    DocIdStr = DocIdStr.substring(0, i + 1);
	return DocIdStr;
}

