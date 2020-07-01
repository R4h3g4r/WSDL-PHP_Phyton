function ZoomText2(textName)
{ 

formName="<%getPageName()%>" + "_form";
x=eval("document." + formName + "." + textName + ".cols") * 8.5;
msg=window.open("","DisplayWindow","menubar=no,scrollbars=no,status=no,width =" + x + ",height=430");
msg.document.write("<html><head>\n");
msg.document.write("<title><%javascript:getTitle(Text Viewer,LC_MAIN)%></title>\n");
msg.document.write("<body>\n");
msg.document.write("<form name=\"ZoomText_form\">\n");
msg.document.write("<TEXTAREA NAME=\"ZoomText\" ROWS=\"21\" COLS=\"65\" WRAP onBlur=\"moveback()\"><\/TEXTAREA>\n");
msg.document.write("<br>\n");
msg.document.write("<p align=center>\n");
msg.document.write("<a href=\"javascript:moveback()\"><img src=\"<%getImage(zoomout.gif,N)%>\" border=0></a>");
msg.document.write("<\/form>\n");
msg.document.write("<\/body>\n");

msg.document.write("<script language=\"JavaScript\">\n");
/*var sTextValue = eval("document." + formName +"." + textName + ".value");
msg.document.write("document.ZoomText_form.ZoomText.value=\"" + sTextValue + "\";\n");
*/
msg.document.write("document.ZoomText_form.ZoomText.value=top.opener.document." + formName +"." + textName + ".value;\n");
msg.document.write("document.ZoomText_form.ZoomText.cols=top.opener.document." + formName +"." + textName + ".cols;\n");
msg.document.write("document.ZoomText_form.ZoomText.focus();\n");

msg.document.write("function moveback()\n");
msg.document.write("{\n");
msg.document.write("window.top.opener.document." + formName +"." + textName + ".value=document.ZoomText_form.ZoomText.value;\n");
msg.document.write("self.close();\n");
msg.document.write("}\n");

msg.document.write("<\/script>\n");

msg.document.write("<\/html>\n");
}
