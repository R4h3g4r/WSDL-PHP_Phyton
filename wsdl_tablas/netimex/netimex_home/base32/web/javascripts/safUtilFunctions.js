//
// This javascript file must be included in the SAF page since it 
//
function getInstallmentTime(){
	var instDateTime = 0;
	var dateFormat = "<%getInputDateFormat()%>";
	var boxInstallmentsArr = document.<%getPageName()%>_form.box_Installments;
	//check if an instalment is inserted/updated
	if(boxInstallmentsArr && boxInstallmentsArr.length>0){
		//if there is a value at the installment last box
		//assume it is a date
		if(boxInstallmentsArr[boxInstallmentsArr.length-1].value!=""){
			//alert("due date="+boxInstallmentsArr[boxInstallmentsArr.length-1].value);
			instDateTime = getDateFromFormat(boxInstallmentsArr[boxInstallmentsArr.length-1].value,dateFormat);			
			//alert("in due date: "+instDateTime);
		}			
		//check tenor days assume it is one before the date
		else if(boxInstallmentsArr[boxInstallmentsArr.length-2].value!=""){
			var tenorDays = eval(boxInstallmentsArr[boxInstallmentsArr.length-2].value);
			//alert("tenorDays="+tenorDays);
			var effDateElem = document.<%getPageName()%>_form.effective_date;		
			var effDateTime = getTimeStamp(effDateElem);
			if(effDateTime > 0){					
				var addTime = tenorDays*24*3600000;					
				instDateTime = eval(effDateTime) + eval(addTime);				
			}
			//alert("in tenor days: "+instDateTime);
		}
	}
	return instDateTime;
}

function onInstallmentAddItem(toCtrl){
	var instDateTime = getInstallmentTime();
	var paymentDate = document.<%getPageName()%>_form.payment_date;
	var paymentDateTime = getTimeStamp(paymentDate);
	//alert("paymentDateTime="+paymentDateTime+" instDateTime="+instDateTime);
	if(instDateTime>paymentDateTime){
		setPaymentDate(new Date(instDateTime));		
	}	
}

function postInstallmentUpdateItem(toCtrl){
	postInstallmentDeleteItem(toCtrl);
}

function getInstallmentLatestDate(toCtrl){
	var latestDate = 0;
	var dateFormat = "<%getInputDateFormat()%>";
	for(i=0; i<toCtrl.options.length; i++){
		var instText = new String(toCtrl.options[i].text);
		//alert("instText="+instText);
		tempArr = instText.split("|");
		//get the last element as the due date
		var instDateStr = new String(tempArr[2]);
		//alert("instDateStr111="+instDateStr);
		var instDateTime=0;
		instDateStr = Trim(instDateStr);
	
		if(instDateStr && instDateStr!="" ){
			//alert("instDateStr=:x"+instDateStr+"xxx");		
			instDateTime = getDateFromFormat(instDateStr,dateFormat);
		}else{
			//get the one before last element as the tenor days
			var instTenorDaysStr = new String(tempArr[1]);
			//alert(" tenor days befor trim="+instTenorDaysStr);
			instTenorDaysStr = Trim(instTenorDaysStr);
			//alert(" tenor days instTenorDaysStr=: "+instTenorDaysStr);
			if(instTenorDaysStr!=""){					
				var effDateElem = document.<%getPageName()%>_form.effective_date;		
				var effDateTime = getTimeStamp(effDateElem);
				if(effDateTime > 0){	
					//calc the time of tenor days after effective date							
					var addTime = eval(instTenorDaysStr)*24*3600000;					
					instDateTime = eval(effDateTime) + eval(addTime);				
				}	
			}
		}
		if(instDateTime>latestDate){
			latestDate = instDateTime;
		}		
	}
	return latestDate;
}


function postInstallmentDeleteItem(toCtrl){
	var instLatestTime = getInstallmentLatestDate(toCtrl);
	if(instLatestTime>0){
		setPaymentDate(new Date(instLatestTime));
	}else{
		document.<%getPageName()%>_form.payment_date.value="";
	}	
}

function getTimeStamp(dateElem){
	var dateFormat = "<%getInputDateFormat()%>";
	var dateTime=0;
	if(dateElem && dateElem.value!=""){			
		dateTime = getDateFromFormat(dateElem.value,dateFormat);
	}
	return dateTime;
}


function setPaymentDate(newDate){
	//alert("setPaymentDate-newDate="+newDate);
	var dateFormat = "<%getInputDateFormat()%>";
	var paymentDate = document.<%getPageName()%>_form.payment_date;
	if(newDate){					
		if(paymentDate)//update payment date
			paymentDate.value = formatDate(newDate,dateFormat);	
	}
}


function getTenorDaysDate(effDateTime, tenorDaysElem){
	var tenorDaysDate = null;
	if(tenorDaysElem && tenorDaysElem.value!=""){			
		if(isNaN(tenorDaysElem.value)==false &&	effDateTime > 0){
			var tenorDaysDate = new Date(effDateTime);
			//increase the effective date with the number of tenor days
			tenorDaysDate.setDate(tenorDaysDate.getDate()+parseInt(tenorDaysElem.value));				
		}
	}
	return tenorDaysDate;
}

function getErrorForInvalidInstallmentSum(){
	return "<%getError(NMX00225)%>";
}