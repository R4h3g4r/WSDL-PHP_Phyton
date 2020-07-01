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
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<title>Bci Empresarios</title>
</head>
<body>
	<table cellpadding="0" cellspacing="0" style="background:#e2e8ea;width:100%;padding-bottom: 30px;">
		<tr>
			<td>
				<table align="center" style="font-family: sans-serif;font-size: 13px;color: #546e7a;width:620px;margin-top: 20px;margin-bottom: 20px;">
					<tr>
						<td style="text-align: right;">
							<img src="https://bci-share.s3.amazonaws.com/mail_pyme/logo-bci-transparente.png" alt="Bci Empresarios" />
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0" style="width:620px;border-collapse:collapse;">
					<tr>
						<td style="border-bottom:6px solid #29b34e;"></td>
						<td style="border-bottom:6px solid #f6363f;"></td>
						<td style="border-bottom:6px solid #2766ad;"></td>
						<td style="border-bottom:6px solid #ffe300;"></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0" style="font-family: sans-serif;color:#ffffff;background-color:#2772cc;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);">
					<tr>
						<td>
							<img src="https://bci-share.s3.amazonaws.com/Pyme/img/solicitud-boleta.png" width="620" height="194" alt="Solicitud de Leasing" />
						</td>
					</tr>
				</table>
			</td>
		</tr>		

		<tr>
			<td>
				<table align="center" cellpadding="20" cellspacing="0" style="font-family: sans-serif;width:620px;border-collapse:collapse;background:#ffffff;color: #546e7a;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);font-size: 14px;line-height: 1.6;">
					<tr>
						<td>
							<h2 style="margin-top: 0;">Ejecutivo(a)</h2>
							Con fecha <strong><xsl:value-of select="datosCorreo/fechaHoy"/></strong> Tu cliente acaba de solicitar una <strong>Boleta de Garantía</strong> en Crédito. No dejes pasar esta oportunidad y sorpréndelo con la mejor solución.
						</td>
					</tr>
				</table>


			</td>
		</tr>

		<tr>
			<td>
				<table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0" style="font-family: sans-serif;margin-top:20px;color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-top: solid 6px #2772cc;border-bottom: solid 1px #e2e8ea;">
					<tr>
						<td style="padding: 20px; width: 20px; vertical-align: top;">
							<img src="https://bci-share.s3.amazonaws.com/mail_pyme/cliente.png" width="45" height="45" alt="" />
						</td>
						<td>
							<table style="font-size: 13px;width: 100%;margin-top: 15px;margin-bottom: 20px;">
								<tr>
									<td colspan="3"><h3 style="font-weight: lighter;text-align: left; text-transform: uppercase;">ANTECEDENTES DE LA BOLETA</h3></td>
								</tr>
								<tr>
									<td colspan="3">Nombre o Razón Social<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/nombreRazonSocialBenef"/></strong></td>
								</tr>
								<tr>
									<td style="padding-bottom: 15px;"></td>
								</tr>
								<tr>
									<td>Rut (Beneficiario)<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/rutBeneficiario"/></strong></td>
									<td>Fecha de Vencimiento<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/fechaVencimientoSeleccionada"/></strong></td>
									<td>Modalidad de Pago<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/modalidadSeleccionada"/></strong></td>
								</tr>
								<tr>
									<td style="padding-bottom: 15px;"></td>
								</tr>
								<tr>									
									<td>Concepto Jurídico<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/conceptoJuridico"/></strong></td>
									<td>Monto Requerido<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/montoRequerido"/></strong></td>
									<td>Moneda<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/monedaSeleccionada"/></strong></td>
								</tr>							
								<tr>
									<td style="padding-bottom: 15px;"></td>
								</tr>								
								<tr>
									<td colspan="2">Obligación de la Boleta<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/objetivoSeleccionado"/></strong></td>
									<td>Sector Beneficiario<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/sectorSeleccionado"/></strong></td>
								</tr>
								<tr>
									<td style="padding-bottom: 15px;"></td>
								</tr>
								<tr>
									<td colspan="3">Glosa o Texto incluido en la Boleta<br />
