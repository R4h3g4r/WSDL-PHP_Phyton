<%@ page import="wcorp.util.bee.ManejoEvc,
                 java.util.HashMap,
                 wcorp.serv.bciexpress.*,
                 wcorp.util.StrUtl"%>
<%@page import="wcorp.model.productos.*"%>
<%@page import="java.text.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@ page import="wcorp.util.TablaValores" %>
<jsp:useBean id="sessionBci" scope="session" class="wcorp.model.seguridad.SessionBCI"></jsp:useBean>
<jsp:setProperty name="sessionBci" property="*" />
<%
  String requestURL = HttpUtils.getRequestURL(request).toString();
  String urlBase = "https://www.bci.cl";
  String canalId = (String)sessionBci.getCanal().getCanalID();
%>
<html>
<head>
<title>Firma Digital</title>

<!-- VSSKTEMPLATEVERSION#1.2.5.1 -->
<!-- VSSKBEGIN Global/Mode#101#manualauth#1.0.0.0#44966 -->
<OBJECT classid="<%=TablaValores.getValor("ws_sophialite.parametros", "classid", "Desc")%>"
CODEBASE="<%=TablaValores.getValor("ws_sophialite.parametros", "cvscript", "Desc")%>" id="IVSPTA"
style="LEFT: Opx; TOP: Opx; VISIBILITY: hidden">
</OBJECT>
<!-- VSSKEND Global/Mode#101 -->

<!-- VSSKBEGIN Global/System#8#default#1.2.0.4#1025 -->
<SCRIPT LANGUAGE=JavaScript>
<!--
function SetErrorInfo(form_file, error_code, winerrorcode, operation)
{
document.ErrorForm.form_file.value = form_file ;
document.ErrorForm.errorCode.value = error_code ;
document.ErrorForm.winerrorcode.value = winerrorcode ;
document.ErrorForm.operation.value = operation ;

document.ErrorForm.submit() ;
}

// don't call the function below on IE pages
function ReBaseErrorCodeNS(error_code)
{
if (navigator.appName != "Netscape")
{ return error_code; }

var javaErrorString, strErrorCode;
var ErrNumber;

ERROR_LIMIT = 0x80000000;
if (error_code >= ERROR_LIMIT) {
error_code = error_code - 0x80000000;
ErrNumber = new Number(error_code);
javaErrorString = ErrNumber.toString(16);
if(error_code <= 0xF) {
strErrorCode = "7000000" + javaErrorString.substring(javaErrorString.length-1, javaErrorString.length);
}
else if (error_code <= 0xFF) {
strErrorCode = "700000" + javaErrorString.substring(javaErrorString.length-2, javaErrorString.length);
}
else if (error_code <= 0xFFF) {
strErrorCode = "70000" + javaErrorString.substring(javaErrorString.length-3, javaErrorString.length);
}
else {
strErrorCode = "7000" + javaErrorString.substring(javaErrorString.length-4, javaErrorString.length);
}
} else {
ErrNumber = new Number(error_code);
strErrorCode = ErrNumber.toString(10);
}
return strErrorCode;
}

// Don't call the function below on IE pages
function ConvertToHexNS (error_code)
{
if (navigator.appName != "Netscape")
{ return error_code; }

var javaErrorCode;
var ErrNumber;

ERROR_LIMIT = 0x80000000;
if (error_code >= ERROR_LIMIT) {
error_code = error_code - 0x80000000;
ErrNumber = new Number(error_code);
javaErrorCode = ErrNumber.toString(16);
if(error_code <= 0xF) {
javaErrorCode = "8000000" + javaErrorCode.substring(javaErrorCode.length-1, javaErrorCode.length);
}
else if (error_code <= 0xFF) {
javaErrorCode = "800000" + javaErrorCode.substring(javaErrorCode.length-2, javaErrorCode.length);
}
else if (error_code <= 0xFFF) {
javaErrorCode = "80000" + javaErrorCode.substring(javaErrorCode.length-3, javaErrorCode.length);
}
else {
javaErrorCode = "8000" + javaErrorCode.substring(javaErrorCode.length-4, javaErrorCode.length);
}

} else {
ErrNumber = new Number(error_code);
javaErrorCode = ErrNumber.toString(10);
}
return javaErrorCode;
}

