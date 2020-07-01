<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="java"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:java="http://xml.apache.org/xslt/java">
	<xsl:template match="/" name="inicio">
		<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina_segunda"
					page-height="35.56cm" page-width="21.59cm" margin-top="10mm"
					margin-bottom="1cm" margin-left="3.9cm" margin-right="4.4cm">
					<fo:region-body margin-top="0.2cm" margin-bottom="0.2cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="pagina_segunda"
				initial-page-number="1" language="en" country="us">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13.59cm" />
							<fo:table-body>
								<xsl:choose>
									<xsl:when test="count(modificacion/datos) > 0">
										<fo:table-row>
											<fo:table-cell>
												<fo:block />
												<xsl:call-template name="solicitud_credito" />
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block />
												<xsl:call-template name="honorarios_seguros" />
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block />
												<xsl:call-template name="anexo_aval" />
											</fo:table-cell>
										</fo:table-row>
									</xsl:when>
								</xsl:choose>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template name="solicitud_credito">
		<fo:block space-after="1cm" />
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm" />
				<fo:table-body>
					<fo:table-row>
					<fo:table-cell>									
						<fo:block font-size="11pt"  text-align="left"  padding-left="1pt">
								<xsl:if test="modificacion/datos/oficina = '247'">											
									<fo:external-graphic width="75px" height="40px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
									</fo:external-graphic>
								</xsl:if>	
								<xsl:if test="modificacion/datos/oficina != '247'">											
									<fo:external-graphic width="75px" height="40px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
									</fo:external-graphic>
								</xsl:if>																							
						</fo:block>										
					</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13,59cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="3">
							<fo:block font-family="Helvetica" font-size="11pt"
								text-align="center" font-weight="bold">SOLICITUD DE CREDITO</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block space-after="0.5cm" />
		<fo:table border-collapse="collapse" font-size="11pt"
			text-align="left">
			<fo:table-column column-width="75.9mm" />
			<fo:table-column column-width="118mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left">
							<fo:leader leader-pattern="space" leader-length="1mm" />
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left">
							<fo:leader leader-pattern="space" leader-length="1mm" />
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left">
							<fo:leader leader-pattern="space" leader-length="1mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" line-height="15px">
							Nº OPERACIÓN:
							<fo:leader leader-length="3.5cm" leader-pattern="rule"
								rule-style="solid" rule-thickness="0.2mm" color="black" />
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" line-height="15px">
							OFICINA:
							<fo:inline font-weight="normal">
								<xsl:value-of select="modificacion/datos/oficina" />
							</fo:inline>
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" line-height="15px">
							FECHA:
							<fo:inline font-weight="normal">
								<xsl:value-of select="modificacion/datos/fecha_actual" />
							</fo:inline>
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" line-height="15px">
							EJECUTIVO:
							<fo:inline font-weight="normal">
								<xsl:value-of select="modificacion/datos/colaborador" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="135.9mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" font-weight="bold" vertical-align="middle">DATOS
							DEL
							SOLICITANTE
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="135.9mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<xsl:value-of select="modificacion/datos/nombre_titular" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="135.9mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">Nombre o Razón Social
							del
							Cliente
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="55.9mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="39mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="21mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="17mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="right" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="55.9mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="39mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="21mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="17mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Domicilio
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Comuna
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Ciudad
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Fono
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="25mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="32,9mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="40mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="35mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							<xsl:value-of select="modificacion/datos/rut_titular" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							<fo:inline>
								<xsl:value-of select="modificacion/datos/fecha_cliente" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							<xsl:value-of select="modificacion/datos/cuenta_cliente" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="25mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="32.9mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="40mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="35mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							RUT
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Céd.Nac.Identidad
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Fecha de Nacimiento
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Cta. Cte. Nº
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="135.9mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" font-weight="bold" vertical-align="middle">ANTECEDENTES
							DEL CREDITO
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="42mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="60.2mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="39.4" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Línea de Emergencia
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							<xsl:value-of select="modificacion/datos/monto_total" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="42mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="60mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="39.4mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Fecha Curse
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Tipo de Crédito
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Monto Solicitado
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="71.3mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="63.6mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="71.3mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="63.6mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Forma de Pago
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Garantía Ofrecida
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="78mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="56.7mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="78mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="56.7mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Objeto del Crédito
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="25.8mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="2mm" />
			<fo:table-column column-width="26.9mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="2mm" />
			<fo:table-column column-width="16.3mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="2mm" />
			<fo:table-column column-width="15.1mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="2mm" />
			<fo:table-column column-width="12.5mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="2mm" />
			<fo:table-column column-width="12.5mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="2mm" />
			<fo:table-column column-width="14.3mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell />
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell />
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="right" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="right" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="right" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="right" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="right" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="25.8mm" />
			<fo:table-column column-width="2mm" />
			<fo:table-column column-width="26.9mm" />
			<fo:table-column column-width="2mm" />
			<fo:table-column column-width="16.3mm" />
			<fo:table-column column-width="2mm" />
			<fo:table-column column-width="15.1mm" />
			<fo:table-column column-width="2mm" />
			<fo:table-column column-width="14.5mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="14.5mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="12.3mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Fecha 1er
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Vencto.
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Vencimiento
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							(1 solo vcto)
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Día
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Pago
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							(Créd. Cuotas)
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Número
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Cuotas
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Tasa
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Spread
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Tasa
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Total
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							(inicial)
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							DL.
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							3475
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="135.9mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" font-weight="bold" vertical-align="middle">Datos
							del Aval
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="135.9mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" vertical-align="middle" line-height="4.5mm">
							<fo:leader leader-pattern="space" leader-length="1mm" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">Nombre Completo del
							Aval
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="55.9mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="39mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="21mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="17mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="right" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="55.9mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="39mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="21mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="17mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Domicilio
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Comuna
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Ciudad
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Fono
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="25mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="32.9mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="40mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="35mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-right="0.5pt solid black"
				border-bottom="0.5pt solid black" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="right" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="25mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="32.9mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="40mm" />
			<fo:table-column column-width="1mm" />
			<fo:table-column column-width="35mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							RUT
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Céd.Nac.Identidad
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Fecha de Nacimiento
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block vertical-align="middle" />
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" vertical-align="middle">
							<fo:leader leader-pattern="space" leader-length="0.5mm" />
							Cta. Cte. Nº
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="8cm" />
		</fo:block>
		<fo:table >
			<fo:table-column />
			<fo:table-body>
				<fo:table-row  height="1cm">
					<fo:table-cell>
					&#0160;
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="justify">Declaro bajo juramento que mientras mantenga
							deudas
							pendientes a favor del Banco de Crédito e Inversiones, me
							comprometo a conservar incólume el patrimonio declarado en el o
							los estados de situación y me obligo a comunicarles por escrito y
							con la debida anticipación, todo hecho, acto o contrato que
							pueda
							disminuir o
							extinguir mis cauciones o el valor declarado de mi
							patrimonio.
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="justify">Faculto expresamente al BANCO DE CREDITO E
							INVERSIONES
							para cargar en
							mi(s) cuenta(s) corriente(s) las sumas adeudadas
							provenientes del
							préstamo solicitado incluyendo capital, intereses
							y gastos, como
							así también , en el caso de no ser cancelados
							oportunamente o no
							existir fondos disponibles en la(s) cuenta(s)
							corriente(s),
							aplicar su pago cualquier otro crédito a mi favor
							que exista en
							el
							BANCO, ya sean saldos en cuenta vista, depósitos a
							la vista,
							deósitos a plazo, valores en custodia, fondos mutuos en
							BCI
							Administradora de Fondos Mutuos S.A etc..
							Asimismo declaro bajo
							juramento que todos los
							antecedentes presentados son fidedignos y
							que conozco el texto del
							artículo 160 de la Ley General de Bancos.
							Autorizo al Banco de Crédito e Inversiones para pedir su uso
							exclusivo, en los terminos del articulo 4º de la ley 19.628, a la
							Administradora de Fondos de Pensiones donde efectuo mis
							cotizaciones
							previsionales, y autorizo asimismo a ésta, para
							entregar directamente
							al Banco o a través de Previred S.A
							informacion sobre las aludidas
							cotizaciones de los últimos 12
							meses precedentes a cualquiera
							solicitud de
							cualquier tipo de
							crédito o de otro servicio bancario para los que tal
							información y
							la que derive de aquella, pueda ser de utilidad
							para evaluar
							el
							otorgamiento del préstamo o servicio, sea de la naturaleza que
							fuere.
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table >
			<fo:table-column />
			<fo:table-body>
				<fo:table-row  height="12cm">
					<fo:table-cell>
					&#0160;
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="3cm" />
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-body>
					<fo:table-row>
					<fo:table-cell>									
						<fo:block font-size="11pt"  text-align="left"  padding-left="1pt">
								<xsl:if test="modificacion/datos/oficina = '247'">											
									<fo:external-graphic width="75px" height="40px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
									</fo:external-graphic>
								</xsl:if>	
								<xsl:if test="modificacion/datos/oficina != '247'">											
									<fo:external-graphic width="75px" height="40px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
									</fo:external-graphic>
								</xsl:if>																							
						</fo:block>										
					</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block space-after="0.3cm" />
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="justify">En este acto otorgamos el mandato mercantil especial
							y gratuito al Banco de Crédito e Inversiones para
							que
							en su nombre y representación, incluso con facultades expresas
							para autocontratar y obrando a través de cualquiera
							de sus
							apoderados o en quien el Banco delegue, suscriba y/o complete uno
							o más pagarés, y reconozca deudas en beneficio
							y a la orden del
							Banco de Crédito e Inversiones, todo ello con el propósito de
							documentar en esta forma el o los saldos
							deudores, por los montos
							de capital, intereses, costas y comisiones, que se originen con
							motivo del cobro de boletas
							de garantía tomadas por el suscrito y
							emitidas por el Banco, al
							amparo de Línea de Crédito vigente. El o
							los pagarés
							que se suscriban en virtud de este mandato podrán
							extenderse a la
							vista o a plazo y en caso de no pago devengarán la
							tasa
							de interés
							máxima convencional para operaciones de crédito de
							dinero en
							moneda nacional.
							Asimismo, por el presente instrumento,
							faculto al
							Banco de Crédito e Inversiones,
							para que, en
							conformidad a lo previsto en el artículo 11 y 107 de
							la Ley
							18902
							del año 1982 sobre Letra de Cambio y Pagaré, incorpore
							en el o los
							instrumentos mercantiles
							que documenten los créditos
							otorgados en
							virtud de esta solicitud de crédito
							o el Contrato de
							Apertura de Línea de Crédito destinada a cubrir
							eventuales pagos
							de boletas de garantía,
							la totalidad de las
							menciones exigidas por
							la Ley, como por ejemplo, su fecha de
							emisión, de vencimiento, la
							cantidad adecuada, la tasa de interés u otras, determinando en él
							nuestra
							obligación de pagar la cantidad
							de dinero solicitada en
							este acto o aquella en definitiva apruebe
							el
							Banco al dorso de esta
							solicitud, si dicha cantidad
							fuere
							diferente. Liberamos al Banco de
							Crédito e Inversiones de la
							obligación de rendir cuenta de su
							gestión.
						</fo:block>
												<fo:block font-family="Helvetica" font-size="11pt"
							text-align="justify">Faculto (facultamos) al Banco para
							aceptar
							instrucciones o solicitudes que yo imparta a través de
							medios remotos,
							especialmente vía red
							internet u otros, vía
							electronica, satelital o telefónica, que estén
							disponibles, y
							reconosco (reconocemos)
							que tales instrucciones realizadas por
							dichos medios constituye
							manifestación expresa de mi (nuestra)
							voluntad,
							de aceptar las condiciones y modalidades bajo las cuales
							se presta
							el servicio, como también de las
							responsabilidades que
							asumo (asumimos) al hacer uso de tales canales y de la
							información contenida en ellos.
							Asimismo, autorizo (autorizamos)
							al Banco para que me (nos) provea en
							forma
							remota, de todos
							aquellos servicios
							en que normalmente se requiere mi (nuestra)
							presencia fisica,
							asimilando como medio válido de autorización
							cuando
							así lo requiera, a la firma electrónica, mi clave secreta
							que es
							confidencial, personal e intransferible.
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="justify">Reconozco (reconocemos) haber
							recibido por parte del
							Banco de Crédito e Inversiones información
							detallada de las
							comisiones que el Banco cobra por concepto de
							otorgamiento de
							crédito y procesos asociados a éste, como en el
							caso de
							reprogramación, prórroga, y reestructuración entre otros.
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="justify">Declaro (Declaramos) haber recibido información
							detallada
							y aceptar que existen recargos en caso de mora o simple
							retardo en
							el pago de la obligación de crédito de dinero de que da
							cuenta la
							presente solicitud y además por concepto de la cobranza
							extrajudicial de créditos impagos, incluyendo honorarios, a
							partir
							de la fecha que se indica más adelante, los cuales serán
							cobrados
							por la empresa "Servicios de Normalización y Cobranza -
							Normaliza
							S.A." o por aquella que el BANCO designare en
							su
							oportunidad la que actuará en nombre y en representación e
							interés del BANCO en las gestiones de cobranza extrajudicial.
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="justify">La cobranza extrajudicial se efectuará en
							horario de
							8:00 a 20:00 horas.
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="justify">Declaro (Declaramos) conocer, y desde luego acepto
							(aceptamos), que
							para la empresa designada al efecto pueda
							realizar la cobranza
							extrajudicial es imprescindible que el BANCO
							suministre a dicha
							empresa, antecedentes tanto respecto de los
							créditos morosos de
							sus deudores y otros que no estando en dicha
							condición estén
							asociados a éstos, como de los antecedentes
							comerciales de los
							deudores, tales como, nombres y apellidos,
							cédula nacional de
							identidad, rol único tributario, domicilios,
							direcciones y
							teléfonos, etcétera.
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="justify">Los honorarios y gastos por las gestiones de
							cobranza
							ascenderán a los porcentajes que seguidamente se
							indican,
							aplicados sobre el total de la deuda, o la cuota vencida
							según el
							caso, conforme a la siguiente escala progresiva:
							Obligaciones
							hasta 10 unidades de fomento 9%; por la parte que
							exceda las 10
							unidades de fomento y hasta 50 unidades de fomento,
							6% y por la
							parte que exceda las 50 unidades de fomento, 3%.
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
						<fo:table >
							<fo:table-column />
							<fo:table-body>
								<fo:table-row  height="13cm">
									<fo:table-cell>
									&#0160;
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-body>
					<fo:table-row>
					<fo:table-cell>									
						<fo:block font-size="11pt"  text-align="left"  padding-left="1pt">
								<xsl:if test="modificacion/datos/oficina = '247'">											
									<fo:external-graphic width="75px" height="40px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
									</fo:external-graphic>
								</xsl:if>	
								<xsl:if test="modificacion/datos/oficina != '247'">											
									<fo:external-graphic width="75px" height="40px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
									</fo:external-graphic>
								</xsl:if>																							
						</fo:block>										
					</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block space-after="0.3cm" />
		<fo:table border-collapse="collapse">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt" text-align="justify">
						   Los porcentajes
							indicados se aplicarán como sigue: Créditos de
							Consumo/Tarjetas de
							Crédito - Persona Naturales: Después de
							transcurridos 15 días
							corridos de atraso (mora) desde el día del
							vencimiento de la
							obligación. Créditos Comerciales -
							General/Tarjetas De Crédito -
							Personas Jurídicas: Después de
							transcurridos 5 días corridos de
							atraso (mora) desde el día del
							vencimiento de la obligación.
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="justify">Las tarifas anteriores podrán ser
							modificadas
							anualmente en caso de operaciones de consumo cuyo
							plazo de pago
							exceda de un año, siempre que tales cambios se
							avisen con una
							anticipación mínima de dos períodos de pago.
							Formalizo
							(Formalizamos)el presente instrumento considerando que las
							tarifas
							indicadas se basan en la fiel interpretación de la
							reglamentación
							legal vigente y en cumplimiento a lo dispuesto en
							la Ley 19.659 y
							además normativa aplicable. Tanto los recargos en
							caso de mora o
							simple retardo como los gastos por concepto de la
							cobranza
							extrajudicial de los créditos impagos, incluyendo
							honorarios y
							costas podrán ser cobrados con cargo directo en
							alguna de la(s)
							cuenta(s) corriente(s) o cuenta(s) vistas(s)
							vigente(s)
							mantenida(s) por mí (nosotros) en el Banco, en la
							oportunidad que
							se cancele o regularice el vencimiento u
							obligación morosa o
							impaga.
						</fo:block>
						<fo:leader leader-pattern="space" leader-length="17cm" />
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:table border-collapse="collapse" text-align="left">
			<fo:table-column column-width="5cm" />
			<fo:table-column column-width="8.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="center">
							<fo:leader leader-length="4cm" leader-pattern="rule"
								rule-style="solid" rule-thickness="0.2mm" color="black" />
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center">Nombre y Firma Aval</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="center">
							<fo:leader leader-length="8cm" leader-pattern="rule"
								rule-style="solid" rule-thickness="0.2mm" color="black" />
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center">Nombre y Firma(s) Solicitante o Representante Legal
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="221cm" />
</xsl:template>
<xsl:template name="anexo_aval" >
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-body>
					<fo:table-row>
					<fo:table-cell>									
						<fo:block font-size="11pt"  text-align="left"  padding-left="1pt">
								<xsl:if test="modificacion/datos/oficina = '247'">											
									<fo:external-graphic width="75px" height="40px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
									</fo:external-graphic>
								</xsl:if>	
								<xsl:if test="modificacion/datos/oficina != '247'">											
									<fo:external-graphic width="75px" height="40px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
									</fo:external-graphic>
								</xsl:if>																							
						</fo:block>										
					</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="right">
			En
			<fo:leader leader-length="4cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
			,
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<fo:inline font-weight="normal">
				<xsl:value-of select="modificacion/datos/dia" />
			</fo:inline>
			<fo:leader leader-pattern="space" leader-length="1mm" />
			de
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<xsl:value-of select="modificacion/datos/mes" />
			<fo:leader leader-pattern="space" leader-length="1mm" />
			del año
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<xsl:value-of select="modificacion/datos/anio" />
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="center">
			<fo:inline font-weight="bold" text-decoration="underline">Anexo:
			</fo:inline>
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="center">
			<fo:inline font-weight="bold">Responsabilidades del avalista,
				fiador y codeudor solidario
			</fo:inline>
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			Yo:
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<fo:leader leader-length="12.6cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
			 
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			C.I. N°:
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<fo:leader leader-length="5.7cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
			<fo:leader leader-pattern="space" leader-length="1mm" />
			declaro por este acto, haber tomado
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			conocimiento de mi calidad de
			<fo:inline font-weight="bold">AVAL, FIADOR y CODEUDOR SOLIDARIO,
				de la deuda</fo:inline>
			por $
			<fo:leader leader-length="4cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
			 (Indicar monto bruto / Cupo de Línea de Crédito) suscrita por
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<fo:leader leader-length="8cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
			<fo:leader leader-pattern="space" leader-length="1mm" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			RUT N°:
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<fo:leader leader-length="4cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
			<fo:leader leader-pattern="space" leader-length="1mm" />
			para con el Banco (Bci; Bci-Nova)
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			En cumplimiento de lo previsto en el artículo
			<fo:inline font-weight="bold">17 j) de la ley Nº 20.555
			</fo:inline>
			, declaro estar en conocimiento de los deberes y responsabilidades,
			de quien pretende constituir una garantía personal y declaro
			expresamente que:
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			<fo:inline font-weight="bold">a)</fo:inline>
			Mi responsabilidad de avalista, fiador y codeudor solidario, está
			expresada en los mismos términos y condiciones del deudor directo, y
			en caso de incumplimiento de éste, deberé responder por la obligación
			anteriormente indicada, más intereses, costas y gastos de cobranza.
			El Banco podrá cobrar, en ese caso, al deudor directo y/o al
			avalista.
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			<fo:inline font-weight="bold">b)</fo:inline>
			Acepto los plazos, prórrogas y/o modificaciones de las condiciones
			del crédito que se acordaren entre el deudor y el Bci.
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			<fo:inline font-weight="bold">c)</fo:inline>
			Mi responsabilidad es de carácter indivisible, por lo que la
			obligación del monto anteriormente indicado, es exigible a mis
			herederos y/o sucesores, según lo dispuesto en los artículos 1526 Nº
			4 y 1528 del Código Civil.
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			<fo:inline font-weight="bold">d)</fo:inline>
			No podré retractarme de mi condición de avalista y/o fiador
			solidario
			mientras esté pendiente el pago de la obligación principal.
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			<fo:inline font-weight="bold">e)</fo:inline>
			Producto de la morosidad en la obligación principal puedo ser objeto
			de la respectiva cobranza judicial en mi contra, en calidad de
			avalista y/o codeudor solidario, proceso que inicialmente el Banco
			efectúa a través de su plataforma telefónica de cobranza, y de no
			prosperar esta gestión, se interpondrá una demanda ejecutiva con el
			mérito del pagaré ante los Tribunales de Justicia. El Banco efectúa
			la cobranza directamente, por medio de abogados externos y/o a través
			de su filial Servicios de Normalización y Cobranza -Normaliza S.A.
		</fo:block>
		<fo:table >
			<fo:table-column />
			<fo:table-body>
				<fo:table-row  height="3cm">
					<fo:table-cell>
					&#0160;
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse" font-size="11pt"
			font-family="Helvetica">
			<fo:table-column />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="center">
							<fo:leader leader-length="10cm" leader-pattern="rule"
								rule-style="solid" rule-thickness="0.2mm" color="black" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse" font-size="11pt"
			font-family="Helvetica">
			<fo:table-column />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="center">Avalista, fiador y codeudor
							solidario.
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table >
			<fo:table-column />
			<fo:table-body>
				<fo:table-row  height="10cm">
					<fo:table-cell>
					&#0160;
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			<fo:inline font-weight="bold">Recibo:</fo:inline>
			declaro haberme impuesto del contenido de esta carta y haber
			recibido
			con esta misma fecha el original de la misma.
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="center">
			<fo:leader leader-length="20cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="center">Copia Banco</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-body>
					<fo:table-row>
					<fo:table-cell>									
						<fo:block font-size="11pt"  text-align="left"  padding-left="1pt">
								<xsl:if test="modificacion/datos/oficina = '247'">											
									<fo:external-graphic width="75px" height="40px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
									</fo:external-graphic>
								</xsl:if>	
								<xsl:if test="modificacion/datos/oficina != '247'">											
									<fo:external-graphic width="75px" height="40px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
									</fo:external-graphic>
								</xsl:if>																							
						</fo:block>										
					</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="right">
			En
			<fo:leader leader-length="4cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
			,
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<fo:inline font-weight="normal">
				<xsl:value-of select="modificacion/datos/dia" />
			</fo:inline>
			<fo:leader leader-pattern="space" leader-length="1mm" />
			de
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<xsl:value-of select="modificacion/datos/mes" />
			<fo:leader leader-pattern="space" leader-length="1mm" />
			del año
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<xsl:value-of select="modificacion/datos/anio" />
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="center">
			<fo:inline font-weight="bold" text-decoration="underline">Anexo:
			</fo:inline>
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="center">
			<fo:inline font-weight="bold">Responsabilidades del avalista,
				fiador y codeudor solidario
			</fo:inline>
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			Yo:
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<fo:leader leader-length="12.6cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
			 
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			C.I. N°:
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<fo:leader leader-length="5.7cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
			<fo:leader leader-pattern="space" leader-length="1mm" />
			declaro por este acto, haber tomado
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			conocimiento de mi calidad de
			<fo:inline font-weight="bold">AVAL, FIADOR y CODEUDOR SOLIDARIO,
				de la deuda</fo:inline>
			por $
			<fo:leader leader-length="4cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
			 (Indicar monto bruto / Cupo de Línea de Crédito) suscrita por
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<fo:leader leader-length="8cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
			<fo:leader leader-pattern="space" leader-length="1mm" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			RUT N°:
			<fo:leader leader-pattern="space" leader-length="1mm" />
			<fo:leader leader-length="4cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
			<fo:leader leader-pattern="space" leader-length="1mm" />
			para con el Banco (Bci; Bci-Nova)
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="17cm" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			En cumplimiento de lo previsto en el artículo
			<fo:inline font-weight="bold">17 j) de la ley Nº 20.555
			</fo:inline>
			, declaro estar en conocimiento de los deberes y responsabilidades,
			de quien pretende constituir una garantía personal y declaro
			expresamente que:
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			<fo:inline font-weight="bold">a)</fo:inline>
			Mi responsabilidad de avalista, fiador y codeudor solidario, está
			expresada en los mismos términos y condiciones del deudor directo, y
			en caso de incumplimiento de éste, deberé responder por la obligación
			anteriormente indicada, más intereses, costas y gastos de cobranza.
			El Banco podrá cobrar, en ese caso, al deudor directo y/o al
			avalista.
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			<fo:inline font-weight="bold">b)</fo:inline>
			Acepto los plazos, prórrogas y/o modificaciones de las condiciones
			del crédito que se acordaren entre el deudor y el Bci.
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			<fo:inline font-weight="bold">c)</fo:inline>
			Mi responsabilidad es de carácter indivisible, por lo que la
			obligación del monto anteriormente indicado, es exigible a mis
			herederos y/o sucesores, según lo dispuesto en los artículos 1526 Nº
			4 y 1528 del Código Civil.
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			<fo:inline font-weight="bold">d)</fo:inline>
			No podré retractarme de mi condición de avalista y/o fiador
			solidario
			mientras esté pendiente el pago de la obligación principal.
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			<fo:inline font-weight="bold">e)</fo:inline>
			Producto de la morosidad en la obligación principal puedo ser objeto
			de la respectiva cobranza judicial en mi contra, en calidad de
			avalista y/o codeudor solidario, proceso que inicialmente el Banco
			efectúa a través de su plataforma telefónica de cobranza, y de no
			prosperar esta gestión, se interpondrá una demanda ejecutiva con el
			mérito del pagaré ante los Tribunales de Justicia. El Banco efectúa
			la cobranza directamente, por medio de abogados externos y/o a través
			de su filial Servicios de Normalización y Cobranza -Normaliza S.A.
		</fo:block>
		<fo:table >
			<fo:table-column />
			<fo:table-body>
				<fo:table-row  height="3cm">
					<fo:table-cell>
					&#0160;
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse" font-size="11pt"
			font-family="Helvetica">
			<fo:table-column />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="center">
							<fo:leader leader-length="10cm" leader-pattern="rule"
								rule-style="solid" rule-thickness="0.2mm" color="black" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table border-collapse="collapse" font-size="11pt"
			font-family="Helvetica">
			<fo:table-column />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="center">Avalista, fiador y codeudor
							solidario.
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table >
			<fo:table-column />
			<fo:table-body>
				<fo:table-row  height="9cm">
					<fo:table-cell>
					&#0160;
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
			<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">
			<fo:inline font-weight="bold">Recibo:</fo:inline>
			declaro haberme impuesto del contenido de esta carta y haber
			recibido
			con esta misma fecha el original de la misma.
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="15cm" />
		</fo:block>
				<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="center">
			<fo:leader leader-length="20cm" leader-pattern="rule"
				rule-style="solid" rule-thickness="0.2mm" color="black" />
		</fo:block>
			<fo:block font-family="Helvetica" line-height="4.5mm"
		font-size="11pt" text-align="center">Copia Cliente</fo:block>
	</xsl:template>
