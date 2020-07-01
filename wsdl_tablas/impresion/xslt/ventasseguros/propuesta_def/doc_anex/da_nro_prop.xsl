<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_da_nro_prop">
		<fo:block>
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(1)"/>
				<fo:table-column column-width="proportional-column-width(8)"/>
				<fo:table-column column-width="proportional-column-width(1)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="right" padding="2.0pt">
							<fo:block font-weight="bold">
								NRO. 
								<xsl:choose>
									<xsl:when test=" ../../../../identificacion/documento/tipo = 'COTIZACION' ">COTIZACION </xsl:when>
									<xsl:when test=" ../../../../identificacion/documento/tipo = 'PROPUESTA' ">PROPUESTA </xsl:when>
									<xsl:when test=" ../../../../identificacion/documento/tipo = 'POLIZA' ">PROPUESTA </xsl:when>
								</xsl:choose>
								<xsl:value-of select="../../../../identificacion/documento/numeroseguro"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

</xsl:stylesheet>
