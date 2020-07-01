<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="RoutingSummary"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Means of Transport'"/>
			<xsl:with-param name="Node"	select="./MeansOfTransport"/>
		</xsl:call-template><br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Shipment Routing'"/>
			<xsl:with-param name="Node"	select="./Location"/>
		</xsl:call-template><br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Country of Dispatch'"/>
			<xsl:with-param name="Node"	select="./CountryFunction"/>
		</xsl:call-template><br/>
	</xsl:template>

	<xsl:template match="MeansOfTransport|SeaTransportIdentification|Vessel|VoyageDetail|AirTransportDetails|FlightDetails|RailTransportIdentification|RoadTransportIdentification|CombinedTransportDetails">
		<xsl:apply-templates/>
	</xsl:template>

</xsl:stylesheet>