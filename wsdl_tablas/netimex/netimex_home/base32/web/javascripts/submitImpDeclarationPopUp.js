function submitImpDeclarationPopUp()
{	
	var SendString = null;
	var ElemName = document.<%getPageName()%>_form.TableName.value;
	var lineNo = document.<%getPageName()%>_form.LineNumber.value;
	var fob =  document.<%getPageName()%>_form.fob.value;
	var insurance = document.<%getPageName()%>_form.insurance.value;
	var freight = document.<%getPageName()%>_form.freight.value;
	var ddi	= document.<%getPageName()%>_form.ddi.value;
	var error = false;

 //validations - start
  
	//1 - incoterm cannot be blank
	var incotermElm = document.<%getPageName()%>_form.cmbIncoterm;
	var sValue = GetElemValue(document.<%getPageName()%>_form.cmbIncoterm);
	if(javascript:Trim(sValue)==""){
		javascript:DisplayErrorMsg(incotermElm,"Incoterm " + '<%getErrorMsg(NIM00013)%>');
		error = true;
	}
	//2 - incoterm 'FOB'  (code = 'C')
	else if(sValue == "C"){
			
		if(fob == undefined || fob == ""){
			javascript:DisplayErrorMsg(incotermElm,"FOB" + '<%getErrorMsg(NIM00015)%>');
			error = true;
		}else if(parseFloat(javascript:Trim(fob)) <= 0){
			//fob value must be greater than 0
			javascript:DisplayErrorMsg(incotermElm,"FOB" + '<%getErrorMsg(NIM00015)%>');
			error = true;
		}else if(insurance != undefined && javascript:Trim(insurance) != "" && javascript:Trim(insurance) != "0"){
			//for FOB, insurance must be blank or zero
			javascript:DisplayErrorMsg(incotermElm,'<%getErrorMsg(NIM00016)%>');
			error = true;
		}else if(freight != undefined && javascript:Trim(freight) != "" && javascript:Trim(freight) != "0"){
			//for FOB, freight must be blank or zero
			javascript:DisplayErrorMsg(incotermElm,'<%getErrorMsg(NIM00016)%>');
			error = true;
		}
	}
	//3 incoterm 'CFR' (code = 'B')
	else if(sValue == "B"){
			
		if(fob == undefined || fob == "" || javascript:Trim(fob) == "0" ||
		   freight == undefined || freight == "" || javascript:Trim(freight) == "0"){
			javascript:DisplayErrorMsg(incotermElm,"FOB and Freight " + '<%getErrorMsg(NIM00015)%>');
			error = true;
		}else if(insurance != undefined && javascript:Trim(insurance) != "" && javascript:Trim(insurance) != "0"){
			//for CFR, insurance must be blank or zero
			javascript:DisplayErrorMsg(incotermElm,'<%getErrorMsg(NIM00017)%>');
			error = true;
		}
	}
	//4 incoterm 'CIP' (code = 'G')
	else if(sValue == "G"){
		if(fob == undefined || fob == "" || javascript:Trim(fob) == "0" ||
		   insurance == undefined || insurance == "" || javascript:Trim(insurance) == "0"){
			javascript:DisplayErrorMsg(incotermElm,"FOB and Insurance " + '<%getErrorMsg(NIM00015)%>');
			error = true;
		}else if(freight != undefined && javascript:Trim(freight) != "" && javascript:Trim(freight) != "0"){
			//for CIF, insurance must be blank or zero
			javascript:DisplayErrorMsg(incotermElm,'<%getErrorMsg(NIM00018)%>');
			error = true;
		}
	}
	
	//5 ddi number is mandatory
	if(error == false){
		var ddiElem = document.<%getPageName()%>_form.ddi;
		if(ddi == undefined || javascript:Trim(ddi) == ""){
			javascript:DisplayErrorMsg(ddiElem,'<%getErrorMsg(NIM00021)%>');
			error = true;
		}
	}
	
	
 //validations - end
    
	if(error == false){
		//calculated fields
		var cif = javascript:calculateCIF();
	
		//incoterm
		var incotermElm = document.<%getPageName()%>_form.cmbIncoterm;
	
		document.<%getPageName()%>_form.incoterm.value = incotermElm.options[incotermElm.options.selectedIndex].text;
	
		SendString = javascript:makeSendStringImpDeclarPopUp();
		SendString = "<%getLineNo()%>=" + lineNo + "|" + SendString + "cif=" + cif + "|";
		top.opener.updateItem(ElemName,SendString,lineNo);
		window.close();
	}
}