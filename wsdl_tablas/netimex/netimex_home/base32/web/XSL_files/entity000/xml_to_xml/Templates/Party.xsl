<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="Party">
		<xsl:for-each select="DocumentRoot/Party">
			<xsl:copy>
				<xsl:copy-of select="partyQualifier"/>
				<xsl:copy-of select="organizationName"/>
				<xsl:copy-of select="TransactionReference"/>
				<xsl:element name="AddressInformation">
					<xsl:element name="FullAddress">
						<xsl:copy-of select="AddressInformation/line"/>
					</xsl:element>
				</xsl:element>
				<xsl:copy-of select="ContactDetails"/>
			</xsl:copy>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
