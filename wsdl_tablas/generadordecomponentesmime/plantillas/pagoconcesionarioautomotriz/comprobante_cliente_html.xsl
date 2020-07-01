<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:param name="logo" />
	<xsl:param name="banner" />
	<xsl:param name="accionBanner" />
	<xsl:output method="html" omit-xml-declaration="yes" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" indent="yes" />
	<xsl:template match="comprobante">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
				<title><xsl:value-of select="titulo" /></title>
			</head>
			<body>
				<table width="500" border="0" cellpadding="0" cellspacing="0"
					style="font-family:Arial, Helvetica, sans-serif;border:solid 1px #CCC;padding:10px">
					<tr>
						<xsl:choose>
							<xsl:when test="$canal = '100' or $canal = '905'">
								<td style="background-color:#c00;text-align:center;padding-top:10px;padding-bottom:10px;font-size:18px; color:#fff">
									<strong><xsl:value-of select="titulo" /></strong>
								</td>
							</xsl:when>
							<xsl:when test="$canal = '110' or $canal = '901'">
								<td style="background-color:#090;text-align:center;padding-top:10px;padding-bottom:10px;font-size:18px; color:#fff;">
									<strong><xsl:value-of select="titulo" /></strong>
								</td>
							</xsl:when>
							<xsl:when test="$canal = '800'">
								<td style="background-color:#090;text-align:center;padding-top:10px;padding-bottom:10px;font-size:18px; color:#fff;">
									<strong><xsl:value-of select="titulo" /></strong>
								</td>
							</xsl:when>
						</xsl:choose>
					</tr>
					<tr>
						<td style="padding-top:10px;padding-bottom:10px;vertical-align:top;padding-right:10px;font-size:12px; ">
							<p>
								<strong><xsl:value-of select="cabecera1" />&#160;<xsl:value-of select="nombre-cliente" /></strong>:
							</p>
									<p>
										<xsl:value-of select="cabecera2" />&#160;<xsl:value-of select="fecha-transferencia" />&#160;
										<xsl:value-of select="cabecera3" /><xsl:value-of select="cuenta-origen" />.
									</p>
							<p>
								<xsl:value-of select="cabecera4" />
							</p>
							<table border="0" cellpadding="0" cellspacing="0"
								style="font:normal 12px Arial, Helvetica, sans-serif;width:490px; color:#333333;">
								<tr bgcolor="#FFFA9D">
									<td align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										<strong>Monto pagado:</strong>
									</td>
									<td align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										<strong>$<xsl:value-of select="monto" /></strong>
									</td>
								</tr>
								<tr bgcolor="#F9F9F9">
									<td align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										<strong>Nombre Automotora:</strong>
									</td>
									<td align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										<strong><xsl:value-of select="nombre-destinatario" /></strong>
									</td>
								</tr>
								<tr bgcolor="#E5E5E5">
									<td align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										E-mail Automotora:
									</td>
									<td align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										<xsl:value-of select="correo-destinatario" />
									</td>
								</tr>
								<tr bgcolor="#F9F9F9">
									<td align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										Banco de destino:
									</td>
									<td align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										<xsl:value-of select="banco-destino" />
									</td>
								</tr>
								<tr bgcolor="#E5E5E5">
									<td align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										Cuenta de destino:
									</td>
									<td align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										<xsl:value-of select="cuenta-destino" />
									</td>
								</tr>
								<tr bgcolor="#F9F9F9">
									<td align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										Fecha de abono:
									</td>
									<td align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										<xsl:value-of select="fecha-abono" />
									</td>
								</tr>
								<tr bgcolor="#E5E5E5">
									<td align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										Comentario:
									</td>
									<td align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										Pago Automotora
									</td>
								</tr>
								<tr bgcolor="#F9F9F9">
									<td align="right" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										Numero de la operacion:
									</td>
									<td align="left" valign="top" style="border:1px solid #fff; padding:2px 4px; width:50%; font-weight:normal;">
										<xsl:value-of select="numero-operacion" />
									</td>
								</tr>
							</table>
							<table width="490" border="0" cellspacing="0" cellpadding="0">
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
										<xsl:when test="$canal = '100' or $canal = '905'">
											<td align="left" valign="top" style="font-size:12px;padding-top:10px">
												<xsl:value-of select="firma" /><br />
												<strong style="color:#999999"><xsl:value-of select="firmaSlogan" /></strong><br /><br />
												<img alt="logo_tbanc" width="53" height="50">
													<xsl:attribute name="src">
														<xsl:value-of select="$logo" />
													</xsl:attribute>
												</img>
											</td>
										</xsl:when>
										<xsl:when test="$canal = '110' or $canal = '901'">
											<td align="left" valign="top" style="font-size:12px;padding-top:10px">
												<xsl:value-of select="firma" /><br />
												<strong style="color:#999999"><xsl:value-of select="firmaSlogan" /></strong><br /><br />
												<img alt="logo_bci" width="99" height="49">
													<xsl:attribute name="src">
														<xsl:value-of select="$logo" />
													</xsl:attribute>
												</img>
											</td>
										</xsl:when>
										<xsl:when test="$canal = '800'">
											<td align="left" valign="top" style="font-size:12px;padding-top:10px">
												<xsl:value-of select="firma" /><br />
												<strong style="color:#999999"><xsl:value-of select="firmaSlogan" /></strong><br /><br />
												<img alt="logo_nova" width="138" height="49">
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
						<td style="background:#f6f9fc;font-size:11px;padding:10px;">
							<div>
								<p>
									<strong><xsl:value-of select="nota" /></strong>
									<br />
									&#8226; <xsl:value-of select="punto1" /><br />
									&#8226; <xsl:value-of select="punto2" />&#160;<strong style="color:#FF0000"><xsl:value-of select="pieFono" /></strong><br />
									&#8226; <xsl:value-of select="punto3" /><br />
									&#8226; <xsl:value-of select="punto4" />
								</p>
							</div>
						</td>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>