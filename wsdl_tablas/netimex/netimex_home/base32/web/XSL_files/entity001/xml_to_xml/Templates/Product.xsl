<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="Product">
		<xsl:param name="isPackageAndWeightDetail">no</xsl:param>
		<xsl:element name="Product">
			<xsl:copy-of select=".//productName"/>
			<xsl:copy-of select=".//ProductIdentifiers"/>
			<xsl:copy-of select=".//ProductCharacteristics"/>
			<xsl:choose>
				<xsl:when test="$isPackageAndWeightDetail='no'">
					<xsl:copy-of select=".//PackageCount"/>
					<xsl:copy-of select=".//marksAndNumbers"/>
					<xsl:copy-of select=".//NetWeight"/>
					<xsl:copy-of select=".//GrossWeight"/>
					<xsl:copy-of select=".//NetVolume"/>
					<xsl:copy-of select=".//GrossVolume"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:element name="PackageAndWeightDetail">
						<xsl:copy-of select=".//PackageCount"/>
						<xsl:copy-of select=".//NetWeight"/>
						<xsl:copy-of select=".//GrossWeight"/>
						<xsl:copy-of select=".//NetVolume"/>
						<xsl:copy-of select=".//GrossVolume"/>
						<xsl:copy-of select=".//marksAndNumbers"/>
					</xsl:element>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
