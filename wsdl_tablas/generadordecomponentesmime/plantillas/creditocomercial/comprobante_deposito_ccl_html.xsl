<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
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
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
		<title>Bci Empresarios</title>
	</head>
	<body>
		<table cellpadding="0" cellspacing="0" style="background:#e2e8ea;width:100%;font-family: sans-serif;font-size: 13px;padding-bottom: 30px;">
			<tr>
				<td>
					<table align="center" cellpadding="0" cellspacing="0" style="color: #546e7a;width:620px;height:71px;">
						<tr>
							<td>
								<h2 style="font-size:23px;font-weight: lighter;margin: 0;">Crédito Comercial en Línea</h2>
							</td>
							<td style="text-align: right;">
								<img src="https://bci-share.s3.amazonaws.com/mail_pyme/logo-bci-transparente.png" alt="Bci Empresarios" width="249" height="43" />
							</td>
						</tr>
					</table>
				</td>
			</tr>

			<tr>
				<td>
					<table bgcolor="#ffffff" align="center" cellpadding="25" cellspacing="0" style="width:620px;border-collapse:collapse;background:#f6363f;color: #ffffff;margin-top: 20px;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);font-size: 13px;">
						<tr>
							<td>CURSE SIN ABONAR</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
				<table bgcolor="#ffffff" align="center" cellpadding="25" cellspacing="0" style="width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-bottom: solid 1px #e2e8ea;">
				    <tr>
				        <td>
				            <table style="width: 100%;color:#8798a0;font-size: 13px;">
				            <tr>
									<td style="font-size: 13px;">
								<p>El proceso de abono en la cuenta corriente del cliente ha presentado problemas.</p>
								<p>Se sugiere tomar las siguientes acciones:</p>
								<ul style="padding: 0;list-style-position: inside;">
									<li>Revisa la cartola del cliente para verificar si se efectuó el abono. <br /><br /></li>
									<li>De no encontrar el abono en la cartola, debes realizar el proceso manual basado en los antecedentes mostrados a continuación:</li>
								</ul>
							</td>
				            </tr>
				            </table>
				        </td>
				    </tr>
				</table>
				</td>		
			</tr>
			<tr>
				<td>
					<table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0" style="width:620px;border-collapse:collapse;margin-top:20px;">
						<tr>
							<td style="border-top::6px solid #29b34e;"></td>
							<td style="border-top::6px solid #f6363f;"></td>
							<td style="border-top::6px solid #2766ad;"></td>
							<td style="border-top::6px solid #ffe300;"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0" style="color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-bottom: solid 1px #e2e8ea;">
						<tr>
							<td style="padding: 20px; width: 20px; vertical-align: top;">
								<img src="https://bci-share.s3.amazonaws.com/mail_pyme/cliente.png" alt="" />
							</td>
							<td>
								<table  cellpadding="0" cellspacing="0" style="color:#8798a0;width: 100%;padding-top: 35px;padding-bottom: 35px;font-size: 13px;">
									<tr>
										<td colspan="3">
											<h3 style="font-size:15px;font-weight: lighter;text-align: left; text-transform: uppercase;">ANTECEDENTES DEL CLIENTE</h3>
										</td>
									</tr>
									<tr>
										<td colspan="3" style="padding-right: 5px;">Nombre<br /><strong style="color: #37474f; text-transform: uppercase;"><xsl:value-of select="datosCorreo/nombreEmpresa"/></strong></td>
									</tr>
									<tr>
										<td style="padding-bottom: 15px;"></td>
									</tr>
									<tr>
										<td colspan="3">Rut<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/rutEmpresa"/></strong></td>
									</tr>
									<tr>
										<td style="padding-bottom: 15px;"></td>
									</tr>
									<tr>
										<td width="250px">Oficina<br /><strong style="color: #37474f; text-transform: uppercase;"><xsl:value-of select="datosCorreo/glosaOficina"/></strong></td>
										<td>Ejecutivo<br /><strong style="color: #37474f; text-transform: uppercase;"><xsl:value-of select="datosCorreo/codigoEjecutivo"/></strong></td>
										<td>Banca<br /><strong style="color: #37474f; text-transform: uppercase;"><xsl:value-of select="datosCorreo/codBanca"/></strong></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0" style="color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-bottom: solid 1px #e2e8ea;">
						<tr>
							<td style="padding: 20px; width: 20px; vertical-align: top;">
								<img src="https://bci-share.s3.amazonaws.com/mail_pyme/apoderado.png" alt="" />
							</td>
							<td>
								<table cellpadding="0" cellspacing="0" style="color:#8798a0;width: 100%;padding-top: 35px;padding-bottom: 35px;font-size: 13px;">
									<tr>
										<td colspan="3"><h3 style="font-weight: lighter;text-align: left; text-transform: uppercase;">ANTECEDENTES DEL APODERADO</h3></td>
									</tr>
									<tr>
										<td colspan="3">Email<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/emailOperador"/></strong></td>
										</tr>
									<tr>
										<td style="padding-bottom: 15px;"></td>
									</tr>
									<tr>
										<td  width="250px">Teléfono<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/telefonoOperador"/></strong></td>
										<td>Rut<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/rutOperador"/></strong></td>
									</tr>
									<tr>
										<td style="padding-bottom: 15px;"></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>

			<tr>
				<td>
					<table bgcolor="#ffffff" align="center" cellpadding="25" cellspacing="0" style="width:620px;border-collapse:collapse;background:#2772cc;color: #ffffff;margin-top: 20px;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);font-size: 13px;">
						<tr>
							<td>ANTECEDENTES DEL CRÉDITO</td>
							<td style="text-align: right;">Nº de operación <strong><xsl:value-of select="datosCorreo/numeroOperacion"/></strong></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table bgcolor="#ffffff" align="center" cellpadding="25" cellspacing="0" style="width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-bottom: solid 1px #e2e8ea;">
						<tr>
							<td>
								<table style="width: 100%;color:#8798a0;font-size: 13px;">
									<tr>
										<td>Monto del Crédito $<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/montoCredito"/></strong></td>
										<td>Tasa de interés %<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/tasaInteres"/></strong></td>
										<td>Fecha y Hora de la Solicitud<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/fechaHora"/></strong></td>
									</tr>
									<tr>
										<td style="padding-bottom: 15px;"></td>
									</tr>
									<tr>
										<td>Cuotas<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/totalVencimientos"/></strong></td>
										<td>Fecha 1º vencimiento<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/fechaPrimerVcto"/></strong></td>
										<td></td>
									</tr>
									<tr>
										<td style="padding-bottom: 15px;"></td>
									</tr>
									<tr>
										<td colspan="3" style="padding-right: 5px;">Estado de la operación<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/estado"/></strong></td>
									</tr>
									<tr>
										<td style="padding-bottom: 15px;"></td>
									</tr>
									<tr>
										<td colspan="3">Registro de Firma<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/mensajeRegistroFirma"/></strong></td>
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