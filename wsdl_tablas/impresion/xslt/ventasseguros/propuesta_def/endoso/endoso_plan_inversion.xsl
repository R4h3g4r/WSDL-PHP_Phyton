<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_endoso_plan_inversion">
		<xsl:if test="( universo/planinversion/plannombre != '') ">
			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="{$varTablaAncho}">
					<fo:table-column />
					<fo:table-body>
						<fo:table-row keep-with-next="always">
							<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<xsl:text>CAMBIO EN INSTRUMENTOS O ACTIVOS DE INVERSION</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
								<fo:table table-layout="fixed" width="{$varTablaAncho}">
									<fo:table-column column-width="proportional-column-width(30)" background-color="{$varTablaColumnaLabelColor}"/>
									<fo:table-column column-width="proportional-column-width(70)" background-color="{$varTablaColumnaValorColor}"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell padding-left="5pt">
												<fo:block>
													<xsl:text>Plan de Inversión</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block>
													<xsl:value-of disable-output-escaping="no" select="universo/planinversion/plannombre"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
								<fo:table table-layout="fixed" width="{$varTablaAncho}">
									<fo:table-column column-width="proportional-column-width(50)"/>
									<fo:table-column column-width="proportional-column-width(50)"/>
									<fo:table-body>
										<fo:table-row background-color="{$varTablaColumnaLabelColor}">
											<fo:table-cell text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
												<fo:block>
													<xsl:text>Instrumento</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
												<fo:block>
													<xsl:text>Porcentaje</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<xsl:for-each select="universo/planinversion/instrumentos/instrumento">
											<fo:table-row  background-color="{$varTablaColumnaValorColor}">
												<fo:table-cell padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
													<fo:block>
														<xsl:value-of select="nombre"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
													<fo:block>
														<xsl:value-of select="porcentaje"/>
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