// don't call the function below on Netscape pages
function CheckErrorCodeMS(error_code)
{
var strErrorCode;
if (navigator.appName == "Netscape")
{ return error_code; }

if (error_code >= "80000000")
{
strErrorCode = "7000" + error_code.substring(error_code.length-4, error_code.length);
} else {
strErrorCode = error_code;
}
return strErrorCode;
}
//-->
</SCRIPT>
<!-- VSSKEND Global/System#8 -->
</head>

<body bgcolor="#ffffff" onload="pressedSignItNew();setMessage();">
<SCRIPT language=VBSCRIPT>
<!--
'-- VSSKBEGIN Global/Mode#29#manualauth#1.0.0.0#44966 --
Dim hostName
   hostName = "<%=TablaValores.getValor("ws_sophialite.parametros", "hostName", "Desc" )%>"
'-- VSSKEND Global/Mode#29 --

Dim Win2KErrorUrl
Win2KErrorUrl = hostName & "<%=TablaValores.getValor("ws_sophialite.parametros", "errorVScript", "Desc" )%>"

' get the various interfaces
Dim IVSProfMgmt
Dim IVSUIPrefs
Dim IVSCertPrefs
Dim IVSSrchCrit
Dim IVSSelectedID
Dim IVSRoamPrefs

On Error Resume Next
Set IVSProfMgmt = IVSPTA.IVSProfMgmt
If (Hex(err.number) = "1B6") Then
window.location = Win2KErrorUrl
End if
Set IVSUIPrefs = IVSPTA.IVSUIPrefs
Set IVSCertPrefs = IVSPTA.IVSCertPrefs
Set IVSSrchCrit = IVSPTA.IVSSrchCrit
Set IVSSelectedID = IVSPTA.IVSSelectedDigID
Set IVSRoamPrefs = IVSPTA.IVSRoamPrefs

'--------------------------------------------------------


Sub RenewDigitalID
Dim RenewUrl

RenewUrl = "<%=TablaValores.getValor("ws_sophialite.parametros", "hostName", "Desc" )%>" & "<%=TablaValores.getValor("ws_sophialite.parametros", "urlRenew", "Desc" )%>"
window.navigate RenewUrl
End Sub

Function SignUp
Dim EnrollUrl

'-- VSSKBEGIN Apps/KeyManager#10#no#1.0.0.0#1025 --
Dim EnrollPage

EnrollPage=  "<%=TablaValores.getValor("ws_sophialite.parametros", "EnrollPage", "Desc" )%>"
'-- VSSKEND Apps/KeyManager#10 --
<%if (canalId.equals("130")||canalId.equals("131")){%>
EnrollUrl = "<%=TablaValores.getValor("ws_sophialite.parametros", "EnrollHostMopa", "Desc" )%>" & EnrollPage
<%}else{%>
EnrollUrl = "<%=TablaValores.getValor("ws_sophialite.parametros", "hostName", "Desc" )%>" & EnrollPage
<%}%>
window.navigate EnrollUrl
End Function

' This sub will call the close method for the PTA
Function CloseObjects (ErrorCode, Operation, WinErrorCode)
On Error Resume Next
IVSPTA.Close
if ( ErrorCode <> 0 ) then
Call SetErrorInfo ("../fdf/VSApps/client/PTAv2Errors.fdf", CheckErrorCodeMS(ErrorCode), WinErrorCode, Operation)
end if
If ( err.number <> 0 ) then
Call SetErrorInfo("../fdf/VSApps/client/PTAv2Errors.fdf", 00000001, Hex(err.number), "IVSPTA.Close")
Exit Function
End If
End Function

