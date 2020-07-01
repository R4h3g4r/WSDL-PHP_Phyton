<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="./Templates/Header.xsl"/>
	<xsl:include href="./Templates/Internals.xsl"/>
	<xsl:include href="./Templates/GeneralInformation.xsl"/>
	<xsl:include href="./Templates/TermsAndConditions.xsl"/>
	<xsl:include href="./Templates/PaymentTerms.xsl"/>
	<xsl:include href="./Templates/Party.xsl"/>
	<xsl:include href="./Templates/RoutingSummary.xsl"/>
	<xsl:include href="./Templates/Goods.xsl"/>
	<xsl:include href="./Templates/LineItemDetails.xsl"/>
	<xsl:include href="./Templates/Totals.xsl"/>
	<xsl:include href="./Templates/TotalWeightsAndMeasures.xsl"/>
	<xsl:include href="./Templates/Charges.xsl"/>
	<xsl:include href="./Templates/AdditionalInformation.xsl"/>
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">
		<xsl:element name="CommercialInvoice">
			<xsl:call-template name="Header">
				<xsl:with-param name="documentID">380</xsl:with-param>
				<xsl:with-param name="status">Draft</xsl:with-param>
			</xsl:call-template>
			<xsl:element name="Body">
		
				<xsl:call-template name="GeneralInformation">
					<xsl:with-param name="isLocation">yes</xsl:with-param>
					<xsl:with-param name="isCountryFunction">yes</xsl:with-param>
				</xsl:call-template>
				<!-- References-->
				<xsl:call-template name="TermsAndConditions">
				</xsl:call-template>
				<xsl:call-template name="PaymentTerms">
				</xsl:call-template>
			
				<xsl:call-template name="Party"/>
				<xsl:call-template name="RoutingSummary">
					<xsl:with-param name="isMeansOfTransport">yes</xsl:with-param>
					<xsl:with-param name="isLocations">yes</xsl:with-param>
					<xsl:with-param name="location">ToLocation</xsl:with-param>
				</xsl:call-template>
			
				<xsl:call-template name="Goods"/>
	                    
		
				<xsl:call-template name="LineItemDetails">
					<xsl:with-param name="isPackageAndWeightDetail">yes</xsl:with-param>
				</xsl:call-template>
				<xsl:call-template name="Totals"/>
				<xsl:call-template name="TotalWeightsAndMeasures"/>
				<xsl:call-template name="Charges"/>
				<xsl:element name="AdditionalInformation">
					<xsl:call-template name="AdditionalInformation">
						<xsl:with-param name="line_id">380</xsl:with-param>
					</xsl:call-template>
				</xsl:element>
			</xsl:element>
			<!-- Body-->
		</xsl:element>
		<!-- CommercialInvoice-->
	</xsl:template>
</xsl:stylesheet>
