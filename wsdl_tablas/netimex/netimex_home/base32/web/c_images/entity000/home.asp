<%@ LANGUAGE="VBSCRIPT" %>
<% '******************************************************************
'   *  File Name        : home.asp                                   *
'   *  Descripton       : the home asp                               *
'   *  Author           : Avner Maximov                              *
'   *  Date of Creation : 30/09/97                                   *
'   *                                                                *
'********************************************************************%>
<!--#INCLUDE FILE="general_asp\initialize.stm"-->
<%Response.Buffer =true%>
<!--#INCLUDE FILE="general_asp\authenticate.stm"-->
<%	
dim PopUp
 PopUp= Request("PopUp")
 If CBool(PopUp)=True Then 
	Response.Redirect("BG/Popup.asp")
	end if	
'Response.Flush 

dim sBrowserName,sBrowserVer,sFrame
If request("came_from")="login" Then
   sBrowserName = request("BrowserName")
   sBrowserVer = request("BrowserVersion")
   sFrame = request("frame_name")
   Session("BROWSER_TYPE")=sBrowserName
   Session("BROWSER_VERSION")=sBrowserVer
   If sFrame="" OR sFrame="_blank" then    
      Session("FRAME_NAME")="_top"
     Else
      Session("FRAME_NAME")=sFrame
   End If
End If

%>
<% 
'	Dim sFirstPage
	
	If Application("NetIMEX_Type") = "SA" And Session("CUSTOMER_ID") = "BANK" then
		Session("Side") = "B" 
		Response.Redirect ( "bank_menu.asp" )
	Else
		Session("Side") = "C" 
		if LCase(Trim(Application("HomePage")))<>"home.asp" then Response.Redirect (Application("HomePage"))
	End If	
%>

<HTML>
<HEAD>
<META HTTP-EQUIV="Content-Type" content="text/html; charset=iso-8859-1">
<TITLE>NetIMEX: Home Internet System</TITLE>
<!--#INCLUDE FILE="general_asp\stylesheet.stm"-->
<SCRIPT LANGUAGE="JavaScript">
<!--

function newImage(arg) {
	if (document.images) {
		rslt = new Image();
		rslt.src = arg;
		return rslt;
	}
}

function changeImages() {
	if (document.images && (preloadFlag == true)) {
		for (var i=0; i<changeImages.arguments.length; i+=2) {
			document[changeImages.arguments[i]].src = changeImages.arguments[i+1];
		}
	}
}

var preloadFlag = false;
function preloadImages() {
	if (document.images) {
		customize_01_over = newImage("images/demo/southtrust/home/customize_01-over.gif");
		export_01_over = newImage("images/demo/southtrust/home/export_01-over.gif");
		import_01_over = newImage("images/demo/southtrust/home/import_01-over.gif");
		inbox_01_over = newImage("images/demo/southtrust/home/inbox_01-over.gif");
		inquiry_01_over = newImage("images/demo/southtrust/home/inquiry_01-over.gif");
		standby_01_over = newImage("images/demo/southtrust/home/standby_01-over.gif");
		preloadFlag = true;
	}
}

// -->
</SCRIPT>
</HEAD>

<!--<BODY bgcolor=#001873> -->
<BODY background="c_images/home/bkground-lines.gif" ONLOAD="preloadImages();">

<center>
<table border=0 bgcolor="#ffffff"> 
<tr>
<td align=center>
<map name="Aboutbar">
	<AREA SHAPE="RECT" COORDS="0,0,77,19" HREF="about.asp" TARGET="<%=Session("FRAME_NAME")%>">
	<AREA SHAPE="RECT" COORDS="78,0,234,19" HREF="about.asp" TARGET="<%=Session("FRAME_NAME")%>">
	<AREA SHAPE="RECT" COORDS="235,0,422,19" HREF="about.asp#CIMEX" TARGET="<%=Session("FRAME_NAME")%>">
	<AREA SHAPE="RECT" COORDS="423,0,548,19" HREF="about.asp#SureComp" TARGET="<%=Session("FRAME_NAME")%>">
