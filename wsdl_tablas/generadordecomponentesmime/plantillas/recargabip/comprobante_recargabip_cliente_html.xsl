<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:param name="logo" />
	<xsl:param name="banner" />
	<xsl:param name="accionBanner" />
	<xsl:output method="html"
		omit-xml-declaration="yes"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" indent="yes"/>
	<xsl:template match="comprobante">
		<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
			<title>Comprobante de Recarga Tarjeta Bip!</title>
		</head>
		<body>
		<table width="500" border="0" cellpadding="0" cellspacing="0" style="font:normal 12px Arial, Helvetica, sans-serif;border:solid 1px #CCC;padding:10px">
<!-- TITULO -->
		<tr>
		  <xsl:choose>
			<xsl:when test="$canal = '110' or $canal = '901'">
			    <td style="background-color:#090;text-align:center;padding-top:10px;padding-bottom:10px;font-size:18px; color:#fff;">
			    <strong>Comprobante de Recarga Tarjeta Bip!</strong></td>
			</xsl:when>
			<xsl:when test="$canal = '800'">
			    <td style="background-color:#090;text-align:center;padding-top:10px;padding-bottom:10px;font-size:18px; color:#fff">
			    <strong>Comprobante de Recarga Tarjeta Bip!</strong></td>
			</xsl:when>
			<xsl:when test="$canal = '100' or $canal = '905'">
			    <td style="background-color:#c00;text-align:center;padding-top:10px;padding-bottom:10px;font-size:18px; color:#fff">
			    <strong>Comprobante de Recarga Tarjeta Bip!</strong></td>
			</xsl:when>
		 </xsl:choose>
		 </tr>
<!-- DATOS -->
		  <tr>
		    <td style="padding-top:10px;padding-bottom:10px;vertical-align:top;padding-right:10px;font-size:12px; ">
		    <p><strong>Estimado (a) <xsl:value-of select="nombre-cliente" /></strong>:</p>
		    <p>Con fecha <xsl:value-of select="fecha-transaccion" /> se ha realizado una recarga de tarjeta bip! El detalle de esta operacion es el siguiente:</p>
		      
		      <table border="0" align="left" cellpadding="0" cellspacing="0" style="font:normal 12px Arial, Helvetica, sans-serif;width:490px; color:#333333;">
			<tr bgcolor="#E5E5E5">
			  <th align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;"><strong>Tarjeta Bip!:</strong></th>
			  <th align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
				<strong><xsl:value-of select="num-tarjeta-bip" /></strong></th>
			</tr>

			<tr bgcolor="#FFFDD7">
			  <th align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;"><strong>Monto de Recarga:</strong></th>
			  <th align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
				<strong>$<xsl:value-of select="monto" /></strong></th>

			</tr>
			<tr bgcolor="#E5E5E5">
			  <th align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">Cuenta de Cargo:</th>
			  <th align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
				<xsl:value-of select="cuenta-cargo" /></th>
			</tr>

			<tr bgcolor="#F9F9F9">
			  <td align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">Numero de Comprobante:</td>
			  <td align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
				<xsl:value-of select="num-comprobante" /></td>
			</tr>
			
			<tr bgcolor="#E5E5E5">
			  <th align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">Comentario:</th>
			  <th align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
				<xsl:value-of select="comentario" /></th>
			</tr>
		      </table>

		      <div style="clear:both;"></div>
<!-- PIE -->
			<xsl:choose>
				<xsl:when test="$canal = '110' or $canal = '901'">
					<p>Para cualquier duda al  respecto de este email, escribanos en el formulario de contacto en bci.cl o llamenos al fono 
					<strong style="color:#FF0000">600 824 24  24</strong>.</p> 
				</xsl:when>
				<xsl:when test="$canal = '800'">
					<p>Para cualquier duda al  respecto de este email, escribanos a contacto@bci.cl o llamenos al fono 
					<strong style="color:#FF0000">600 824 24  24</strong>.</p> 
				</xsl:when>
				<xsl:when test="$canal = '100' or $canal = '905'">
					<p>Para cualquier duda al  respecto de este email, escribanos en el formulario de contacto en tbanc.cl o llamenos al fono 
					<strong style="color:#FF0000">600 524 24  24</strong>.</p>
				</xsl:when>
			</xsl:choose>

		      <table width="490" border="0" cellspacing="0" cellpadding="0">
<!-- BANNER -->
			<tr>
			  <td width="50%" align="center" valign="top" style="font-size:12px;padding-top:10px">
					<img width="468" height="60" border="0">
						<xsl:attribute name="src">
							<xsl:value-of select="$banner" />
						</xsl:attribute>
					</img>
			</td>
			</tr>

			<tr>
			<xsl:choose>
				<xsl:when test="$canal = '110' or $canal = '901'">
				  <td align="left" valign="top" style="font-size:12px;padding-top:10px">
					Atentamente,<br/> 
					<strong style="color:#999999">Bci - Somos Diferentes</strong><br /> 
					<br /> 
					<img alt="logo_bci" width="99" height="49">
						<xsl:attribute name="src">
							<xsl:value-of select="$logo" />
						</xsl:attribute>
					</img>
				   </td>
				</xsl:when>
				<xsl:when test="$canal = '800'">
				  <td align="left" valign="top" style="font-size:12px;padding-top:10px">
					Atentamente,<br/> 
					<strong style="color:#999999">Bci Nova</strong><br /> 
					<br /> 
					<img alt="logo_bci" width="138" height="49">
						<xsl:attribute name="src">
							<xsl:value-of select="$logo" />
						</xsl:attribute>
					</img>
				  </td>
				</xsl:when>
				<xsl:when test="$canal = '100' or $canal = '905'">
				  <td align="left" valign="top" style="font-size:12px;padding-top:10px">
					Atentamente,<br/> 
					<strong style="color:#999999">TBanc - El Banco a distancia</strong><br /> 
					<br /> 
					<img alt="logo_bci" width="53" height="50">
						<xsl:attribute name="src">
							<xsl:value-of select="$logo" />
						</xsl:attribute>
					</img>
				 </td>
				</xsl:when>
			</xsl:choose>
			</tr>
		      </table>
		</td>
	</tr>
	<tr>
		<td style="background:#f6f9fc;font-size:11px;padding:10px;"><div>
			<p><strong>Importante:</strong><br />
			<xsl:choose>
				<xsl:when test="$canal = '100'">
					&#8226; Este mail es generado de manera automatica, por favor no respondas a este mensaje.<br />
				</xsl:when>
				<xsl:otherwise>
					&#8226; Este mail es generado de manera automatica, por favor no responda a este mensaje.<br />
				</xsl:otherwise>
			</xsl:choose>
			  &#8226; Los tildes son omitidos intencionalmente.<br />
			<xsl:choose>
				<xsl:when test="$canal = '100'">
					&#8226; Informate sobre la garantia estatal de los depositos en tu banco o en www.CMFChile.cl.
				</xsl:when>
				<xsl:otherwise>
					&#8226; Informese sobre la garantia estatal de los depositos en su banco o en www.CMFChile.cl.
				</xsl:otherwise>
			</xsl:choose>
			</p>
		    </div>
		</td>
	</tr>
	</table>
	</body>
	</html>
	</xsl:template>
</xsl:stylesheet>