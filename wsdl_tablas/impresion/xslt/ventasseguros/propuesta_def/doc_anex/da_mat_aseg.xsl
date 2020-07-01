<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_da_mat_aseg">
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<xsl:if test=" cabecera != '' and cabecera != ' ' ">
				<fo:table table-layout="fixed" width="{$varTablaAncho}">
					<fo:table-column/>
					<fo:table-body>
						<fo:table-row keep-with-next="always">
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<xsl:value-of select="cabecera"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</xsl:if>
			
			<xsl:for-each select="da-sub-zonas/da-zona">
				<fo:block padding-before="{$varEspacioExtreSecciones}">
					<fo:table table-layout="fixed" width="{$varTablaAncho}">
						<fo:table-column/>
						<fo:table-body>
							<xsl:if test=" cabecera != '' and cabecera != ' ' ">
								<fo:table-row keep-with-next="always">
									<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
										<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
											<xsl:value-of select="cabecera"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:if>
							<fo:table-row keep-with-next="always">
								<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
									<fo:block>
										<fo:table table-layout="fixed" width="{$varTablaAncho}">
											<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
											<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
											<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
											<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
											<fo:table-body>
												<xsl:for-each select="da-atributos/da-atributos-grupo">
													<fo:table-row keep-with-next="always">
														<xsl:for-each select="da-atributo[ glosa!='' and glosa!='null' ]">
															<fo:table-cell padding-left="5pt">
																<fo:block>
																	<xsl:value-of select="glosa" disable-output-escaping="no"/>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding-left="5pt">
																<fo:block>
																	<xsl:value-of select="respuesta" disable-output-escaping="no"/>
																</fo:block>
															</fo:table-cell>
														</xsl:for-each>
													</fo:table-row>
												</xsl:for-each>							
											</fo:table-body>
										</fo:table>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:for-each>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>
