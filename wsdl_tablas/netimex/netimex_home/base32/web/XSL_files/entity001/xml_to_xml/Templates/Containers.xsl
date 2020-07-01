<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="Containers">
		<xsl:for-each select="DocumentRoot/ContainerDetails">
			<xsl:copy>
				<xsl:copy-of select="containerIdentifier"/>
				<xsl:copy-of select="numberOfContainers"/>
				<xsl:copy-of select="seal"/>
				<xsl:copy-of select="NetWeight"/>
				<xsl:copy-of select="GrossWeight"/>
				<xsl:copy-of select="TareWeight"/>

				
			</xsl:copy>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