Sub pressedSignItNew
Dim Choice
Dim SelExpDate
Dim ShortSelExpDate

'-- VSSKBEGIN Apps/PTAv2#1#yes#1.0.0.0#28905 --
' the VBSCript variables made available on PTA login and transaction pages
Dim strCertStore
Dim strAppCtxtName
Dim strCertIssuerDN
Dim strLoginWizardTitle
Dim strLoginChooseTitle
Dim strLoginChooseText
Dim strLoginTitle
Dim strLoginText
Dim strAppLogoUrl
Dim AbtToExpWindow
Dim strSignWizardTitle
Dim strSignChooseTitle
Dim strSignChooseText
Dim strSignTitle
Dim strSignText
Dim strReviewTitle
Dim strReviewText
Dim saveLocal
Dim strClientInfo
Dim strClientInfoSig

Dim strLoginChooseHelpUrl
Dim strLoginHelpUrl
Dim strSignHelpUrl
Dim strReviewHelpUrl
Dim strSignChooseHelpUrl
Dim strunLockHelpUrl

strCertStore = "2"
strAppCtxtName = "Certibanc Banking"
strCertIssuerDN = "C=CL; O=CertiNet S.A.; OU=VeriSign Trust Network;"
strLoginWizardTitle = "Identificacion de usuarios"
strLoginChooseTitle = ""
strLoginChooseText = ""
strLoginTitle = "Seleccione su Certibanc ID"
strLoginText = "Seleccione el certifcado para identificarse"
strAppLogoUrl = "<%=TablaValores.getValor("ws_sophialite.parametros", "strAppLogoUrl", "Desc" )%>"
strSignWizardTitle = "Firmar Operación"
strSignChooseTitle = ""
strSignChooseText = ""
strSignTitle = "Seleccione el certificado digital con el que firmará esta operación"
strSignText = ""
strReviewTitle = "Confirme la Operación"
strReviewText = "Verifique el texto de la operación a firmar"
saveLocal = "disabled"
strClientInfo = ""
strClientInfoSig = ""

AbtToExpWindow = 31

'-- VSSKBEGIN Global/Mode#35#manualauth#1.0.0.0#44966 --
Dim helpHostName
helpHostName = "<%=TablaValores.getValor("ws_sophialite.parametros", "hostName", "Desc" )%>"
'-- VSSKEND Global/Mode#35 --

strLoginChooseHelpUrl = helpHostName & ""
strLoginHelpUrl = helpHostName & "<%=TablaValores.getValor("ws_sophialite.parametros", "strLoginHelpUrl", "Desc" )%>"
strSignHelpUrl = helpHostName & "<%=TablaValores.getValor("ws_sophialite.parametros", "strSignHelpUrl", "Desc" )%>"
strReviewHelpUrl = helpHostName & "<%=TablaValores.getValor("ws_sophialite.parametros", "strReviewHelpUrl", "Desc" )%>"
strSignChooseHelpUrl = helpHostName & ""
strUnLockHelpUrl = helpHostName & ""
'-- VSSKEND Apps/PTAv2#1 --

setMessage()

' Initialize the PTA Object
On Error Resume Next

if (strCertStore = "1") then
IVSPTA.Initialize strAppCtxtName,0
else
IVSPTA.Initialize strAppCtxtName,1
End If
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSPTA.Initialize", Hex(err.number))
Exit Sub
End If

'MsgBox "PTA Initialized"


' Initialize the Search Criteria
On Error Resume Next
If (Len(strCertIssuerDN) <> 0) then
IVSSrchCrit.IssuerDN = strCertIssuerDN
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSSrchCrit.IssuerDN", Hex(err.number))
Exit Sub
End If
End If

EXP_DATE_GREATER_THAN = &h20
EXP_DATE_EQUALTO      = &h10
EXP_DATE_LESS_THAN    = &h08
EFF_DATE_GREATER_THAN = &h04
EFF_DATE_EQUALTO      = &h02
EFF_DATE_LESS_THAN    = &h01

