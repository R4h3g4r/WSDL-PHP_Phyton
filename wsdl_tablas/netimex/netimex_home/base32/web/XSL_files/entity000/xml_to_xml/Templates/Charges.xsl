<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="Charges">
		<xsl:element name="Charges">
			<xsl:copy-of select="DocumentRoot/GeneralChargeDetail"/>
		
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>