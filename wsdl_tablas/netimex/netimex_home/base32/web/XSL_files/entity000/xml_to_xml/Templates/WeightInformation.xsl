<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cmp=" http://www.bolero.net/io/xmlns/header/1.0">
<!-- ! not completed -->
	<xsl:template name="WeightInformation">
		<xsl:param name="lineItemNumber">0</xsl:param>
		<xsl:param name="package">Containerized</xsl:param>
		<xsl:element name="WeightInformation">
			<xsl:element name="ProductForm">
				<xsl:if test="$package='Containerized'">
					<xsl:element name="Containerized">
						<xsl:element name="ActualWeights">
							<xsl:element name="WeightSummary">
								<xsl:for-each select="DocumentRoot/LineItemDetails/LineItem/Product/NetWeight">
									<xsl:if test="DocumentRoot/LineItemDetails/LineItem/lineItemNumber/text()=$lineItemNumber">
										<xsl:element name="TotalNetWeight">
											<xsl:element name="value">
												<xsl:value-of select=".//value"/>
											</xsl:element>
											<xsl:element name="weightUnitCode">
												<xsl:value-of select=".//weightUnitCode"/>
											</xsl:element>
										</xsl:element>
									</xsl:if>
								</xsl:for-each>
								<xsl:for-each select="DocumentRoot/LineItemDetails/LineItem/Product/GrossWeight">
									<xsl:if test="DocumentRoot/LineItemDetails/LineItem/lineItemNumber/text()=$lineItemNumber">
										<xsl:element name="TotalGrossWeight">
											<xsl:element name="value">
												<xsl:value-of select=".//value"/>
											</xsl:element>
											<xsl:element name="weightUnitCode">
												<xsl:value-of select=".//weightUnitCode"/>
											</xsl:element>
										</xsl:element>
									</xsl:if>
								</xsl:for-each>
							</xsl:element>
						</xsl:element>
					</xsl:element>
				</xsl:if>
				<xsl:if test="$package='Bulk'">
			</xsl:if>
			</xsl:element>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
