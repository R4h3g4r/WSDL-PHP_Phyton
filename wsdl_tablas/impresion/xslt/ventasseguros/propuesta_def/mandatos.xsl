<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="mandatos_pac.xsl"/>
	<xsl:import href="mandatos_pat.xsl"/>
	<xsl:import href="mandatos_planilla.xsl"/>

	<xsl:template match="mandato" name="temp_mandatos">
		<xsl:call-template name="temp_mandatos_logos"/>
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<xsl:choose>
				<xsl:when test=" tipo = 'PAC' ">
					<xsl:call-template name="temp_mandatos_pac"/>
				</xsl:when>
				<xsl:when test=" tipo = 'PAT' ">
					<xsl:call-template name="temp_mandatos_pat"/>
				</xsl:when>
				<xsl:when test=" tipo = 'PLANILLA' ">
					<xsl:call-template name="temp_mandatos_planilla"/>
				</xsl:when>
			</xsl:choose>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_mandatos_logos">
		<fo:block>
			<fo:table table-layout="fixed" width="{$varTablaAncho}">
				<fo:table-column column-width="proportional-column-width(19)"/>
				<fo:table-column column-width="proportional-column-width(62)"/>
				<fo:table-column column-width="proportional-column-width(19)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="69pt" width="174pt">
									<xsl:attribute name="src">url('<xsl:value-of select="$varRutaLogos"/>/<xsl:value-of select="../identificacion/compania/logo"/>')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell display-align="center">
							<fo:block>
								</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic scaling="uniform" height="69pt" width="174px">
									<xsl:attribute name="src">url('<xsl:value-of select="$varRutaLogos"/>/<xsl:value-of select="../identificacion/corredor/logo"/>')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
</xsl:stylesheet>
