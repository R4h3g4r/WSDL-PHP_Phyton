<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_da_coberturas">
		<!-- si tiene mas de 0 ../../../../coberturas/cobertura  -->
		<xsl:if test="count(  ../../../../coberturas/cobertura  ) &gt; 0">
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
								<xsl:for-each select="../../../../coberturas/cobertura">
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
	</xsl:template>
</xsl:stylesheet>
