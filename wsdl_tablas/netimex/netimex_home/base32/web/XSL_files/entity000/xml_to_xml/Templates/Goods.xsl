<?xml version="1.0" encoding="UTF-8"?>
<?xmlspysamplexml C:\WINNT\Profiles\sergej\Desktop\1.xml?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="Goods">
		<xsl:param name="goods_description_id">SYS04</xsl:param>
		<xsl:element name="Goods">
			<xsl:element name="GoodsDescription">
				<xsl:for-each select="DocumentRoot/AdditionalInformation/line">
					<xsl:if test="@text_id = $goods_description_id">
						<xsl:element name="line">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:if>
				</xsl:for-each>
				<xsl:element name="line"/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
