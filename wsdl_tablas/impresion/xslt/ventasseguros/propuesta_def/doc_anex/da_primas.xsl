<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_da_primas">
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="{$varTablaAncho}">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row keep-with-next="always">
						<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
							<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
								PRIMAS <xsl:value-of select="../../../../plan/periodicidad"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>

						<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000">
							<fo:block>

								<fo:table table-layout="fixed" width="{$varTablaAncho}">
									<fo:table-column column-width="proportional-column-width(16)"/>
									<xsl:if test="../../../../plan/inversion='true'">
										<fo:table-column column-width="proportional-column-width(35)"/>
									</xsl:if>
									<xsl:if test="../../../../plan/inversion='false'">
										<fo:table-column column-width="proportional-column-width(49)"/>
									</xsl:if>
									<fo:table-column column-width="proportional-column-width(7)"/>
									<fo:table-column column-width="proportional-column-width(7)"/>
									<fo:table-column column-width="proportional-column-width(7)"/>
									<fo:table-column column-width="proportional-column-width(7)"/>
									<xsl:if test="../../../../plan/inversion='true'">
										<fo:table-column column-width="proportional-column-width(7)"/>
										<fo:table-column column-width="proportional-column-width(7)"/>
									</xsl:if>
									<fo:table-column column-width="proportional-column-width(7)"/>
									<fo:table-body>
										<fo:table-row background-color="{$varTablaTituloColor}" keep-with-next="always">
											<fo:table-cell padding-left="5pt">
												<fo:block color="{$varTablaTituloTextColor}">
													<xsl:text>Plan</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block color="{$varTablaTituloTextColor}">
													<xsl:text>Descripción</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center">
												<fo:block color="{$varTablaTituloTextColor}">
													<xsl:text>Exenta</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center">
												<fo:block color="{$varTablaTituloTextColor}">
													<xsl:text>Afecta</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center">
												<fo:block color="{$varTablaTituloTextColor}">
													<xsl:text>IVA</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center">
												<fo:block color="{$varTablaTituloTextColor}">
													<xsl:text>Bruta</xsl:text>
												</fo:block>
											</fo:table-cell>
											<xsl:if test="../../../../plan/inversion='true'">
												<fo:table-cell text-align="center">
													<fo:block color="{$varTablaTituloTextColor}">
														<xsl:text>Mínima</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center">
													<fo:block color="{$varTablaTituloTextColor}">
														<xsl:text>Exceso</xsl:text>
													</fo:block>
												</fo:table-cell>
											</xsl:if>
											<fo:table-cell text-align="center">
												<fo:block color="{$varTablaTituloTextColor}">
													<xsl:text>Moneda</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row background-color="{$varTablaColumnaLabelColor}" keep-with-next="always">
											<fo:table-cell padding-left="5pt">
												<fo:block>
													<xsl:value-of select="../../../../plan/nombreplan"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block>
													<xsl:value-of select="../../../../plan/descripcion"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center">
												<fo:block>
													<xsl:value-of select="../../../../plan/exenta"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center">
												<fo:block>
													<xsl:value-of select="../../../../plan/afecta"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center">
												<fo:block>
													<xsl:value-of select="../../../../plan/iva"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center">
												<fo:block>
													<xsl:value-of select="../../../../plan/bruta"/>
												</fo:block>
											</fo:table-cell>
											<xsl:if test="../../../../plan/inversion='true'">
												<fo:table-cell text-align="center">
													<fo:block>
														<xsl:value-of select="../../../../plan/primaminima"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center">
													<fo:block>
														<xsl:value-of select="../../../../plan/primaexceso"/>
													</fo:block>
												</fo:table-cell>
											</xsl:if>
											<fo:table-cell text-align="center">
												<fo:block>
													<xsl:value-of select="../../../../plan/moneda"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
								
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>
