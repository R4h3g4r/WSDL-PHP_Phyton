<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="firmas.xsl"/>
	<xsl:template name="temp_glosas">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column/>
			<fo:table-body>
				<!-- si tiene mas de 0 universo/condicionesydeclaraciones/especiales  -->
				<xsl:if test="count( universo/condicionesydeclaraciones/especiales  ) &gt; 0">
					<fo:table-row>
						<fo:table-cell border="1pt" border-color="#0000FF">
							<fo:block padding-before="{$varEspacioExtreSecciones}">
								<fo:table table-layout="fixed" width="{$varTablaAncho}">
									<fo:table-column/>
									<fo:table-header>
										<fo:table-row>
											<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
												<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
													<xsl:text>CONDICIONES PARTICULARES Y DECLARACIONES ESPECIALES</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-header>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaLabelColor}" padding-left="5pt" padding-right="5pt">
												<xsl:for-each select="universo/condicionesydeclaraciones/especiales">
													<fo:block white-space-collapse="false">
														<xsl:value-of disable-output-escaping="no" select="descripcion"/>
													</fo:block>
												</xsl:for-each>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>
				<!-- universo/observaciones no es igual a vacio -->
				<xsl:if test="universo/observaciones != '' ">
					<fo:table-row>
						<fo:table-cell>
							<fo:block padding-before="{$varEspacioExtreSecciones}" keep-with-next="always">
								<fo:table table-layout="fixed" width="{$varTablaAncho}">
									<fo:table-column/>
									<fo:table-header>
										<fo:table-row>
											<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
												<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
													<xsl:text>OBSERVACIONES</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-header>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaLabelColor}" padding-left="5pt" padding-right="5pt">
												<fo:block white-space-collapse="false">
													<xsl:value-of disable-output-escaping="no" select="universo/observaciones"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>
				<xsl:if test=" universo/identificacion/documento/tipo = 'COTIZACION' ">
					<fo:table-row>
						<fo:table-cell>
							<fo:block padding-before="{$varEspacioExtreSecciones}" keep-with-previous.within-page="always">
								<fo:table table-layout="fixed" width="{$varTablaAncho}">
									<fo:table-column/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaLabelColor}" padding-left="5pt" padding-right="5pt">
												<fo:block>
													La vigencia de esta cotización es de <xsl:value-of select="universo/identificacion/documento/duracion"/> días.
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>
				<fo:table-row keep-with-previous="always">
					<fo:table-cell>
						<fo:block>
							<xsl:call-template name="temp_firmas"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
</xsl:stylesheet>
