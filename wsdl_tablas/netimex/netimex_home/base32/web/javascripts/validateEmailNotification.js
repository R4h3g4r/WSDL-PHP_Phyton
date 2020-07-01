var savedSMSAddress = document.<%getPageName()%>_form.sms_no.value;
var savedEmailAddress = document.<%getPageName()%>_form.email_address.value;
function validateEmailNotification() 
{
    if (document.<%getPageName()%>_form.accept.checked)
    {
    	if (document.<%getPageName()%>_form.sms_no.value == ""
    		&& document.<%getPageName()%>_form.email_address.value == "")
    	{
    		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.sms_no, "<%getErrorMsg(NMX00214)%>");
    	}
    	else if (document.<%getPageName()%>_form.sms_no.value != ""
    			&& document.<%getPageName()%>_form.email_address.value == "")
    	{
    		javascript:checkActivate();
    	}
    	else if (document.<%getPageName()%>_form.sms_no.value == ""
    			&& document.<%getPageName()%>_form.email_address.value != "")
    	{
    		javascript:checkEmailAddress();
    	}
    	else if (document.<%getPageName()%>_form.sms_no.value != ""
    			&& document.<%getPageName()%>_form.email_address.value != "")
    	{
    		javascript:checkEmailAddress();
    	}
    }
}


function checkEmailAddress()
{
    var isValid = true;
    var elemString = new String(document.<%getPageName()%>_form.email_address.value);

    var atSymbolIndex = elemString.indexOf('@');
    var lastDotIndex = elemString.lastIndexOf('.');
    var spaceIndex = elemString.indexOf(' ');
    var length = elemString.length;

    if (atSymbolIndex < 1) 
    {
        isValid = false;
    }
    else if (lastDotIndex < atSymbolIndex) 
    {
        isValid = false;
    }
    else if (length - lastDotIndex <= 2) 
    {
        isValid = false;
    }
    else if (spaceIndex != -1) 
    {
        isValid = false
    }

    if (!isValid) 
    {
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.email_address, "<%getErrorMsg(NMX00203)%>");
    }
    else
    {
		javascript:checkActivate();
    }
}


function checkActivate()
{
	if (!document.<%getPageName()%>_form.activate.checked)
	{
		if (document.<%getPageName()%>_form.sms_no.value != savedEmailAddress
			|| document.<%getPageName()%>_form.email_address.value != savedEmailAddress)
		{
			if (confirm("<%getError(NMX00205)%>"))
			{
				document.<%getPageName()%>_form.sms_no.value = savedSMSAddress;
				document.<%getPageName()%>_form.email_address.value = savedEmailAddress;
			}
			else
			{
				iErrorStatus = bstatus;
				document.<%getPageName()%>_form.activate.focus();
			}
		}
	}
}


