function SetTable( nNumberOfTable )
{
var bIsTable
   bIsTable = document.TABLES_TRANSLATION_form.dfQuestionSave.value
   if (IsCheckFormTranslationOk( bIsTable ))
   {
      if (nNumberOfTable == 999)
	     document.TABLES_TRANSLATION_form.dfQuestionSave.value = 1;
	  else
	    {
	     if (bIsTable == 1) 
		   {
		    if (bAnyEdit)
	      { 
		   if ( window.confirm("Do this table save ?"))
		     document.TABLES_TRANSLATION_form.dfQuestionSave.value = 1;
		   else 
		 document.TABLES_TRANSLATION_form.dfQuestionSave.value = 0;
			   }
			else
			   document.TABLES_TRANSLATION_form.dfQuestionSave.value = 0;
		}
	     else
		document.TABLES_TRANSLATION_form.dfQuestionSave.value = 0;
	}
      document.TABLES_TRANSLATION_form.dfNextTableNumber.value = nNumberOfTable;
      document.TABLES_TRANSLATION_form.submit();
   }
}

//////////////////////////////////////////////////////////////////////////////////
var bErrorFound;
var CMB_FIELD = 1;
var DF_FIELD = 2;
var bAnyEdit = false;

function IsCheckFormTranslationOk( bIsTable )
{
var sIsLanguage="DA";
var nNum=0;
var sNumberRow ="77";
var i;

    bErrorFound = false;
	nNum = eval(sNumberRow)

/*********  Check for language *************/
    if (javascript:bIsEmpty(sIsLanguage)) 
	{ 
	    if ( !IsCheckMndOk( CMB_FIELD, document.TABLES_TRANSLATION_form.cmbLanguage))
		  return false;
	}

/*******  Check for table description ******/
	if (bIsTable != 0)
	{
	    for (i=0; i<nNum; i++)
		{
		  if (document.TABLES_TRANSLATION_form.elements[i].name == "dfLocDesc")
		  {
		     if ( !IsCheckMndOk( DF_FIELD, document.TABLES_TRANSLATION_form.elements[i]))
		       return false;
		  }
		}
     }

	 return true;
}

//////////////////////////////////////////////////////////////////////////////////

function IsCheckMndOk(nFieldType, Elem)
{
	if (nFieldType == CMB_FIELD)
	{
	   if (Elem.options[Elem.selectedIndex].value=="")
	   { 
	      javascript:DisplayErrorMsg(Elem, "<%getErrorMsg(CMX20050)%>");
		  return false;
	   }
	}
	else if (nFieldType == DF_FIELD)
	{
	   if (Elem.value=="")
	   { 
	      javascript:DisplayErrorMsg(Elem, "<%getErrorMsg(CMX20050)%>");
		  return false;
	   }
	}
	return true;
}


function IsAnyEdit()
{
   bAnyEdit = true;
}

//////////////////////////////////////////////////////////////////////////////////

/*function IsRefNoEmpty()
{
var refNo="";
var sAction="";
    if (sAction=="N") {refNo=document.lc_form.tUS4reference_no.value}
    if (refNo=="") 
	 {document.lc_form.tUS4reference_no.focus();
	  return true}
	 else
	 {return false}
}*/


