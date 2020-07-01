<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="ISO-8859-1" indent="yes"/>

	<xsl:template match="dateValue">
		<xsl:choose>
			<xsl:when test="translate(.,'1234567890','9999999999')='9999-99-99'">
				<xsl:copy>
					<xsl:apply-templates select="@*|node()"/>
				</xsl:copy>
			</xsl:when>
			<xsl:otherwise>
				<br/>
					<xsl:text>!!! Invalid Date Format</xsl:text>
					<xsl:text> (</xsl:text>
					<xsl:value-of select="."/>
					<xsl:text>) !!!</xsl:text>
				<br/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="*"> 
		<xsl:variable name="CurrentTag"><xsl:value-of select="."/></xsl:variable>
		<xsl:variable name="CurrentTagName"><xsl:value-of select="name(.)"/></xsl:variable>
		<xsl:variable name="CodesDocuments"
					select="document('..\Code Lists\SurecompCodesDocuments.xml')" />
		<!-- Find the name of the Table containing the Code and Name -->
		<xsl:variable name="DocDesc">
			<xsl:for-each select="$CodesDocuments//*[code = $CurrentTagName]">
				<xsl:value-of select="name"/>
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="DocDescFull">
			<xsl:text>..\Code Lists\</xsl:text><xsl:value-of select="$DocDesc"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="string-length($DocDesc) &gt; 1">
				<!-- $CurrentTagName was found in $DocDesc - need to validate it -->
				<xsl:variable name="Desc">
					<xsl:for-each select="document($DocDescFull)//*[code = $CurrentTag]">
						<xsl:value-of select="name"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:choose>
					<!-- $CurrentTag was found, continue output -->
					<xsl:when test="string-length($Desc) &gt; 1">
						<xsl:copy>
							<xsl:apply-templates select="@*|node()"/>
						</xsl:copy>
					</xsl:when>
					<!-- $CurrentTag was not found, produce error message -->
					<xsl:otherwise>
						<br/>
						<xsl:text>!!! Undefined </xsl:text>
						<xsl:value-of select="$CurrentTagName"/>
						<xsl:text> (</xsl:text>
						<xsl:value-of select="$CurrentTag"/>
						<xsl:text>) !!!</xsl:text>
						<br/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:copy>
					<xsl:apply-templates select="@*|node()"/>
				</xsl:copy>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>