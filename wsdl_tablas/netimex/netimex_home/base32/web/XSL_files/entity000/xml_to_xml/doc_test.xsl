<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
  <xsl:template match="RoutingSummary">
    <xsl:copy>
      <xsl:apply-templates select="*"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="*[ancestor::RoutingSummary]">
    <xsl:copy>     
      <xsl:apply-templates select="node()"/>
    </xsl:copy>
  </xsl:template>
   <xsl:template match="SeaTransportIdentification" >
   <xsl:apply-templates/>
 </xsl:template>
	<xsl:template match="SeaTransportIdentification/Vessel">
	<xsl:copy>   
              	<xsl:value-of select="vesselName"/>	
              	    </xsl:copy>
       </xsl:template>
<!--xsl:template match="Vessel">
  <xsl:value-of select="vesselName"/>
</xsl:template-->
</xsl:stylesheet>
