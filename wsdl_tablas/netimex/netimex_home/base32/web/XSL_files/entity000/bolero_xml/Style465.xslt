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
	
	<xsl:template match="DocumentaryCredit|	Body|BoleroOrSWIFTFormat">
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
		<table border="0" bgcolor="{$TermsAndConditionsColor}" width="{$TableWidth * 2 + 25}">
			<tr valign="top">
				<td>
					<a name="TAC"><xsl:apply-templates select="./TermsAndConditions"/></a>
				</td>
				<td>
					<table border="0" cellspacing="0" width="{$TableWidth}">
						<tr valign="top">
							<td>
								<a name="RS"><xsl:apply-templates select="./RoutingSummary"/></a><br/>
							</td>
						</tr>
						<tr valign="top">
							<td>
								<a name="AI"><xsl:apply-templates select="./AdditionalInformation"/></a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<table border="0" bgcolor="{$DocumentaryCreditDetailsColor}" width="{$TableWidth * 2 + 25}">
			<tr>
				<td>
					<a name="DCD"><xsl:apply-templates select="./DocumentaryCreditDetails"/></a>
				</td>
			</tr>
		</table>
		<table border="0" bgcolor="{$GoodsColor}" cellspacing="0" width="{$TableWidth * 2 + 25}">
			<tr valign="top">
				<td>
					<table border="0" cellspacing="0" width="{$TableWidth}">
						<tr valign="top">
							<td>
								<a name="GDS"><xsl:apply-templates select="./Goods"/></a><br/>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table border="0" cellspacing="0" width="{$TableWidth}">
						<tr valign="top">
							<td>
								<a name="RFF"><xsl:apply-templates select="./RequirementsForFulfillment"/></a><br/>
							</td>
						</tr>
					</table>
				</td>
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
						<xsl:attribute name="href">#TAC</xsl:attribute>
						<xsl:text>Terms and Conditions</xsl:text>
					</xsl:element>
					<img src="{$SeparatorImage}" />
					<xsl:element name="a">
						<xsl:attribute name="href">#RS</xsl:attribute>
						<xsl:text>Routing Summary</xsl:text>
					</xsl:element>
					<img src="{$SeparatorImage}" />
					<xsl:element name="a">
						<xsl:attribute name="href">#AI</xsl:attribute>
						<xsl:text>Additional Information</xsl:text>
					</xsl:element>
				</td>
			</tr>
			<tr align="center">
				<td>
					<xsl:element name="a">
						<xsl:attribute name="href">#DCD</xsl:attribute>
						<xsl:text>Documentary Credit Details</xsl:text>
					</xsl:element>
					<img src="{$SeparatorImage}" />
					<xsl:element name="a">
						<xsl:attribute name="href">#GDS</xsl:attribute>
						<xsl:text>Goods</xsl:text>
					</xsl:element>
					<img src="{$SeparatorImage}" />
					<xsl:element name="a">
						<xsl:attribute name="href">#RFF</xsl:attribute>
						<xsl:text>Requirements for Fulfillment</xsl:text>
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