<strong style="color: #37474f;">
<xsl:value-of select="datosCorreo/glosa"/>
</strong>
</td>
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
				<table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0" style="font-family: sans-serif;color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-bottom: solid 1px #e2e8ea;">
					<tr>
						<td style="padding: 20px; width: 20px; vertical-align: top;">
							<img src="https://bci-share.s3.amazonaws.com/mail_pyme/apoderado.png" width="45" height="45" alt="" />
						</td>
						<td>
							<table style="font-size: 13px;width: 100%;margin-top: 15px;margin-bottom: 20px;">
								<tr>
									<td colspan="3"><h3 style="font-weight: lighter;text-align: left; text-transform: uppercase;">ANTECEDENTES DEL CLIENTE</h3></td>
								</tr>
								<tr>
									<td colspan="2">Nombre Completo (Tomador)<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/razonSocialEmpresa"/></strong></td>
								</tr>
								<tr>
									<td style="padding-bottom: 15px;"></td>
								</tr>
								<tr>
									<td colspan="2">Correo Electrónico de Contacto<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/correoDeContacto"/></strong></td>
								</tr>
								<tr>
									<td style="padding-bottom: 15px;"></td>
								</tr>
								<tr>
									<td>Oficina<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/glosaOficina"/></strong></td>
									<td>Ejecutivo<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/codigoEjecutivo"/></strong></td>
								</tr>
								<tr>
									<td style="padding-bottom: 15px;"></td>
								</tr>
								<tr>
									<td>Rut (Tomador)<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/rutEmpresa"/></strong></td>
									<td>Banca<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/codBanca"/></strong></td>
								</tr>
								<tr>
									<td style="padding-bottom: 15px;"></td>
								</tr>
								<tr>
									<td colspan="2">Teléfono de Contacto<br /><strong style="color: #37474f;"><xsl:value-of select="datosCorreo/telefonoContacto"/></strong></td>
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
				<table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0" style="margin-top:20px;color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-bottom: solid 1px #e2e8ea;">
					<tr>
						<td style="vertical-align: top;padding: 20px;text-align: center;">
							<img src="https://bci-share.s3.amazonaws.com/mail_pyme/info.png" width="31" height="31" alt="" />
						</td>
						<td style="vertical-align: top;padding: 20px 20px 20px 0;">
							<table style="font-family: sans-serif;font-size: 13px;width: 100%;">
								<tr>
									<td style="font-weight: bold;color: #37474f">
										Recuerda apoyar al cliente en la actualización de la información financiera de su empresa.
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr> <!-- Mandatos -->
						<td style="vertical-align: top;padding: 20px;">
							<xsl:if test="datosCorreo/mandatosFirmados = '0'">
								<img src="https://bci-share.s3.amazonaws.com/mail_pyme/mandatos-error.png" alt="" />
							 </xsl:if> 
							<xsl:if test="datosCorreo/mandatosFirmados = '1'">
								<img src="https://bci-share.s3.amazonaws.com/mail_pyme/mandatos-ok.png" alt="" />
						    </xsl:if> 
						</td>
						<td style="vertical-align: top;padding: 20px 20px 20px 0;border-top: 1px solid #e2e8ea">
							<table style="font-family: sans-serif;font-size: 13px;width: 100%;">
								<tr>
									<td style="padding: 15px 0; color: #37474f;">
										MANDATOS
									</td>
									<xsl:if test="datosCorreo/mandatosFirmados = '1'">
									<td style="text-align: right; color: #29b34e">
										Vigente
									</td>
									</xsl:if> 
									<xsl:if test="datosCorreo/mandatosFirmados = '0'">
									<td style="text-align: right; color: #f6363f">
										No vigente
									</td>
									</xsl:if> 
								</tr>
								<tr>
									<td colspan="2">
										Indícale al cliente que descargue los Documentos de Habilitación en Información Financiera. Si el cliente está presencialmente en sucursal, descárgalos en Normativa.
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr> <!-- CTE -->
						<td style="vertical-align: top;padding: 20px;">
							<xsl:if test="datosCorreo/carpetaTributariaVigente = '0'">
								<img src="https://bci-share.s3.amazonaws.com/mail_pyme/cte-error.png" alt="" />
							</xsl:if>
							<xsl:if test="datosCorreo/carpetaTributariaVigente = '1'">
								<img src="https://bci-share.s3.amazonaws.com/mail_pyme/cte-ok.png" alt="" />
							</xsl:if> 
						</td>
						<td style="vertical-align: top;padding: 20px 20px 20px 0;border-top: 1px solid #e2e8ea">
							<table style="font-family: sans-serif;font-size: 13px;width: 100%;">
								<tr>
									<td style="padding: 15px 0; color: #37474f;">
										CARPETA TRIBUTARIA ELECTRÓNICA
									</td>
									<xsl:if test="datosCorreo/carpetaTributariaVigente = '1'">
									<td style="text-align: right; color: #29b34e">
										Vigente
									</td>
									</xsl:if> 
									<xsl:if test="datosCorreo/carpetaTributariaVigente = '0'">
									<td style="text-align: right; color: #f6363f">
										No vigente
									</td>
									</xsl:if> 
								</tr>
								<tr>
									<td colspan="2">
										Puedes mantener actualizada la Carpeta Tributaria en Everest, ingresando Código y Clave o subiendo al sistema el documento en formato PDF, otorgados por el cliente.
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr> <!-- ART85 -->
						<td style="vertical-align: top;padding: 20px;">
							<xsl:if test="datosCorreo/articulo85Vigente = '1'">
						      <img src="https://bci-share.s3.amazonaws.com/mail_pyme/art-85-ok.png" alt="" />
							</xsl:if> 
							<xsl:if test="datosCorreo/articulo85Vigente = '0'">
							  <img src="https://bci-share.s3.amazonaws.com/mail_pyme/art-85-error.png" alt="" />
							</xsl:if>
						</td>
						<td style="vertical-align: top;padding: 20px 20px 20px 0;border-top: 1px solid #e2e8ea">
							<table style="font-family: sans-serif;font-size: 13px;width: 100%;">
								<tr>
									<td style="padding: 15px 0; color: #37474f;">
										ARTÍCULO 85
									</td>
									<xsl:if test="datosCorreo/articulo85Vigente = '1'">
									<td style="text-align: right; color: #29b34e">
										Vigente
									</td>
									</xsl:if> 
									<xsl:if test="datosCorreo/articulo85Vigente = '0'">
									<td style="text-align: right; color: #f6363f">
										No vigente
									</td>
									</xsl:if> 
								</tr>
								<tr>
									<td colspan="2">
										Revisa el detalle de las participaciones societarias en Everest. Si estás junto al cliente puedes descargar el Formulario de Declaración de Márgenes de Crédito.
									</td>
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