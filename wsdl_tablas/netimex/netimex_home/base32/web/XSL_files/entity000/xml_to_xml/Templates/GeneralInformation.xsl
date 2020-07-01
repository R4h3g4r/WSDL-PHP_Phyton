<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="GeneralInformation">
		<xsl:param name="isCustomsProcedure">no</xsl:param>
		<xsl:param name="isLocation">yes</xsl:param>
		<xsl:param name="isCountryFunction">yes</xsl:param>
		<xsl:element name="GeneralInformation">
			<xsl:copy>
				<xsl:copy-of select="DocumentRoot/GeneralInformation/DateDetails"/>
				<xsl:if test="$isCustomsProcedure='yes'">
					<xsl:copy-of select="DocumentRoot/GeneralInformation/customsProcedure"/>
				</xsl:if>
				<xsl:if test="$isLocation='yes'">
					<xsl:copy-of select="DocumentRoot/GeneralInformation/Location"/>
				</xsl:if>
				<xsl:if test="$isCountryFunction='yes'">
					<xsl:copy-of select="DocumentRoot/GeneralInformation/CountryFunction"/>
				</xsl:if>
			</xsl:copy>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
