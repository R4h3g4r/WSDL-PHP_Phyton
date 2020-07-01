<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="Location">
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr align="left" valign="top">
				<th align="left" width="{$TitleWidth}" nowrap="nowrap">
					<xsl:apply-templates select="locationQualifier" />
				</th>
				<td align="left" width="{$TableWidth - $TitleWidth}">
					<xsl:apply-templates select="LocationCodeOrName" />
				</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template match="CountryFunction">
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr align="left" valign="top">
				<th align="left" width="{$TitleWidth}" nowrap="nowrap">
					<xsl:apply-templates select="countryQualifier" />
				</th>
				<td align="left" width="{$TableWidth - $TitleWidth}">
					<xsl:apply-templates select="CountryCodeOrName" />
				</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template match="LocationCodeOrName|CountryCodeOrName">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="locationName|countryName|stateOrProvinceName">
		<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="locationQualifier|
						countryQualifier|
						countryCode|
						locationCode|
						stateOrProvinceCode">
		<xsl:call-template name="generalDesc"><xsl:with-param name="ID" select="."/></xsl:call-template>
	</xsl:template>

</xsl:stylesheet>