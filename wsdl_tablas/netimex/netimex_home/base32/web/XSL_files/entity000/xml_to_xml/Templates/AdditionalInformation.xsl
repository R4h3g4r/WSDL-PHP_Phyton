<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cmp=" http://www.bolero.net/io/xmlns/header/1.0">
	<xsl:template name="AdditionalInformation">
		<xsl:param name="line_id">0</xsl:param>
		<xsl:param name="isCoverLetter">no</xsl:param>
		<xsl:for-each select="DocumentRoot/AdditionalInformation/line">
			<xsl:if test="@id = $line_id">
				<xsl:choose>
					<xsl:when test="$isCoverLetter='no'">
						<xsl:element name="line">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:when>
					<xsl:otherwise>
						<xsl:if test="@text_id='cover'">
							<xsl:element name="line">
								<xsl:value-of select="."/>
							</xsl:element>
						</xsl:if>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>
		<xsl:element name="line"/>
	</xsl:template>
</xsl:stylesheet>
