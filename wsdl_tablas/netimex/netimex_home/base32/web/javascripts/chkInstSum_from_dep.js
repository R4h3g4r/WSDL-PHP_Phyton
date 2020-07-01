//////////////////////////////////////////////////////////////////////////////////
function chkInstSum()
{ 
   var	sString = document.<%getPageName()%>_form.installments.value;
   var i=sString.indexOf('|');
   var igrid_amount=0;
   var n=0;
   var amount_val = document.<%getPageName()%>_form.amount.value;       
   var str_val = javascript:ReplaceInStr(amount_val,'<%Application("DecimalSymbol")%>',".");

   while(i>=0)
   {
    sString=sString.substring((i+1),sString.length);
    i=sString.indexOf('|');
     n++;
   }
    n=n/3;
   var tmp;
   var	sdtype = "<%getDealType()%>";
   var tranType = "<%getTranType()%>";
   var inc_dec_amount;
   
    if (javascript:GetSight()=="I")
    {
	   tmp=Math.round(javascript:calcSum()*100)/100;
	   
	   if (tmp==-1)
	   {
	      return false;
	      
	   }   
	   if (document.<%getPageName()%>_form.checkinstallmentssum.checked==true)
       {
	 if (sdtype=="01")
	     {
	     	   if (document.<%getPageName()%>_form.inc_amount.value != null && document.<%getPageName()%>_form.inc_amount.type != "hidden" && document.<%getPageName()%>_form.inc_amount.value != "")
	     	   {
	     	   	    inc_dec_amount = javascript:ReplaceInStr(document.<%getPageName()%>_form.inc_amount.value,'<%Application("DecimalSymbol")%>',".");
	     	   	    str_val = parseFloat(str_val) + parseFloat(inc_dec_amount);
	     	   }
	     	   if (document.<%getPageName()%>_form.dec_amount.value != null && document.<%getPageName()%>_form.dec_amount.type != "hidden" && document.<%getPageName()%>_form.dec_amount.value != "")
	     	   {
	     	   	    inc_dec_amount = javascript:ReplaceInStr(document.<%getPageName()%>_form.dec_amount.value,'<%Application("DecimalSymbol")%>',".");
	     	   	    str_val = parseFloat(str_val) - parseFloat(inc_dec_amount);
	     	   }
	     	   
		   if (parseFloat(str_val) != parseFloat(tmp))
		   {
		      //document.<%getPageName()%>_form.amount.focus();
		      javascript:DisplayErrorMsg(document.<%getPageName()%>_form.amount, "<%getError(cmx20013)%>");
		      //alert("<%getError(cmx20013)%>");
			  bErrorFound=true;
		      return false;
		   }
        
	     }
	     else 
	     {
		   if (parseFloat(str_val)<tmp)
		   {
		      //document.<%getPageName()%>_form.amount.focus();
		      //alert("<%getError(cmx20014)%>");
		      javascript:DisplayErrorMsg(document.<%getPageName()%>_form.amount, "<%getError(cmx20014)%>");
			  bErrorFound=true;
		      return false;
		   }
	     }
	     if (sdtype=="01" && n>12)
	     {
		   //alert("<%getError(NMX00031)%>");
		   javascript:DisplayErrorMsg(document.<%getPageName()%>_form.amount, "<%getError(NMX00031)%>");
		   bErrorFound=true;
		   return false;
	     }
	   }
	}
	else 
	{
	 if (n>0)
	 {
	  //document.<%getPageName()%>_form.amount.focus();
	     //alert("<%getError(nmx00002)%>");
	     javascript:DisplayErrorMsg(document.<%getPageName()%>_form.amount, "<%getError(nmx00002)%>");
		 bErrorFound=true;
	     return false;
	 };
	}
    return true;
}

function calcSum()
{
   var sString,n;
   var inst_date=new Array();
   var inst_ten=new Array();
   sString =document.<%getPageName()%>_form.installments.value;
   sString =ReplaceInStr(sString,'.',".");
    var i=sString.indexOf('|');
    var igrid_amount=0;
     n=0;
    while(i>0)
    {
     igrid_amount+=eval(Trim(sString.substring(0,i)));
     sString=sString.substring((i+1),sString.length);
     ii=sString.indexOf('|');
     inst_ten[n]=Trim(sString.substring(0,ii));
     sString=sString.substring((ii+1),sString.length);
      ii=sString.indexOf('|');  
      inst_date[n]=Trim(sString.substring(0,ii));
      sString=sString.substring((ii+1),sString.length);
      i=sString.indexOf('|');
       n++;
      }
    var tmp;
	var row1;
	var row2;
	var row3;
	var all_value=0;        
	rows = n;
    for(k=0;k<rows;k++)
    {
	   row1=TrimIt(igrid_amount);
	   if (row1=="" || row1=="0")
	   {	 

		 //document.<%getPageName()%>_form.amount.focus();
		 //alert("Amount field is Mandatory. (installments");
		 javascript:DisplayErrorMsg(document.<%getPageName()%>_form.amount, "Amount field is Mandatory. (installments" + k + ")");
		 bErrorFound=true;
		 return -1;
	   }
	  else 
	    {tmp=row1;}
	   row2=TrimIt(inst_ten[k]);
	   row3=TrimItd(inst_date[k]);
	   if ((row2=="" || ((row2=="0" || row2=="00") && k > 0)) && (row3==""))
	   {
		  //alert("Tenor Days or Due Date is mandatory. (installments" + k + ")");
		  javascript:DisplayErrorMsg(document.<%getPageName()%>_form.amount, "Tenor Days or Due Date is mandatory. (installments" + k + ")");
		  bErrorFound=true;
		return -1;
	  }
	  else   
	  {
		if ((row2!="")  && (row3!=""))
	        {
		   //document.<%getPageName()%>_form.amount.focus();
		   //alert("Either Tenor Days field or Due Date field is allowed. (installments" + k + ")");
		   javascript:DisplayErrorMsg(document.<%getPageName()%>_form.amount, "Either Tenor Days field or Due Date field is allowed. (installments" + k + ")");
		   bErrorFound=true;
		   return -1;
		 }
		 else
		 {
		     if ((row2 == "") && (row3!=""))
		     {
		     	if ((javascript:daysElapsed('<%getCurDate()%>', row3)) > 0)
		     	{
			     javascript:DisplayErrorMsg(document.<%getPageName()%>_form.box_Installments[2], "<%getError(NMX01003)%>"+" (installments" + (k + 1) + ")");
			     return -1;
        		}
        	     }
        	 }
          }
    } 
	  var str_tmp = ReplaceInStr(tmp,'.',".");		  
	   all_value=parseFloat(str_tmp);	  
    return all_value;
}
function TrimItd(sText)
{
var i=0;
var DocIdStr = new String(sText);
    while ((DocIdStr.length-1>i) && ((DocIdStr.charAt(i)==" ") || (DocIdStr.charAt(i)=="/"))) i++;
	if (i==DocIdStr.length-1)
	{DocIdStr="";}
	  else 
	{
	  if (i!=0) DocIdStr = DocIdStr.substring(i,DocIdStr.length-1-i);
	  i=DocIdStr.length-1;
//	  alert(DocIdStr );
	  while ((i>0) && (DocIdStr.charAt(i)==" ")) i=i-1;	  
      if (i!=DocIdStr.length-1) DocIdStr = DocIdStr.substring(0,i+1);
	}
	if (DocIdStr.length==0) 
	{return ""}
	else 
	{return DocIdStr};
}
