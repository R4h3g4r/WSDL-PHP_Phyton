<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="./Templates/Header.xsl"/>
	<xsl:include href="./Templates/GeneralInformation.xsl"/>
	<xsl:include href="./Templates/References.xsl"/>
	<xsl:include href="./Templates/Party.xsl"/>
	<xsl:include href="./Templates/Goods.xsl"/>
	<xsl:include href="./Templates/AdditionalInformation.xsl"/>
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">
		<xsl:element name="BeneficiarysCertificate">
			<xsl:call-template name="Header">
				<xsl:with-param name="documentID">449</xsl:with-param>
				<xsl:with-param name="status">Draft</xsl:with-param>
			</xsl:call-template>
			<xsl:element name="Body">
				<xsl:call-template name="GeneralInformation">
					<xsl:with-param name="isLocation">yes</xsl:with-param>
					<xsl:with-param name="isCountryFunction">yes</xsl:with-param>
				</xsl:call-template>
				<xsl:call-template name="References"/>
				<xsl:call-template name="Party"/>
				<xsl:call-template name="Goods"/>
				<xsl:element name="AdditionalInformation">
					<xsl:call-template name="AdditionalInformation">
						<xsl:with-param name="line_id">449</xsl:with-param>
					</xsl:call-template>
				</xsl:element>
			</xsl:element>
			<!-- Body-->
		</xsl:element>
		<!-- BeneficiarysCertificate-->
	</xsl:template>
</xsl:stylesheet>
