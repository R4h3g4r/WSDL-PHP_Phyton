
var Critical_Error=0,bErrorFound=0;
var DealType= "<%pageData.getPageParameters().get("DealType").toString().substring(0,1)%>";	 
var status=<%pageData.getPageParameters().get("status").toString()%>;

function chkPayment()
{

}
/////////////////////////////////////////////// chkBeforeSubmit
function chkBeforeSubmit()
{
if ( HandleSubmitForm() )
	{  
	   document.<%getPageName()%>_form.submit();
	}
}

/////////////////////////////////////////////// HandleSubmitForm
function HandleSubmitForm()
{  
	var sReject="<%pageData.getPageParameters().get("reject").toString()%>";
	
	if (sReject=="false" && document.<%getPageName()%>_form.reject.checked==false )
	{
		bErrorFound=bValidChk();
		return !Critical_Error;
	}
	
}


