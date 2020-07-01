function CheckAllAudit(sElemName)
{
  var formName;
  formName= "AUDIT_TRAIL_CUSTOMIZE" + "_form";
  var fname;
  for (var i=0;i<document.AUDIT_TRAIL_CUSTOMIZE_form.elements.length;i++)
  {
    var e = document.AUDIT_TRAIL_CUSTOMIZE_form.elements[i];
    fname = e.name;
    //alert (sElemName.name);
    if (fname !='Page'&&fname !='Action'&&fname !='SubmitType'&&fname !='SelectAll')
     e.checked = eval("document.AUDIT_TRAIL_CUSTOMIZE_form."+ sElemName.name +".checked");
  }
}
// 42271