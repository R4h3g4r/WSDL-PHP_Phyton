<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.1"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no"
		indent="yes" />
    <xsl:param name="imagen"/>
    <xsl:param name="img_firma"/>
	<xsl:template match="mensajesEnviados">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="Letter Page"
					page-width="8.5in" page-height="11in" margin-left="0.5in"
					margin-right="0.5in">
					<fo:region-body region-name="xsl-region-body"
						margin="0.7in" />
					<fo:region-before region-name="xsl-region-before"
						display-align="after" extent="0.7in" />
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
					font-size="12pt" font-family="Times">
					<fo:block> </fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after"
					font-size="12pt" font-family="Times">
					<fo:block> </fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-start"
					font-size="12pt" font-family="Times">
					<fo:block> </fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-end"
					font-size="12pt" font-family="Times">
					<fo:block> </fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body"
					font-family="sans-serif" font-size="12pt">
					<fo:block text-align="center">
						<fo:external-graphic>
							<xsl:attribute name="src">
								<xsl:value-of select="rutaImagen"/>02-logo-bci.gif
							</xsl:attribute>
						</fo:external-graphic>					        
					</fo:block>
					<fo:block font-family="sans-serif"
						text-align="center" padding="4pt">
						CERTIFICADO
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center">
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center">
						&#x00A0; 
					</fo:block>
					<fo:block font-family="sans-serif"
						text-align="justify" font-size="10pt">
						Certificamos que el <xsl:value-of select="titulo" />.
						<xsl:value-of select="cliente" />
						, RUT.
						<xsl:value-of select="rut_cliente" />
						, operación Nº
						<xsl:value-of select="num_operacion" />
						, mantiene una deuda Hipotecaria con este Banco
						en la modalidad
						<xsl:value-of select="modalidad" />
						con un interés anual de un
						<xsl:value-of select="interes" />
						% con un vencimiento original de su deuda al
						<xsl:value-of select="fecha" />
						y su saldo a la fecha es de
						<xsl:value-of select="saldo_fecha" />
						U.F.
					</fo:block>
					<fo:block font-family="sans-serif" text-align="left"
						font-size="10pt">
						Según el siguiente detalle:
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center">
						 
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center">
						 
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center">
						<fo:table width="auto" table-layout="fixed">
							<fo:table-column column-width="2cm"
								column-number="1" />
							<fo:table-column column-width="7cm"
								column-number="2" />
							<fo:table-column column-width="0.5cm"
								column-number="3" />
							<fo:table-column column-width="4cm"
								column-number="4" />
							<fo:table-column column-width="3cm"
								column-number="5" />
							<fo:table-body>
								<fo:table-row display-align="middle">
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="10pt">
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="10pt">
											CAPITAL
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="center">
										<fo:block font-size="10pt">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="right" display-align="center">
										<fo:block font-size="10pt">
											<xsl:value-of
												select="capital" />
											U.F.
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="10pt">
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row display-align="middle">
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="10pt">
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="10pt">
											DEUDA REPROGRAMADA
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="center">
										<fo:block font-size="10pt">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="right" display-align="center">
										<fo:block font-size="10pt">
											<xsl:value-of
												select="deuda_prog" />
											U.F.
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="10pt">
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row display-align="middle">
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="10pt">
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="10pt">
											DIVIDENDOS IMPAGOS * (
											<xsl:value-of
												select="num_div_impagos" />
											)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="center">
										<fo:block font-size="10pt">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="right" display-align="center">
										<fo:block font-size="10pt">
											<xsl:value-of
												select="div_impagos" />
											U.F.
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="10pt">

										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center">
						 
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center">
						&#x00A0;
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center">
						&#x00A0; 
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center">
						 
					</fo:block>
					<fo:block font-family="sans-serif"
						text-align="justify" font-size="10pt">
						Se extiente el presente Certificado a petición
						del intersado para los fines que estime
						conveniente, sin ulterior responsabilidad para
						el BANCO DE CREDITO E INVERSIONES
						.
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="justify">
						 
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="justify">
						&#x00A0;
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="justify">
						 
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="justify">
						 
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="justify">
						 
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="justify">
						 
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="justify">
						 
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="justify">
						 
					</fo:block>
					<fo:block font-family="sans-serif"
						text-align="center">
						<fo:external-graphic>
							<xsl:attribute name="src">
								<xsl:value-of select="rutaImagen"/>firma.jpg
							</xsl:attribute>
						</fo:external-graphic>						
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="justify">
						 
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="justify">
						 
					</fo:block>
					<fo:block font-family="sans-serif"
						text-align="justify" font-size="9pt">
						 
					</fo:block>
					<fo:block font-family="sans-serif"
						text-align="center">
						<fo:inline font-size="9pt">
							(*) Montos de dividendo(s) impago(s) no
							incluyen intereses de mora ni honorarios de
							cobranzas.
						</fo:inline>
						<fo:inline font-size="9pt"> </fo:inline>
					</fo:block>
					<fo:block font-family="sans-serif"
						text-align="justify" font-size="9pt">
						&#x00A0;
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="justify" fo:font-size="9pt">
						&#x00A0; 
					</fo:block>
					<fo:block font-family="sans-serif"
						text-align="justify" font-size="9pt">
						 
					</fo:block>
					<fo:block font-family="sans-serif"
						text-align="center" font-size="9pt">
						* Informese sobre el limite de garantía estatal
						a los depósito
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center" fo:font-size="9pt">
						&#x00A0;
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center" fo:font-size="9pt">
						&#x00A0;
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center" fo:font-size="9pt">
						&#x00A0;
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center" fo:font-size="9pt">
						&#x00A0;
					</fo:block>
					<fo:block fo:font-family="sans-serif"
						fo:text-align="center" fo:font-size="9pt">
						&#x00A0;
					</fo:block>
					<fo:block font-family="sans-serif" text-align="left"
						color="rgb(0,0,255)" font-size="9pt">
						Santiago, <xsl:value-of select="fecha_palabras" />
					</fo:block>
				</fo:flow>
			</xsl:for-each>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>