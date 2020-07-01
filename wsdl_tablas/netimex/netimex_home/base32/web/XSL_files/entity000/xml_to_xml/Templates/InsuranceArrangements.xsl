<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="InsuranceArrangements">
		<xsl:element name="InsuranceArrangements">
			<xsl:for-each select="DocumentRoot/Party/partyQualifier">
				<!-- here /partyQualifier/text() contains the codes corresponding to -->
				<!-- the codes from Bolero definitions file partyfunction.xml-->
				<xsl:if test="text()='IN'">
					<xsl:element name="partyArrangingInsurance">
						<xsl:value-of select="DocumentRoot/Party/organizationName"/>
					</xsl:element>
				</xsl:if>
			</xsl:for-each>
			<xsl:element name="partyArrangingInsurance"/>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
