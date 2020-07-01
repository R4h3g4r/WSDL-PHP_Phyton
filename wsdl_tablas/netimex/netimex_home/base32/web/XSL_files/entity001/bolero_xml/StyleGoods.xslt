<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="Goods"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Goods Description'"/>
			<xsl:with-param name="Node"	select="./GoodsDescription"/>
		</xsl:call-template><br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Marks and Numbers'"/>
			<xsl:with-param name="Node"	select="./marksAndNumbers"/>
		</xsl:call-template><br/>
	</xsl:template>
	
	<xsl:template match="GoodsDescription">
		<xsl:for-each select="./*">
			<xsl:value-of select="."/><br/>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="marksAndNumbers">
		<xsl:value-of select="."/>
	</xsl:template>

</xsl:stylesheet>