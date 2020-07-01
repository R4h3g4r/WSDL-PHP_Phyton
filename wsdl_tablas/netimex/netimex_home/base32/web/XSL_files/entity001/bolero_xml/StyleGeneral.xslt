<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="DateDetails">
		<xsl:call-template name="generalDescAsTitle">
			<xsl:with-param name="ID" 			select="dateQualifier"/>
			<xsl:with-param name="Value"		select="dateValue"/>
			<xsl:with-param name="OtherID" 	select="otherQualifier"/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="currencyCode"> 
		<xsl:call-template name="generalDescAsValue">
			<xsl:with-param name="ID" 			select="'Currency'"/>
			<xsl:with-param name="Value"		select="."/>
		</xsl:call-template>
	</xsl:template>

</xsl:stylesheet>