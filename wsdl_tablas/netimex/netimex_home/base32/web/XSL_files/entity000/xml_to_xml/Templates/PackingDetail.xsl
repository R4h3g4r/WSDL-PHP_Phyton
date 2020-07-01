<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="PackingDetail">
		<xsl:element name="PackingDetail">
			<xsl:for-each select="DocumentRoot/Package">
				<xsl:copy>
					<xsl:copy-of select="PackageAndWeightDetail"/>
				</xsl:copy>
			</xsl:for-each>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
