<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="./Templates/Header.xsl"/>
	<xsl:include href="./Templates/GeneralInformation.xsl"/>
	<xsl:include href="./Templates/Party.xsl"/>
	<xsl:include href="./Templates/AdditionalInformation.xsl"/>
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">
		<xsl:element name="CoverLetter">
			<xsl:call-template name="Header">
				<xsl:with-param name="documentID">200</xsl:with-param>
				<xsl:with-param name="status">Draft</xsl:with-param>
			</xsl:call-template>
			<xsl:element name="Body">
				<xsl:call-template name="GeneralInformation">
					<xsl:with-param name="isLocation">no</xsl:with-param>
					<xsl:with-param name="isCountryFunction">no</xsl:with-param>
				</xsl:call-template>
				<!-- References-->
				<xsl:call-template name="Party"/>
		
				<xsl:element name="AdditionalInformation">
					<xsl:call-template name="AdditionalInformation">
						<xsl:with-param name="line_id">200</xsl:with-param>
					</xsl:call-template>
				</xsl:element>

			
			</xsl:element>
			<!-- Body-->
		</xsl:element>
		<!-- CoverLetter-->
	</xsl:template>
</xsl:stylesheet>
