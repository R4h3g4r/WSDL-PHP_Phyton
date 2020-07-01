<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="html"
		omit-xml-declaration="yes"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" indent="yes"/>
	<xsl:template match="correo">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
			<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
			<title><xsl:value-of select="titulo" /></title>
			</head>
			<body style="margin:0px auto; background-color: #EEEEEE;">
			<table cellspacing="0" cellpadding="0" border="0" width="700" align="center" bgcolor="#FFFFFF">
			  <tr>
			    <td bgcolor="#FFFFFF" style="font-size:1px; line-height:1px;"></td>
			    <td colspan="2" valign="middle" bgcolor="#FFFFFF"><font face="Arial, Helvetica, sans-serif" color="#718C99" style="font-size:20px; font-weight:normal;">
			    	<xsl:value-of select="para" /></font>
			    </td>
			    <!-- LOGO -->
				<xsl:choose>
					<xsl:when test="$canal = '110' or $canal = '800' or $canal = '901'">			    
					    <td colspan="2" align="right" bgcolor="#FFFFFF" style="font-size:12px; line-height:1px;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/plantillas_mailing_logo_bci.jpg" alt="Bci Personas" width="107" height="98" />
					    </td>
				    </xsl:when>
					<xsl:when test="$canal = '100' or $canal = '905'">
					    <td colspan="2" align="right" bgcolor="#FFFFFF" style="font-size:12px; line-height:1px;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/tbanc/plantillas_mailing_logo_tbanc.jpg" alt="Bci Personas" width="107" height="98" />
					    </td>
				    </xsl:when>				    
				</xsl:choose>
				
			    <td bgcolor="#FFFFFF"></td>
			  </tr>
			  <tr>
			    <!-- BARRA TITULO -->
				<xsl:choose>
					<xsl:when test="$canal = '110' or $canal = '800' or $canal = '901'">			    
					    <td colspan="6" bgcolor="#FFFFFF" style="font-size:12px; line-height:1px;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/plantillas_mailing700__barra.jpg" alt="" width="700" height="5" />
					    </td>
					</xsl:when>
					<xsl:when test="$canal = '100' or $canal = '905'">
					    <td colspan="6" bgcolor="#FFFFFF" style="font-size:12px; line-height:1px;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/tbanc/plantillas_mailing700__barra.jpg" alt="" width="700" height="5" />
					    </td>
					</xsl:when>					
				</xsl:choose>
				
			  </tr>
			  <tr>
			    <td colspan="6" height="110" bgcolor="#496069" style="font-size:46px; padding:2px 20px; font-family:Arial, Helvetica, sans-serif; text-align:left;">
			    	<font face="Arial, Helvetica, sans-serif" color="#FFFF00" style="font-size:46px; font-weight:bold; line-height:60px; letter-spacing:-2px;">
			    		<xsl:value-of select="titulo-bienvenida" /></font><br />
					<font face="Arial, Helvetica, sans-serif" color="#FFFFFF" style="font-size:30px; font-weight:normal; line-height:30px; letter-spacing:-2px;">
						<xsl:value-of select="msg-bienvenida" />
					</font>
				</td>
			  </tr>
			  <tr>
			  	<!-- BORDE SUPERIOR MENSAJE SECUNDARIO -->
				<xsl:choose>
					<xsl:when test="$canal = '110' or $canal = '800' or $canal = '901'">			    
					    <td height="16" colspan="6" style="font-size:12px; line-height:1px;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/img_12466_modificado_03.jpg" alt="" title="" width="700" height="16" />
					    </td>
					</xsl:when>
					<xsl:when test="$canal = '100' or $canal = '905'">
					    <td height="16" colspan="6" style="font-size:12px; line-height:1px;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/tbanc/img_12466_modificado_03.jpg" alt="" title="" width="700" height="16" />
					    </td>
					</xsl:when>
				</xsl:choose>
				
			  </tr>
			  <tr>
			  	<!-- BORDE IZQUIERDO MENSAJE SECUNDARIO -->
				<xsl:choose>
					<xsl:when test="$canal = '110' or $canal = '800' or $canal = '901'">			    			  
					    <td colspan="2" height="58" style="font-size:1px; line-height:1px;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/img_12466_modificado_04.jpg" alt="" title="" width="31" height="107" />
					    </td>
				   	</xsl:when>
				   	<xsl:when test="$canal = '100' or $canal = '905'">
					    <td colspan="2" height="58" style="font-size:1px; line-height:1px;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/tbanc/img_12466_modificado_04.jpg" alt="" title="" width="31" height="107" />
					    </td>
				   	</xsl:when>
				</xsl:choose>
				
			    <td colspan="2" bgcolor="#9BA7AD" valign="middle" height="58" style="padding:0px; font-family:Arial, Helvetica, sans-serif; text-align:center;">
			    	<font face="Arial, Helvetica, sans-serif" color="#FFFFFF" style="font-size:26px; font-weight:normal; line-height:30px; letter-spacing:-1px;">
			    		<xsl:value-of select="globo" />
			    	</font>
			    	</td>
			  	<!-- BORDE DERECHO MENSAJE SECUNDARIO -->
				<xsl:choose>
					<xsl:when test="$canal = '110' or $canal = '800' or $canal = '901'">			    			  
					    <td colspan="2" height="58" style="font-size:1px; line-height:1px;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/img_12466_modificado_05.jpg" alt="" title="" width="108" height="107" />
					    </td>
					</xsl:when>
					<xsl:when test="$canal = '100' or $canal = '905'">
					    <td colspan="2" height="58" style="font-size:1px; line-height:1px;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/tbanc/img_12466_modificado_05.jpg" alt="" title="" width="108" height="107" />
					    </td>
					</xsl:when>
				</xsl:choose>
				
			  </tr>
			  <tr>
			  	<!-- BANNER CONTENIDO -->
				<xsl:choose>
					<xsl:when test="$canal = '110' or $canal = '800' or $canal = '901'">			    			  
					    <td height="455" colspan="6" style="font-size:12px; line-height:1px;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/img_12466_modificado_06.jpg" alt="" title="" width="700" height="455" />
					    </td>
					 </xsl:when>
					 <xsl:when test="$canal = '100' or $canal = '905'">
					    <td height="455" colspan="6" style="font-size:12px; line-height:1px;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/tbanc/img_12466_modificado_06.jpg" alt="" title="" width="700" height="455" />
					    </td>
					 </xsl:when>
				</xsl:choose>
				
			  </tr>
			  <tr>
			  	<!-- BANNER REDES SOCIALES Y SEGURIDAD -->
				<xsl:choose>
					<xsl:when test="$canal = '110' or $canal = '800' or $canal = '901'">			    			  			  
					    <td height="138" colspan="6" align="center" bgcolor="#FFFFFF" style="text-align:center;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/bci/pie_mailing_700_tu.jpg" alt="Toma la seguridad como un habito" width="700" height="138" />
					    </td>
					</xsl:when>
					<xsl:when test="$canal = '100' or $canal = '905'">
					    <td height="138" colspan="6" align="center" bgcolor="#FFFFFF" style="text-align:center;">
					    	<img src="http://www.bci.cl/medios/BCI2/art/mailing/tbanc/pie_mailing_700_tu.jpg" alt="Toma la seguridad como un habito" width="700" height="138" />
					    </td>
					</xsl:when>
				</xsl:choose>
				
			  </tr>
			  <tr>
			    <td colspan="6" bgcolor="#FFFFFF" style="font-size:10px; padding:2px 40px; font-family:Arial, Helvetica, sans-serif; text-align:center;">
			    <font face="Arial, Helvetica, sans-serif" color="#444444" style="font-size:10px; line-height:13px;">
			    	<xsl:value-of select="pie1" /><br />
			      	<xsl:value-of select="pie2" /><br />
			      <strong><xsl:value-of select="pie3" /></strong><br />
			    </font>
			    </td>
			  </tr>
			  <tr>
			    <td colspan="6" bgcolor="#FFFFFF" style="font-size:10px; padding:2px 40px; font-family:Arial, Helvetica, sans-serif; text-align:center;">
			    	<font face="Arial, Helvetica, sans-serif" color="#444444" style="font-size:10px; line-height:13px; text-align:center;">
			    		<xsl:value-of select="pie4" />
			    	</font>
			    </td>
			  </tr>
			  <tr>
			    <td width="20"></td><!-- Este valor siempre debe ser 20, que es el borde -->
			    <td width="11"></td>
			    <td width="542"></td>
			    <td width="19"></td>
			    <td width="88"></td>
			    <td width="20"></td><!-- Este valor siempre debe ser 20, que es el borde -->
			  </tr>
			</table>
			</body>
			</html>
	</xsl:template>
</xsl:stylesheet>