<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.1"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no"
		indent="yes" />
	<xsl:param name="img1"/>
	<xsl:template match="mensajesEnviados">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="Letter Page"
					page-width="8.5in" page-height="11in">
					<fo:region-body region-name="xsl-region-body"
						margin-top="42.400px" margin-bottom="0.7in" margin-left="0.7in"
						margin-right="0.7in" />
					<fo:region-before region-name="xsl-region-before"
						display-align="after" extent="42.400px" />
					<fo:region-after region-name="xsl-region-after"
						display-align="before" extent="0.7in" />
					<fo:region-start region-name="xsl-region-start"
						extent="0.7in" />
					<fo:region-end region-name="xsl-region-end"
						extent="0.7in" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="Letter Page">
			<xsl:for-each select="mensajes">
				<fo:static-content flow-name="xsl-region-before"
					font-size="12pt" font-family="sans-serif">
					<fo:block> </fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after"
					font-size="12pt" font-family="sans-serif">
					<fo:block> </fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-start"
					font-size="12pt" font-family="Times">
					<fo:block font-family="sans-serif" font-size="9pt">
						 
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-end"
					font-size="12pt" font-family="Times">
					<fo:block font-family="sans-serif" font-size="9pt">
						 
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body" font-family="sans-serif"
					font-size="12pt">
					<fo:block>
						<fo:table table-layout="fixed" width="auto"
							border-collapse="collapse" margin-top="-754.438px">
							<fo:table-column column-width="11.5cm"
								column-number="1" />
							<fo:table-column column-width="0.5cm"
								column-number="2" />
							<fo:table-column column-width="6.5cm"
								column-number="3" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell
										 padding="2pt">
										<fo:block font-family="sans-serif"
											font-size="9pt">
											Razón Social
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										 padding="2pt" display-align="center"
										text-align="center">
										<fo:block font-family="sans-serif"
											font-size="9pt">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										 padding="2pt">
										<fo:block font-family="sans-serif"
											font-size="9pt">
											<xsl:value-of select="banco" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell
										 padding="2pt">
										<fo:block font-family="sans-serif"
											font-size="9pt">
											RUT Nº
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										 padding="2pt" display-align="center"
										text-align="center">
										<fo:block font-family="sans-serif"
											font-size="9pt">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										 padding="2pt">
										<fo:block font-family="sans-serif"
											font-size="9pt">
											<xsl:value-of select="rut" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell
										 padding="2pt">
										<fo:block font-family="sans-serif"
											font-size="9pt">
											Dirección
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										 padding="2pt" display-align="center"
										text-align="center">
										<fo:block font-family="sans-serif"
											font-size="9pt">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										 padding="2pt">
										<fo:block font-family="sans-serif"
											font-size="9pt">
											<xsl:value-of select="direccion" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell
										 padding="2pt">
										<fo:block font-family="sans-serif"
											font-size="9pt">
											Giro o Actividad
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										 padding="2pt" display-align="center"
										text-align="center">
										<fo:block font-family="sans-serif"
											font-size="9pt">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										 padding="2pt" display-align="center"
										text-align="left">
										<fo:block font-family="sans-serif"
											font-size="9pt">
											<xsl:value-of select="giro" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-family="sans-serif" font-size="9pt">
						 
					</fo:block>
					<fo:block font-family="sans-serif" font-size="9pt">
						 
					</fo:block>
					<fo:block font-family="sans-serif" font-size="10pt"
						text-align="justify">
						<fo:inline font-size="9pt">
							CERTIFICADO Nº20, SOBRE INTERESES
							CORRESPONDIENTES A CREDITOS HIPOTECARIOS
							PAGADOS Y DEMÁS ANTECEDENTES RELACIONADOS
							CON MOTIVO DEL BENEFICIO TRIBUTARIO
							ESTABLECIDO EN EL ART. 55 BIS DE LA LEY DE
							RENTA
						</fo:inline>
						.
					</fo:block>
					<fo:block>						 
					</fo:block>
					<fo:block>						 
					</fo:block>
					<fo:block font-family="sans-serif" font-size="10pt">
						<fo:table width="auto" table-layout="fixed" >
							<fo:table-column column-width="11cm"
								column-number="1" />
							<fo:table-column column-width="3cm"
								column-number="2" />
							<fo:table-column column-width="3cm"
								column-number="3" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left">
										<fo:block font-size="9pt">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left">
										<fo:block font-size="9pt">
											CERTIFICADO Nº
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right">
										<fo:block font-size="9pt">
											<xsl:value-of select="num_cert" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block>						 
					</fo:block>
					<fo:block font-family="sans-serif" font-size="10pt"
						text-align="justify">
						<fo:inline font-size="9pt">
							La entidad acreedora que ha otorgado
							créditos con garantía hipotecaria que se
							hubieran destinado a adquirir o construir
							una o más viviendas o destinados a pagar los
							créditos señalados <xsl:value-of select="banco" />, certifica para los efectos del
							beneficio tributario establecido en el Art.
							55 bis de la Ley de la Renta que el Sr.: <xsl:value-of select="nombre" />, 
							Rut Nº <xsl:value-of select="rut_cliente" />,
							durante el año <xsl:value-of select="ano" />, en cumplimiento de las
							obligaciones hipotecarias referidas, ha
							pagado los siguientes intereses
						</fo:inline>
						.
					</fo:block>
					<fo:block>						 
					</fo:block>
					<fo:block font-family="sans-serif" font-size="10pt">
						<fo:table border-collapse="collapse">
							<fo:table-column column-number="1" />
							<fo:table-column column-number="2" />
							<fo:table-column column-number="3" />
							<fo:table-column column-number="4" />
							<fo:table-header>
								<fo:table-row display-align="center">
									<fo:table-cell
										border-width="1.000pt" border-style="solid"
										border-color="rgb(0,0,0)" padding="2.000pt"
										text-align="left">
										<fo:block font-size="9pt"
											text-align="center" border-left-style="none"
											border-left-width="0.000px" 
											border-top-style="none" border-top-width="0.000px"
											border-right-style="none"
											border-right-width="0.000px"
											border-bottom-style="none" border-bottom-width="0.000px"
											padding-left="2.000pt" padding-top="2.000pt"
											padding-right="2.000pt" padding-bottom="2.000pt">
											Mes de Pago Efectivo Del
											Dividendo Del Aporte (1)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-width="1.000pt" border-style="solid"
										border-color="rgb(0,0,0)" padding="2.000pt"
										text-align="left">
										<fo:block font-size="9pt"
											text-align="center" border-left-style="none"
											border-left-width="0.000px" 
											border-top-style="none" border-top-width="0.000px"
											border-right-style="none"
											border-right-width="0.000px" 
											border-bottom-style="none" border-bottom-width="0.000px"
											padding-left="2.000pt" padding-top="2.000pt"
											padding-right="2.000pt" padding-bottom="2.000pt">
											Monto Nominal De Los
											Intereses Correspondientes a
											Dividendos Pagados (2)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-width="1.000pt" border-style="solid"
										border-color="rgb(0,0,0)" padding="2.000pt"
										text-align="left">
										<fo:block font-size="9pt"
											text-align="center" border-left-style="none"
											border-left-width="0.000px"
											border-top-style="none" border-top-width="0.000px"
											border-right-style="none"
											border-right-width="0.000px"
											border-bottom-style="none" border-bottom-width="0.000px"
											padding-left="2.000pt" padding-top="2.000pt"
											padding-right="2.000pt" padding-bottom="2.000pt">
											Factor De Actualización (3)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-width="1.000pt" border-style="solid"
										border-color="rgb(0,0,0)" padding="2.000pt"
										text-align="left">
										<fo:block font-size="9pt"
											text-align="center" border-left-style="none"
											border-left-width="0.000px"
											border-top-style="none" border-top-width="0.000px"
											border-right-style="none"
											border-right-width="0.000px"
											border-bottom-style="none" border-bottom-width="0.000px"
											padding-left="2.000pt" padding-top="2.000pt"
											padding-right="2.000pt" padding-bottom="2.000pt">
											Monto Actualizado De Los
											Intereses Correspondientes a
											Dividendos Pagados
											(4)=(2)*(3)
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-header>
							
							<fo:table-body>
							<xsl:for-each select="mensaje">
								<fo:table-row display-align="center">
									<fo:table-cell
										border-width="1.000pt" border-style="solid"
										border-color="rgb(0,0,0)" padding="2.000pt" text-align="left"
										display-align="center">
										<fo:block font-size="9pt">
										    <xsl:value-of select="meses" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-width="1.000pt" border-style="solid"
										border-color="rgb(0,0,0)" padding="2.000pt"
										text-align="center" display-align="center">
										<fo:block font-size="9pt">
											$ <xsl:value-of select="monto_nominal" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-width="1.000pt" border-style="solid"
										border-color="rgb(0,0,0)" padding="2.000pt"
										text-align="center" display-align="center">
										<fo:block font-size="9pt">
											<xsl:value-of select="factor_act" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-width="1.000pt" border-style="solid"
										border-color="rgb(0,0,0)" padding="2.000pt"
										text-align="center" display-align="center">
										<fo:block font-size="9pt">
											$ <xsl:value-of select="monto_act_intereses" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								</xsl:for-each>
								<fo:table-row display-align="center">
									<fo:table-cell
										border-width="1.000pt" border-style="solid"
										border-color="rgb(0,0,0)" padding="2.000pt" text-align="left"
										display-align="center">
										<fo:block font-size="9pt">
											TOTALES
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-width="1.000pt" border-style="solid"
										border-color="rgb(0,0,0)" padding="2.000pt"
										text-align="center" display-align="center">
										<fo:block font-size="9pt">
										    $ <xsl:value-of select="total_monto_nominal" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-width="1.000pt" border-style="solid"
										border-color="rgb(0,0,0)" padding="2.000pt"
										text-align="center" display-align="center">
										<fo:block font-size="9pt">
											 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-width="1.000pt" border-style="solid"
										border-color="rgb(0,0,0)" padding="2.000pt"
										text-align="center" display-align="center">
										<fo:block font-size="9pt">
										    $ <xsl:value-of select="total_monto_act_intereses" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block>						 
					</fo:block>
					<fo:block>						 
					</fo:block>
					<fo:block font-family="sans-serif" font-size="9pt">
						Se extiende el presente certificado en
						cumplimiento de lo dispuesto en la resolución
						Ex. Nº53 del Servicio de Impuestos Internos,
						publicada en el Diario Oficial del 12 del 12 del
						2002.
					</fo:block>
					<fo:block>						 
					</fo:block>
					<fo:block>						 
					</fo:block>
					<fo:block>						 
					</fo:block>
					<fo:block font-family="sans-serif"
						text-indent="100.400px">
						<fo:external-graphic>
							<xsl:attribute name="src">
								<xsl:value-of select="rutaImagen"/>firma.jpg
							</xsl:attribute>
						</fo:external-graphic>	
					</fo:block>
					<fo:block font-family="sans-serif" text-align="left"
						color="rgb(0,0,255)" font-size="9pt">
						<xsl:value-of select="fecha_palabras" />
					</fo:block>					
				</fo:flow>
			</xsl:for-each>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>