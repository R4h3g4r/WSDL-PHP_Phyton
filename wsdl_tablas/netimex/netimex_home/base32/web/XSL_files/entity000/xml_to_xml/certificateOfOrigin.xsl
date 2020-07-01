<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="./Templates/Header.xsl"/>
	<xsl:include href="./Templates/GeneralInformation.xsl"/>
	<xsl:include href="./Templates/Party.xsl"/>
	<xsl:include href="./Templates/RoutingSummary.xsl"/>
	<xsl:include href="./Templates/Commodity.xsl"/>
	<xsl:include href="./Templates/TotalWeightsAndMeasures.xsl"/>
	<xsl:include href="./Templates/AdditionalInformation.xsl"/>
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">
		<xsl:element name="CertificateOfOrigin">
			<xsl:call-template name="Header">
				<xsl:with-param name="documentID">861</xsl:with-param>
				<xsl:with-param name="status">Draft</xsl:with-param>
			</xsl:call-template>
			<xsl:element name="Body">
				<xsl:call-template name="GeneralInformation"/>
				<!-- References-->
				<xsl:call-template name="Party"/>
				<xsl:call-template name="RoutingSummary"/>
				<xsl:element name="Consignment">
					<xsl:element name="ConsignmentDetail">
						<xsl:call-template name="Commodity"/>
					</xsl:element>
					<xsl:call-template name="TotalWeightsAndMeasures"/>
				</xsl:element>
				<xsl:element name="AdditionalInformation">
					<xsl:call-template name="AdditionalInformation">
						<xsl:with-param name="line_id">861</xsl:with-param>
					</xsl:call-template>
				</xsl:element>
			</xsl:element>
			<!-- Body-->
		</xsl:element>
		<!-- CertificateOfOrigin -->
	</xsl:template>
</xsl:stylesheet>
