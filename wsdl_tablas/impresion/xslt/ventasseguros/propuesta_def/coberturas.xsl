<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_coberturas">
		<!-- si tiene mas de 0 universo/coberturas/cobertura  -->
		<xsl:if test="count(  universo/coberturas/cobertura  ) &gt; 0">
			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="{$varTablaAncho}">
					<fo:table-column/>
					<fo:table-header>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<xsl:text>COBERTURAS</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-header>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaLabelColor}" padding-left="5pt" padding-right="5pt">
								<xsl:for-each select="universo/coberturas/cobertura">
									<fo:block>
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
								</xsl:for-each>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
		
		<!-- si tiene mas de 0 universo/deducibles/deducibles  -->
		<xsl:if test="count(  universo/deducibles/deducibles  ) &gt; 0">
			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="{$varTablaAncho}">
					<fo:table-column/>
					<fo:table-header>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<xsl:text>DEDUCIBLE</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-header>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaLabelColor}" padding-left="5pt" padding-right="5pt">
								<xsl:for-each select="universo/deducibles">
									<fo:block white-space-collapse="false">
										<xsl:value-of disable-output-escaping="no" select="deducibles"/>
									</fo:block>
								</xsl:for-each>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if> 

		<!-- universo/plan/texto no es igual a vacio -->
		<xsl:if test="universo/plan/texto != '' ">
			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="{$varTablaAncho}">
					<fo:table-column/>
					<fo:table-header>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-header>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaLabelColor}" padding-left="5pt" padding-right="5pt">
								<fo:block white-space-collapse="false">
									<xsl:value-of disable-output-escaping="no" select="universo/plan/texto"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
		
		<!-- universo/plan/texto no es igual a vacio -->
		<xsl:if test=" universo/identificacion/compania/codigo != '99279000' ">
			<xsl:for-each select="universo/vigencia">
				<fo:block padding-before="{$varEspacioExtreSecciones}">
					<fo:table table-layout="fixed" width="{$varTablaAncho}">
						<fo:table-column column-width="proportional-column-width(24)"/>
						<fo:table-column column-width="proportional-column-width(76)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
									<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
										<xsl:text>Vigencia del seguro</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaLabelColor}" padding-left="5pt" padding-right="5pt">
									<fo:block>
										Desde <xsl:value-of select="hora"/> del dia <xsl:value-of select="fecha"/>.    Hasta las <xsl:value-of select="horafin"/> del dia <xsl:value-of select="fechafin"/>.
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
