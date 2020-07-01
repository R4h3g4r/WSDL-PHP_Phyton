<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="VoyageDetail">
		<xsl:param name="isVoyageNumber">yes</xsl:param>
		<xsl:element name="VoyageDetail">
			<xsl:copy>
				<xsl:copy-of select="DocumentRoot/RoutingSummary/MeansOfTranspor/SeaTransportIdentification/VoyageDetail/voyageNumber"/>
				<xsl:copy-of select="DocumentRoot/RoutingSummary/DateDetails"/>
			</xsl:copy>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
