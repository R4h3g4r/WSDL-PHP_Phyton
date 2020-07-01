<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="./Templates/Header.xsl"/>
	<xsl:include href="./Templates/GeneralInformation.xsl"/>
	<xsl:include href="./Templates/Party.xsl"/>
	<xsl:include href="./Templates/RoutingSummary.xsl"/>
	<xsl:include href="./Templates/Containers.xsl"/>
	<xsl:include href="./Templates/Commodity.xsl"/>
	<xsl:include href="./Templates/Charges.xsl"/>
	<xsl:include href="./Templates/InsuranceArrangements.xsl"/>
	<xsl:include href="./Templates/AdditionalInformation.xsl"/>
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">
		<xsl:element name="ForwardingInstructions">
			<xsl:call-template name="Header">
				<xsl:with-param name="documentID">610</xsl:with-param>
				<xsl:with-param name="status">Draft</xsl:with-param>
			</xsl:call-template>
			<xsl:element name="Body">
				<xsl:call-template name="GeneralInformation">
					<xsl:with-param name="isLocation">yes</xsl:with-param>
					<xsl:with-param name="isCountryFunction">yes</xsl:with-param>
				</xsl:call-template>
				<!-- References-->
				<xsl:call-template name="Party"/>
				<xsl:copy-of select="DocumentRoot/TermsAndConditions"/>
				<xsl:call-template name="RoutingSummary">
					<xsl:with-param name="isMeansOfTransport">yes</xsl:with-param>
					<xsl:with-param name="isVesselElement">yes</xsl:with-param>
					<xsl:with-param name="isVoyageDetail">yes</xsl:with-param>
					<xsl:with-param name="isLocationDetails">yes</xsl:with-param>
					<xsl:with-param name="location">ForwardInstructions</xsl:with-param>
				</xsl:call-template>
				<xsl:element name="Consignment">
					<xsl:element name="ConsignmentDetail">
						<xsl:call-template name="Commodity"/>
					</xsl:element>
				</xsl:element>
				<xsl:call-template name="Containers"/>
				<xsl:call-template name="Charges"/>
				<xsl:element name="AdditionalInformation">
					<xsl:call-template name="AdditionalInformation">
						<xsl:with-param name="line_id">610</xsl:with-param>
					</xsl:call-template>
				</xsl:element>
			</xsl:element>
			<!-- Body-->
		</xsl:element>
		<!-- ForwardingInstructions-->
	</xsl:template>
</xsl:stylesheet>