'Initialize the Certificate Search Criterion "Date Equality"
On Error Resume Next
IVSSrchCrit.DateEquality = EXP_DATE_GREATER_THAN
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSSrchCrit.DateEquality", Hex(err.number))
Exit Sub
End If

' Initialize the Certificate Search Criterion "Expiry Date"
' to the CURRENT DATE.
StartDate = CDate(Date)
ShortStartDate = CDate(StartDate)


On Error Resume Next
IVSSrchCrit.ExpDate = ShortStartDate
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSSrchCrit.ExpDate", Hex(err.number))
Exit Sub
End If

Dim boolRenewed
boolRenewed = CBool(0)
' Set flag to show only certs that have NOT been marked as RENEWED
On Error Resume Next
IVSSrchCrit.Renewed = boolRenewed
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSSrchCrit.Renewed", Hex(err.number))
Exit Sub
End If


' Initialize the open profile preferences
if (strCertStore = "1") then
On Error Resume Next
If (Len(strSignChooseTitle) <> 0) then
IVSUIPrefs.OpenProf_Title = strSignChooseTitle
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.OpenProf_Title", Hex(err.number))
Exit Sub
End If
End If

On Error Resume Next
If (Len(strSignChooseText) <> 0) then
IVSUIPrefs.OpenProf_Text = strSignChooseText
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.OpenProf_Text", Hex(err.number))
Exit Sub
End If
End If

On Error Resume Next
If (Len(strLoginChooseHelpUrl) <> 0) then
IVSUIPrefs.OpenProf_HelpUrl = strLoginChooseHelpUrl
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.OpenProf_HelpUrl", Hex(err.number))
Exit Sub
End If
End If

On Error Resume Next
If (Len(strUnLockHelpUrl) <> 0) then
IVSUIPrefs.Timeout_HelpUrl = strUnLockHelpUrl
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.Timeout_HelpUrl", Hex(err.number))
Exit Sub
End If
End If

'Flags
OPENPROF_OPEN_ONLY = CInt(529)
On Error Resume Next
IVSProfMgmt.OpenProfFlags = OPENPROF_OPEN_ONLY
If ((err.number <> 0) And (Hex(err.number) <> "8000102F") ) Then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSProfMgmt.OpenProfFlags", Hex(err.number))
Exit Sub
End If


'-- VSSKBEGIN Apps/PTAv2/Roaming#3#disabled#1.0.0.0#1025 --
' set roaming disabled
On Error Resume Next
IVSProfMgmt.RoamProfile = CBool(0)
If ((err.number <> 0) And (Hex(err.number) <> "8000102F") ) Then
Call CloseObjects(Hex(err.number), "IVSProfMgmt.RoamProfile", Hex(err.number))
Exit Sub
End If
'-- VSSKEND Apps/PTAv2/Roaming#3 --
End If

' Initialize the login wizard title
On Error Resume Next
If (Len(strSignWizardTitle) <> 0) then
IVSUIPrefs.SgnDlg_Title = strSignWizardTitle
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.SgnDlg_Title", Hex(err.number))
Exit Sub
End If
End If

On Error Resume Next
If (Len(strAppLogoUrl) <> 0) then
IVSUIPrefs.UILogoUrl = strAppLogoUrl
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.LogoUrl", Hex(err.number))
Exit Sub
End If
End If

On Error Resume Next
If (Len(strSignHelpUrl) <> 0) then
IVSUIPrefs.SelID_HelpUrl = strSignChooseHelpUrl
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.SelID_HelpUrl", Hex(err.number))
Exit Sub
End If
End If

On Error Resume Next
If (Len(strReviewHelpUrl) <> 0) then
IVSUIPrefs.RvwMsg_HelpUrl = strReviewHelpUrl
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.RvwMsg_HelpUrl", Hex(err.number))
Exit Sub
End If
End If

