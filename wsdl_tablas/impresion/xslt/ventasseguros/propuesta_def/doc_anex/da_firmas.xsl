<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_da_firmas">
		<xsl:if test="count(da-imagenes-firma/da-imagen)>0">
			<fo:block text-align="center"  padding-before="5pt" keep-with-previous.within-page="always">
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
							<fo:table-cell text-align="center" display-align="after">
							<!--	<fo:block height="110pt" width="150pt"> -->
								    <fo:block height="50pt" width="90pt">
									<fo:table table-layout="fixed" width="90%">
										<fo:table-column/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="center" display-align="center">
													<fo:block>
														<xsl:value-of select="../../identificacion/documento/fecha"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
													<fo:block>
														<xsl:text>Fecha</xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
							<fo:table-cell  text-align="center" display-align="center">
								<fo:block>
									<xsl:apply-templates select="da-imagenes-firma/da-imagen[posicion='IZQ']"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
							<fo:table-cell  text-align="center" display-align="center">
								<fo:block>
									<xsl:apply-templates select="da-imagenes-firma/da-imagen[posicion='CEN']"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
							<fo:table-cell  text-align="center" display-align="center">
								<fo:block>
									<xsl:apply-templates select="da-imagenes-firma/da-imagen[posicion='DER']"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
	</xsl:template>

	<xsl:template match="da-imagenes-firma/da-imagen">
		<fo:table table-layout="fixed" width="90%">
			<fo:table-column/>
			<fo:table-body>
				<fo:table-row keep-with-next="always">
					<fo:table-cell text-align="center" display-align="center">
						<fo:block>
						<!--<fo:external-graphic scaling="uniform" height="110pt" width="150pt"> -->
							<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
								<xsl:attribute name="src">url('<xsl:value-of select="$varRutaFirmas"/>/<xsl:value-of select="nombre" />')</xsl:attribute>
							</fo:external-graphic>
							</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next="always">
					<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
						<fo:block>
							<xsl:value-of select="texto"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


		
</xsl:stylesheet>
