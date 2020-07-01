<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="proyeccion" name="temp_proyeccion">
		<fo:block>
			<fo:table table-layout="fixed" width="{$varTablaAncho}">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row keep-with-next="always">
						<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
							<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
								<xsl:text>PRIMAS DE INVERSIÓN</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row keep-with-next="always">
						<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
							<fo:table table-layout="fixed" width="{$varTablaAncho}">
								<fo:table-column column-width="proportional-column-width(28)" background-color="{$varTablaColumnaLabelColor}"/>
								<fo:table-column column-width="proportional-column-width(7)" background-color="{$varTablaColumnaValorColor}"/>
								<fo:table-column column-width="proportional-column-width(28)" background-color="{$varTablaColumnaLabelColor}"/>
								<fo:table-column column-width="proportional-column-width(7)" background-color="{$varTablaColumnaValorColor}"/>
								<fo:table-column column-width="proportional-column-width(28)" background-color="{$varTablaColumnaLabelColor}"/>
								<fo:table-column column-width="proportional-column-width(7)" background-color="{$varTablaColumnaValorColor}"/>
								<fo:table-body>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt">
											<fo:block>
												<xsl:text>Prima Mínima Neta  </xsl:text>
												<xsl:value-of select="periodicidad"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt">
											<fo:block>
												<xsl:value-of disable-output-escaping="no" select="primaminima"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt">
											<fo:block>
												<xsl:text>Prima en Exceso Neta  </xsl:text>
												<xsl:value-of select="periodicidad"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt">
											<fo:block>
												<xsl:value-of disable-output-escaping="no" select="primaexceso"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt">
											<fo:block>
												<xsl:text>Prima </xsl:text>
												<xsl:value-of select="periodicidad"/>
												<xsl:text> Proyectada</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt">
											<fo:block>
												<xsl:value-of disable-output-escaping="no" select="primaproyectada"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt">
											<fo:block>
												<xsl:text>Monto Asegurado</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt">
											<fo:block>
												<xsl:value-of disable-output-escaping="no" select="montoasegurado"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt">
											<fo:block>
												<xsl:text>Tasa de Proyección</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt">
											<fo:block>
												<xsl:value-of disable-output-escaping="no" select="tasaproyeccion"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt">
											<fo:block>
												<xsl:text>Edad Límite (años)</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt">
											<fo:block>
												<xsl:value-of disable-output-escaping="no" select="edadlimite"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row keep-with-next="always">
						<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
							<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
								<xsl:text>Proyección</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row keep-with-next="always">
						<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaValorColor}">
							<fo:table table-layout="fixed" width="{$varTablaAncho}">
								<xsl:for-each select="tablaproyeccion/columna">
									<fo:table-column column-width="proportional-column-width(1)"/>
								</xsl:for-each>
								<fo:table-body>
									<fo:table-row>
										<xsl:for-each select="tablaproyeccion/columna">
											<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
												<fo:block>
													<xsl:call-template name="temp_proyeccion_columna"/>
												</fo:block>
											</fo:table-cell>
										</xsl:for-each>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template name="temp_proyeccion_columna">
		<fo:table table-layout="fixed" width="{$varTablaAncho}">
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-header  font-size="7pt">
				<fo:table-row background-color="{$varTablaTituloColor}" >
					<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
						<fo:block><xsl:text>Final del año</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
						<fo:block><xsl:text>Edad actuarial</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
						<fo:block><xsl:text>Prima proyectada</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
						<fo:block><xsl:text>Prima acumulada</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
						<fo:block><xsl:text>Valor póliza</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
						<fo:block><xsl:text>Valor rescate</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
						<fo:block><xsl:text>Protección fallecimiento</xsl:text></fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-header>
			<fo:table-body  font-size="10pt">
				<xsl:for-each select="datos/proyeccionDato">
					<fo:table-row>
						<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
							<fo:block><xsl:value-of select="anio"/></fo:block>
						</fo:table-cell>
						<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
							<fo:block><xsl:value-of select="edadactuarial"/></fo:block>
						</fo:table-cell>
						<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
							<fo:block><xsl:value-of select="primaproyectada"/></fo:block>
						</fo:table-cell>
						<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
							<fo:block><xsl:value-of select="primaacumulada"/></fo:block>
						</fo:table-cell>
						<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
							<fo:block><xsl:value-of select="valorpoliza"/></fo:block>
						</fo:table-cell>
						<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
							<fo:block><xsl:value-of select="valorrescate"/></fo:block>
						</fo:table-cell>
						<fo:table-cell display-align="center" text-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" padding="2pt">
							<fo:block><xsl:value-of select="proteccionfallecimiento"/></fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
	</xsl:template>
</xsl:stylesheet>
