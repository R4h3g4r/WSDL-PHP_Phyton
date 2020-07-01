<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="References"> 
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<xsl:variable name="ReferenceType">
				<xsl:choose>
					<xsl:when test="./otherQualifier">
						<xsl:value-of select="./otherQualifier"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:call-template name="generalDesc">
							<xsl:with-param name="ID" select="./referenceQualifier"/>
						</xsl:call-template>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<tr valign="top">
				<td>
					<xsl:call-template name="generalMultiLineBox">
						<xsl:with-param name="Title" 	select="$ReferenceType"/>
						<xsl:with-param name="Node"	select="./referenceValue|
																./documentVersion|
																./documentCreatorIdentifier|
																./DateDetails"/>
					</xsl:call-template>
				</td>
			</tr>
		</table>
	</xsl:template>

</xsl:stylesheet>