</map>
<%If Session("02ISS") Or Session("52ISS") Then %>
  <map name="Sections">
	
	<AREA SHAPE="RECT" COORDS="0, 30, 166, 140" HREF="default.asp?MenuItem=import" TARGET="<%=Session("FRAME_NAME")%>">
	<AREA SHAPE="RECT" COORDS="168, 8, 316, 189" HREF="default.asp?MenuItem=export" TARGET="<%=Session("FRAME_NAME")%>">
    <AREA SHAPE="RECT" COORDS="315,0,437,107" HREF="default.asp?MenuItem=StandBy" TARGET="<%=Session("FRAME_NAME")%>">
	<AREA SHAPE="RECT" COORDS="13, 140, 155, 281" HREF="default.asp" TARGET="<%=Session("FRAME_NAME")%>">
	<AREA SHAPE="RECT" COORDS="155, 191, 347, 288" HREF="language.asp" TARGET="<%=Session("FRAME_NAME")%>">
	<!--<AREA SHAPE="POLY" COORDS="317,69,459,69,459,205,347,205,347,160,317,160,317,69" HREF="inquiry.asp?MenuItem=Inquiry" TARGET="<%=Session("FRAME_NAME")%>">-->
    <AREA SHAPE="POLY" COORDS="318,106,317,159,345,160,346,209,457,206,458,71,437,70,435,108,316,107,318,107" HREF="inquiry.asp?MenuItem=Inquiry" TARGET="<%=Session("FRAME_NAME")%>">
  </map>
<%Else %>
  <map name="Sections">
	
	<AREA SHAPE="RECT" COORDS="0, 30, 166, 140" HREF="default.asp?MenuItem=import" TARGET="<%=Session("FRAME_NAME")%>">
	<AREA SHAPE="RECT" COORDS="168, 8, 316, 189" HREF="default.asp?MenuItem=export" TARGET="<%=Session("FRAME_NAME")%>">
	<AREA SHAPE="RECT" COORDS="13, 140, 155, 281" HREF="default.asp" TARGET="<%=Session("FRAME_NAME")%>">
	<AREA SHAPE="RECT" COORDS="155, 191, 347, 288" HREF="language.asp" TARGET="<%=Session("FRAME_NAME")%>">
	<AREA SHAPE="POLY" COORDS="317,69,459,69,459,205,347,205,347,160,317,160,317,69" HREF="inquiry.asp?MenuItem=Inquiry" TARGET="<%=Session("FRAME_NAME")%>">
  </map>
<%End If %>



<%If Session("02ISS")Or Session("52ISS") Then %>
 
  <img src="c_images/<%=sLanguage%>/Home_header.gif" width=561 height=56 border=0><br>
  <img src="c_images/<%=sLanguage%>/Home_bar.gif" width=561 height=19 border=0 usemap="#Aboutbar"><p>
<A href="default.asp" TARGET="<%=Session("FRAME_NAME")%>"	
	ONMOUSEOVER="changeImages('inbox_01', 'images/demo/southtrust/home/inbox_01-over.gif'); return true;"
	ONMOUSEOUT="changeImages('inbox_01', 'images/demo/southtrust/home/inbox_01.gif'); return true;">
	<IMG NAME="inbox_01" SRC="images/demo/southtrust/home/inbox_01.gif" WIDTH=407 HEIGHT=60 BORDER=0 alt="Inbox"></A>
	<br>
	<A HREF="default.asp?MenuItem=import" TARGET="<%=Session("FRAME_NAME")%>"
	ONMOUSEOVER="changeImages('import_01', 'images/demo/southtrust/home/import_01-over.gif'); return true;"
	ONMOUSEOUT="changeImages('import_01', 'images/demo/southtrust/home/import_01.gif'); return true;">
	<IMG NAME="import_01" SRC="images/demo/southtrust/home/import_01.gif" WIDTH=407 HEIGHT=60 BORDER=0 alt="Import"></A>	
	<br>
	<A HREF="default.asp?MenuItem=export" TARGET="<%=Session("FRAME_NAME")%>"
	ONMOUSEOVER="changeImages('export_01', 'images/demo/southtrust/home/export_01-over.gif'); return true;"
	ONMOUSEOUT="changeImages('export_01', 'images/demo/southtrust/home/export_01.gif'); return true;">
	<IMG NAME="export_01" SRC="images/demo/southtrust/home/export_01.gif" WIDTH=407 HEIGHT=60 BORDER=0 alt="Export"></A>	
	<br>
	<A HREF="default.asp?MenuItem=StandBy" TARGET="<%=Session("FRAME_NAME")%>"
	ONMOUSEOVER="changeImages('standby_01', 'images/demo/southtrust/home/standby_01-over.gif'); return true;"
	ONMOUSEOUT="changeImages('standby_01', 'images/demo/southtrust/home/standby_01.gif'); return true;">
	<IMG NAME="standby_01" SRC="images/demo/southtrust/home/standby_01.gif" WIDTH=407 HEIGHT=60 BORDER=0 alt="Stand-by/Guarantee"></A>
	<br>
	<A HREF="inquiry.asp?MenuItem=Inquiry" TARGET="<%=Session("FRAME_NAME")%>"
	ONMOUSEOVER="changeImages('inquiry_01', 'images/demo/southtrust/home/inquiry_01-over.gif'); return true;"
	ONMOUSEOUT="changeImages('inquiry_01', 'images/demo/southtrust/home/inquiry_01.gif'); return true;">
	<IMG NAME="inquiry_01" SRC="images/demo/southtrust/home/inquiry_01.gif" WIDTH=407 HEIGHT=60 BORDER=0 alt="Inquiry"></A>
	<br>
	<A href="language.asp" TARGET="<%=Session("FRAME_NAME")%>"
	ONMOUSEOVER="window.status='Customize'; changeImages('customize_01', 'images/demo/southtrust/home/customize_01-over.gif'); return true;"
	ONMOUSEOUT="window.status=''; changeImages('customize_01', 'images/demo/southtrust/home/customize_01.gif'); return true;">
	<IMG NAME="customize_01" SRC="images/demo/southtrust/home/customize_01.gif" WIDTH=407 HEIGHT=60 BORDER=0 ALT="Customize"></A><br>
