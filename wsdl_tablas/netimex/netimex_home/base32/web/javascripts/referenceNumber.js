function PrintRefNo()
{
// Eliezer begin
   //if (document.lc_form.cND1gen_ref_num.checked)
   if (document.forms[0].cND1gen_ref_num.checked)
// Eliezer end
   {
// Eliezer begin
     //document.lc_form.tUS4reference_no.value = document.lc_form.hNxxreference_no_gen.value
     document.forms[0].tUS4reference_no.value = document.forms[0].hNxxreference_no_gen.value
// Eliezer end
  //   alert(document.lc_form.tUS4reference_no.value)
     alert(document.forms[0].tUS4reference_no.value)
// Eliezer begin
  //   document.lc_form.cND1gen_ref_num.focus();
     document.forms[0].cND1gen_ref_num.focus();
// Eliezer end
   }
   else
   {
// Eliezer begin
//      if (  document.lc_form.tUS4reference_no.value !="")
      if (  document.forms[0].tUS4reference_no.value !="")
// Eliezer end
      {
// Eliezer begin
//        document.lc_form.tUS4reference_no.value=""
        document.forms[0].tUS4reference_no.value=""
// Eliezer end
      }

   }

}
function SetFocus()
{
// Eliezer begin
//   if (document.lc_form.cND1gen_ref_num.checked)
   if (document.forms[0].cND1gen_ref_num.checked)
// Eliezer end
   {
// Eliezer begin
     //if (  document.lc_form.tUS4reference_no.value != document.lc_form.hNxxreference_no_gen.value )
     if (  document.forms[0].tUS4reference_no.value != document.forms[0].hNxxreference_no_gen.value )
// Eliezer end
     {
// Eliezer begin
        //document.lc_form.tUS4reference_no.value = document.lc_form.hNxxreference_no_gen.value
        document.forms[0].tUS4reference_no.value = document.forms[0].hNxxreference_no_gen.value
// Eliezer end
     }
// Eliezer begin
     //document.lc_form.cND1gen_ref_num.focus();
     document.forms[0].cND1gen_ref_num.focus();
// Eliezer end
   }
   else
   {
      //if (  document.lc_form.tUS4reference_no.value !="")
      //{
        //document.lc_form.tUS4reference_no.value=""
      //}
   }

}

function IsRefNoEmpty()
{
// Eliezer begin
//var refNo="<=request("RefNo")%>";
//var sAction="<=request("Action")%>";
var refNo="";
var sAction="N";

//    if (sAction=="N") {refNo=document.lc_form.tUS4reference_no.value}
    if (sAction=="N") {refNo=document.forms[0].tUS4reference_no.value}
    if (refNo=="")
         //{document.lc_form.tUS4reference_no.focus();
         {document.forms[0].tUS4reference_no.focus();
// Eliezer end
	  return true}
	 else
	 {return false}
}

function SetStatus(sStatus){
 // Eliezer begin
 //var sAction = '<=request.querystring("Action")%>';
 //var sRefNoAction= '<=sRefNoAction%>';
 var sAction = 'N';
 var sRefNoAction= 'N';
        //document.lc_form.hUD1status.value = sStatus;
        document.forms[0].hUD1status.value = sStatus;
 // Eliezer end
	if (sStatus!="77") {
// Eliezer begin
          //if ( HandleSubmitForm(document.lc_form) )
          if ( HandleSubmitForm(document.forms[0]) )
	  {
                  //document.lc_form.submit();
                  document.forms[0].submit();
// Eliezer end
	  }
	}
	else
	{
	 if (IsRefNoEmpty())
     {
     // Eliezer begin
      alert("This field is required.");
      //alert("<=GetError("CMX20050")%>");
      //Eliezer end
  	  return;
	 }
	 if (sAction!='U' || sRefNoAction!='U')
	 {
   // Eliezer begin
   /*
	   <if (sCustomerId = "BANK") then %>
			document.lc_form.tUS4reference_no.value="BANK"
	   <end if%>
	   //document.lc_form.tUS4reference_no.select();
	   //document.lc_form.tUS4reference_no.focus();
           document.forms[0].tUS4reference_no.select();
           document.forms[0].tUS4reference_no.focus();
   */
     //Eliezer end

     //Eliezer begin
     //if (confirm(document.lc_form.tUS4reference_no.value + " <=GetError("nmx00009")%>"))
     if (confirm(document.lc_form.tUS4reference_no.value + "  is the name of the Template ,Are you sure you want to save it?"))
     // Eliezer end
	   {
	     submitTempl();
	   }
	  }
	 else
	 {
	     submitTempl();
	 }
	}
}
