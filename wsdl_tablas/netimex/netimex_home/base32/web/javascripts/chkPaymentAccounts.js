/////////////////////////////////////////////////////////////////////////////////

function chkPaymentAccounts() 
{	
	var Flag;
	var Mandatory;
	Flag = false;
	Mandatory = "<%getMandatoryPaymentItem()%>";

	tmp = Mandatory;
	var i;
	var c;
	var pay,acc;
	i=0;
	c=0;
 
	while (tmp.indexOf(',') >= 0)
	{
		tmp = tmp.substr(tmp.indexOf(',') + 1)
		i++;
	}
	if (Mandatory == '')
	{
		Flag = true;
	}

	pay = new Array(3);
	acc = new Array(3);


	if (document.<%getPageName()%>_form.pay_item1 != null && document.<%getPageName()%>_form.acc_detail1 != null)
	{
		pay[0] = document.<%getPageName()%>_form.pay_item1[document.<%getPageName()%>_form.pay_item1.selectedIndex].text;
		acc[0] = document.<%getPageName()%>_form.acc_detail1[document.<%getPageName()%>_form.acc_detail1.selectedIndex].text;

		if (!javascript:bIsEmpty(pay[0]) && javascript:bIsEmpty(acc[0])) 
		{
	    		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.acc_detail1, "<%getError(CMX20050)%>");
			Flag=true;		
		}
		if (javascript:bIsEmpty(pay[0]) && !javascript:bIsEmpty(acc[0])) 
		{
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.pay_item1, "<%getError(CMX20050)%>");
			Flag = true;
		}
	}
	
	if (document.<%getPageName()%>_form.pay_item2 != null && document.<%getPageName()%>_form.acc_detail2 != null)
	{
		pay[1] = document.<%getPageName()%>_form.pay_item2[document.<%getPageName()%>_form.pay_item2.selectedIndex].text;
		acc[1] = document.<%getPageName()%>_form.acc_detail2[document.<%getPageName()%>_form.acc_detail2.selectedIndex].text;

		if (!javascript:bIsEmpty(pay[1]) && javascript:bIsEmpty(acc[1])) 
		{
	    		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.acc_detail2, "<%getError(CMX20050)%>");
			Flag = true;
		}     
		if (javascript:bIsEmpty(pay[1]) && !javascript:bIsEmpty(acc[1])) 
		{
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.pay_item2, "<%getError(CMX20050)%>");
			Flag = true;
		}
	}
	
	if (document.<%getPageName()%>_form.pay_item3 != null && document.<%getPageName()%>_form.acc_detail3 != null)
	{
		pay[2] = document.<%getPageName()%>_form.pay_item3[document.<%getPageName()%>_form.pay_item3.selectedIndex].text;
		acc[2] = document.<%getPageName()%>_form.acc_detail3[document.<%getPageName()%>_form.acc_detail3.selectedIndex].text;
		if (!javascript:bIsEmpty(pay[2]) && javascript:bIsEmpty(acc[2])) 
		{
	    		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.acc_detail3, "<%getError(CMX20050)%>");
			Flag = true;
		}     
		if (javascript:bIsEmpty(pay[2]) && !javascript:bIsEmpty(acc[2])) 
		{
			javascript:DisplayErrorMsg(document.<%getPageName()%>_form.pay_item3, "<%getError(CMX20050)%>");
			Flag = true;
		}
	}
        

	if (!Flag)
	{
		for(var j=0; j < 3; j++)
		{
			if (Mandatory.indexOf(pay[j]) >=0 && pay[j] != "" && Mandatory != "" )
			{
				c++;
				Mandatory = Mandatory.substr(0,Mandatory.indexOf(pay[j])) + Mandatory.substr(Mandatory.indexOf(pay[j]) + 3);
			}
	}	
    	
	if (i != c)
    	{
		javascript:DisplayErrorMsg(document.<%getPageName()%>_form.pay_item1, "<%getError(CMX20050)%>");
    	}
   } 	
}

/////////////////////////////////////////////////////////////////////////////////


