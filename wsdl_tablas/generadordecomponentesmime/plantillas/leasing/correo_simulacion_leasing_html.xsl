<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="canal"/>
    <xsl:output method="html" omit-xml-declaration="yes"
        doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
        indent="yes" />
    <xsl:template match="comprobante">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
    <meta content="text/html;charset=UTF-8" http-equiv="Content-Type" />
    <title>Solicitud de Leasing</title>
</head>

<body>
    <table style="background:#e2e8ea;width:100%;padding-bottom: 30px;" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <table style="font-family: sans-serif;font-size: 13px;color: #546e7a;width:620px;margin-top: 20px;margin-bottom: 20px;" align="center">
                    <tr>
                        <td style="text-align: right;"> <img alt="Bci Empresarios" src="https://bci-share.s3.amazonaws.com/mail_pyme/logo-bci-transparente.png" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width:620px;border-collapse:collapse;" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff">
                    <tr>
                        <td style="border-bottom:6px solid #29b34e;" />
                        <td style="border-bottom:6px solid #f6363f;" />
                        <td style="border-bottom:6px solid #2766ad;" />
                        <td style="border-bottom:6px solid #ffe300;" />
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="font-family: sans-serif;color:#ffffff;background-color:#2772cc;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff">
                    <tr>
                        <td> <img alt="Solicitud de Leasing" height="194" width="620" src="https://bci-share.s3.amazonaws.com/Pyme/img/solicitud-leasing.png" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="font-family: sans-serif;width:620px;border-collapse:collapse;background:#ffffff;color: #546e7a;margin-top: 20px;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);font-size: 14px;line-height: 1.6;" cellspacing="0" cellpadding="20" align="center">
                    <tr>
						 <td>
							<h2 style="margin-top: 0;"><xsl:value-of select="datosCorreo/nombreEjecutivo"/></h2>
							Con Fecha <xsl:value-of select="datosCorreo/fechaPresentacion"/> la empresa <xsl:value-of select="datosCorreo/razonSocial"/> ha realizado una solicitud de
							leasing a través de la web empresarios. Favor contactar al cliente para
							gestionar su solicitud.
						</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="font-family: sans-serif;margin-top:20px;color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-top: solid 6px #2772cc;border-bottom: solid 1px #e2e8ea;" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff">
                    <tr>
                        <td style="padding: 20px; width: 20px; vertical-align: top;"> <img alt="" height="45" width="45" src="https://bci-share.s3.amazonaws.com/mail_pyme/cliente.png" /></td>
                        <td>
                            <table style="font-size: 13px;width: 100%;margin-top: 20px;margin-bottom: 20px;">
                                <tr>
                                    <td colspan="3">
                                        <h3 style="font-weight: lighter;text-align: left; text-transform: uppercase; margin-top: 10px;margin-bottom: 10px;">ANTECEDENTES DEL CLIENTE</h3></td>
                                </tr>
                                <tr>
									<td colspan="2">Nombre o Razón Social<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/razonSocial"/></strong></td>
									<td>Rut<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/rut"/></strong></td>
                                </tr>
                                <tr>
                                    <td style="padding-bottom: 15px;" />
                                </tr>
                                <tr>
									<td colspan="2">Email<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/email"/></strong></td>
									<td>Teléfono<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/telefono"/></strong></td>
                                </tr>
                                <tr>
                                    <td style="padding-bottom: 15px;" />
                                </tr>
                                <tr>
									<td>Número de Solicitud<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/numeroSolicitud"/></strong></td>
									<td>Hora<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/hora"/></strong></td>
									<td>Fecha de Presentación<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/fechaPresentacion"/></strong></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="font-family: sans-serif;color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-bottom: solid 1px #e2e8ea;" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff">
                    <tr>
                        <td style="padding: 20px; width: 20px; vertical-align: top;"> <img alt="" height="45" width="45" src="https://bci-share.s3.amazonaws.com/Pyme/img/car.png" /></td>
                        <td>
                            <table style="font-size: 13px;width: 100%;margin-top: 20px;margin-bottom: 20px;">
                                <tr>
                                    <td colspan="3">
                                        <h3 style="font-weight: lighter;text-align: left; text-transform: uppercase;margin-top: 10px;margin-bottom: 10px;">ANTECEDENTES DEL VEHÍCULO</h3></td>
                                </tr>
                                <tr>
									<td>Marca de Vehículo<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/marcaVehiculo"/></strong></td>
									<td>Modelo de Vehículo<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/modeloVehiculo"/></strong></td>
									<td>Valor de Vehículo<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/valorVehiculo"/></strong></td>
                                </tr>
                                <tr>
                                    <td style="padding-bottom: 15px;" />
                                </tr>
                                <tr>
									<td>Valor de Pie<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/valorPie"/></strong></td>
									<td>Monto Financiado<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/montoFinanciado"/></strong></td>
									<td>Nº de Renta<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/numeroRenta"/></strong></td>
                                </tr>
                                <tr>
                                    <td style="padding-bottom: 15px;" />
                                </tr>
                                <tr>
									<td>Tipo Moneda<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/tipoMoneda"/></strong></td>
									<td>Renta Mensual<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/rentaMensual"/></strong></td>
									<td>Opción de Compra<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/opcionCompra"/></strong></td>
                                </tr>
                                <tr>
                                    <td style="padding-bottom: 15px;" />
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="font-family: sans-serif;color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-top: solid 6px #2772cc;margin-top: 20px;" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff">
                    <tr>
                        <td style="vertical-align: top;padding: 20px;text-align: center;"> <img alt="" height="31" width="31" src="https://bci-share.s3.amazonaws.com/mail_pyme/info.png" /></td>
                        <td style="vertical-align: top;padding: 20px 20px 20px 0;">
                            <table style="font-family: sans-serif;font-size: 13px;color:#8798a0;width:520px;border-collapse:collapse;">
                                <tr>
                                    <td style="font-weight: bold;color: #37474f"> Recuerda apoyar al cliente en la actualización de la información financiera de su empresa.</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="font-family: sans-serif;font-size: 13px;color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 4px 4px 0 rgba(0,0,0,0.4);border-bottom: solid 1px #e2e8ea;" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff">
                    <tr>
                        <td style="text-align: center; padding-bottom: 30px;"> <img alt="" height="47" width="47" src="https://bci-share.s3.amazonaws.com/Pyme/img/sii.png" />
                            <br />
                            <br /> Carpeta Tributaria
                            <br />Electrónica</td>
                        <td style="text-align: center; padding-bottom: 30px;"> <img alt="" height="47" width="47" src="https://bci-share.s3.amazonaws.com/Pyme/img/sociedad.png" />
                            <br />
                            <br /> Información de la
                            <br />Sociedad</td>
                        <td style="text-align: center; padding-bottom: 30px;"> <img alt="" height="47" width="47" src="https://bci-share.s3.amazonaws.com/Pyme/img/habilitacion.png" />
                            <br />
                            <br /> Documentos de
                            <br />Habilitación</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>

</html>
    </xsl:template>
</xsl:stylesheet>	