' set the 2 dialog texts and titles.
' set the select id preferences
On Error Resume Next
If (Len(strSignTitle) <> 0) then
IVSUIPrefs.SelID_Title = strSignTitle
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.SelID_Title", Hex(err.number))
Exit Sub
End If
End If

On Error Resume Next
If (Len(strSignText) <> 0) then
IVSUIPrefs.SelID_Text = strSignText
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.SelID_Text", Hex(err.number))
Exit Sub
End If
End If

' set the review message preferences
On Error Resume Next
If (Len(strReviewTitle) <> 0) then
IVSUIPrefs.RvwMsg_Title = strReviewTitle
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.RvwMsg_Title", Hex(err.number))
Exit Sub
End If
End If

On Error Resume Next
If (Len(strReviewText) <> 0) then
IVSUIPrefs.RvwMsg_Text = strReviewText
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.RvwMsg_Text", Hex(err.number))
Exit Sub
End If
End If

On Error Resume Next
IVSUIPrefs.SelID_OKBtnText = CInt(122)
if (err.number <> 0) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.SelID_OKBtnText", Hex(err.number))
Exit Sub
End If

On Error Resume Next
IVSUIPrefs.RvwMsg_OKBtnText = CInt(123)
if (err.number <> 0) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.RvwMsg_OKBtnText", Hex(err.number))
Exit Sub
End If

Dim boolShowDef
boolShowDef = CBool(0)
On Error Resume Next
IVSUIPrefs.SelID_ShowDefChkBox = boolShowDef
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSUIPrefs.SelID_ShowDefChkBox", Hex(err.number))
Exit Sub
End If

MD5 = 3
SHA1 = 4

' Some special error codes returned by the Sign function
'VS_DEFAULT_SELECTED	=	&h80000003
'VS_NO_MATCHES	=	&h80000004
'VS_NO_CERT_SEL	=	&h80000005
'VS_CERT_SELECTED	=	&h80000006
VS_CERTNOMATCHCRIT = &h80001095
VS_CERTMATCHBUTEXP = &h80001096
VS_PROFDOESNOTEXIST = &h8000102B
VS_SUCCESS = &h00000000
VS_USER_CANCELLED = &h80001067
VS_CERTNOTFOUND = &h80001091

'-- VSSKBEGIN Enrollment/CharEncoding#6#exists#1.0.0.0#1025 --
<!-- VSSKBEGIN Apps/PTAv2#34#yes#1.0.0.0#1025 -->
On Error Resume Next
IVSPTA.UTF8EncodeMessage = CBool(0)
If ( err.number <> 0 ) then
Call CloseObjects(Hex(err.number), "Ingreso de Antecedentes::IVSPTA.UTF8EncodeMessage", Hex(err.number))
Exit Sub
End If
<!-- VSSKEND Apps/PTAv2#34 -->
'-- VSSKEND Enrollment/CharEncoding#6 --
On Error Resume Next
Signature = IVSPTA.SignTransaction(Msgg, CInt(MD5))
'If (err.number <> 0) then
'  Call CloseObjects(Hex(err.number), "Transaction Signing::IVSPTA.SignTransaction", Hex(err.number))
'  Exit Sub
'End If

' some special handling needs to be done.
If ( err.number <> 0 )then
If (err.number = VS_CERTMATCHBUTEXP) then
errString = "Ud. no tiene un certificado electrónico válido." &vbCRLF &_
"Ahora, se intentará renovar su certificado electrónico expirado."
Call MsgBox (errString, 48, "Alerta")
Call CloseObjects(0, "", 0)
RenewDigitalID()
Exit Sub
Else
If ((err.number = VS_CERTNOMATCHCRIT) Or (err.number = VS_PROFDOESNOTEXIST)Or (err.number = VS_CERTNOTFOUND)) then
Call CloseObjects(0, "", 0)
errString = "Ud. no tiene un certificado electrónico válido." &vbCRLF &_
"Desea solicitar uno en este momento?"
Choice = MsgBox (errString, 52, "Alerta")
if ( 6 = Choice ) then
SignUp()
Else
Call CloseObjects(0, "", 0)
document.cancelar.submit
end if
Exit Sub
Else
If (err.number = VS_USER_CANCELLED) then
errString = "You have cancelled the operation." & vbCRLF & _
"Please click submit again to continue"
REM Call MsgBox (errString, 48, "Transaction Signing Error")
Call CloseObjects(0, "", 0)
document.cancelar.submit
Exit Sub

