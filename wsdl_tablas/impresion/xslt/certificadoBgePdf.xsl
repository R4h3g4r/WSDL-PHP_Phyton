<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
	<xsl:decimal-format name="euro" decimal-separator="," grouping-separator="."/>
	<xsl:variable name="bgcolor">#000099</xsl:variable>
	<xsl:variable name="lineas">#000000</xsl:variable>
	<xsl:variable name="fo:layout-master-set">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="formato-Pagina" page-height="27.9cm" page-width="21cm" margin-left="3cm" margin-right="2cm" margin-top="3cm" >
				<fo:region-body />
				<fo:region-before region-name="header" extent="1.5cm"/>
				<fo:region-after extent="10mm"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
	</xsl:variable>
	<xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html"/>
	<xsl:template match="/">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
			<fo:page-sequence master-reference="formato-Pagina" initial-page-number="1" format="1">
				<fo:flow flow-name="xsl-region-body">
					<fo:block border="0.5pt solid #000000" >

						<fo:table font-size="10pt" font-family="Verdana, Geneva, sans-serif" table-layout="fixed" width="16cm" line-height="0.5cm">
							<fo:table-column column-width="6.6cm"/>
							<fo:table-column column-width="9.4cm"/>
							<fo:table-header>
								<fo:table-row background-color="#2255A4" line-height="0.6cm">
									<fo:table-cell text-align="start" number-columns-spanned="2">
										<fo:block margin-left="2mm">
											<fo:inline font-weight="bold" color="white">Certificado Boleta de Garantía</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-header>	
							<fo:table-body margin="1.5cm">
								<fo:table-row >
									<fo:table-cell padding-after="0.5cm" text-align="start" padding-before="1cm" number-columns-spanned="2" >
										<fo:block>
											El Banco de Crédito e Inversiones certifica que se encuentra vigente en nuestros registros una Boleta de Garantía firmada por <fo:inline font-weight="bold"><xsl:value-of select="informeCertificado/nombreEmpresa"/></fo:inline>.
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-after="0.5cm" text-align="start" number-columns-spanned="2" >
										<fo:block>
												La información de la boleta es la siguiente:
											</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start">
										<fo:block>
												Número Operación
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start">
										<fo:block>
											<xsl:value-of select="informeCertificado/nroBoleta"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start">
										<fo:block>
												Beneficiario
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start">
										<fo:block>
											<xsl:value-of select="informeCertificado/nombreBenef"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start">
										<fo:block>
												Fecha de Emision
											</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start">
										<fo:block>
											<xsl:value-of select="informeCertificado/fechaEmision"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start">
										<fo:block>
												Fecha de Vencimiento
											</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start">
										<fo:block>
											<xsl:value-of select="informeCertificado/fechaVencimiento"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start">
										<fo:block>
												Moneda
											</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start">
										<fo:block>
											<xsl:value-of select="informeCertificado/moneda"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" padding-after="0.5cm">
										<fo:block>
												Monto
											</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start">
										<fo:block>
											<xsl:value-of select="informeCertificado/monto"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<xsl:if test="informeCertificado/tipoBoleta = 'A LA VISTA'">
									<fo:table-row>
										<fo:table-cell padding-after="0.5cm" text-align="start" number-columns-spanned="2">
											<fo:block>
												Si la Boleta no es cobrada antes de la fecha de vencimiento, el monto de esta boleta se le abonará en su cuenta corriente el día habil siguiente a su vencimiento. 	
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<fo:table-row>
									<fo:table-cell text-align="start" padding-after="0.3cm" number-columns-spanned="2">
										<fo:block>
											Notas: 	
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start"  padding-after="0.15cm" number-columns-spanned="2">
										<fo:block>
											• La Boleta de Garantía se encuentra en custodia electrónica. 	
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start"  padding-after="0.15cm" number-columns-spanned="2">
										<fo:block>
											• Para su retiro debe presentar este certificado y la cédula de identidad de quien retira en Mesón de Atención a Clientes de las sucursales establecidas, dentro del horario hábil bancario.
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start"  padding-after="0.15cm" number-columns-spanned="2">
										<fo:block>
											• Si la boleta no es retirada, el mismo día de la firma, quedará sin efecto su emisión y se hará devolución del monto abonando la cuenta afectada. 
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="right"  padding-right="1cm" number-columns-spanned="2">
										<fo:block>
											<fo:external-graphic>
												<xsl:attribute name="src">url('<xsl:value-of select="informeCertificado/imgPath"/><xsl:text disable-output-escaping="yes">timbre.gif</xsl:text>')</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="right"  padding-after="0.1cm" number-columns-spanned="2">
										<fo:block>
											 _________________________
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="right" padding-right="1cm" padding-after="0.1cm" number-columns-spanned="2">
										<fo:block>
											Banca Electrónica 
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="right"  padding-after="0.1cm" number-columns-spanned="2">
										<fo:block>
											Banco de Crédito e Inversiones
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
