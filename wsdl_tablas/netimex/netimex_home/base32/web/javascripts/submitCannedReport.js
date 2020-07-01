
function submitCannedReport(SubmitType) {
	
	var nextPage;
	var cetegoryElement ;
	var reportCategoryID;		
	var period = 0;
	var periodElement;
	var mainCategotyId = 0;

	if(document.<%getPageName()%>_form.reportCategoryID != null)
		cetegoryElement = document.<%getPageName()%>_form.reportCategoryID; 
	else 
		return;
	
	if(document.<%getPageName()%>_form.period != null)
		periodElement = document.<%getPageName()%>_form.period; 
	else 
		return;

	size = cetegoryElement.length;
	for (i=0; i<size ; i++)
		if (cetegoryElement[i].checked == true)
			reportCategoryID = cetegoryElement[i].value;

	size = periodElement.length;
	for (i=0; i<size ; i++)
		if (periodElement[i].checked == true)
			period = periodElement[i].value;

	document.<%getPageName()%>_form.periodID.value = period;	

	// The place of the String in the array ** must ** be matching to the categoty  value at 
	// the ReportConstants.java example : if OPEN_LC_CATEGORY = 20 the matching command will be at the 20 place
	 

	var reportsCommands = new Array('','LC_ISSUED','LC_RECEIVED','LC_AMENDMENTS_MADE','LC_AMENDMENTS_RECEIVED',
			'LC_PAYMENTS_MADE','LC_PAYMENTS_RECEIVED','STANDBY_LC_ISSUED','STANDBY_LC_AMENDMENTS',
			'STANDBY_LC_CLAIM','COLLECTION_ISSUED','COLLECTION_RECEIVED','COLLECTION_PAYMENTS_MADE',
			'COLLECTION_PAYMENTS_RECEIVED','GUARANTEE_ISSUED','GUARANTEE_PAYMENTS','REMITTANCES_ISSUED',
			'REMITTANCES_RECEIVED','ACCEPTANCE_PAYABLE','ACCEPTANCE_RECEIVABLE','OPEN_LC',
			'OPEN_STANDBY_LC','OPEN_GUARANTEE','OPEN_COLLECTION','LC_EXPIRING','STANDBY_LC_EXPIRING',
			'GUARANTEE_EXPIRING','LC_AUTO_RENEWING','FEE_CHARGED','TBD','USER_AUDIT_TRAIL','USER_ACTIVITY_STATISTICS');

	nextPage = reportsCommands[reportCategoryID];

	//  set the main category ID
	if((reportCategoryID == 1)|| (reportCategoryID == 2)||(reportCategoryID == 3)||
    	   (reportCategoryID == 4)|| (reportCategoryID == 5)||(reportCategoryID == 6)||
	   (reportCategoryID == 7)||(reportCategoryID == 8)||(reportCategoryID == 9)||	
	   (reportCategoryID == 10)|| (reportCategoryID == 11)||(reportCategoryID == 12)||
    	   (reportCategoryID == 13)|| (reportCategoryID == 14)||(reportCategoryID == 15)||
	   (reportCategoryID == 16)||(reportCategoryID == 17)
	  )
		mainCategotyId = 1;  // ACTIVITY_REPORTS_MAIN_CATEGORY
	else if((reportCategoryID == 18)||(reportCategoryID == 19)||(reportCategoryID == 20)||
		  (reportCategoryID == 21)||(reportCategoryID == 22)||(reportCategoryID == 23)||
	        (reportCategoryID == 24)||(reportCategoryID == 25)||(reportCategoryID == 26)||	
		  (reportCategoryID == 27)
		 )
		mainCategotyId = 2;  // CASH_MANAGEMENT_MAIN_CATEGORY 
      else if(reportCategoryID == 28)
		mainCategotyId = 3;  // FEE_MAIN_CATEGORY
      else if(reportCategoryID == 29)
		mainCategotyId = 4;  // PO_MAIN_CATEGORY 
	else if((reportCategoryID == 30)||(reportCategoryID == 31))
		mainCategotyId = 5;  // USER_MAIN_CATEGORY

	document.<%getPageName()%>_form.reportMainCategoryID.value = mainCategotyId;
	document.<%getPageName()%>_form.nextPage.value = nextPage;

	if(reportCategoryID!=null)	
		document.<%getPageName()%>_form.categoryID.value = reportCategoryID;

//	alert("reportCategoryID="+reportCategoryID + "; periodId="+ period);
	javascript:chkSubmitForm(SubmitType,'N');
}
