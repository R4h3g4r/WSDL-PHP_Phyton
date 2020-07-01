<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	
	<xsl:template name="temp_dps">
		<xsl:if test="count(  universo/dpsPreguntas/pregunta  ) &gt; 0">
			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="{$varTablaAncho}">
					<fo:table-column />
					<fo:table-body>
						<fo:table-row keep-with-next="always">
							<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<xsl:text>DECLARACIÓN PERSONAL DE SALUD</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
								<fo:table table-layout="fixed" width="{$varTablaAncho}">
									<fo:table-column column-width="proportional-column-width(85)" background-color="{$varTablaColumnaLabelColor}"/>
									<fo:table-column column-width="proportional-column-width(15)" background-color="{$varTablaColumnaValorColor}"/>
									<fo:table-body>
										<xsl:for-each select="universo/dpsPreguntas/pregunta">
											<fo:table-row>
												<fo:table-cell padding-left="5pt">
													<fo:block>
														<xsl:value-of disable-output-escaping="no" select="glosa"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding-left="5pt">
													<fo:block>
														<xsl:value-of disable-output-escaping="no" select="respuesta"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:for-each>
									</fo:table-body>
								</fo:table>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
	</xsl:template>
	
</xsl:stylesheet>
