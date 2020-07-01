<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template
		match="DocumentaryCreditMonetaryAmount|
				MonetaryAmount|
				DocumentaryCreditAmountLimits| 
				AdditionalAmountsCovered| 
				ShipmentPeriod| 
				ShipmentPeriodTime| 
				AdditionalAmounts|
				MultiCurrency|
				PercentageAmountTolerance"> 
		<xsl:apply-templates/> 
	</xsl:template>

	<xsl:template
		match="ShipmentPeriodInformation| 
				MixedPaymentInformation| 
				DeferredPaymentInformation
				">
		<xsl:for-each select="./*">
			<xsl:value-of select="."/><br/>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="DocumentaryCreditDetails"> 
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr><td>
				<xsl:call-template name="generalMultiLineBox">
					<xsl:with-param name="Title" 	select="'Basic Credit Terms'"/>
					<xsl:with-param name="Node"	select="./formOfDocumentaryCredit| 																./PartialShipment|
															./Transhipment| 
															./DateDetails| 
															./confirmationInstructions| 
 															./PresentationPeriod| 
 															./documentaryCreditAvailableBy"/>
				</xsl:call-template><br/>
			</td></tr>
			<tr><td>
				<xsl:call-template name="generalMultiLineBox">
					<xsl:with-param name="Title" 	select="'Documentary Credit Amount and Terms'"/>
					<xsl:with-param name="Node"	select="./DocumentaryCreditAmount/*"/>
				</xsl:call-template><br/>
			</td></tr>
			<tr><td>
				<xsl:call-template name="generalMultiLineBox">
					<xsl:with-param name="Title" 	select="'Shipment Period'"/>
					<xsl:with-param name="Node"	select="./ShipmentPeriod"/>
				</xsl:call-template><br/>
			</td></tr>
			<tr><td>
				<xsl:call-template name="generalMultiLineBox">
					<xsl:with-param name="Title" 	select="'Place for Presentation'"/>
					<xsl:with-param name="Node"	select="./PlaceForPresentation/*"/>
				</xsl:call-template><br/>
			</td></tr>
			<tr><td><xsl:apply-templates select="TermsOfDraft" /></td></tr>
			<tr><td><xsl:apply-templates select="MixedPaymentDetails" /></td></tr>
			<tr><td><xsl:apply-templates select="DeferredPaymentDetails" /></td></tr>
		</table>
	</xsl:template>

	<xsl:template match="DocumentaryCreditAmount"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Documentary Credit Amount and Terms'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="PercentageCreditAmountTolerance"> 
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr>
				<th align="left" width="{$TitleWidth}" nowrap="nowrap">
					<xsl:text>Vary Percent</xsl:text></th>
				<td align="left" width="{$TableWidth} - {$TitleWidth}">
				<xsl:if test="string-length(./plusPercent) = 0">
					<xsl:text>00</xsl:text>
				</xsl:if>
				<xsl:if test="string-length(./plusPercent) = 1">
					<xsl:text>0</xsl:text>
				</xsl:if>
				<xsl:value-of select="./plusPercent"></xsl:value-of>
				<xsl:text>/</xsl:text>
				<xsl:if test="string-length(./minusPercent) = 0">
					<xsl:text>00</xsl:text>
				</xsl:if>
				<xsl:if test="string-length(./minusPercent) = 1">
					<xsl:text>0</xsl:text>
				</xsl:if>
				<xsl:value-of select="./minusPercent"></xsl:value-of>
				</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template match="AdditionalAmountAndPurpose|AdditionalAmountInformation">
		<br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Additional Amount Covered'"/>
			<xsl:with-param name="Node"	select="./*"/>
			<xsl:with-param name="SubBox"	select="'Yes'"/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="TermsOfDraft">
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Terms Of Draft'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template><br/>
	</xsl:template>

	<xsl:template match="MixedPaymentDetails">
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Mixed Payment Details'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template><br/>
	</xsl:template>

	<xsl:template match="DeferredPaymentDetails">
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Deferred Payment Details'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template><br/>
	</xsl:template>

</xsl:stylesheet>