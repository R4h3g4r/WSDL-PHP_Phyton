<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cmp=" http://www.bolero.net/io/xmlns/header/1.0">

	<!-- THIS STYLESHEET IS USED FOR DISPLAY OF DOCUMENTS 475 476 477 480 481 482 -->

	<xsl:include href="StyleFormatting.xslt"/>
	<xsl:include href="StyleCmpHeader.xslt"/>
	<xsl:include href="StyleGeneral.xslt"/>
	<xsl:include href="StyleGeneralInformation.xslt"/>
	<xsl:include href="StyleReferences.xslt"/>
	<xsl:include href="StyleLocation.xslt"/>
	<xsl:include href="StyleParty.xslt"/>
	<xsl:include href="StyleTermsAndConditions.xslt"/>
	<xsl:include href="StylePresentation.xslt"/>
	<xsl:include href="StyleAdditionalInfo.xslt"/>
	
	<xsl:template match="DocumentaryCreditAdviceOfDiscrepancy|
						DocumentaryCreditAdviceOfDiscrepancyDischarge|
						DocumentaryCreditAdviceOfDiscrepancyRefusal|
						ExportersDocumentaryCreditPresentationInstruction|
						PayingBanksDocumentaryCreditPresentationInstruction|
						IssuingBanksDocumentaryCreditPresentationInstruction">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="Body">
		<xsl:call-template name="links"/>
		<xsl:call-template name="body"/>
		<xsl:call-template name="links"/>
	</xsl:template>
		
	<xsl:template name="body">
		<table border="0" width="{$TableWidth * 2 + 30}" cellpadding="0" cellspacing="0">
			<tr align="left" valign="top">
				<td width="10" bgcolor="{$BgColor}"></td>
				<td align="left" bgcolor="{$BgColor}">
					<table border="0" width="{$TableWidth}" cellpadding="0" cellspacing="0">
						<xsl:for-each select="./*[not (name() = 'Party')]">
							<xsl:call-template name="individualelement" />
						</xsl:for-each>
					</table>
				</td>
				<td width="10" bgcolor="{$BgColor}"></td>
				<td align="left" bgcolor="{$BgColor}">
					<table border="0" width="{$TableWidth}" cellpadding="0" cellspacing="0">
						<xsl:for-each select="Party">
							<tr valign="top">
								<td><a name="Party"><xsl:apply-templates select="."/></a></td>
							</tr>
						</xsl:for-each>
					</table>
				</td>
				<td width="10" bgcolor="{$BgColor}"></td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template name="individualelement">
		<xsl:variable name="Title">
			<xsl:call-template name="CamelStrToSentence">
				<xsl:with-param name="Str" 	select="name()"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="Color">
			<xsl:call-template name="DetermineBgColor">
				<xsl:with-param name="ID" 	select="name()"/>
			</xsl:call-template>
		</xsl:variable>
		<tr valign="top" bgcolor="{$Color}">
			<td>
				<xsl:if test="position() > 0"> <!-- NEED TO FIX POS=1 -->
					<a name="{name()}">
						<font size="+3"><b><xsl:value-of select="$Title" /></b></font>
					</a>
				</xsl:if>
			</td>
		</tr>
		<tr valign="top" bgcolor="{$BgColor}">
			<td>
				<xsl:apply-templates select="."/>
				<br></br>
			</td>
		</tr>
	</xsl:template>

	<xsl:template name="links">
		<table border="0" bgcolor="{$LinksColor}" width="{$TableWidth * 2 + 30}">
			<tr><td><br/></td></tr>
			<tr align="center">
				<td>
					<xsl:for-each select="./*"><xsl:call-template name="link" /></xsl:for-each>
				</td>
			</tr>
			<tr><td><br/></td></tr>
		</table>
	</xsl:template>

	<xsl:template name="link">
		<xsl:variable name="Title">
			<xsl:call-template name="CamelStrToSentence">
				<xsl:with-param name="Str" 	select="name()"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:element name="a">
			<xsl:attribute name="href">#<xsl:value-of select="name()" /></xsl:attribute>
			<xsl:value-of select="$Title" />
		</xsl:element>
	</xsl:template>
	
</xsl:stylesheet>