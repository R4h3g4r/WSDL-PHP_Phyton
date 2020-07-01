<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_firmas">
	
		<fo:block text-align="center"  padding-before="45pt" keep-with-previous.within-page="always">
				<xsl:choose>
					<xsl:when test=" (universo/identificacion/documento/tipo = 'PROPUESTA') or (universo/identificacion/documento/tipo = 'POLIZA') ">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(16)"/>
							<fo:table-column column-width="proportional-column-width(4)"/>
							<fo:table-column column-width="proportional-column-width(24)"/>
							<fo:table-column column-width="proportional-column-width(4)"/>
							<fo:table-column column-width="proportional-column-width(24)"/>
							<fo:table-column column-width="proportional-column-width(4)"/>
							<fo:table-column column-width="proportional-column-width(24)"/>
							<fo:table-body>
								<fo:table-row keep-with-next="always">
									<fo:table-cell text-align="center" display-align="center">
										<fo:block><xsl:value-of select="universo/identificacion/documento/fecha"/></fo:block>
									</fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center">
										<fo:block></fo:block>
									</fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center">
										<fo:block>
										<!--	<fo:external-graphic scaling="uniform" height="110pt" width="150pt"> -->
												<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
												<xsl:attribute name="src">url('<xsl:value-of select="$varRutaFirmas"/>/<xsl:value-of select="universo/identificacion/corredor/firma" />')</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center">
										<fo:block>
										<!--	<fo:external-graphic scaling="uniform" height="110pt" width="150pt"> -->
												<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
												<xsl:attribute name="src">url('<xsl:value-of select="$varRutaFirmas"/>/<xsl:value-of select="universo/identificacion/compania/firma" />')</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row keep-with-next="always">
									<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
										<fo:block><xsl:text>Fecha</xsl:text></fo:block>
									</fo:table-cell>
									<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
										<fo:block><xsl:text>Contratante</xsl:text></fo:block>
									</fo:table-cell>
									<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
										<fo:block>
											<xsl:text>Corredor</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
										<fo:block>
											<xsl:text>Compañia</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</xsl:when>
					
					<xsl:when test=" universo/identificacion/documento/tipo = 'COTIZACION' ">
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
										<fo:block><xsl:text>Fecha</xsl:text></fo:block>
									</fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
										<fo:block><xsl:text>Contratante</xsl:text></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</xsl:when>
				</xsl:choose>
		
		</fo:block>
	</xsl:template>

</xsl:stylesheet>
