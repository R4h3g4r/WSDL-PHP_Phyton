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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>Bci Personas</title>
</head>
<body style="margin:0px auto; background-color:#F1F1F1;">
<table cellspacing="0" cellpadding="0" border="0" width="500" align="center" bgcolor="#F1F1F1">
  <!-- INICIO CABECERA -->
  <tr>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td align="right" bgcolor="#FFFFFF" style="font-size:12px; line-height:1px;"><img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/plantillas_mailing_logo_bci.jpg" alt="Bci Personas" width="107" height="98" /></td>
    <td bgcolor="#FFFFFF"></td>
  </tr>
  <tr>
    <td colspan="8" bgcolor="#FFFFFF" style="font-size:12px; line-height:1px;"><img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/plantillas_mailing_barra.jpg" alt="" width="500" height="5" /></td>
  </tr>
  <!-- FIN CABECERA --> 
  <!-- INICIO CONTENIDO -->
  <tr>
    <td colspan="8" height="55" bgcolor="#F1F1F1" style="font-size:46px; padding:2px 10px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:1px;"><font face="Arial, Helvetica, sans-serif" color="#666666" style="font-size:27px; line-height:35px; letter-spacing:-1px;">Aviso Comprobante <br />
    de Bloqueo de Tarjeta de Crédito</font></td>
  </tr>
  <tr bgcolor="#F1F1F1">
    <td height="21" colspan="8" style="font-size:12px; line-height:1px;"><img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/img_operacionales_01.jpg" width="500" height="21" alt="" /></td>
  </tr>
  <tr bgcolor="#F1F1F1">
    <td height="22" colspan="8" valign="bottom" style="font-size:16px; padding:2px 10px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:1px;"><font face="Arial, Helvetica, sans-serif" color="#0C59A5" style="font-size:16px; line-height:16px; font-weight:bold;">Estimado <span style="text-transform:uppercase;"><xsl:value-of select="bloqueos/nombre-completo" /></span></font></td>
  </tr>
  <tr bgcolor="#F1F1F1">
  <td colspan="8" height="60" style="font-size:13px; padding:2px 10px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:1px;"><font face="Arial, Helvetica, sans-serif" color="#333333" style="font-size:13px; line-height:16px; font-weight:bold;">Le informamos que se ha realizado el Bloqueo<br/> de la(s) Tarjeta(s) de Crédito.</font></td></tr>
   <tr bgcolor="#F1F1F1">

    <td height="30" colspan="8" valign="middle" style="font-size:13px; padding:2px 10px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:1px;"><font face="Arial, Helvetica, sans-serif" color="#333333" style="font-size:15px; line-height:13px; font-weight:normal;  padding:20px 0px 0px 0px;">Su número de comprobante es:</font> <font face="Arial, Helvetica, sans-serif" color="#333333" style="font-size:15px; line-height:11px; font-weight:bold;"><xsl:value-of select="bloqueos/numero-comprobante" />.</font></td>
    
  </tr>
  <tr bgcolor="#F1F1F1">
    <td height="27" colspan="8" style="font-size:12px; line-height:1px;"><img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/img_operacionales_02.jpg" width="500" height="27" alt="" /></td>
  </tr>
  <tr bgcolor="#F1F1F1">
    <td height="25" style="line-height:1px; border-right:1px solid #CCCCCC;"></td>
    <td bgcolor="#FFFFFF" colspan="2" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:12px;"><strong>Número de Tarjeta</strong></td>
    <td bgcolor="#FFFFFF" colspan="2" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:12px;"><strong>Código de Bloqueo</strong></td>
    <td bgcolor="#FFFFFF" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:12px;"><strong>Hora</strong></td>
    <td bgcolor="#FFFFFF" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:12px;"><strong>Fecha</strong></td>
    <td height="25" style="line-height:1px; border-left:1px solid #CCCCCC;"></td>
  </tr>
<!-- ITERAR -->
<xsl:for-each select="bloqueos/tarjeta">
<xsl:choose>
<xsl:when test="position() mod 2 = 1">

  <tr bgcolor="#F1F1F1">
    <td height="25" style="line-height:1px; border-right:1px solid #CCCCCC;"></td>
    <td height="25" bgcolor="#EAF2F7" colspan="2" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:1px;"><font face="Arial, Helvetica, sans-serif" color="#333333" style="font-size:12px; line-height:11px;"><xsl:value-of select="nombre-tarjeta" /></font></td>
    <td height="25" bgcolor="#EAF2F7" colspan="2" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:12px;"><xsl:value-of select="codigo-bloqueo" /></td>
    <td height="25" bgcolor="#EAF2F7" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:12px;"><xsl:value-of select="hora-bloqueo" /></td>
    <td height="25" bgcolor="#EAF2F7" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:12px;"><xsl:value-of select="fecha-bloqueo" /></td>
    <td height="25" style="line-height:1px; border-left:1px solid #CCCCCC;"></td>
  </tr>
  
