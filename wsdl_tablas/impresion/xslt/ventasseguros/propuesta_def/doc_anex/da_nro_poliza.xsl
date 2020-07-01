<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_da_nro_poliza">
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="{$varTablaAncho}">
				<fo:table-column column-width="proportional-column-width(1)"/>
				<fo:table-column column-width="proportional-column-width(3)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
							<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
								<xsl:text>Nro POLIZA</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaLabelColor}" padding-left="5pt" padding-right="5pt">
							<fo:block white-space-collapse="false">
								<xsl:value-of select="../../../../identificacion/documento/numeropoliza"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>
