<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="./Templates/Header.xsl"/>
	<xsl:include href="./Templates/GeneralInformation.xsl"/>
	<xsl:include href="./Templates/Party.xsl"/>
	<xsl:include href="./Templates/RoutingSummary.xsl"/>
	<xsl:include href="./Templates/TransactionInformation.xsl"/>
	<xsl:include href="./Templates/Commodity.xsl"/>
	<xsl:include href="./Templates/TotalWeightsAndMeasures.xsl"/>
	<xsl:include href="./Templates/AdditionalInformation.xsl"/>
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">
		<xsl:element name="ExportDeclaration">
			<xsl:call-template name="Header">
				<xsl:with-param name="documentID">830</xsl:with-param>
				<xsl:with-param name="status">Draft</xsl:with-param>
			</xsl:call-template>
			<xsl:element name="Body">
				<xsl:call-template name="GeneralInformation">
					<xsl:with-param name="isLocation">yes</xsl:with-param>
					<xsl:with-param name="isCountryFunction">no</xsl:with-param>
					<xsl:with-param name="isCustomsProcedure">no</xsl:with-param>
				</xsl:call-template>
				<!-- References-->
				<xsl:call-template name="Party"/>
				<xsl:call-template name="RoutingSummary">
					<xsl:with-param name="isMeansOfTransport">yes</xsl:with-param>
					<xsl:with-param name="isLocations">yes</xsl:with-param>
					<xsl:with-param name="location">ToLocation</xsl:with-param>
				</xsl:call-template>
				<xsl:call-template name="TransactionInformation"/>
				<xsl:element name="ConsignmentDetail">
					<xsl:call-template name="Commodity">
						<xsl:with-param name="isTariffQuantity">yes</xsl:with-param>
						<xsl:with-param name="isCommodityCode">yes</xsl:with-param>
						<xsl:with-param name="isVolume">yes</xsl:with-param>
						<xsl:with-param name="isGrossWeight">yes</xsl:with-param>
						<xsl:with-param name="isCommodityDimensions">yes</xsl:with-param>
						<xsl:with-param name="isCommodityCharacteristics">yes</xsl:with-param>
					</xsl:call-template>
				</xsl:element>
				<xsl:element name="AdditionalInformation">
					<xsl:call-template name="AdditionalInformation">
						<xsl:with-param name="line_id">830</xsl:with-param>
					</xsl:call-template>
				</xsl:element>
			</xsl:element>
			<!-- Body-->
		</xsl:element>
		<!-- ExportDeclaration-->
	</xsl:template>
</xsl:stylesheet>
