<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="Location">
		<xsl:param name="location">none</xsl:param>
		<xsl:if test="$location='ToLocation'">
			<xsl:for-each select="DocumentRoot/RoutingSummary/Location">
				<!-- here locationQualifier/text() contains the codes of -->
				<!-- destination ('to') locations from Bolero definitions file locationfunction.xml-->
				<xsl:if test="locationQualifier/text()='7'">
					<xsl:copy-of select="."/>
				</xsl:if>
				<xsl:if test="locationQualifier/text()='8'">
					<xsl:copy-of select="."/>
				</xsl:if>
				<xsl:if test="locationQualifier/text()='80'">
					<xsl:copy-of select="."/>
				</xsl:if>
				<xsl:if test="locationQualifier/text()='12'">
					<xsl:copy-of select="."/>
				</xsl:if>
				<xsl:if test="locationQualifier/text()='64'">
					<xsl:copy-of select="."/>
				</xsl:if>
				<xsl:if test="locationQualifier/text()='AA'">
					<xsl:copy-of select="."/>
				</xsl:if>
				<xsl:if test="locationQualifier/text()='148'">
					<xsl:copy-of select="."/>
				</xsl:if>
				<xsl:if test="locationQualifier/text()='4'">
					<xsl:copy-of select="."/>
				</xsl:if>
				<xsl:if test="locationQualifier/text()='88'">
					<xsl:copy-of select="."/>
				</xsl:if>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="$location='FromLocation'"/>
		<xsl:if test="$location='ForwardInstructions'">
			<xsl:for-each select="DocumentRoot/RoutingSummary/Location">
				<!-- here locationQualifier/text() contains the codes of -->
				<!-- destination ('to') locations from Bolero definitions file locationfunction.xml-->
				<xsl:if test="locationQualifier/text()='8'">
					<xsl:copy-of select="."/>
				</xsl:if>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
