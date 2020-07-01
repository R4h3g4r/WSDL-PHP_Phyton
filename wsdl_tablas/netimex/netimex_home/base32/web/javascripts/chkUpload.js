function chkUpload()
{
var idx;
var Filename;
var errStr="";
var FileExt="";

	idx=document.UPLOAD_TRAN_form.comboTranType.selectedIndex;
	Filename=document.UPLOAD_TRAN_form.FileUpload.value;
	FileExt=Filename.substr(Filename.lastIndexOf(".")+1);
	if (Filename=="") errStr='Data file was not selected';
	if (FileExt.toLowerCase()!="xml" && Filename!="")
	errStr='<%getError(UPL00004)%>';
	//'Only xml files can be uploaded'
	if (document.UPLOAD_TRAN_form.comboTranType.options[idx].value=="")
	 errStr+='\n<%getError(UPL00005)%>'
	if (document.UPLOAD_TRAN_form.txtTranNumber.value=="" || isNaN(document.UPLOAD_TRAN_form.txtTranNumber.value)) errStr+='\nNumber of Transactions:-Not a valid Number'
	if (document.UPLOAD_TRAN_form.txtTotalAmount.value=="" || isNaN(document.UPLOAD_TRAN_form.txtTotalAmount.value)) errStr+='\nTotal amount:-Not a valid Number'
	if (errStr!="")
		alert(errStr);
			else

document.UPLOAD_TRAN_form.submit();

}
