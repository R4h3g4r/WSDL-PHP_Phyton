<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head/>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="Party">
		<span style="background-color:silver; border-color:black; border-width:thin">
			<xsl:apply-templates/>
		</span>
	</xsl:template>
	<xsl:template match="partyQualifier">
		<xsl:apply-templates/>
	</xsl:template>
</xsl:stylesheet>