<%Else %>
  <img src="c_images/<%=sLanguage%>/Home_header.gif" width=561 height=56 border=0><br>
  <img src="c_images/<%=sLanguage%>/Home_bar.gif" width=548 height=19 border=0 usemap="#Aboutbar"><p>
<A href="default.asp" TARGET="<%=Session("FRAME_NAME")%>"
	ONMOUSEOVER="changeImages('inbox_01', 'images/demo/southtrust/home/inbox_01-over.gif'); return true;"
	ONMOUSEOUT="changeImages('inbox_01', 'images/demo/southtrust/home/inbox_01.gif'); return true;">
	<IMG NAME="inbox_01" SRC="images/demo/southtrust/home/inbox_01.gif" WIDTH=407 HEIGHT=60 BORDER=0 alt="Inbox"></A>
	<br>
	<A HREF="default.asp?MenuItem=import" TARGET="<%=Session("FRAME_NAME")%>"
	ONMOUSEOVER="changeImages('import_01', 'images/demo/southtrust/home/import_01-over.gif'); return true;"
	ONMOUSEOUT="changeImages('import_01', 'images/demo/southtrust/home/import_01.gif'); return true;">
	<IMG NAME="import_01" SRC="images/demo/southtrust/home/import_01.gif" WIDTH=407 HEIGHT=60 BORDER=0 alt="Import"></A>	
	<br>
	<A HREF="default.asp?MenuItem=export" TARGET="<%=Session("FRAME_NAME")%>"
	ONMOUSEOVER="changeImages('export_01', 'images/demo/southtrust/home/export_01-over.gif'); return true;"
	ONMOUSEOUT="changeImages('export_01', 'images/demo/southtrust/home/export_01.gif'); return true;">
	<IMG NAME="export_01" SRC="images/demo/southtrust/home/export_01.gif" WIDTH=407 HEIGHT=60 BORDER=0 alt="Export"></A>	
	<br>
	<A HREF="default.asp?MenuItem=StandBy" TARGET="<%=Session("FRAME_NAME")%>"
	ONMOUSEOVER="changeImages('standby_01', 'images/demo/southtrust/home/standby_01-over.gif'); return true;"
	ONMOUSEOUT="changeImages('standby_01', 'images/demo/southtrust/home/standby_01.gif'); return true;">
	<IMG NAME="standby_01" SRC="images/demo/southtrust/home/standby_01.gif" WIDTH=407 HEIGHT=60 BORDER=0 alt="Stand-by/Guarantee"></A>
	<br>
	<A HREF="inquiry.asp?MenuItem=Inquiry" TARGET="<%=Session("FRAME_NAME")%>"
	ONMOUSEOVER="changeImages('inquiry_01', 'images/demo/southtrust/home/inquiry_01-over.gif'); return true;"
	ONMOUSEOUT="changeImages('inquiry_01', 'images/demo/southtrust/home/inquiry_01.gif'); return true;">
	<IMG NAME="inquiry_01" SRC="images/demo/southtrust/home/inquiry_01.gif" WIDTH=407 HEIGHT=60 BORDER=0 alt="Inquiry"></A>
	<br>
	<A href="language.asp" TARGET="<%=Session("FRAME_NAME")%>"
	ONMOUSEOVER="window.status='Customize'; changeImages('customize_01', 'images/demo/southtrust/home/customize_01-over.gif'); return true;"
	ONMOUSEOUT="window.status=''; changeImages('customize_01', 'images/demo/southtrust/home/customize_01.gif'); return true;">
	<IMG NAME="customize_01" SRC="images/demo/southtrust/home/customize_01.gif" WIDTH=407 HEIGHT=60 BORDER=0 ALT="Customize"></A><br>

<%End If %>
</td></tr>
<% dim sEmail, sWhatsNew, sCompanyName,sFeedback
  sEmail = Application("Email")
  sWhatsNew = Application("WhatsNew")
  sCompanyName = Application("CompanyName")
 sFeedback =Application("Feedback")%>
<!--#INCLUDE FILE="general_asp\footer_home.stm"-->

</BODY>
</HTML>







