<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="html"
		omit-xml-declaration="yes"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" indent="yes"/>
	<xsl:template match="correoCuentasVinculadas">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>Bci Personas</title>
<style type="text/css">
	
body {
	background-color: #E4EBED;
}

</style>
</head>
  
  <body style="margin:0px auto;">
<table border="0" cellspacing="0" cellpadding="0" align="center" width="500" style="font-family:Arial, Helvetica, sans-serif; font-size:12px;" >

  <tr>
    <td bgcolor="#FFFFFF" ></td>
    <td height="39" colspan="5" valign="bottom" bgcolor="#FFFFFF" >  </td>
    <td rowspan="2" bgcolor="#FFFFFF" style="font-size:12px; line-height:1px;"><img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/plantillas_mailing_logo_bci.jpg" alt="Bci Personas" width="107" height="98" /></td>
    <td bgcolor="#FFFFFF" ></td>
  </tr>
   <tr>
    <td bgcolor="#FFFFFF" ></td>
    <td height="39" colspan="5" valign="top" bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF" ></td>
  </tr>
   <tr>
    <td colspan="8" style="font-size:1px; line-height:1px;" bgcolor="#FFFFFF" ><img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/plantillas_mailing_barra.jpg" alt="" width="500" height="5" /></td>
  </tr>
   <tr>
     <td colspan="8" valign="top" bgcolor="#FFFFFF" style="font-family:Arial, Helvetica, sans-serif;"><table width="420" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td bgcolor="#FFFFFF"> &#160; </td>
       </tr>
       <tr>
         <td bgcolor="#FFFFFF"> &#160; </td>
       </tr>
       <tr>
         <td bgcolor="#FFFFFF" style="font-weight:bold; font-size:12px; font-family:Arial, Helvetica, sans-serif;">Estimado(a) <xsl:value-of select="nombreCliente" /> :</td>
       </tr>
       <tr>
         <td bgcolor="#FFFFFF"> &#160; </td>
       </tr>
       <tr>
         <td bgcolor="#FFFFFF" style="line-height:20px; font-family:Arial, Helvetica, sans-serif;">
         
         <p>Con fecha <xsl:value-of select="fechaActual" /> se ha vinculado a Ud. la Cuenta Corriente N°<br />
           <xsl:value-of select="ctaCliente" /> perteneciente a nuestro cliente <xsl:value-of select="nombreAutoriza" /> quien lo autoriza a realizar servicios de consulta para dicha cuenta.<br />
         </p>
         <p><strong>Atentamente,<br />
         Bci</strong></p></td>
       </tr>
       <tr>
         <td bgcolor="#FFFFFF"> &#160;  </td>
       </tr>
      </table>
	 </td>
   </tr>
      <tr>
    <td height="152" colspan="8" align="center" bgcolor="#FFFFFF" style="text-align:center;"><img src="http://www.bci.cl/medios/BCI2/art/mailing/pie2012/500_bci_ud_redes.jpg" alt="Toma la seguridad como un hábito" width="500" height="152" /></td>
  </tr>
  <tr>
    <td colspan="8" bgcolor="#FFFFFF" style="font-size:10px; padding:2px 40px; font-family:Arial, Helvetica, sans-serif; text-align:center;"><font face="Arial, Helvetica, sans-serif" color="#444444" style="font-size:10px; line-height:13px;">Infórmese sobre la garantía estatal de los depósitos en su banco o en www<span style="letter-spacing:-1px;">. </span>CMFChile<span style="letter-spacing:-1px;">. </span>cl.
        <br />
      <strong>Este mail es generado de manera automática, Por favor NO RESPONDER.</strong><br />
      Los signos ortográficos fueron omitidos intencionalmente en el asunto de este correo electrónico.
      <br />
     
    </font></td>
  </tr>
  <tr>
    <td width="22"></td>
    <td width="70"></td>
    <td width="70"></td>
    <td width="70"></td>
    <td width="70"></td>
    <td width="69"></td>
    <td width="107"></td>
    <td width="22"></td>
  </tr>
</table>
</body>



</html>

</xsl:template>
</xsl:stylesheet>