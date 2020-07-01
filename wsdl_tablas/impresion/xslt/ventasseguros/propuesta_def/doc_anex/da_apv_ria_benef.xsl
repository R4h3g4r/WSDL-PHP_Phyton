<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_da_apv_ria_benef">
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="{$varTablaAncho}">
				<fo:table-column />
				<fo:table-body>
					<fo:table-row keep-with-next="always">
						<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
							<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
								<xsl:text>BENEFICIARIOS (1)</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
							<fo:table table-layout="fixed" width="{$varTablaAncho}">
								<fo:table-column column-width="proportional-column-width(60)"/>
								<fo:table-column column-width="proportional-column-width(20)"/>
								<fo:table-column column-width="proportional-column-width(20)"/>
								<fo:table-body>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding="2pt" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Nombre</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2pt" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Rut</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2pt" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Fecha de Nacimiento</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<xsl:call-template name="temp_da_apv_ria_benef_filas"/>
									<xsl:call-template name="temp_da_apv_ria_benef_filas"/>
									<xsl:call-template name="temp_da_apv_ria_benef_filas"/>
									<xsl:call-template name="temp_da_apv_ria_benef_filas"/>
									<xsl:call-template name="temp_da_apv_ria_benef_filas"/>
									<xsl:call-template name="temp_da_apv_ria_benef_filas"/>
									<xsl:call-template name="temp_da_apv_ria_benef_filas"/>
									<xsl:call-template name="temp_da_apv_ria_benef_filas"/>
									<fo:table-row keep-with-next="always">
										<fo:table-cell number-columns-spanned="3" padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>(1) Corresponderán a los establecidos en el D.L. Nº 3500, de 1980, a la fecha de fallecimiento del asegurado.</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_da_apv_ria_benef_filas">
		<fo:table-row keep-with-next="always">
			<fo:table-cell padding="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
				<fo:block>
					<xsl:text> </xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
				<fo:block>
					<xsl:text> </xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
				<fo:block>
					<xsl:text> </xsl:text>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>
	
</xsl:stylesheet>