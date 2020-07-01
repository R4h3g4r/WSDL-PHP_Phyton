<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_endoso_firmas">
	
		<fo:block text-align="center"  padding-before="45pt" keep-with-previous.within-page="always">
			<fo:table table-layout="fixed"  width="50%">
				<fo:table-column column-width="proportional-column-width(45)"/>
				<fo:table-column column-width="proportional-column-width(10)"/>
				<fo:table-column column-width="proportional-column-width(45)"/>
				<fo:table-body>
					<fo:table-row keep-with-next="always">
						<fo:table-cell text-align="center" display-align="center">
							<fo:block><xsl:value-of select="universo/identificacion/documento/fecha"/></fo:block>
						</fo:table-cell>
						<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
						<fo:table-cell  text-align="center" display-align="center">
							<fo:block></fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row keep-with-next="always">
						<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
							<fo:block><xsl:text>Fecha Solicitud</xsl:text></fo:block>
						</fo:table-cell>
						<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
						<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
							<fo:block><xsl:text>Firma Contratante</xsl:text></fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

</xsl:stylesheet>
