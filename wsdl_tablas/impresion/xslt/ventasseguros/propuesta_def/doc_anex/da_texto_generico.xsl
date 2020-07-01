<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	
	<xsl:template name="temp_da_texto_generico">
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="{$varTablaAncho}">
				<fo:table-column/>
				<xsl:if test="cabecera != '' ">
					<fo:table-header>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<xsl:value-of select="cabecera"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-header>
				</xsl:if>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaLabelColor}" padding-left="5pt" padding-right="5pt">
							<fo:block white-space-collapse="false">
								<xsl:value-of disable-output-escaping="no" select="texto"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
</xsl:stylesheet>
