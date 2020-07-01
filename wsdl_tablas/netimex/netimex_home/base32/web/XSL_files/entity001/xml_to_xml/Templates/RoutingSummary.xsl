<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="VoyageDetail.xsl"/>
	<xsl:include href="Location.xsl"/>
	<xsl:template name="RoutingSummary">
		<xsl:param name="isMeansOfTransport">yes</xsl:param>
		<xsl:param name="meansOfTransport">SeaTransportIdentification</xsl:param>
		<xsl:param name="isVesselElement">yes</xsl:param>
		<xsl:param name="isVesselIdentifier">yes</xsl:param>
		<xsl:param name="location">none</xsl:param>
		<xsl:param name="isVoyageDetail">yes</xsl:param>
		<xsl:param name="isLocationDetails">no</xsl:param>
		<xsl:element name="RoutingSummary">
			<xsl:if test="$isMeansOfTransport='yes'">
				<xsl:element name="MeansOfTransport">
					<xsl:if test="$meansOfTransport='SeaTransportIdentification'">
						<xsl:element name="SeaTransportIdentification">
							<xsl:choose>
								<xsl:when test="$isVesselElement='yes'">
									<xsl:element name="Vessel">
										<xsl:element name="vesselName">
											<xsl:value-of select="DocumentRoot/RoutingSummary/MeansOfTranspor/SeaTransportIdentification/Vessel/vesselName"/>
										</xsl:element>
										<xsl:if test="$isVesselIdentifier='yes'">
											<xsl:element name="vesselIdentifier">
												<xsl:value-of select="DocumentRoot/RoutingSummary/MeansOfTranspor/SeaTransportIdentification/Vessel/vesselIdentifier"/>
											</xsl:element>
										</xsl:if>
									</xsl:element>
								</xsl:when>
								<xsl:when test="$isVesselElement='no'">
									<xsl:element name="vesselName">
										<xsl:value-of select="DocumentRoot/RoutingSummary/MeansOfTranspor/SeaTransportIdentification/Vessel/vesselName"/>
									</xsl:element>
								</xsl:when>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="$isVoyageDetail='yes'">
									<xsl:call-template name="VoyageDetail"/>
								</xsl:when>
								<xsl:when test="$isVoyageDetail='no'">
									<xsl:copy-of select="DocumentRoot/RoutingSummary/MeansOfTranspor/SeaTransportIdentification/VoyageDetail/voyageNumber"/>
								</xsl:when>
							</xsl:choose>
							<xsl:if test="$isLocationDetails='yes'">
								<xsl:element name="LocationDetails">
									<xsl:call-template name="Location">
										<xsl:with-param name="location">
											<xsl:value-of select="$location"/>
										</xsl:with-param>
									</xsl:call-template>
								</xsl:element>
							</xsl:if>
						</xsl:element>
					</xsl:if>
				</xsl:element>
			</xsl:if>
			<xsl:if test="$isLocationDetails='no'">
				<xsl:call-template name="Location">
					<xsl:with-param name="location">
						<xsl:value-of select="$location"/>
					</xsl:with-param>
				</xsl:call-template>
			</xsl:if>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
