function checkTemplateButton(namepage)
{
formName="<%getPageName()%>" + "_form";
if ('<%getSessionValue(customer_id)%>'=='BANK')
{
	var ColType='<%getColType()%>';
	eval("document."+formName+".reference_no.value='BANK"+ColType+"'");
	chkSubmitForm("TemplateButton","Y");
	return;
}
msg=window.open("","DisplayWindow","menubar=no,scrollbars=no,status=no,width =250,height=80");
msg.document.write("<html><head>\n");
msg.document.write("<title> <%javascript:getTitle(Save template,LC_MAIN)%></title>\n");
msg.document.write("<body>\n");
msg.document.write("<form name=\"Template_form\" onSubmit=\"return(save_template());\">\n");
msg.document.write("<B> <%javascript:getTitle(Save Template As,LC_MAIN)%></B><br>\n");
msg.document.write("<input type=text name=template_name size=16 maxlength=16><br>\n");
msg.document.write("<br>\n");
msg.document.write("<p align=center>\n");
msg.document.write("<a href=\"JavaScript:save_template();\"><img src=\"<%getImage(bsave.gif,Y)%>\"  border=0></a>&nbsp;&nbsp;");
msg.document.write("<a href=\"JavaScript:close_win();\"><img src=\"<%getImage(bcancel.gif,Y)%>\"  border=0></a>\n");
msg.document.write("<\/form>\n");
msg.document.write("<\/body>\n");
msg.document.write("<script language=\"JavaScript\">\n");
msg.document.write("document.Template_form.template_name.value=top.opener.document." + formName +".reference_no.value;\n");
//msg.document.write("document.Template_form.template_name.value=top.opener.document." + formName +".CMX01.value;\n");
//msg.document.write("document.Template_form.templatename.cols=top.opener.document." + formName +".templatename.cols;\n");
msg.document.write("document.Template_form.template_name.focus();\n");
msg.document.write("function save_template()\n");
msg.document.write("{\n");
msg.document.write(" if (window.top.opener.Trim(document.Template_form.template_name.value)!='')\n");
msg.document.write(" { \n");
msg.document.write("  if (window.top.opener.chkInvalidChar(document.Template_form.template_name)!=true)\n")
msg.document.write("  { \n");
msg.document.write("	window.top.opener.tempwindow=\"3\";\n");
msg.document.write("	window.top.opener.document."+formName+".reference_no.value=document.Template_form.template_name.value;\n");
msg.document.write("	window.top.opener.chkSubmitForm(\"TemplateButton\",\"Y\");\n");
msg.document.write("	self.close();\n");
msg.document.write("  }\n");
msg.document.write(" }\n");
msg.document.write(" else \n");
msg.document.write(" {	\n");
msg.document.write(" window.top.opener.DisplayErrorMsg(document.Template_form.template_name,'<%getError(NMX00050)%>')\n");
msg.document.write(" }\n");
msg.document.write("//self.close();\n");
msg.document.write("}\n");
msg.document.write("function close_win()\n");
msg.document.write("{ \n");
msg.document.write("window.top.opener.tempwindow=\"3\";\n");
msg.document.write("self.close();\n");
msg.document.write("} \n");


msg.document.write("<\/script>\n");
msg.document.write("<\/html>\n");
}
