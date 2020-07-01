<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="./Templates/Header.xsl"/>
	<xsl:include href="./Templates/GeneralInformation.xsl"/>
	<xsl:include href="./Templates/Party.xsl"/>
	<xsl:include href="./Templates/TermsAndConditions.xsl"/>
	<xsl:include href="./Templates/RoutingSummary.xsl"/>
	<xsl:include href="./Templates/Goods.xsl"/>
	<xsl:include href="./Templates/Commodity.xsl"/>
	<xsl:include href="./Templates/Containers.xsl"/>
	<xsl:include href="./Templates/PackingDetail.xsl"/>
	<xsl:include href="./Templates/Product.xsl"/>
	<xsl:include href="./Templates/TotalWeightsAndMeasures.xsl"/>
	<xsl:include href="./Templates/AdditionalInformation.xsl"/>
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">
		<xsl:element name="PackingList">
			<xsl:call-template name="Header">
				<xsl:with-param name="documentID">271</xsl:with-param>
				<xsl:with-param name="status">Draft</xsl:with-param>
			</xsl:call-template>
			<xsl:element name="Body">
				<xsl:call-template name="GeneralInformation">
					<xsl:with-param name="isLocation">yes</xsl:with-param>
					<xsl:with-param name="isCountryFunction">no</xsl:with-param>
				</xsl:call-template>
				<!-- References-->
				<xsl:call-template name="Party"/>
				<xsl:call-template name="TermsAndConditions"/>
				<xsl:call-template name="RoutingSummary"/>
				<xsl:call-template name="Goods"/>
				<xsl:call-template name="Commodity"/>
				<xsl:call-template name="Containers"/>
				<xsl:for-each select="DocumentRoot/LineItemDetails/LineItem/Product">
					<xsl:call-template name="Product">
						<xsl:with-param name="isPackageAndWeightDetail">yes</xsl:with-param>
					</xsl:call-template>
				</xsl:for-each>
				<xsl:call-template name="PackingDetail"/>
				<xsl:call-template name="TotalWeightsAndMeasures"/>
				<xsl:element name="AdditionalInformation">
					<xsl:call-template name="AdditionalInformation">
						<xsl:with-param name="line_id">271</xsl:with-param>
					</xsl:call-template>
				</xsl:element>
			</xsl:element>
			<!-- Body-->
		</xsl:element>
		<!-- PackingList-->
	</xsl:template>
</xsl:stylesheet>
