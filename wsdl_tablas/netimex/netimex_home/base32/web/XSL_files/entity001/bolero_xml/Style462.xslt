<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cmp=" http://www.bolero.net/io/xmlns/header/1.0">
	<xsl:include href="StyleFormatting.xslt"/>
	<xsl:include href="StyleCmpHeader.xslt"/>
	<xsl:include href="StyleGeneral.xslt"/>
	<xsl:include href="StyleGeneralInformation.xslt"/>
	<xsl:include href="StyleReferences.xslt"/>
	<xsl:include href="StyleLocation.xslt"/>
	<xsl:include href="StyleParty.xslt"/>
	<xsl:include href="StyleTermsAndConditions.xslt"/>
	<xsl:include href="StyleRoutingSummary.xslt"/>
	<xsl:include href="StyleDocCreditDetails.xslt"/>
	<xsl:include href="StyleGoods.xslt"/>
	<xsl:include href="StyleReqForFulfillment.xslt"/>
	<xsl:include href="StyleAdditionalInfo.xslt"/>
	
	<xsl:template match="DocumentaryCreditAcknowledgement|Body|BoleroOrSWIFTFormat">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="BoleroStructuredFormat">
		<xsl:call-template name="links"/>
		<table border="0" bgcolor="{$GeneralInformationColor}" width="{$TableWidth * 2 + 25}">
			<tr align="left" valign="top">
				<td align="left">
					<a name="GI"><xsl:apply-templates select="./GeneralInformation"/></a>
				</td>
				<td align="left">
					<a name="RFS"><xsl:apply-templates select="./References"/></a>
				</td>
			</tr>
		</table>
		<table border="0" bgcolor="{$PartiesColor}" width="{$TableWidth * 2 + 25}">
			<tr valign="top">
				<td>
					<a name="PTS">
						<xsl:for-each select="Party[position() mod 2 = 1]">
							<xsl:apply-templates select="."/>
						</xsl:for-each>
					</a>
				</td>
				<td>
					<xsl:for-each select="Party[position() mod 2 = 0]">
						<xsl:apply-templates select="."/>
					</xsl:for-each>
				</td>
			</tr>
		</table>
		<table border="0" bgcolor="{$DocumentaryCreditDetailsColor}" width="{$TableWidth * 2 + 25}">
			<tr valign="top">
				<td>
					<a name="DCD"><xsl:apply-templates select="DocumentaryCreditAmount"/></a>
				</td>
				<td>
					<table border="0" cellspacing="0" width="{$TableWidth}">
						<tr align="left"><td colspan="2"><H1><xsl:text>Advising Bank Charges</xsl:text></H1></td></tr>
						<tr><td>
							<a name="CHGS">
							<xsl:apply-templates select="AdvisingBankCharges|TotalAdvisingBankCharges"/></a>
						</td></tr>
					</table>
				</td>
			</tr>
		</table>
		<table border="0" bgcolor="{$GoodsColor}" cellspacing="0" width="{$TableWidth * 2 + 25}">
			<tr valign="top">
				<td>
					<table border="0" cellspacing="0" width="{$TableWidth}">
						<tr align="left"><td colspan="2"><H1><xsl:text>Documents Required</xsl:text></H1></td></tr>
						<tr valign="top">
							<td>
								<a name="DR">
									<xsl:call-template name="generalMultiLineBox">
										<xsl:with-param name="Title" 	select="'Documents Required'"/>
										<xsl:with-param name="Node"	select="./DocumentsRequired"/>
									</xsl:call-template><br/>
								</a><br/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<table border="0" bgcolor="{$TermsAndConditionsColor}" width="{$TableWidth * 2 + 25}">
			<tr valign="top">
				<td><a name="AI"><xsl:apply-templates select="AdditionalInformation"/></a></td>
			</tr>
		</table>
		<xsl:call-template name="links"/>
	</xsl:template>
	<xsl:template name="links">
		<table border="0" bgcolor="{$LinksColor}" width="{$TableWidth * 2 + 25}">
			<tr align="center">
				<td>
					<xsl:element name="a">
						<xsl:attribute name="href">#GI</xsl:attribute>
						<xsl:text>General Information</xsl:text>
					</xsl:element>
					<img src="{$SeparatorImage}" />
					<xsl:element name="a">
						<xsl:attribute name="href">#RFS</xsl:attribute>
						<xsl:text>References</xsl:text>
					</xsl:element>
					<img src="{$SeparatorImage}" />
					<xsl:element name="a">
						<xsl:attribute name="href">#PTS</xsl:attribute>
						<xsl:text>Parties</xsl:text>
					</xsl:element>
					<img src="{$SeparatorImage}" />
					<xsl:element name="a">
						<xsl:attribute name="href">#DCD</xsl:attribute>
						<xsl:text>Documentary Credit Amount</xsl:text>
					</xsl:element>
					<img src="{$SeparatorImage}" />
					<xsl:element name="a">
						<xsl:attribute name="href">#CHGS</xsl:attribute>
						<xsl:text>Charges</xsl:text>
					</xsl:element>
					<img src="{$SeparatorImage}" />
					<xsl:element name="a">
						<xsl:attribute name="href">#DR</xsl:attribute>
						<xsl:text>Documents Required</xsl:text>
					</xsl:element>
					<img src="{$SeparatorImage}" />
					<xsl:element name="a">
						<xsl:attribute name="href">#AI</xsl:attribute>
						<xsl:text>Additional Information</xsl:text>
					</xsl:element>
				</td>
			</tr>
			<tr>
				<td>
					<br/>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>