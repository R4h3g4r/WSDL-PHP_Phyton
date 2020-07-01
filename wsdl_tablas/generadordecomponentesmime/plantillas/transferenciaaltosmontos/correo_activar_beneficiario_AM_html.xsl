<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:param name="logo" />
	<xsl:param name="banner" />
	<xsl:param name="accionBanner" />
	<xsl:output method="html" omit-xml-declaration="yes"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
		indent="yes" />

	<xsl:template match="comprobante">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
				<title>
					<xsl:value-of select="titulo" />
				</title>
			</head>

			<body bgcolor="#ededed">
				<table width="100%" cellspacing="0" border="0" bgcolor="#ededed">
					<tr>
						<td>
							<!-- Inicio Mail Contenedor -->
							<table width="600" border="0" align="center" cellspacing="0">
								<tr>
									<td height="36" align="center" valign="middle"
										style="font-family:Arial, Helvetica, sans-serif; font-size:11px; color:#ababab; text-align:center;">&#160;
									</td>
								</tr>
								<tr>
									<td>
										<!-- Top -->
										<table width="100%" cellpadding="0" cellspacing="0"
											border="0" bgcolor="#ffffff">
											<tr>
												<td height="20" align="left" style="display:block;">
													<img
														src="http://www.bci.cl/medios/2012/empresarios/images/mailing/top-header.gif"
														width="600" height="20" style="display:block;" />
												</td>
											</tr>
											<tr>
												<td align="left" style="padding-left:0px; padding-right:0px;">

													<table width="560" border="0" align="center"
														cellpadding="0" cellspacing="0">
														<tr>
															<td>
																<!-- Logotipo Banco -->
																<table width="100" border="0" align="right"
																	cellpadding="0" cellspacing="0">
																	<tr>
																		<td align="center">
																			<img
																				src="http://www.bci.cl/medios/2012/empresarios/images/mailing/logo-bci.gif"
																				width="99" height="37" style="display:block;" />
																		</td>
																	</tr>
																</table>
																
																<table width="386" border="0" align="left"
																	cellpadding="0" cellspacing="0">
																	<tr>
																	<xsl:choose>
																	<xsl:when test="$canal = '230'">
																		<td width="386" height="45" style="">
																			<span
																				style="font-family:Arial, Helvetica, sans-serif; font-size:30px; color:#000;"><xsl:value-of select="titulo" /></span>
																			<br></br>
																			<span
																				style="font-family:Arial, Helvetica, sans-serif; font-size:20px; color:#333333;"><xsl:value-of select="titulo2" /></span>
																		</td>
																	</xsl:when>
																	<xsl:when test="$canal = '132'">
																		<td width="386" height="45" style="">
																			<span
																				style="font-family:Arial, Helvetica, sans-serif; font-size:30px; color:#000;"><xsl:value-of select="titulo" /></span>
																			<br></br>
																			<span
																				style="font-family:Arial, Helvetica, sans-serif; font-size:20px; color:#333333;"><xsl:value-of select="titulo2" /></span>
																		</td>
																	</xsl:when>
																	</xsl:choose>
																	</tr>
																</table>
																<!-- FIN - Nombre del Cliente -->
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td height="11" align="left"></td>
											</tr>
											<tr>
												<td align="center">
													<img
														src="http://www.bci.cl/medios/2012/personas/mailing/2014/informativos/cuenta_corriente_01.jpg"
														width="579" height="3" border="0" style="display:block;" />
												</td>
											</tr>
										</table>
										<table width="100%" cellpadding="0" cellspacing="0"
											border="0" bgcolor="#ffffff">
											<tr>
												<td align="left" valign="top"></td>
											</tr>
										</table>
										<!-- Fin Top -->


										<!-- Contenedor de Titulo y Bajada -->
										<table width="100%" border="0" align="center"
											cellpadding="0" cellspacing="0" bgcolor="#ffffff">
											<tr>
												<td height="27" align="right" valign="top" bgcolor="#ffffff">&#160;
												</td>
											</tr>
											<tr>
												<td bgcolor="#ffffff">
													<table width="560" border="0" align="center"
														cellpadding="0" cellspacing="0" bgcolor="#ffffff">
														<tr>
															<td width="" align="left" valign="top">

																<table width="100%" border="0" cellspacing="0"
																	cellpadding="0"
																	style="font-family: Helvetica, Arial, sans-serif; font-size:12px; color:#666; line-height:150%;">
																	<tr>
																		
																		<td valign="top">
																		<xsl:choose>
																			<xsl:when test="$canal = '230'">
																				<strong
																					style="font-size:15px;color:#333; font-weight:normal;line-height:170%;"><xsl:value-of select="para" />: <xsl:value-of select="nombreCliente" />
																				</strong>
																				<strong
																					style="font-size:14px;color:#666; font-weight:normal;line-height:105%;">
																					<br />
																					<xsl:value-of select="cuerpo" /> <strong><xsl:value-of select="numVerificacion" /> </strong>
																					<xsl:value-of select="cuerpo2" />
																					
																				</strong>
																			</xsl:when>
																			<xsl:when test="$canal = '132'">
																				<strong
																					style="font-size:15px;color:#333; font-weight:normal;line-height:170%;"><xsl:value-of select="para" />: <xsl:value-of select="nombreCliente" />
																				</strong>
																				<strong
																					style="font-size:14px;color:#666; font-weight:normal;line-height:105%;">
																					<br />
																					<xsl:value-of select="cuerpo" /> <xsl:value-of select="numVerificacion" /> 
																					<xsl:value-of select="cuerpo2" />
																					
																				</strong>
																			</xsl:when>
																		</xsl:choose>
                                                                            <table width="95%" border="0" cellspacing="0"
                                                                                cellpadding="0">
                                                                                <tr>
                                                                                    <td colspan="2" height="30"></td>
                                                                                </tr>
                                                                                <tr>
                                                                                <xsl:choose>
                                                                                <xsl:when test="$canal = '230'">
                                                                                    <td colspan="2" height="30">
                                                                                        <strong
                                                                                            style="font-size:15px;color:#000; font-weight:normal;line-height:170%;"><xsl:value-of select="tituloDetalle" />
                                                                                        </strong>
                                                                                    </td>
                                                                                </xsl:when>
                                                                                <xsl:when test="$canal = '132'">
                                                                                    <td colspan="2" height="30">
                                                                                        <strong
                                                                                            style="font-size:15px;color:#000; font-weight:normal;line-height:170%;"><xsl:value-of select="tituloDetalle" />
                                                                                        </strong>
                                                                                    </td>
                                                                                </xsl:when>
                                                                                </xsl:choose>
                                                                                </tr>

                                                                            </table>
                                                                            <table width="130%" border="0" cellspacing="0"
                                                                                cellpadding="0">
                                                                                <tr>
                                                                                    <td colspan="2" height="65"></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="2%" align="left" valign="top">
                                                                                        <img
                                                                                            src="http://www.bci.cl/medios/2012/empresarios/images/mailing/footer-barra.gif"
                                                                                            width="6" height="125" style="display:block;" />
                                                                                    </td>
                                                                                    <td width="98%" align="right" valign="top">
                                                                                        <table width="97%" border="0" cellspacing="0"
                                                                                            cellpadding="0" style="font-size:12px;">
                                                                                                 <tr>
                                                                                                        <td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">Rut Destino</td>
                                                                                                        <td width="35%" style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">Nombre Destinatario</td>
                                                                                                        <td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">Cuenta Destino</td>
                                                                                                        <td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">Banco Destino</td>
                                                                                                        
                                                                                                        </tr>
                                                                                                        <xsl:for-each select="listaBeneficiarios">   
                                                                                                        <tr>
                                                                                                            <td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;"><xsl:value-of select='format-number(rutBene, "########")'></xsl:value-of>-<xsl:value-of select="dvBene"></xsl:value-of></td>
                                                                                                            <td width="35%" style="border-bottom:solid 1px #e8e8e8; padding:2px 0;"><xsl:value-of select="nombreBene"></xsl:value-of></td>
                                                                                                            <td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;"><xsl:value-of select='format-number(cuentaBene, "##################")'></xsl:value-of></td>
                                                                                                            <td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;"><xsl:value-of select="bcoDestino"></xsl:value-of></td>
                                                                                                            
                                                                                                        </tr>
                                                                                                        </xsl:for-each>
                                                                                        </table>

                                                                                    </td>
                                                                                </tr>

                                                                            </table>


																		</td>
																		<td width="142" align="center" valign="top">
																			<img
																				src="http://www.bci.cl/medios/2012/personas/mailing/2014/informativos/tercera_clave_usuario.jpg"
																				width="142" height="156" style="display:block" />
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td height="40" valign="top"></td>
														</tr>
														<tr>
														<xsl:choose>
															<xsl:when test="$canal = '230'">
															<td valign="top"
																style="font-family:Helvetica, Arial, sans-serif; font-size:12px;color:#666; font-weight:normal;line-height:110%;">
																<xsl:value-of select="pie" />
															</td>
															</xsl:when>
															<xsl:when test="$canal = '132'">
															<td valign="top"
																style="font-family:Helvetica, Arial, sans-serif; font-size:12px;color:#666; font-weight:normal;line-height:110%;">
																<xsl:value-of select="pie" />
															</td>
															</xsl:when>
															</xsl:choose>
														</tr>
														<tr>
															<td height="30" valign="top"></td>
														</tr>
													</table>
												</td>
											</tr>

										
										</table>
										
										<table width="100%" border="0" cellspacing="0"
											cellpadding="0">
											<tr>
												<td height="3"></td>
											</tr>
											<tr>
												<td align="center" valign="top">
													<img
														src="http://www.bci.cl/medios/2012/personas/mailing/2014/informativos/cuenta_corriente_03.jpg"
														width="100%" />
												</td>
											</tr>
										</table>
	
										<table width="100%" cellpadding="0" cellspacing="0"
											border="0">
											<tr>
												<td height="3" align="left" valign="top"></td>
											</tr>
											<tr>
												<td align="left" valign="top" bgcolor="#FFFFFF">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">

													</table>
												</td>
											</tr>
										</table>
	
										<table width="100%" cellpadding="0" cellspacing="0"
											border="0">
											<tr>
												<td height="32" align="left" valign="top"></td>
											</tr>
											<tr>
												<td>
													<table width="100%" border="0" align="center"
														cellpadding="0" cellspacing="0">
														<tr>
															<td>
																<table width="100%" border="0" cellspacing="0"
																	cellpadding="0">
																	<tr>
																		<td width="20">&#160;
																		</td>
																		<td align="left" valign="top">
																			<table width="100%" border="0" cellspacing="0"
																				cellpadding="0">
																				<tr>
																					<td
																						style="color:#999999; font-size:10px; font-family:Helvetica,Arial,sans-serif; margin-top:0; margin-bottom:15px; padding-top:0;padding-bottom:15px; ">
																						Lo que Ud debe saber:
																						<br />
																						&#8226; Nunca le solicitaremos sus claves
																						personales.
																						<br />
																						&#8226; Los comentarios ingresados en nuestras
																						redes sociales, son de exclusiva responsabilidad
																						de quien los emite.
																						<br />

																						&#8226; Para abrir el archivo adjunto debe tener
																						instalado el programa Acrobat Reader.
																						<br />
																						&#8226; En caso de dudas o consultas
																						cont&#225;ctese al 600 824 24 24.
																						<br />
																						&#8226; Inf&#243;rmese sobre la garant&#237;a
																						estatal de los dep&#243;sitos en su banco o en
																						www.CMFChile.cl.
																						<br />
																						<br />
																						<br />
																					</td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																</table>
															</td>
															<td align="left" valign="top">
																<table width="100%" border="0" cellspacing="0"
																	cellpadding="0">
																	<tr>
																		<td width="171" align="center">
																			<img
																				src="http://www.bci.cl/medios/2012/empresarios/images/mailing/icon-facebook.gif"
																				width="171" height="33" />
																		</td>
																	</tr>
																	<tr>
																		<td height="7" align="left" valign="top"></td>
																	</tr>
																	<tr>
																		<td align="center" valign="top">
																			<img
																				src="http://www.bci.cl/medios/2012/empresarios/images/mailing/icon-twitter.gif"
																				width="171" height="33" />
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td height="25" align="left" valign="top" style="display:block"></td>
											</tr>
										</table>

									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet> 