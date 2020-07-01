<%--
******************************************************************************************************
* Archivo           mul_movimientos_con.jsp
* Descripción
* @author           BEE Mind
* Versión           1.0
* Fecha creación    28-08-2003
* Historia de cambios
   versión   fecha      autor   cambios
   =======   ========== ======= =================================
   1.0       28-08-2003 BEE     versión inicial
******************************************************************************************************
--%>

<jsp:useBean id="sessionBci" scope="session" class="wcorp.model.seguridad.SessionBCI"></jsp:useBean>
<jsp:setProperty name="sessionBci" property="*" />

<%-- Importacion Paginas --%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.*" %>
<%@ page import = "wcorp.util.*" %>
<%@ page import = "wcorp.serv.colocaciones.*"%>
<%@ page import = "wcorp.serv.misc.*"%>


<html>

<script language="JavaScript" src="/belwls/bciexpress/js/beebcitools.js"></script>
<%
    String strStyleSheet = "/belwls/bciexpress/css/bciexpress.css";
    String strTitle      = "Movimientos Avances Multilinea";
    String strOnLoad     = "";
    String strImageExp   = "/belwls/bciexpress/img/";
%>

<%!
    /*******************************************************************************************************
     * getNumberInThousands
     *******************************************************************************************************/
    /**
     *
     * @param d
     *
     * @return
     *
     */
    public static String getNumberInThousands(double d) {
      return StrUtl.formatMonto(d);
    }
%>

<head>
  <title><%= strTitle %></title>
  <meta name="author"        content="">
  <meta name="keywords"      content="">
  <meta name="source"        content="mul_movimientos_con.jsp">
  <meta name="generator"     content="">
  <meta name="cache-control" content="no-cache">
  <meta http-equiv="pragma"  content="no-cache">
  <link rel="stylesheet" type="text/css" href="<%= strStyleSheet %>" title="Default">
</head>