<xsl:template name="honorarios_seguros">
	<fo:block>
		<fo:table table-layout="fixed">
			<fo:table-column column-width="13cm" />
			<fo:table-column column-width="2cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>									
						<fo:block font-size="11pt"  text-align="left"  padding-left="1pt">
								<xsl:if test="modificacion/datos/oficina = '247'">											
									<fo:external-graphic width="75px" height="40px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
									</fo:external-graphic>
								</xsl:if>	
								<xsl:if test="modificacion/datos/oficina != '247'">											
									<fo:external-graphic width="75px" height="40px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
									</fo:external-graphic>
								</xsl:if>																							
						</fo:block>										
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
		<fo:block space-after="0.3cm" />
		<fo:block font-family="Helvetica" line-height="5.8mm"
			font-size="11pt" text-align="center" font-weight="bold">CONDICIONES Y
			HONORARIOS DE COBRANZA EXTRAJUDICIAL POR
		</fo:block>
		<fo:block font-family="Helvetica" line-height="5.8mm"
			font-size="11pt" text-align="center" font-weight="bold">EMPRESA EXTERNA
		</fo:block>
		<fo:block font-family="Helvetica" line-height="5.8mm"
			font-size="11pt" text-align="center" font-weight="normal">(BANCA PERSONAS -
			PERSONAS NATURALES Y JURÍDICAS)
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="10cm" />
		</fo:block>
		<fo:block font-family="Helvetica" font-size="11pt"
			text-align="justify">En base a lo establecido en la
			Ley de
			Protección de los
			Derechos de los Consumidores y en la
			normativa de la
			Superintendencia
			de Bancos e Instituciones
			Financieras, se informa al
			suscrito que
			existen recargos por concepto
			de cobranza extrajudicial
			de créditos o
			cuotas impagas, incluyendo
			honorarios a cargo del deudor
			según los
			plazos y productos que se
			indican más adelante, los cuales
			serán
			cobrados por la empresa
			"Servicios de Normalización y Cobranzas
			-
			Normaliza S.A." en su caso,
			la que actuará en nombre y en
			representación e interés del Banco de
			Crédito e Inversiones en las
			gestiones de cobranza extrajudicial.
		</fo:block>
		<fo:block font-family="Helvetica" font-size="11pt"
			text-align="justify">Dicha cobranza extrajudicial que
			efectuará
			la empresa
			Servicios de
			Normalización y Cobranzas -
			Normaliza S.A será
			realizada
			conforme a
			la Ley, en días hábiles y en
			horario de 8:00 a
			20:00 horas.
		</fo:block>
		<fo:block font-family="Helvetica" font-size="11pt"
			text-align="justify">Declaro
			conocer y desde luego
			acepto, que
			según lo
			establecido en la Ley Nº
			19.628 sobre Protección
			de Datos de
			Carácter
			Personal, para que la
			empresa Servicios de
			Normalización y
			Cobranzas -
			Normaliza S.A pueda
			realizar la cobranza
			extrajudicial, el
			Banco de
			Crédito e Inversiones
			suministrará a dicha
			empresa
			antecedentes, tanto
			respecto de los
			créditos morosos de sus
			deudores y
			otros que no estando
			en dicha
			condición estén asociados a
			éstos, como
			de los antecedentes
			comerciales de los deudores, tales
			como nombres y
			apellidos, cédula
			nacional de identidad, rol único
			tributario,
			domicilios, direcciones
			y
			teléfonos, etc.
		</fo:block>
		<fo:block font-family="Helvetica" font-size="11pt"
			text-align="justify">Declaro haber recibido, en forma previa al
			otorgamiento del
			crédito, la
			información sobre el cálculo de
			honorarios que generan la
			cobranza
			extrajudicial de los créditos
			impagos, así como copia fiel de
			este
			formulario cuyo original
			suscribo.
		</fo:block>
		<fo:block font-family="Helvetica" font-size="11pt"
			text-align="justify">Las tarifas de honorarios que se
			expresan a
			continuación
			podrán ser modificadas y en tal caso serán
			informadas a
			los clientes
			por carta al domicilio registrado en el
			Banco,
			contemplando las
			condiciones previstas en la legislación
			vigente.
		</fo:block>
		<fo:block font-family="Helvetica" line-height="5.8mm"
			font-size="11pt" text-align="left">
			<fo:inline font-weight="normal" text-decoration="underline">TABLA DE
				HONORARIOS GENERAL.-
			</fo:inline>
		</fo:block>
		<fo:block font-family="Helvetica" font-size="11pt"
			text-align="justify">Los honorarios por la cobranza
			extrajudicial para todos los
			productos ascenderán a los
			porcentajes aplicados sobre el total de la
			deuda o la cuota vencida, según el
			caso, conforme a la siguiente
			escala progresiva:
		</fo:block>
		<fo:block space-after="0.3cm" />
		<fo:table border-collapse="collapse" text-align="center">
			<fo:table-column column-width="91.9mm" border-top="0.5pt solid black"
				border-left="0.5pt solid black" border-bottom="0.5pt solid black" />
			<fo:table-column column-width="44.4mm" border-top="0.5pt solid black"
				border-left="0.0pt" border-right="0.5pt solid black" border-bottom="0.5pt solid black" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" font-weight="normal" margin-left="1mm"
							text-decoration="underline">      MONTO DEUDA O CUOTA
							MOROSA
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" margin-left="1mm">      Obligaciones
							hasta 10
							Unidades de Fomento
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" margin-left="1mm">      Por la parte que
							exceda de 10 UF y hasta 50 UF
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" margin-left="1mm">      Por la parte que
							exceda
							de 50 UF
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" font-weight="normal" margin-left="1mm"
							text-decoration="underline">      % HONORARIOS</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" margin-left="1mm" line-height="10px">       9%
						</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" margin-left="1mm">       6%</fo:block>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" margin-left="1mm">       3%</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.3cm" />
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="left">
			<fo:inline font-weight="normal">PLAZOS DE APLICACIÓN DE HONORARIOS.-
			</fo:inline>
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="0.1cm" />
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt">1.- CRÉDITOS DE CONSUMO /
			TARJETAS DE
			CRÉDITO - PERSONAS
			NATURALES.-
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">- Después de transcurridos
			15 días
			corridos de atraso (mora) desde el día del vencimiento de la
			obligación.
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt">2.- CRÉDITOS
			COMERCIALES-GENERAL /
			TARJETAS DE
			CREDITO-PERSONAS JURIDICAS
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">- Después de transcurridos 5
			días corridos
			de atraso (mora) desde el
			día del vencimiento de la
			obligación.
		</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt">3.- CRÉDITOS HIPOTECARIOS - GENERAL.-</fo:block>
		<fo:block font-family="Helvetica" line-height="4.5mm"
			font-size="11pt" text-align="justify">- Después de transcurridos 5 días
			corridos de atraso (mora)
			desde el día
			del vencimiento del dividendo.
		</fo:block>
		<fo:block>
			<fo:leader leader-pattern="space" leader-length="0.1cm" />
		</fo:block>
		<fo:table border-collapse="collapse" text-align="left">
			<fo:table-column column-width="45mm" />
			<fo:table-column column-width="60mm" />
			<fo:table-column column-width="10mm" />
			<fo:table-column column-width="20mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" line-height="4.5mm" font-weight="bold">NOMBRE O RAZON
							SOCIAL</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="left" font-weight="bold">
							<fo:inline>
								<xsl:value-of select="modificacion/datos/nombre_titular" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" margin-left="1mm" line-height="4.5mm"
							font-weight="bold">RUT:</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" margin-left="1mm" line-height="4.5mm"
							font-weight="bold">
							<fo:inline>
								<xsl:value-of select="modificacion/datos/rut_titular" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.3cm" />
		<fo:table border-collapse="collapse" text-align="left">
			<fo:table-column column-width="45mm" />
			<fo:table-column column-width="60mm" />
			<fo:table-column column-width="10mm" />
			<fo:table-column column-width="20mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" line-height="4.5mm" font-weight="bold">REPRESENTANTE
							LEGAL</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="left" font-weight="bold">
							<fo:leader leader-length="8cm" leader-pattern="rule"
								rule-style="solid" rule-thickness="0.2mm" color="black" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							font-weight="bold" text-align="left" margin-left="1mm"
							line-height="4.5mm">RUT</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="center" font-weight="bold">
							<fo:leader leader-length="4cm" leader-pattern="rule"
								rule-style="solid" rule-thickness="0.2mm" color="black" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.3cm" />
		<fo:table border-collapse="collapse" text-align="left">
			<fo:table-column column-width="45mm" />
			<fo:table-column column-width="60mm" />
			<fo:table-column column-width="10mm" />
			<fo:table-column column-width="20mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" line-height="4.5mm" font-weight="bold">REPRESENTANTE
							LEGAL</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="left" font-weight="bold">
							<fo:leader leader-length="8cm" leader-pattern="rule"
								rule-style="solid" rule-thickness="0.2mm" color="black" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							font-weight="bold" text-align="left" margin-left="1mm"
							line-height="4.5mm">RUT</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="center" font-weight="bold">
							<fo:leader leader-length="4cm" leader-pattern="rule"
								rule-style="solid" rule-thickness="0.2mm" color="black" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.3cm" />
		<fo:table border-collapse="collapse" text-align="left">
			<fo:table-column column-width="15mm" />
			<fo:table-column column-width="70mm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" line-height="4.5mm" font-weight="bold">Fecha
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="left" margin-left="1mm" line-height="4.5mm">
							<fo:inline>
								<xsl:value-of select="modificacion/datos/fecha_actual" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.1cm" />
		<fo:table border-collapse="collapse" font-size="14pt"
			font-family="Helvetica">
			<fo:table-column column-width="100%" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						_
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="center">
							<fo:leader leader-length="4cm" leader-pattern="rule"
								rule-style="solid" rule-thickness="0.2mm" color="black" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						_
						<fo:block font-family="Helvetica" line-height="4.5mm"
							font-size="11pt" text-align="center" font-weight="bold">Firma Cliente
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="221cm" />
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="3cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>									
										<fo:block font-size="11pt"  text-align="left"  padding-left="1pt">
												<xsl:if test="modificacion/datos/oficina = '247'">											
													<fo:external-graphic width="75px" height="40px">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>	
												<xsl:if test="modificacion/datos/oficina != '247'">											
													<fo:external-graphic width="75px" height="40px">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>																							
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	    <fo:block space-after="0.5cm" />
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="11pt" text-align="center"
							padding-top="2pt" font-family="Helvetica" padding-left="1pt">
							<fo:inline font-weight="bold" start-indent="2pt">SOLICITUD DE
								INCORPORACIÓN, MANDATO Y DECLARACION
								PERSONAL DE SALUD PARA SEGURO DE DESGRAVAMEN
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="11pt" text-align="center"
							font-family="Helvetica" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">(Uso exclusivo en Plan Bci)
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block space-after="0.2cm" />
						<fo:block font-size="11pt" text-align="right"
							font-family="Helvetica" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">FOLIO N°______________________
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="1cm" />
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="9cm" />
			<fo:table-column column-width="2.59cm" />
			<fo:table-column column-width="2cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="11pt" text-align="left" padding-top="2pt"
							font-family="Helvetica" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">1. DATOS
								ENTIDAD CONTRATANTE (MANDATARIO)</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">Sucursal</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" text-align="center"
							font-family="Helvetica" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt"> </fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="2cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="4cm" />
			<fo:table-column column-width="2.59cm" />
			<fo:table-column column-width="2cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="left" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">Oficina</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">
								 
								<xsl:value-of select="modificacion/datos/oficina" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">
								Ejecutivo :  
								<xsl:value-of select="modificacion/datos/colaborador" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">Jefe de Oficina</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block>
							<fo:inline> </fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.5cm" />
		<fo:block font-size="11pt" font-family="Helvetica"
			text-align="center" padding-top="2pt" padding-left="1pt">
			<fo:inline start-indent="2pt">Indique con una X el tipo de
				producto y complete los siguientes datos de la operación que está
				cursando:</fo:inline>
		</fo:block>
				<fo:block space-after="0.5cm" />
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="2.69cm" />
			<fo:table-column column-width="2.2cm" />
			<fo:table-column column-width="1.5cm" />
			<fo:table-column column-width="1.2cm" />
			<fo:table-column column-width="2cm" />
			<fo:table-column column-width="2cm" />
			<fo:table-column column-width="2cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Tipo de
								Operación</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Monto Crédito
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Moneda
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Prima
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Nro.
								Operación</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Vigencia
								Inicial Operación</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center">
							<fo:inline start-indent="2pt" font-weight="bold">Vigencia
								final Operación</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block>
							<fo:table text-align="center" table-layout="fixed"
								space-before="1mm" space-after="1mm">
								<fo:table-column column-width="0.1cm" />
								<fo:table-column column-width="0.3cm" />
								<fo:table-column column-width="4.2cm" />
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:inline> </fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-color="black"
											border-style="solid">
											<fo:block font-size="11pt" font-family="Helvetica"
												text-align="center">
												<fo:inline></fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt" font-family="Helvetica"
												text-align="left">
												<fo:inline font-size="11pt"> Línea de</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:inline> </fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												<fo:inline> </fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt" font-family="Helvetica"
												text-align="left">
												<fo:inline font-size="11pt"> Sobregiro</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block>
							<fo:table text-align="center" table-layout="fixed"
								space-before="1mm" space-after="1mm">
								<fo:table-column column-width="0.1cm" />
								<fo:table-column column-width="0.3cm" />
								<fo:table-column column-width="4.2cm" />
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:inline> </fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-color="black"
											border-style="solid">
											<fo:block font-size="11pt" font-family="Helvetica"
												text-align="center">
												<fo:inline>X</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt" font-family="Helvetica"
												text-align="left">
												<fo:inline font-size="11pt"> Línea de</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:inline> </fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												<fo:inline> </fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt" font-family="Helvetica"
												text-align="left">
												<fo:inline font-size="11pt"> Emergencia</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block>
							<fo:inline font-size="11pt">
								<xsl:value-of select="modificacion/datos/monto_total" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block>
							<fo:inline font-size="11pt">Pesos</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block>
							<fo:table text-align="center" table-layout="fixed"
								space-before="1mm" space-after="1mm">
								<fo:table-column column-width="0.1cm" />
								<fo:table-column column-width="0.3cm" />
								<fo:table-column column-width="4.2cm" />
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:inline> </fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-color="black"
											border-style="solid">
											<fo:block font-size="11pt" text-align="center">
												<fo:inline> </fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt" font-family="Helvetica"
												text-align="left">
												<fo:inline font-size="11pt"> Avance Bci</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:inline> </fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												<fo:inline> </fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt" font-family="Helvetica"
												text-align="left">
												<fo:inline font-size="11pt"> Multicrédito</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block> </fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica">
							<fo:inline font-size="11pt" font-family="Helvetica">La prima y/o
								tasa puede variar en función a la evaluación del riesgo por
								parte de BCI Seguros Vida S.A.</fo:inline>
						</fo:block>
						<fo:block space-after="0.5cm" />
						<fo:block font-family="Helvetica">
							<fo:inline font-size="11pt">Capital Asegurado: saldo insoluto
								de la operación crediticia individualizada a la fecha de
								siniestro.</fo:inline>
						</fo:block>
						<fo:block space-after="0.5cm" />
						<fo:block font-family="Helvetica">
							<fo:inline font-size="11pt">Comisión de Intermediación: 25% de
								la prima neta para Línea Sobregiro/Avance Bci Multicrédito y 30%
								de la prima
								neta para Línea de Emergencia. Comisión de Recaudación (Receptor
								Banco BCI): UF 0,03 + IVA por recaudación.
								Valija documentos (Receptor Banco BCI): $ 400 + IVA por seguro.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block space-after="0.5cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block line-height="3mm" font-family="Helvetica"
							space-before.optimum="1.5pt" space-after.optimum="1.5pt">
							<fo:inline font-size="11pt" font-weight="bold">2. DATOS DEL
								DEUDOR DIRECTO:</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell />
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.5cm" />
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="3.49cm" />
			<fo:table-column column-width="6.9cm" />
			<fo:table-column column-width="1.1cm" />
			<fo:table-column column-width="2.1cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">Nombre Completo:</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">
								<xsl:value-of select="modificacion/datos/nombre_titular" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">RUT:</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">
								<xsl:value-of select="modificacion/datos/rut_titular" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.5cm" />
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="6cm" />
			<fo:table-column column-width="0.5cm" />
			<fo:table-column column-width="4.59cm" />
			<fo:table-column column-width="0.5cm" />
			<fo:table-column column-width="4cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="left" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">3. DATOS DEL
								ASEGURABLE:  </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block>
							<fo:inline> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="left" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">  DEUDOR DIRECTO</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block>
							<fo:inline> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="left" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">  Aval</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.5cm" />
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="left" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">  Nombre
								Completo:</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="8.09cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="left" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">  RUT:
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="left" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">  Fecha Nacimiento:</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="8.09cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="left" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">  Domicilio:
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="left" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">  Comuna:
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="4.59cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="left" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">  Ciudad:
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="left" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">  Teléfono:</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block>
							<fo:table text-align="center" table-layout="fixed">
								<fo:table-column column-width="1.5cm" />
								<fo:table-column column-width="3.5cm" />
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block font-size="11pt" font-family="Helvetica"
												text-align="left" padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold"> Sexo:
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt" font-family="Helvetica"
												text-align="left" padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold"> Masculino:
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block font-size="11pt" font-family="Helvetica"
												text-align="left" padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold"> 
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt" font-family="Helvetica"
												text-align="left" padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold"> Femenino:
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="left" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt"> Estado Civil:</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" text-align="left" font-family="Helvetica"
							padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">  Aval</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.5cm" />
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">Por el presente instrumento,
								solicito como deudor la incorporación del asegurable detallado
								en el punto 3,a la(s)
								póliza(s) de Desgravamen N°s
							</fo:inline>
							<fo:inline font-size="11pt" font-weight="bold">222925, 222924,
								283457,</fo:inline>
							<fo:inline font-size="11pt">según producto(s) identificado(s)
								en punto 1.Con este objeto:</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block space-after="5cm" />
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table >
			<fo:table-column />
			<fo:table-body>
				<fo:table-row  height="6cm">
					<fo:table-cell>
					&#0160;
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="0.5cm" />
			<fo:table-column column-width="13.09cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
					    <fo:block space-after="1cm" />
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt" font-weight="bold">A.</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
					<fo:block space-after="1cm" />
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">Otorgo mandato al
								Banco de Crédito e Inversiones, en adelante “el Mandatario”,
								para que contrate y/o
								renueve con BCI Seguros de Vida S.A. , uno o más Seguros de Desgravamen
								para el asegurable, intermediados
								por Bci Corredores de Seguros S.A., en virtud del o de los cuales,
								al ocurrir el fallecimiento de este último, queden
								saldadas, hasta el importe de cobertura de dicho(s) seguro(s), las deudas
								vigentes, contraídas con ocasión del(de
								los) Crédito(s) individualizados en punto 1, otorgado(s) por el
								Banco de Crédito e Inversiones. Desde ya, acepto
								como deudor directo, todas las condiciones de la contratación del o
								de los seguro(s), entre éstas, su vigencia, la
								cobertura del o de los mismos y el cargo de la(s) prima(s) y de
								cualesquiera otros gastos generados con ocasión
								del o de los mismos, en cualquiera de mis Cuentas Corrientes, o la
								rebaja correspondiente del o de los créditos
								que se me concediere(n), de la(s) prima(s), impuestos, comisiones y
								otros gastos derivados de su contratación y
								renovación en su caso, en las oportunidades y con la frecuencia que
								corresponde a los respectivos vencimientos.
								Será suficiente aviso de tal contratación, si se hiciere, o de su
								renovación en su caso, y también suficiente
								rendición de cuenta de esta gestión, el o los cargo(s) correspondiente(s)
								en la Cuenta Corriente, Línea de Crédito
								o en cualquiera otros valores que tenga depositados en el Banco.
								Así también, acepto las condiciones de
								procedencia o improcedencia del pago del o de los seguros pactados en la
								Compañía de Seguros y el monto de
								cobertura sin que al Banco corresponda responsabilidad alguna, para el
								evento que el(los) seguro(s) no fuese(n)
								pagado(s), no fuere(n) contratado(s) no fuese(n) renovado(s), o no cumplan
								los requisitos de asegurabilidad
								exigidos.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt" font-weight="bold">B.</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt" font-family="Helvetica">Declaro como
								asegurable:</fo:inline>
							<fo:inline font-size="11pt" font-family="Helvetica"
								font-weight="bold">1)</fo:inline>
							<fo:inline font-size="11pt" font-family="Helvetica">Que esta
								solicitud de incorporación, no otorga cobertura hasta haber sido
								aceptada
								por Bci Seguros Vida S.A.;
							</fo:inline>
							<fo:inline font-size="11pt" font-weight="bold"
								font-family="Helvetica">2)</fo:inline>
							<fo:inline font-size="11pt" font-family="Helvetica">Que la presente
								Solicitud de Incorporación a estos seguros se hace a petición
								del
								suscrito y en ningún caso ha sido considerada como condición para el
								otorgamiento del (de los) crédito(s)
								ofrecido(s) o solicitado(s).
							</fo:inline>
							<fo:inline font-size="11pt" font-weight="bold"
								font-family="Helvetica">3)</fo:inline>
							<fo:inline font-size="11pt" font-family="Helvetica">estar en
								conocimiento del derecho a decidir sobre la contratación de los
								seguros y a
								la libre elección del intermediario y compañía aseguradora.
							</fo:inline>
							<fo:inline font-size="11pt" font-weight="bold"
								font-family="Helvetica">4)</fo:inline>
							<fo:inline font-size="11pt" font-family="Helvetica">La(s)
								cobertura(s) comenzará(n) a regir únicamente
								a partir del momento en que este documento sea aceptado por la
								Compañía Aseguradora y se inicie la vigencia
								del o de los seguros y hasta el día en que se produzca cualquiera
								de las dos circunstancias siguientes: a) que se
								cumpla la edad tope de cada cobertura, b) que se extinga el o los
								crédito(s) individualizado(s) en el punto 1.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt" font-weight="bold">C.</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">Autorizo al
								Banco, para remitir a BCI Seguros de Vida S.A. y/o BCI
								Corredores de Seguros S.A.
								que intervengan, con las que se contrate y/o intermedie el(los)
								seguro(s) y sus renovaciones, la información
								pertinente a los montos de los créditos; sus condiciones, estados de
								servicios de las deudas, montos o saldos
								insolutos adeudados y demás que fuere menester para dichas operaciones,
								según lo solicitaren dichas
								compañías.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt" font-weight="bold">D.</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">Las coberturas del o de los
								Seguro(s) de Desgravamen se rigen por la póliza depositada en el
								registro de la
								S.V.S. bajo el código POL 2 05 040, y la CAD 2 08 074 y, de acuerdo al
								(los) producto(s) contratado(s).
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="3.69cm" />
			<fo:table-column column-width="3.3cm" />
			<fo:table-column column-width="3.3cm" />
			<fo:table-column column-width="3.3cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell number-columns-spanned="4">
						<fo:block space-after="4cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">
								 
								<xsl:value-of select="modificacion/datos/fecha_actual" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">______________
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">______________
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">______________
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Fecha
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Firma Cliente
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Firma Aval
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Firma
								Corredor</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block text-align="left" break-after="page" />
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="3cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>									
										<fo:block font-size="11pt"  text-align="left"  padding-left="1pt">
												<xsl:if test="modificacion/datos/oficina = '247'">											
													<fo:external-graphic width="75px" height="40px">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>	
												<xsl:if test="modificacion/datos/oficina != '247'">											
													<fo:external-graphic width="75px" height="40px">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="modificacion/imagenes/logo"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>																							
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.5cm" />
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline font-weight="bold" start-indent="2pt">SOLICITUD DE
								INCORPORACIÓN, MANDATO Y DECLARACION
								PERSONAL DE SALUD PARA SEGURO DE DESGRAVAMEN
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt">(Uso exclusivo en Plan Bci)
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.3cm" />
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">En caso de extinción o disminución
								de deuda por prepago o renegociación del crédito, BCI Seguros
								solo para Avance
								Multicrédito devolverá al deudor asegurado la prima que no se hubiere
								devengado por la extinción de los riesgos, si
								ello se hubiera producido dentro de los 45 días siguientes al inicio
								de la cobertura o dentro de un término
								correspondiente a la décima parte del período de cobertura efectiva del seguro,
								si ello fuera superior (Circular 1762 de
								la Superintendencia de valores y seguros).
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="0.3cm" />
			<fo:table-column column-width="13.29cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt" font-weight="bold">E. </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">Exclusiones: Las exclusiones del
								seguro se encuentran contenidas en la póliza depositada en el
								registro de la
								S.V.S. bajo el código POL 2 05 040 y la CAD 2 08 074. Entre las
								principales se cuenta:
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt" font-weight="bold">1)</fo:inline>
							<fo:inline font-size="11pt">Automutilación, o autolesión,
							</fo:inline>
							<fo:inline font-size="11pt" font-weight="bold"> 2)</fo:inline>
							<fo:inline font-size="11pt">Acto delictivo cometido, en
								calidad de autor o cómplice, por quien pudiere verse
								beneficiado por el pago de la cantidad asegurada
							</fo:inline>
							<fo:inline font-size="11pt" font-weight="bold"> 3)</fo:inline>
							<fo:inline font-size="11pt">Realización o participación en una
								actividad o deporte riesgoso,
								considerándose como tales aquellos que objetivamente constituyan una flagrante
								agravación del riesgo y/o se
								requiera de medidas de protección y/o seguridad para realizarlos. A vía
								de ejemplo y sin que la enumeración sea
								taxativa o restrictiva sino que meramente enunciativa, se considera
								actividad o deporte riesgoso el manejo de
								explosivos, minería subterránea, trabajos en altura o líneas de alta
								tensión, inmersión submarina, piloto civil,
								paracaidismo, montañismo, alas delta, benji, parapente, carreras de auto y
								moto, entre otros.
							</fo:inline>
							<fo:inline font-size="11pt" font-weight="bold"> 4)</fo:inline>
							<fo:inline font-size="11pt">Enfermedades preexistentes,
								entendiéndose por tales las definidas en el artículo 2° las
								Condiciones Generales</fo:inline>
							<fo:inline font-size="11pt" font-weight="bold"> 5)</fo:inline>
							<fo:inline font-size="11pt">Una infección oportunista o
								neoplasma maligno causado o que resulte como consecuencia que el
								Asegurado estuviere afecto o
								fuere portador del Síndrome de Inmunodeficiencia Adquirida,
								cualquiera fuese el momento en que el Asegurado se
								haya infectado o contraído dicho síndrome.
							</fo:inline>
							<fo:inline font-size="11pt" font-weight="bold"> 6)</fo:inline>
							<fo:inline font-size="11pt">todas las exclusiones indicadas en
								el condicionado general.
								F. Esta solicitud sólo presenta un resumen de las coberturas. El
								Detalle de las características, exclusiones y
								condiciones se encuentran en las pólizas respectivas.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt" font-weight="bold">DECLARACIÓN
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="10.59cm" />
			<fo:table-column column-width="1cm" />
			<fo:table-column column-width="0.5cm" />
			<fo:table-column column-width="1cm" />
			<fo:table-column column-width="0.5cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt">  La edad del asegurado al momento
								de su ingreso, sumado</fo:inline>
						</fo:block>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt">  el plazo de la deuda excede los
								74 y 364 días.</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">SI</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block line-height="3mm" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt"> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">NO</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt"> </fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt">  El asegurable tiene más de 65
								años.</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">SI</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt"> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">NO</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt"> </fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt">  El asegurable declara
								preexistencia o el desarrollo de sus</fo:inline>
						</fo:block>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt">  actividades y/o deportes
								riesgosos en las secciones</fo:inline>
						</fo:block>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt">  especiales para este punto
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">SI</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt"> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">NO</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block line-height="3mm" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt"> </fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt"> El monto de la presente operación
								es superior a UF 2.000.-</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">SI</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt"> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">NO</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt"> </fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="0.4cm" />
			<fo:table-column column-width="13.19cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">a)</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">En caso de que todos los puntos
								anteriores hayan sido respondidos negativamente, la presente
								solicitud de
								incorporación tendrá aceptación inmediata y pasará a ser Certificado de
								Cobertura. Si cualquiera de las preguntas
								precedentes queda sin responder, la compañía entenderá que ésta ha sido
								contestada positivamente.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
								<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">b)</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">En caso de duda o contradicción
								entre la información proporcionada en este u otro formulario y
								cualquiera de las
								respuestas anteriores prevalecerán estas últimas declaraciones.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">c)</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">Declaro estar dispuesto a
								someterme a pruebas médicas por cuenta de la Compañía, asimismo
								autorizo a los
								médicos, hospital, clínica u otra institución o persona que tenga mis
								registros personales para que entregue oproporcione la
								información solicitada por BCI Seguros Vida S.A. A su vez
								faculto a esta última para que solicite o retire
								copia de tales antecedentes patológicos, incluso en caso de muerte,
								conforme a lo dispuesto en la ley número 19.628,
								artículo 127 del Código Sanitario.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="1cm" />
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="3.69cm" />
			<fo:table-column column-width="3.3cm" />
			<fo:table-column column-width="3.3cm" />
			<fo:table-column column-width="3.3cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold"> 
								<xsl:value-of select="modificacion/datos/fecha_actual" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">______________
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">______________
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">______________
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Fecha
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Firma Cliente
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Firma Aval
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">Firma
								Corredor</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="20cm" />
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block space-after="10cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid"
						background-color="rgb(223, 223, 223)">
						&gt;
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt" font-weight="bold">INFORMACION
								ARTICULOS 57 Y 58 DEL DL Nº 251</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">Bci Corredores de Seguros S.A. ,
								Rut 78.951.950-1 , en mi calidad de Corredor de seguros y en
								cumplimiento a la ley
								, informo que durante el año calendario anterior intermedié
								contratos de seguros con las siguientes Compañías de
								seguros .
							</fo:inline>
						</fo:block>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt">
							<fo:inline font-size="11pt">En Seguros Generales: El 79,28 %
								en BCI Seguros Generales S.A., el 7,40 % con la Compañía de
								Seguros
								Generales Cardif S.A., el 3,28 % con Aseguradora Magallanes S.A., el 3,24
								% con Liberty Compañía de Seguros
								Generales S.A., el 2,45 % con Royal Sun alliance Seguros S.A., el 1,83 %
								con Mapfre Seguros Generales SA.,
								el 1,10 % con C.S.G. Penta Security S.A. , el 0,75 % con Consorcio
								Nacional de Seguros Generales S.A. y otras
								1,42 % . En Seguros de Vida: El 65,69 % con Bci Seguros de Vida
								S.A., el 24,71 % con la Compañía de Seguros
								de Vida Cardif S.A , el 5,66 % con Chilena Consolidada Seguros de
								Vida S.A., el 2,02 % en la Interamericana
								Compañía de Seguros de Vida S.A. , el 1,03 % con Euroamerica Vida S.A,
								el 0,42 % con Consorcio Nacional Vida y
								otras 0,47 % . En Renta Vitalicia: El 25,62 % con Principal Compañía
								de Seguros de Vida Chile S.A., el 23,50 %
								con Met Life Chile Seguros de Vida S.A., el 11,25% con Compañía de
								Seguros de Vida Corp S.A. , el 8,25% con ING
								Vida S.A., el 6,92 % con Cruz del Sur Vida S.A.,. el 6,57% con Penta
								Vida Compañía de Seguros de Vida S.A., el
								5,78 % con C.S.V Consorcio Nacional de Seguros S.A , el 4,08 % con
								Bci Seguros Vida S.A. , el 2,54 % con RentaVida S.A. , el 2,07%
								con Euroamerica Seguros de Vida S.A. y otras 3,43 %.
								Para responder del correcto y cabal cumplimiento de todas mis
								obligaciones emanadas de la actividad de Corredor de
								Seguros y en especial de los perjuicios que pueda ocasionar a los
								asegurados que contraten seguros por mi
								intermedio se ha emitido Póliza de Responsabilidad Civil N° 4282810 y
								Póliza de Garantía N° 10009577 en
								Consorcio Nacional de Seguros S.A.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table >
			<fo:table-column />
			<fo:table-body>
				<fo:table-row  height="22cm">
					<fo:table-cell>
					&#0160;
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.5cm" />
		<fo:table table-layout="fixed">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline font-size="11pt" font-weight="bold">INFORMATIVO
								SOBRE SEGURO DE DESGRAVAMEN PARA DEUDORES LINEA DE SOBREGIRO Y
								LINEA DE EMERGENCIA DEL BANCO BCI
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" padding-top="5pt"
							padding-left="1pt" text-align="center">
							<fo:inline font-size="11pt" font-weight="bold">(Circulares
								3331 Superintendencia de Bancos y 1759 Superintendencia de
								Valores y Seguros)</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell number-columns-spanned="2">
						<fo:block space-after="0.5cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" padding-top="11pt"
							padding-left="3pt" text-align="left">
							<fo:inline font-size="11pt" font-weight="bold">Compañía
								Aseguradora:</fo:inline>
							<fo:inline font-size="11pt">BCI Seguros Vida S.A.</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" padding-top="11pt"
							padding-left="1pt" text-align="left">
							<fo:inline font-size="11pt" font-weight="bold">Clasificación
								de riesgo: AA-</fo:inline>
							<fo:inline font-size="11pt">según Feller and Rate y
							</fo:inline>
							<fo:inline font-size="11pt" font-weight="bold">AA-</fo:inline>
							<fo:inline font-size="11pt">Según Fitch Ratings</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" padding-top="11pt"
							padding-left="1pt" text-align="left">
							<fo:inline font-size="11pt" font-weight="bold">Intermediario:
							</fo:inline>
							<fo:inline font-size="11pt">BCI Corredores de Seguros S.A.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" padding-top="11pt"
							padding-left="1pt" text-align="left">
							<fo:inline font-size="11pt" font-weight="bold">Coberturas:
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" padding-top="11pt"
							padding-left="1pt" text-align="left">
							<fo:inline font-size="15pt" font-weight="bold">.</fo:inline>
							<fo:inline font-size="11pt">Muerte: Desgravamen (POL 2 05 040
								)</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" padding-top="11pt"
							padding-left="1pt" text-align="left">
							<fo:inline font-size="15pt" font-weight="bold">.</fo:inline>
							<fo:inline font-size="11pt" font-weight="bold">Requisitos de
								Asegurabilidad</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="4cm" />
			<fo:table-column column-width="4cm" />
			<fo:table-column column-width="4cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt" font-weight="bold"> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell number-columns-spanned="2"
						border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt" font-weight="bold">Edad
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt" font-weight="bold">Monto Asegurado
								vigente en la Cía.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt" font-weight="bold">Hasta 54 años
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt" font-weight="bold">55 a 75 años
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt">UF0,1 a UF2.000</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell number-columns-spanned="2"
						border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">Solicitud de Incorporación
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt">UF2.001 a UF5.000</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">A</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">B</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt">UF5.001 a UF6.000</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">A</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">B</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt">UF6.001 a UF9.000</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">C</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">C</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt">UF9.001 a UF15.000</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">D</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">D</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell border-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="left">
							<fo:inline font-size="11pt">Mayor a UF 15.000</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell number-columns-spanned="2"
						order-color="black" border-style="solid">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" text-align="center">
							<fo:inline font-size="11pt">Siempre sujeto a evaluación a
								compañía</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.5cm" />
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="0.5cm" />
			<fo:table-column column-width="13.09cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell number-columns-spanned="2">
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">Donde:</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">A:</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">Solicitud de
								Incorporación+Declaración Personal de Salud</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">B:</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">Solicitud de
								Incorporación+Declaración Personal de Salud + Exámen Médico +
								Electrocardiograma
								de reposo + Orina completa.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">C:</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">Solicitud de
								Incorporación+Declaración Personal de Salud + Exámen Médico +
								Electrocardiograma
								de reposo + Orina completa + HIV + Radiografía de Tórax.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">D:</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">Solicitud de
								Incorporación+Declaración Personal de Salud + Exámen Médico +
								Electrocardiograma
								de reposo + Orina completa + HIV + Radiografía de Tórax +
								Hemograma + Glicemia + Pérfil Lipídico.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.5cm" />
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">La Compañía de Seguros se reserva
								el derecho de solicitar mayores antecedentes En aquellos casos
								que lo estime necesario y/o conveniente para la aceptación del
								asegurable.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">Este seguro no cubre
								preexistencias, salvo que el cliente tenga conocimiento y/o
								diagnóstico y/o
								sintomatología de alguna enfermedad que él requiera expresamente que sea
								evaluada por la compañía.
								Para ello, deberá completar una declaración personal de salud, la
								que será evaluada por la compañía e
								informará las condiciones de asegurabilidad del cliente a la entidad
								contratante.
							</fo:inline>
						</fo:block>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">La muerte que sobrevenga durante
								actividades y/o deportes riesgosos no tendrá cobertura
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">La edad del asegurado al momento
								de su ingreso, sumado al plazo de la deuda, no deben exceder los
								75 años.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">
								Para las personas cuyo monto total del cupo autorizado en la línea
								de crédito o línea de emergencia sea
								inferior o igual a UF 2.000, este seguro no cubre preexistencias, salvo
								que el cliente tenga conocimiento
								y/o diagnóstico y/o sintomatología de alguna enfermedad que él
								requiera expresamente que sea
								evaluada por la compañía. Para ello, deberá completar una declaración
								personal de salud, la que será
								evaluada por la compañía y se informará el resultado a la entidad
								contratante.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block space-after="2cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" text-align="right"
							keep-together="always">
							<fo:inline font-size="11pt" font-weight="bold">Pag. 1 / 2
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block text-align="left" break-after="page" />
		<fo:table table-layout="fixed" text-align="justify">
			<fo:table-column column-width="13.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt" font-weight="bold">La práctica de
								actividades y/o deportes riesgosos no tendrán cobertura.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">El Asegurador se reserva el
								derecho de solicitar mayores antecedentes en aquellos casos que
								estime
								necesario y conveniente para la aceptación del asegurable.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block space-after="0.4cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt" font-weight="bold">Asegurados
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">Deudores del Banco Bci Línea de
								sobregiro y Línea de Emergencia que sean personas naturales
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block space-after="0.4cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt" font-weight="bold">Monto Asegurado
								y Condiciones de Liquidación</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">Cupo utilizado de la línea de
								crédito de sobregiro o la línea de emergencia o ambas con un
								tope
								máximo, correspondiente al cupo autorizado por la entidad contratante;
								al día inmediatamente anterior a
								la fecha de fallecimiento del deudor, más los intereses devengados
								al cierre del mes anterior a la fecha
								de fallecimiento, sobre la base de un servicio regular de la
								deuda, con un tope máximo, correspondiente
								al cupo autorizado por la entidad contratante.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block space-after="0.4cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt" font-weight="bold">Plazo de
								Vigencia:</fo:inline>
							<fo:inline font-size="11pt">La cobertura regirá desde la fecha
								en que el banco otorga efectivamente la línea de
								crédito de sobregiro o la línea de emergencia y la Compañía Aseguradora
								acepta asumir el riesgo, hasta
								el día en que se produzca una cualquiera de las dos circunstancias
								siguientes:1) que se cumpla la edad
								tope de cada cobertura, 2) que se extinga el crédito que dio origen
								al seguro.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block space-after="0.4cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt" font-weight="bold">Prima:
							</fo:inline>
							<fo:inline font-size="11pt">La prima total corresponde a la
								tasa indicada a continuación, dependiendo de la vigencia del
								crédito, aplicada sobre el monto asegurado inicial.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt" font-weight="bold">Para la línea
								de crédito de sobregiro,</fo:inline>
							<fo:inline font-size="11pt">la tasa es de 4.0 %o (por mil)
								anual sobre el saldo inicial con
								un mínimo de UF 0.3 y un máximo de UF 6.0.
							</fo:inline>
						</fo:block>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">La tasa se aplica sobre el cupo
								total otorgado a la línea de crédito.</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt" font-weight="bold">Para la línea
								de emergencia,</fo:inline>
							<fo:inline font-size="11pt">la tasa es de 2.33 %o (por mil)
								por semestre con una prima mínima de
								UF 0.17 y prima máxima de UF 3 (primas brutas).
							</fo:inline>
						</fo:block>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">La tasa se aplica sobre el cupo
								total otorgado a la línea de emergencia.</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block space-after="0.4cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">Las primas indicadas son
								referenciales. En caso que la aseguradora decida evaluar el
								riesgo específico,
								ello podría generar un cambio de las condiciones de aseguramiento y
								el aumento de la prima, sin
								perjuicio de su derecho a no otorgar en definitiva la cobertura
								solicitada.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt" font-weight="bold">Exclusiones
								generales</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">Las exclusiones se encuentran
								contenidas en la póliza depositada en el registro de la S.V.S.
								bajo el
								código POL 2 05 040
							</fo:inline>
						</fo:block>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">Entre las principales se excluyen
								las preexistencias de las patologías cubiertas, las enfermedades
								cubiertas o intervenciones que resulten o sean consecuencia de
								adicciòn a las drogas o al alcohol,
								enfermedades en conexión con infección por HIV, suicido frustrado, su
								tentativa y cualquier autolesión
								intencionada.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block space-after="0.4cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt" font-weight="bold">Consultas,
								Reclamos y Siniestros:</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" space-before.optimum="1.5pt"
							space-after.optimum="1.5pt" keep-together="always">
							<fo:inline font-size="11pt">En caso de consultas, reclamos y
								denuncias de siniestro, el asegurado se deberá comunicar con BCI
								Corredores de
								Seguros al teléfono (02) 5404953 o al e-mail: siniestrosbci@bci.cl., al
								teléfono del CRI de la Compañía de Seguros
								6006000292 – desde celular 02 – 6799700 o en cualquiera de las oficinas de
								BCI Seguros Vida S.A.
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block space-after="0.5cm" />
		<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="10cm" />
			<fo:table-column column-width="3.59cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline font-size="11pt" font-weight="bold">
								 
								<xsl:value-of select="modificacion/datos/nombre_titular" />
								       
								<xsl:value-of select="modificacion/datos/rut_titular" />
							</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline start-indent="2pt" font-weight="bold">________________
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell number-columns-spanned="2">
						<fo:block space-after="0.3cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline font-size="11pt" font-weight="bold">Nombre completo
								y Nro de Cédula de Identidad del Cliente</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-family="Helvetica" font-size="11pt"
							text-align="center" padding-top="2pt" padding-left="1pt">
							<fo:inline font-weight="bold">Firma</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block space-after="3cm" />
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell number-columns-spanned="2">
						<fo:block font-size="11pt" font-family="Helvetica"
							text-align="right" padding-top="2pt" padding-left="1pt">
							<fo:inline font-size="11pt" font-weight="bold">Pag. 2 / 2
							</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		</xsl:template>
				</xsl:stylesheet>