</xsl:when>
<xsl:otherwise>
  
  <tr bgcolor="#F1F1F1">
    <td height="25" style="line-height:1px; border-right:1px solid #CCCCCC;"></td>
    <td height="25" bgcolor="#FFFFFF" colspan="2" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:1px;"><font face="Arial, Helvetica, sans-serif" color="#333333" style="font-size:12px; line-height:11px;"><xsl:value-of select="nombre-tarjeta" /></font></td>
    <td height="25" bgcolor="#FFFFFF" colspan="2" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:12px;"><xsl:value-of select="codigo-bloqueo" /></td>
    <td height="25" bgcolor="#FFFFFF" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:12px;"><xsl:value-of select="hora-bloqueo" /></td>
    <td height="25" bgcolor="#FFFFFF" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:12px;"><xsl:value-of select="fecha-bloqueo" /></td>
    <td height="25" style="line-height:1px; border-left:1px solid #CCCCCC;"></td>
  </tr>

</xsl:otherwise>
</xsl:choose>
<!-- ITERAR -->
</xsl:for-each>
				  
  <tr bgcolor="#F1F1F1">
    <td height="8" style="line-height:1px; border-right:1px solid #CCCCCC;"></td>
    <td height="17" colspan="6" bgcolor="#FFFFFF" style="border-bottom:1px solid #CCCCCC;"></td>
    <td style="line-height:1px; border-left:1px solid #CCCCCC;"></td>
  </tr>
  <tr bgcolor="#F1F1F1">
    <td height="22" style="line-height:1px; border-right:1px solid #FFCC33;"></td>
    <td height="24" colspan="6" valign="bottom" bgcolor="#FFFF99" style="font-size:12px; padding:2px 2px; font-family:Arial, Helvetica, sans-serif; text-align:center; line-height:1px;"><font face="Arial, Helvetica, sans-serif" color="#333333" style="font-size:12px; line-height:11px; font-weight:normal;"></font><font face="Arial, Helvetica, sans-serif" color="#333333" style="font-size:12px; line-height:11px; font-weight:normal;">Para cualquier duda respecto de este mail, llámenos al <font color="#FF3300" style="font-weight:bold;">600 824 2424</font></font></td>
    <td height="22" style="line-height:1px; border-left:1px solid #FFCC33;"></td>
  </tr>
  <tr bgcolor="#F1F1F1">
    <td height="12" colspan="8" style="font-size:12px; line-height:1px;"><img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/img_operacionales_03.jpg" width="500" height="12" alt="" /></td>
  </tr>
 
  
  <tr bgcolor="#F1F1F1">
    <td height="15" colspan="8" style="font-size:12px; line-height:1px;"></td>
  </tr>
  <!-- FIN CONTENIDO --> 
  <!-- INICIO PIE -->
  <tr>
    <td height="138" colspan="8" align="center" bgcolor="#FFFFFF" style="text-align:center;"><img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/pie_mailing_500_usted.jpg" alt="Tome la seguridad como un habito" width="500" height="138" /></td>
  </tr>
  <tr>
    <td colspan="8" bgcolor="#FFFFFF" style="font-size:10px; padding:2px 40px; font-family:Arial, Helvetica, sans-serif; text-align:center;"><font face="Arial, Helvetica, sans-serif" color="#444444" style="font-size:10px; line-height:13px;">Infórmese sobre la garantia estatal de los depósitos en su banco o en www<span style="letter-spacing:-1px;">. </span>CMFChile<span style="letter-spacing:-1px;">. </span>cl.<br />
      Infórmate de las  condiciones en www<span style="letter-spacing:-1px;">. </span>bci<span style="letter-spacing:-1px;">. </span>cl o llama al 600 824 2424.<br />
      <strong>Este mail es generado de manera automática, Por favor NO RESPONDER.</strong><br />
      Los signos ortográficos fueron omitidos intencionalmente en el asunto de este correo electrónico.</font></td>
  </tr>
  
   <tr>

    <td colspan="8"  height="40" bgcolor="#FFFFFF" style="font-size:10px; padding:0px; font-family:Arial, Helvetica, sans-serif; text-align:center; padding:5px 0px 20px 0px;"><font face="Arial, Helvetica, sans-serif" color="#444444" style="font-size:11px; line-height:13px; font-weight:bold;">Importante<br /> </font>

     <font face="Arial, Helvetica, sans-serif" color="#444444" style="font-size:11px; line-height:10px; font-weight:normal; line-height:12px;">
Los comentarios aquí ingresados son exclusiva responsabilidad de nuestro cliente<br/> y no involucran en absoluto al Bci
     </font></td>

  </tr>
  <!-- FIN PIE -->
  <tr>
       <td width="15"></td>
    <td width="115"></td>
    <td width="20"></td>
    <td width="50"></td>
    <td width="115"></td>
    <td width="68"></td>
    <td width="107"></td>
    <td width="15"></td>
  </tr>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>