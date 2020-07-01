<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="TotalWeightsAndMeasures">
		<xsl:for-each select="DocumentRoot/TotalWeightsAndMeasures">
			<xsl:element name="TotalWeightsAndMeasures">
				<xsl:copy-of select="NetWeight"/>
				<xsl:copy-of select="GrossWeight"/>
				<xsl:copy-of select="TareWeight"/>
				<xsl:copy-of select="NetVolume"/>
				<xsl:copy-of select="GrossVolume"/>
				<xsl:copy-of select="Dimensions"/>
				<xsl:copy-of select="TotalQuantity"/>
				<xsl:copy-of select="PackageCount"/>
				<xsl:copy-of select="PackageCount"/>
			</xsl:element>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