<body text="#000000" bgColor="#ffffff" leftMargin="4" topMargin="4" marginwidth="4" marginheight="4">
<form>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
      <td valign="middle" bgcolor="#FFFFFF"> <img src="<%=strImageExp%>/cash_popup.jpg" width="325" height="64"></td>
      <td valign="middle" bgcolor="#FFFFFF"> <img src="<%=strImageExp%>/multilinea/tit_multilinea.gif" width="192" height="35"></td>
    </tr>
  </table>
  <%
     String usuario = (String) sessionBci.getFullIdentity();
     String empresa = (String) sessionBci.getAttrib("nombreCliente");
     //Falta resultado de la LDC
     ResultConsultaOperClienteAmpLDC res_col    = (ResultConsultaOperClienteAmpLDC) sessionBci.getAttrib("ResultConsultaOperClienteAmp");     
     OperacionCreditoAmp[] res_ope = res_col.getOperacionesAmp();
    
  %>
  
  <table border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#666666" width="100%">
    <tr align="right" class="arial10">
      <td bgcolor="#FFFFFF" class="arial10"><b>Usuario:</b> <%= usuario %></td>
      <td bgcolor="#FFFFFF" class="arial10"><b>Empresa:</b> <%= empresa %></td>
      <td bgcolor="#FFFFFF" class="arial10"><b>Fecha:</b>
        <script language="JavaScript">
          HoyDia(false);
        </script>
      </td>
      <td bgcolor="#FFFFFF" class="arial10"><b>Hora:</b>
        <script language="JavaScript">
          LaHora();
        </script>
      </td>
    </tr>
  </table>
  
  <table border="0" cellspacing="1" cellpadding="0" width="100%" align="center">
    <tr><td bgcolor="#FFFFFF">&nbsp;</td></tr>
  </table>
  <table border="0" cellspacing="1" cellpadding="4" width="100%" bgcolor="#999999" class="T0">
    <%
        int     utl_avz = res_col.getCupoMaximo() - res_col.getMontoDisponible() ;            
        String  sim_mon = res_col.getMoneda();    
    %>
    <tr>
      <td class="T1_t3"><b>Cupo L&iacute;nea</b></td>
      <td class="T2" bgcolor="#FFFFFF" align="right"><%= sim_mon %>&nbsp;<%= getNumberInThousands(res_col.getCupoMaximo()) %></td>
      <td class="T1_t3"><b>N&uacute;mero L&iacute;nea</b></td>
      <td class="T2" bgcolor="#FFFFFF"><%= res_col.getIdOperacion() %><%= StrUtl.fillCharLeft(StrUtl.getNumero(res_col.getNumOperacion()), '0',8) %>/<%= res_col.getCorrelativoLineaCredito() %>
      </td>
    </tr>
    <tr>
      <td class="T1_t3"><b>Utilizado por Avances</b></td>
      <td class="T2" bgcolor="#FFFFFF" align="right"><%= sim_mon %>&nbsp;<%= getNumberInThousands(utl_avz) %></td>
      <td class="T1_t3"><b>N&uacute;mero de Avances</b></td>
      <td class="T2" bgcolor="#FFFFFF"><%= res_col.getTotVencimiento()%></td>
    </tr>
    <tr>
      <td class="T1_t3"><b>Disponibles para Avances</b></td>
      <td class="T2" bgcolor="#FFFFFF" align="right"><%= sim_mon %>&nbsp;<%= getNumberInThousands(res_col.getMontoDisponible()) %></td></td>
      <td class="T2" bgcolor="#FFFFFF"><b>&nbsp;</b></td>
      <td class="T2" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
  </table>
  <table border="0" cellspacing="1" cellpadding="0" width="100%" align="center">
    <tr><td bgcolor="#FFFFFF">&nbsp;</td></tr>
  </table>
  <table cellSpacing="0" cellPadding="0" width="120%" align="center" border="0" class="T0">
    <tr>
      <td>
        <table cellSpacing="0" cellPadding="0" align="center" border="0" width="100%" class="T2">
          <tr align="center">
            <td class="T2_t1" bgcolor="#ffffff" colspan="2">Nro.Avance</td>
            <td class="T2_t1" bgcolor="#ffffff" colspan="2">Fecha Curse</td>
            <td class="T2_t1" bgcolor="#ffffff" colspan="2">Saldo</td>
            <td class="T2_t1" bgcolor="#ffffff" colspan="2">Moneda</td>
            <td class="T2_t1" bgcolor="#ffffff">Tasa</td>
            <td class="T2_t1" bgcolor="#ffffff">Nro. Cuotas</td>
            <td class="T2_t1" bgcolor="#ffffff">Cuotas Pag.</td>
            <td class="T2_t1" bgcolor="#ffffff">Canal Venta</td>
            <td class="T2_t1" bgcolor="#ffffff">Pr&oacute;ximo Vencimiento</td>
            <td class="T2_t1" bgcolor="#ffffff" colspan="2">Valor Cuota</td>
            <td class="T2_t1" bgcolor="#ffffff" colspan="2">Interes</td>
            <td class="T2_t1" bgcolor="#ffffff" >Capital</td>
          </tr>
          <% String bgColor = ""; 
            wcorp.util.formator.DateFormator dateFormator = new wcorp.util.formator.DateFormator();

            for (int i=0;i<res_col.getTotVencimiento();i++) {
                bgColor = (i%2==0)? "bgcolor=\"#eeeeee\"":"";
          %>
          
          <tr>
            <td <%=bgColor%> align="left"   class="T2"><%= res_ope[i].getIdOperacion() + res_ope[i].getNumOperacion() %></td>
            <td <%=bgColor%> align="left"   class="T2">&nbsp;&nbsp;</td>
            <td <%=bgColor%> align="center" class="T2"><%= dateFormator.format(res_ope[i].getFechCurseOper()) %></td>            
            <td <%=bgColor%> align="left"   class="T2">&nbsp;&nbsp;</td>
            <td <%=bgColor%> align="right"  class="T2"><%= StrUtl.formatMonto(res_ope[i].getSaldoCredito(), 2) %></td>
            <td <%=bgColor%> align="left"   class="T2">&nbsp;&nbsp;</td>
            <td <%=bgColor%> align="left"   class="T2"><%= res_ope[i].getGlosaMoneda() %></td>
            <td <%=bgColor%> align="left"   class="T2">&nbsp;&nbsp;</td>
            <td <%=bgColor%> align="center" class="T2"><%= StrUtl.formatMonto(res_ope[i].getTasaSprea(), 2) %></td>
            <td <%=bgColor%> align="center" class="T2"><%= res_ope[i].getNumCuotas() %></td>
            <td <%=bgColor%> align="center" class="T2"><%= res_ope[i].getCoutasPagadas() %></td>
            <td <%=bgColor%> align="center" class="T2"><%= res_ope[i].getCanalVenta() %></td>
            <td <%=bgColor%> align="center" class="T2"><%= dateFormator.format(res_ope[i].getFecVencimiento2()) %></td>
            <td <%=bgColor%> align="right"  class="T2"><%= StrUtl.formatMonto(res_ope[i].getSaldoValorFinal(), 2) %></td>
            <td <%=bgColor%> align="left"   class="T2">&nbsp;&nbsp;</td>
            <td <%=bgColor%> align="right"  class="T2"><%= StrUtl.formatMonto(res_ope[i].getInteresCuota(), 2) %></td>
            <td <%=bgColor%> align="left"   class="T2">&nbsp;&nbsp;</td>
            <td <%=bgColor%> align="right"  class="T2"><%= StrUtl.formatMonto(res_ope[i].getSaldoCapital(), 2) %></td>
          </tr>
          <% } /*for*/%>
          
        </table>
      </td>
    </tr>
  </table>
</form>
</body>
</html>
