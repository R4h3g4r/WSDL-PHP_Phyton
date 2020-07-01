<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_da_logos">
		<xsl:if test="count( da-imagenes-logo/da-imagen ) > 0">
			<fo:block >
				<fo:table table-layout="fixed" width="{$varTablaAncho}">
					<fo:table-column column-width="proportional-column-width(19)"/>
					<fo:table-column column-width="proportional-column-width(62)"/>
					<fo:table-column column-width="proportional-column-width(19)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="left">
									<xsl:for-each select="da-imagenes-logo/da-imagen[posicion='IZQ']">
										<fo:external-graphic scaling="uniform" height="69pt" width="174pt">
											<xsl:attribute name="src">url('<xsl:value-of select="$varRutaLogos"/>/<xsl:value-of select="nombre" />')</xsl:attribute>
										</fo:external-graphic>
									</xsl:for-each>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell display-align="center">
								<fo:block color="#CC0000" font-size="20pt" text-align="center" font-weight="bold">
									<!--xsl:value-of select="universo/identificacion/documento/advertenciatexto"/-->
									<xsl:for-each select="da-imagenes-logo/da-imagen[posicion='CEN']">
										<fo:external-graphic scaling="uniform" height="69pt" width="174pt">
											<xsl:attribute name="src">url('<xsl:value-of select="$varRutaLogos"/>/<xsl:value-of select="nombre" />')</xsl:attribute>
										</fo:external-graphic>
									</xsl:for-each>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="right">
									<xsl:for-each select="da-imagenes-logo/da-imagen[posicion='DER']">
										<fo:external-graphic scaling="uniform" height="69pt" width="174pt">
											<xsl:attribute name="src">url('<xsl:value-of select="$varRutaLogos"/>/<xsl:value-of select="nombre" />')</xsl:attribute>
										</fo:external-graphic>
									</xsl:for-each>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>
