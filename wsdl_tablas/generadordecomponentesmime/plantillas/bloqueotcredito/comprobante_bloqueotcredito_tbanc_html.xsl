<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="html"
		omit-xml-declaration="yes"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" indent="yes"/>
	<xsl:template match="comprobante">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>Documento sin título</title>
<style type="text/css">
body,td,th {
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 12px;
	color: #333;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	color: #666;
}
</style>
</head>

<body>
<table width="590" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><img src="http://www.bci.cl/medios/BCI2/art/tbanc/mails/mail_operacionales_header.jpg" width="617" height="124" alt="" /></td>
  </tr>
  <tr>
    <td width="8" rowspan="7" valign="top"><img src="http://www.bci.cl/medios/BCI2/art/tbanc/mails/mail_operacionales_left.jpg" width="6" height="522" alt="" /></td>
    <td height="29" valign="top"></td>
    <td width="6" rowspan="8" valign="top"><img src="http://www.bci.cl/medios/BCI2/art/tbanc/mails/mail_operacionales_rigth.jpg" width="6" height="522" alt="" /></td>
  </tr>
  <tr>
    <td width="603" valign="top"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" style="background-color: #EFEFEF; border:solid 1px  #CCC; height:50px; color:#333333; font-family:Tahoma, Geneva, sans-serif; font-size:12px;">
      <tr>
        <td width="7%" style="padding-left:20px;"><img src="http://www.bci.cl/medios/BCI2/art/tbanc/mails/mail_operacionales_icons.png" width="20" height="20" alt="" /></td>
        <td width="93%" style="padding-left:20px;"><p><strong>Aviso Comprobante de Bloqueo de Tarjeta de Crédito</strong></p></td>
      </tr>
    </table></td>
  </tr>
  <tr>
   <td valign="top" style="font-size:12px; font-weight:bold; padding-left:20px; font-family:Tahoma, Geneva, sans-serif; padding-top:10px; ">Estimado(A) : <xsl:value-of select="bloqueos/nombre-completo" /></td>
  </tr>
  <tr>
    <td valign="top" style="padding-left:20px; height:30px; color:#999999; ">Le informamos que se ha realizado el Bloqueo de la(s) Tarjeta(s) de Crédito.</td>
  </tr>
  <tr>
       <td style="padding-left:20px; padding-top:10px; padding-bottom:10px;">Su número de comprobante es: <strong> <xsl:value-of select="bloqueos/numero-comprobante" />.</strong></td>
  </tr>
  <tr>
    <td height="218" valign="top"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #CCC;">
      <tr>
        <td width="29%" height="30" align="center" bgcolor="#c2c2c2"><p><strong>Número de Tarjeta&#13;</strong></p></td>
        <td width="30%" align="center" bgcolor="#c2c2c2"><strong>Código de Bloqueo</strong></td>
        <td width="18%" align="center" bgcolor="#c2c2c2"><strong>Hora</strong></td>
        <td width="23%" align="center" bgcolor="#c2c2c2"><strong>Fecha</strong></td>
      </tr>

<!-- ITERAR -->
<xsl:for-each select="bloqueos/tarjeta">
<xsl:choose>
<xsl:when test="position() mod 2 = 1">



      <tr>
        <td height="30" align="center" bgcolor="#e3e3e3"><p><xsl:value-of select="nombre-tarjeta" /></p></td>
        <td align="center" bgcolor="#e3e3e3"><xsl:value-of select="codigo-bloqueo" /></td>
        <td align="center" bgcolor="#e3e3e3"><xsl:value-of select="hora-bloqueo" /></td>
        <td align="center" bgcolor="#e3e3e3"><xsl:value-of select="fecha-bloqueo" /></td>
      </tr>
  
</xsl:when>
<xsl:otherwise>
  
      <tr>
        <td height="30" align="center" bgcolor="#f2f2f2"><p><xsl:value-of select="nombre-tarjeta" /></p></td>
        <td align="center" bgcolor="#f2f2f2"><xsl:value-of select="codigo-bloqueo" /></td>
        <td align="center" bgcolor="#f2f2f2"><xsl:value-of select="hora-bloqueo" /></td>
        <td align="center" bgcolor="#f2f2f2"><xsl:value-of select="fecha-bloqueo" /></td>
      </tr>

</xsl:otherwise>
</xsl:choose>
</xsl:for-each>

<!-- ITERAR -->
    </table></td>
  </tr>
  <tr>
    <td align="center"><img src="http://www.bci.cl/medios/BCI2/art/tbanc/mails/mail_operacionales_servicios.jpg" width="577" height="87" alt="" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="http://www.bci.cl/medios/BCI2/art/tbanc/mails/mail_operacionales_footer.jpg" width="617" height="114" alt="" /></td>
  </tr>
  <tr>
    <td colspan="3" style="font-size:10px; color:#999999; padding-left:20px; padding-right:20px;">Has recibido este correo electrónico porque realizaste  alguna transacción en TBanc.cl que requiere de tu atención.<br />
Por favor no respondas a este correo electrónico. Para consultas o sugerencias  visítanos en TBanc.cl, envíanos un correo electrónico a <a href="mailto:TBanc@bci.cl" target="_blank">TBanc@bci.cl</a> o  llama al <span style="text-decoration: underline;">600 524 2424</span>.<br />
Los tíldes en el asunto de este mail han sido omitidos intencionalmente. </td>
  </tr>
</table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>