<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="Product.xsl"/>
	<xsl:template name="LineItemDetails">
		<xsl:param name="isPackageAndWeightDetail">no</xsl:param>
		<xsl:element name="LineItemDetails">
			<xsl:for-each select="DocumentRoot/LineItemDetails/LineItem">
				<xsl:element name="LineItem">
					<xsl:copy-of select=".//lineItemNumber"/>
					<xsl:copy-of select=".//UnitPrice"/>
					<xsl:copy-of select=".//LineItemQuantity"/>
					<xsl:call-template name="Product">
						<xsl:with-param name="isPackageAndWeightDetail"/>
					</xsl:call-template>
				</xsl:element>
			</xsl:for-each>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
