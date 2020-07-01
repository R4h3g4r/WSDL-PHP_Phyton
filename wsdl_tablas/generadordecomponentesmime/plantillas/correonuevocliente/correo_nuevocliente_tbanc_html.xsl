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
			<style type="text/css">
				body,td,th {
					font-family: Tahoma, Geneva, sans-serif;
					font-size: 11px;
					color: #999;
				}
				
				body {
					margin-left: 0px;
					margin-top: 0px;
					margin-right: 0px;
					margin-bottom: 0px;
				}
			</style>
			</head>
			<body>
			<table width="567" border="0" align="center" cellpadding="0" cellspacing="0" style="width:604px;">
			  <tr>
			    <td width="436"><img src="http://www.bci.cl/medios/BCI2/art/tbanc/mails/header_mailing_bienvenidos.jpg" width="604" height="123" border="0" /></td>
			  </tr>
			
			  <tr>
			    <td height="30" align="left" style="background-color:#E4E0D5; font-size:12px; padding-left:45px;"><strong><br />
			      Bienvenido (a)</strong>:<br />
			      <br />
			</td>
			  </tr>
			  <tr>
			    <td style="font-size:1px;"><img src="http://www.bci.cl/medios/BCI2/art/tbanc/mails/bienvenidos_nuevos_clientes.jpg" width="604" height="551" /></td>
			  </tr>
			  <tr>
			    <td><img src="http://www.bci.cl/medios/BCI2/art/tbanc/mails/servicios_nuevos_clientes.jpg" width="604" height="106" alt="servicios TBanc" /></td>
			  </tr>
			  <tr>
			    <td><img src="http://www.bci.cl/medios/BCI2/art/tbanc/mails/footer_nuevos_clientes.jpg" width="604" height="72" border="0" usemap="#Map" alt="Email seguro TBanc, Facebook y Twitter" />
			      <map name="Map" id="Map">
			        <area shape="rect" coords="552,21,581,51" href="http://twitter.com/#!/tbanc" target="_blank" />
			        <area shape="rect" coords="512,18,541,50" href="http://www.facebook.com/TBancChile" target="_blank" />
			        <area shape="rect" coords="473,22,504,49" href="http://www.youtube.com/user/TBancTransparencia" target="_blank" />
			    </map></td>
			  </tr>
			  <tr>
			    <td align="center" style="font-family: Tahoma, Geneva, sans-serif;font-size: 11px;color: #999;"><br /><xsl:text>      &#8226; </xsl:text> <xsl:value-of select="pie1" /><br /></td>
			  </tr>
			</table>
			</body>

		</html>
	</xsl:template>
</xsl:stylesheet>