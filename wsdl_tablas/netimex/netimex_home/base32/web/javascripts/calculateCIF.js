function calculateCIF(){

	var fobElem = window.document.IMPORT_DECLARATIONS_DETAILS_form.fob;
	var freightElem = window.document.IMPORT_DECLARATIONS_DETAILS_form.freight;
	var insuranceElem = window.document.IMPORT_DECLARATIONS_DETAILS_form.insurance;

	if((javascript:chkNumOfDigitAfterComma(fobElem,2) == 1) || (javascript:chkNumOfDigitAfterComma(freightElem,2) == 1)|| (javascript:chkNumOfDigitAfterComma(insuranceElem,2) == 1)){
	   return "0";
	}
	else{
		
		cif = parseFloat(0);
		if(fobElem != undefined && fobElem.value != undefined && fobElem.value.length > 0)
		{
			cif = cif + parseFloat(fobElem.value);
		}
		if(freightElem != undefined && freightElem.value != undefined && freightElem.value.length > 0)
		{
			cif = cif + parseFloat(freightElem.value);
		}
		if(insuranceElem != undefined && insuranceElem.value != undefined && insuranceElem.value > 0)
		{
			cif = cif + parseFloat(insuranceElem.value);
		}
		var sCIF = new String(cif.toFixed(2));
		if(window.document.IMPORT_DECLARATIONS_DETAILS_form.cif != undefined){
			window.document.IMPORT_DECLARATIONS_DETAILS_form.cif.value = sCIF;
			window.document.IMPORT_DECLARATIONS_DETAILS_form.cif.text = sCIF;
			window.document.IMPORT_DECLARATIONS_DETAILS_form.cif.disabled = true;
		}
		return sCIF;
	}
	
}