/////////////////////////////////////////////////////////////////
function chkInvoicesAmount()
{
    var sString=new String(""); 
    var str_invoice,str_value;
	var igrid_amount;
	var tmp,amount,i,ii,n;
    var inv_new=new Array();
    i=1;
    n=0;
    amount = 0;
	igrid_amount=0;
        var decymal_symbol='<%getDecimalSymbol()%>';
	var tmpAmount=0;
	sString = document.<%getPageName()%>_form.invoices.value;
 
    i=sString.indexOf('|');
    while(i>0)
    {
		inv_new[n]=Trim(sString.substring(0,i));
		sString=sString.substring((i+1),sString.length);
		ii=sString.indexOf('|');
		tmpAmount=(sString.substring(0,ii)).replace(decymal_symbol,".");
		igrid_amount+=eval(tmpAmount);
		sString=sString.substring((ii+1),sString.length);
		i=sString.indexOf('|');
		 n++;
	}
    igrid_amount=Math.round(igrid_amount*100)/100;
	str_value = javascript:ReplaceInStr(document.<%getPageName()%>_form.amount.value,decymal_symbol,".");
	if ( igrid_amount != parseFloat(str_value)) {
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.amount, "<%getError(CMX00018)%>");
		if (igrid_amount!=0)	
			document.<%getPageName()%>_form.amount.focus();
		else
			document.<%getPageName()%>_form.Invoices.focus();
		return false;
	}
	if (!javascript:chkDuplicateInvoices(inv_new)){
	//document.<%getPageName()%>_form.amount.focus();
      return false;
    }

    return true;
}
//////////////////////////////////////////////////////////////////////////////////

