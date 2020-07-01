<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="Commodity">
		<xsl:param name="isTariffQuantity">no</xsl:param>
		<xsl:param name="isCommodityCode">yes</xsl:param>
		<xsl:param name="isGrossWeight">yes</xsl:param>
		<xsl:param name="isVolume">yes</xsl:param>
		<xsl:param name="isCommodityDimensions">yes</xsl:param>
		<xsl:param name="isCommodityCharacteristics">yes</xsl:param>
		<xsl:for-each select="DocumentRoot/Commodity">
			<xsl:element name="Commodity">
				<xsl:element name="ContainerizedCommodity">
					<xsl:copy-of select="CommodityDescription"/>
					<xsl:if test="$isTariffQuantity='yes'">
						<xsl:copy-of select="TariffQuantity"/>
					</xsl:if>
					<xsl:if test="$isCommodityCode='yes'">
						<xsl:copy-of select="commodityCode"/>
					</xsl:if>
					<xsl:copy-of select="NetWeight"/>
					<xsl:if test="$isGrossWeight='yes'">
						<xsl:copy-of select="GrossWeight"/>
					</xsl:if>
					<xsl:if test="$isVolume='yes'">
						<xsl:copy-of select="NetVolume"/>
						<xsl:copy-of select="GrossVolume"/>
					</xsl:if>
					<xsl:if test="$isCommodityDimensions='yes'">
						<xsl:copy-of select="CommodityDimensions"/>
					</xsl:if>
					<xsl:if test="$isCommodityCharacteristics='yes'">
						<xsl:copy-of select="CommodityCharacteristics"/>
					</xsl:if>
					<xsl:copy-of select="PackageSummary"/>
				</xsl:element>
			</xsl:element>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
