<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
      
    <xsl:output method="html" omit-xml-declaration="yes"
        doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
        indent="yes" />

    <xsl:template match="comprobante">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <title>
                    <xsl:value-of select="titulo1" />
                </title>
            </head>
            <body bgcolor="#daeff6" style="margin: 0px;">
				<table width="100%" cellspacing="0" border="0" bgcolor="#daeff6">
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
                                        <table width="100%" cellpadding="0"  cellspacing="0"
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
                                                                                src="http://www.bci.cl/medios/2012/empresarios/images/mailing/logo-nova.gif"
                                                                                width="109" height="37" style="display:block;" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                
                                                                <table width="386" border="0" align="left"
                                                                    cellpadding="0" cellspacing="0">
                                                                    <tr>																																				
																			<td width="386" height="45" style="">
																				<span
																					style="font-family:Arial, Helvetica, sans-serif; font-size:30px; color:#000;"><xsl:value-of select="titulo1" /></span>
																				<br></br>
																				<span
																					style="font-family:Arial, Helvetica, sans-serif; font-size:20px; color:#333333;"><xsl:value-of select="titulo2" /></span>
																			</td>																		
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
                                                        src="http://www.bci.cl/medios/2012/mailing/barraColorNova.gif"
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
																				<!--Texto despes del titulo grande-->
                                                                                <strong
                                                                                    style="font-size:15px;color:#333; font-weight:normal;line-height:170%;">
																					<xsl:value-of select="cabecera1" /><xsl:value-of select="nombre-cliente" />
                                                                                </strong>
                                                                                					
                                                                            <table width="100%" border="0" cellspacing="0"
                                                                                cellpadding="0">
                                                                                <tr>
                                                                                    <td colspan="2" height="30">
																						
																						<strong style="font-size:12px;color:#666; font-weight:normal;line-height:105%;">
																						<xsl:value-of select="cabecera2" /> <br/>
																						<xsl:value-of select="cabecera3" />																						
																						</strong>
																						
																					</td>
                                                                                </tr>
            

                                                                            </table>
                                                                            <table width="130%" border="0" cellspacing="0"
                                                                                cellpadding="0">
                                                                                <tr>
                                                                                    <td colspan="2" valign="BOTTOM" height="60">
																						<strong style="font-size:15px;color:#000; font-weight:normal;line-height:170%;">																							
																							<xsl:value-of select="titulo3" />
																						</strong>
																					</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="4%" align="left" valign="top">
                                                                                        <img
                                                                                            src="http://www.bci.cl/medios/2012/empresarios/images/mailing/footer-barra.gif"
                                                                                            width="6" height="125" style="display:block;" />
                                                                                    </td>
                                                                                    <td width="97%" align="left" valign="top">
                                                                                        <table width="70%" border="0" cellspacing="0"
                                                                                            cellpadding="0" style="font-size:12px;">
                                                                                                 <tr>
																									<td width="36%" style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">Número de Verificación</td>
																									<td width="2%" style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">:</td>
																									<td width="63%" style="border-bottom:solid 1px #e8e8e8; padding:2px 0; color:#262626;font-size:14px; color:#2f64a8;"><xsl:value-of select="numero-verificacion" /></td>
																								 </tr>
																								 <tr>
																									<td width="35%" style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">Nombre Destinatario</td>
																									<td width="2%" style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">:</td>
																									<td width="63%" style="border-bottom:solid 1px #e8e8e8; padding:2px 0; color:#262626;"><xsl:value-of select="nombre-destinatario" /></td>
																								</tr>
																								 <tr>
																									<td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">Rut Destino</td>
																									<td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">:</td>
																									<td style="border-bottom:solid 1px #e8e8e8; padding:2px 0; color:#262626;"><xsl:value-of select="rut-destinatario" /></td>
																								 </tr>
																								 <tr>
																									<td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">Cuenta Destino</td>
																									<td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">:</td>
																									<td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;color:#262626;"><xsl:value-of select="cuenta-destino" /></td>
																								 </tr>
																								 <tr>
																									<td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">Banco Destino</td>
																									<td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;">:</td>
																									<td style="border-bottom:solid 1px #e8e8e8; padding:2px 0;color:#262626;"><xsl:value-of select="banco-destino" /></td>
																								 </tr>
																								 <tr>
																									<td style="padding:2px 0;">Correo Destinatario</td>
																									<td style="padding:2px 0;">:</td>
																									<td style="padding:2px 0;color:#262626;"><xsl:value-of select="correo-destinatario" /></td>
																								</tr>
                                                                                        </table>

                                                                                    </td>
                                                                                </tr>

                                                                            </table>


                                                                        </td>
                                                                        <td width="142" align="center" valign="top">
                                                                            <img
                                                                                src="http://www.bci.cl/medios/2012/mailing/tercera_clave_nova.jpg"
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
															<!--Pie de pagina-->
															<td valign="top"
																style="font-family:Helvetica, Arial, sans-serif; font-size:11px;color:#666; font-weight:normal;line-height:110%;">
																
																<xsl:value-of select="pie" />
																<br /><br />
																<xsl:value-of select="pie1" />
																<br />
																<xsl:value-of select="pie2" />
																<br />
																<xsl:value-of select="pie3" />
						
															</td>																
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
                                                        src="http://www.bci.cl/medios/2012/mailing/nova_celu_Compu_pie.jpg"
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
                                                                                        
                                                                                        <xsl:value-of select="punto1" />
                                                                                        <br />
                                                                                        <xsl:value-of select="punto2" />
                                                                                        <br />
                                                                                        <xsl:value-of select="punto3" />
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
                                                                                src="http://www.bci.cl/medios/2012/empresarios/images/mailing/icon-facebook_nova.gif"
                                                                                width="171" height="33" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td height="7" align="left" valign="top"></td>
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