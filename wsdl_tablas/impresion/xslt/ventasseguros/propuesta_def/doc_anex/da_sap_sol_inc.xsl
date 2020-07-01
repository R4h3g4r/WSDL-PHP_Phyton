<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_da_sap_sol_inc">
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(19)"/>
				<fo:table-column column-width="proportional-column-width(10)"/>
				<fo:table-column column-width="proportional-column-width(10)"/>
				<fo:table-column column-width="proportional-column-width(28)"/>
				<fo:table-column column-width="proportional-column-width(12)"/>
				<fo:table-column column-width="proportional-column-width(21)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="6" display-align="before"  background-color="{$varTablaTituloColor}" padding-left="5pt">
							<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
								SOLICITUD DE INCORPORACION
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
							<fo:block>Alternativa de Ahorro Previsional</fo:block>
						</fo:table-cell>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="3" display-align="before">
							<fo:block>Origen del Ahorro</fo:block>
						</fo:table-cell>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
							<fo:block>Plazo del Ahorro</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
							<fo:block><xsl:value-of select="../../informacion-adicional/zona-36-37/ALTERNATIVA_AHORRO"/></fo:block>
						</fo:table-cell>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="3" display-align="before">
							<fo:block><xsl:value-of select="../../informacion-adicional/zona-36-37/ORIGEN_AHORRO"/></fo:block>
						</fo:table-cell>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
							<fo:block><xsl:value-of select="../../informacion-adicional/zona-36-37/PLAZO_AHORRO"/></fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:choose>
						<xsl:when test=" ../../informacion-adicional/zona-36-37/TIPO_PAGO = 'INDIRECTA' ">
							<fo:table-row>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
									<fo:block>Forma de pago</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
									 <fo:block>Comisión de Recaudación</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
									<fo:block>Monto del Descuento</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
									<fo:block>Mes del primer descuento</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
									<fo:block>INDIRECTA</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
									<fo:block><xsl:value-of select="../../informacion-adicional/zona-36-37/COMISION_TRASPASO_AFP"/></fo:block>
								</fo:table-cell>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
									<fo:block>
										<xsl:value-of select="../../../../plan/moneda"/>
										<xsl:text> </xsl:text>
										<xsl:value-of select="../../../../plan/bruta"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
									<fo:block><xsl:value-of select="../../informacion-adicional/zona-36-37/MES_PRIMER_DESCUENTO"/></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:when>
						<xsl:when test=" ../../informacion-adicional/zona-36-37/TIPO_PAGO = 'DIRECTA' ">
							<fo:table-row>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
									<fo:block>Forma de pago</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
									<fo:block>Monto del Ahorro</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="3" display-align="before">
									<fo:block><xsl:text> </xsl:text></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
									<fo:block>DIRECTA</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
									<fo:block>
										<xsl:value-of select="../../../../plan/moneda"/>
										<xsl:text> </xsl:text>
										<xsl:value-of select="../../../../plan/bruta"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="3" display-align="before">
									<fo:block><xsl:text> </xsl:text></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:when>
					</xsl:choose>
					<fo:table-row>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="6" display-align="before">
							<fo:block>Destinatario</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="6" display-align="before">
							<fo:block font-weight="bold">BCI Seguros Vida S.A. 96.573.600-K; Domicilio Huérfanos 1189 Piso 3 Santiago </fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>
