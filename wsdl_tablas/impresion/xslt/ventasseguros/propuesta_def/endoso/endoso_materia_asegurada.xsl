<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_endoso_materia_asegeurada">
		<xsl:if test="count( universo/materiasAseguradas/queseasegura/materiaasegurada ) > 0 or count( universo/figuraslegales/figuras ) > 0">
			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="{$varTablaAncho}">
					<fo:table-column />
					<fo:table-body>
						<fo:table-row keep-with-next="always">
							<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									CAMBIO DE MATERIA ASEGURADA
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<xsl:for-each select="universo/materiasAseguradas/queseasegura">
				<fo:block  padding-before="{$varEspacioExtreSecciones}">
					<fo:table table-layout="fixed" width="{$varTablaAncho}">
						<fo:table-column />
						<fo:table-body>
							<fo:table-row keep-with-next="always">
								<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
									<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
										<xsl:if test=" position() = 1 ">Materia asegurada vigente</xsl:if>
										<xsl:if test=" position() = 2 ">Cambiar materia asegurada anterior por</xsl:if>
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
											<xsl:for-each select="materiaasegurada">
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
				</fo:block>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
