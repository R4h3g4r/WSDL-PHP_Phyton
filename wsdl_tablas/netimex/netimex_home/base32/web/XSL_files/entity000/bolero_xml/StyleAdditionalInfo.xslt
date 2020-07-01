<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="AdditionalInformation"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Additional Information'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template>
	</xsl:template>

</xsl:stylesheet>