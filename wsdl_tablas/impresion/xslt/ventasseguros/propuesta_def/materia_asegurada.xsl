<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="figuras_legales.xsl"/>
	<xsl:template name="temp_materia_asegeurada">
		<xsl:if test="count( universo/materiasAseguradas/queseasegura/materiaasegurada ) > 0 or count( universo/figuraslegales/figuras ) > 0">
			<fo:block  padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="{$varTablaAncho}">
					<fo:table-column />
					<fo:table-body>
						<!--
						<fo:table-row keep-with-next="always">
							<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<xsl:text>Lista de Materias Aseguradas</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						-->
						<fo:table-row keep-with-next="always">
							<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<xsl:value-of select="universo/materiasAseguradas/queseasegura/nombre"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row keep-with-next="always">
							<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
								<fo:table table-layout="fixed" width="{$varTablaAncho}">
									<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
									<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
									<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
									<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
									<fo:table-body>
										<xsl:for-each select="universo/materiasAseguradas/queseasegura/materiaasegurada">
											<fo:table-row keep-with-next="always">
												<fo:table-cell padding-left="5pt">
													<fo:block>
														<xsl:value-of disable-output-escaping="no" select="parametroleft"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding-left="5pt">
													<fo:block>
														<xsl:value-of disable-output-escaping="no" select="valorleft"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding-left="5pt">
													<fo:block>
														<xsl:value-of disable-output-escaping="no" select="parametroright"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding-left="5pt">
													<fo:block>
														<xsl:value-of disable-output-escaping="no" select="valorright"/>
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
				<xsl:call-template name="temp_figuras_legales_detalle"/>
			</fo:block>
		</xsl:if>
	</xsl:template>

	<xsl:template name="temp_figuras_legales_detalle">
		<fo:block>
			<xsl:apply-templates select="universo/figuraslegales/figuras"/>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>
