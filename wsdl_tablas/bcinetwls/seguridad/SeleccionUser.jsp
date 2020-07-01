<%@ page errorPage="/bcinetwls/common/Error.jsp" %>

<jsp:useBean id="sessionBci" scope="session" class="wcorp.model.seguridad.SessionBCI"></jsp:useBean>
<jsp:setProperty name="sessionBci" property="*" />

<%-- Opciones Especificas --%>
<%@ page import="wcorp.util.*" %>
<%@ page import="wcorp.util.com.*" %>
<%@ page import="wcorp.util.presentacion.*" %>
<%@ page import="wcorp.model.seguridad.*" %>
<%@ page import="wcorp.model.actores.*" %>
<%@ page import="wcorp.serv.seguridad.*" %>
<%@ page import="javax.ejb.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="java.rmi.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>

<html>
<head>
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<title> Bci Personas </title>
<link rel="stylesheet" href="/bcinetwls/common/style/estilosBci.css" type="text/css">
<script>
  var thereOption=0;
  var optionSel="";

function clickOption() {
  thereOption=1;
}

function checkOption() {
  if ( thereOption == 0 ) {
    alert("Falta Seleccionar una Alternativa de la Lista");
    return false;
  } else {
    return true;
  }
}
</script>
</head>
<body bgcolor="#FFFFFF">
<table border=0 cellpadding=1 cellspacing=0 height=30 width="100%" hspace="0" vspace="0">
<tbody>
  <tr>
    <td height=127 width="81%">
      <table border=0 cellpadding=0 cellspacing=0 width="100%">
        <tr>
          <td width="9%" class="textotitulonom">banco</td>
          <td width="91%" class="textotituloape">enl&iacute;nea</td>
        </tr>
      </table>
      <br>
      <table border=0 cellpadding=1 cellspacing=0 width="100%">
      <tbody>
        <tr>
          <td width="11%"><font face="Arial, Helvetica, sans-serif" size="2"><b>Nombre:</b></font></td>
          <td width="89%" class="textofuerte"><font size="2" face="Arial,Helvetica, sans-serif"><%= sessionBci.getFullIdentity() %>
          </font></td>
        </tr>
        <tr>
          <td width="11%"><b> <font face="Arial, Helvetica, sans-serif" size="2">Fecha:</font></b></td>
          <td width="89%" class="textofuerte"><font face="Arial, Helvetica, sans-serif" size="2"><%=Formatting.dateTime(new Date(),"dd/MMMM/yyyy",new Locale("es","CL")) %></font></td>
        </tr>
        <tr>
          <td width="11%" height="11">&nbsp;</td>
          <td width="89%" height="11">&nbsp;</td>
        </tr>
      </tbody>
      </table>
    </td>
    <td height=127 width="19%" valign="bottom"> 
      <p><img src="/bcinetwls/common/images/img_cambioclave.gif" width="105" height="100"></p>
    </td>
  </tr>
</tbody>
</table>
<form method=POST Action="/seguridadwls/DefineAmbiente" OnSubmit="checkOption()">
<table width="100%" border="0" cellspacing="0" cellpadding="1">
  <tr class="borde">
    <td>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="0" align="center">
        <tr>
          <td class="textotitulo"><font face="Arial, Helvetica, sans-serif" size="2"><b>Seleccione
            si desea consultar como adicional &nbsp;o titular de sus cuentas
            </b></font></td>
        </tr>  
        <tr class="suave">
          <td><font face="Arial, Helvetica, sans-serif" size="2">
            <input type="RADIO" name="tipoUser" value="A" onClick=clickOption()>
            Deseo ver las cuentas en que soy Adicional </font></td>
        </tr>
        <tr class="suave">
          <td><font face="Arial, Helvetica, sans-serif" size="2">
            <input type="RADIO" name="tipoUser" value="T" onClick=clickOption()>
            Deseo ver las cuentas en que soy Titular </font></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table border="0" width="100%">
  <tr>
    <td>
      <div align="center">
      <input type="image" border="0" src="/bcinetwls/common/images/btn_aceptar.gif" name="image">
      </div>
    </td>
  </tr>
</table>
</form>
</body>
</html>