<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cmp=" http://www.bolero.net/io/xmlns/header/1.0">
	<xsl:template name="Header">
		<xsl:param name="documentID">0</xsl:param>
		<xsl:param name="status">Draft</xsl:param>
		<xsl:element name="Header">
			<xsl:element name="cmp:DocumentID">
				<xsl:element name="cmp:RID"/>
				<xsl:element name="cmp:GeneralID">
					<xsl:copy>
						<xsl:for-each select="DocumentRoot">
							<xsl:for-each select="DocInfo">
								<xsl:for-each select="References">
									<xsl:if test="contains(referenceQualifier/text(), $documentID)">
										<xsl:for-each select="referenceValue">
											<xsl:apply-templates/>
										</xsl:for-each>
									</xsl:if>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
					</xsl:copy>
				</xsl:element>
			</xsl:element>
			<xsl:element name="cmp:DocType">
				<xsl:element name="cmp:DocTypeCode">
					<xsl:for-each select="DocumentRoot">
						<xsl:for-each select="DocInfo">
							<xsl:for-each select="References">
								<xsl:if test="contains(referenceQualifier/text(), $documentID)">
									<xsl:for-each select="referenceQualifier">
										<xsl:apply-templates/>
									</xsl:for-each>
								</xsl:if>
							</xsl:for-each>
						</xsl:for-each>
					</xsl:for-each>
				</xsl:element>
			</xsl:element>
			<xsl:element name="cmp:Status">
				<xsl:value-of select="$status"/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
