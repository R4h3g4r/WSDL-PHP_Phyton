<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_endoso_figuras_legales">
		<xsl:if test="count(  universo/figuraslegalesgenerales/figuras ) > 0">
			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="{$varTablaAncho}">
					<fo:table-column />
					<fo:table-body>
						<fo:table-row keep-with-next="always">
							<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									FIGURAS LEGALES
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<fo:block>
				<xsl:for-each select="universo/figuraslegalesgenerales/figuras">
					<xsl:call-template name="temp_endoso_figuras"/>
				</xsl:for-each>
			</fo:block>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="temp_endoso_figuras">
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="{$varTablaAncho}">
				<fo:table-column />
				<fo:table-body>
					<fo:table-row keep-with-next="always">
						<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
							<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
								CORREGIR DATOS DEL <xsl:value-of select="nombrefigura"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
							<fo:table table-layout="fixed" width="{$varTablaAncho}">
								<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
								<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
								<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
								<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
								<fo:table-body>
									<xsl:if test="endosoAccion != ''">
										<fo:table-row keep-with-next="always">
											<fo:table-cell padding-left="5pt">
												<fo:block>
													Acción a realizar
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block>
													<xsl:if test="endosoAccion = 'I'">INGRESAR NUEVO</xsl:if>
													<xsl:if test="endosoAccion = 'E'">ELIMINAR</xsl:if>
													<xsl:if test="endosoAccion = 'M'">MODIFICAR DATOS</xsl:if>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block/>
											</fo:table-cell>
										</fo:table-row>
									</xsl:if>
								
									<xsl:for-each select="relacionatributos">
										<fo:table-row keep-with-next="always">
											<fo:table-cell padding-left="5pt">
												<fo:block>
													<xsl:value-of disable-output-escaping="no" select="atributoleft"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block>
													<xsl:value-of disable-output-escaping="no" select="valorleft"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block>
													<xsl:value-of disable-output-escaping="no" select="atributoright"/>
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
	</xsl:template>
</xsl:stylesheet>