Else
Call CloseObjects(Hex(err.number), "Transaction Signing::IVSPTA.SignTransaction", Hex(err.number))
Exit Sub
End If
End If
End If
End If

Call CloseObjects(0, "", 0)


document.firma1.dataToSign.value = Msgg
document.firma1.dataSignature.value = Signature
document.firma1.submit


End Sub
'-->
</SCRIPT>

<!-- VSSKBEGIN Global/System#13#default#1.0.0.0#1025 -->
<!-- VSSKBEGIN Global/Mode#103#manualauth#1.0.0.0#44966 -->
<FORM NAME=ErrorForm ACTION="<%=TablaValores.getValor("ws_sophialite.parametros", "urlCGI", "Desc" )%>" METHOD=POST>
<!-- VSSKEND Global/Mode#103 -->
<INPUT type=hidden NAME=form_file VALUE="../fdf/VSApps/client/DefaultError.fdf">
<INPUT type=hidden NAME=errorCode VALUE=0>
<INPUT type=hidden NAME=winerrorcode VALUE=0>
<INPUT type=hidden NAME=operation VALUE="">
<INPUT type=hidden NAME=showError VALUE="">
</FORM>
<!-- VSSKEND Global/System#13 -->

<form method='post' action='/belwls/bciexpress/bco_linea/transferenciasdefondo/cuentasInscritas.do?accion=restaurarCuentaEliminada' name='firma1'>
<INPUT name="dataSignature" type="hidden">
<INPUT name="dataToSign" type="hidden">
<INPUT name="certificadoDigital" type="hidden" value="true">
<INPUT name="accion" type="hidden" value="restaurarCuentaEliminada">

<%
String[] paramValues = request.getParameterValues("cuentasARestaurar");
  if (paramValues.length == 1) {
	String paramValue = paramValues[0];
	if (paramValue.length() > 0){%>
		<INPUT name="cuentasARestaurar"    type="hidden" value="<%=paramValue%>">
	<%}
  } else {
		for(int i=0; i<paramValues.length; i++) {%>
			<INPUT name="cuentasARestaurar"    type="hidden" value="<%=paramValues[i]%>">
		<%}
  }
%>

</form>

<SCRIPT language=javascript>

  function setMessage ()
  {
  Msgg = "<BR><BR><BR><BR><BR><BR><BR>" +
  "<table width=100%><TR><TD><FONT SIZE=-1 FACE='Courier'>Estoy autorizando la restauraci&oacute;n de Cuenta(s) Inscrita(s)</FONT></TD></TR></table>";
  }

</SCRIPT>

<form name=cancelar action="<%=TablaValores.getValor("ws_sophialite.parametros", "urlCtaRestaura", "Desc" )%>" method="post">
<center>
<table border="0">
<tr>
<td><font SIZE="6" FACE="Arial">Esperando firma electr&oacute;nica ...</font></td>
</tr>
<tr>
<td align="center"><img src="/imagen/12prov/vineta/img_load.gif"></td>
</tr>
</table>
</center>
</form>
</body>
</html>
<%--
******************************************************************************************************
* Archivo           firmaElectronicaRestaura.jsp

* Descripción	    Validador de Certificado Digital para Restaurar Cuenta

* @author           SEnTRA

* Versión           1.0

* Fecha creación    13-10-2009

* Historia de cambios
   versión   fecha      autor   cambios
   =======   ========== ======= =================================
   1.0       13-10-2009 SEnTRA  versión inicial
   1.1       26-04-2010 SEnTRA  Se modifica proceso certificado digital
******************************************************************************************************
--%>

