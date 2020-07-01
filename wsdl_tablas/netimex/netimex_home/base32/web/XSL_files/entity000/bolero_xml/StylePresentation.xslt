<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template
		match="DiscrepancyInformation|DocumentInformation|PresentationOfDocuments"> 
		<xsl:apply-templates/> 
	</xsl:template>

	<xsl:template match="DiscrepancyInformation"> 
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<xsl:for-each select="./*">
				<tr valign="top">
					<td>
						<xsl:variable name="Title">
							<xsl:call-template name="CamelStrToSentence">
								<xsl:with-param name="Str" 	select="name()"/>
							</xsl:call-template>
						</xsl:variable>
						<xsl:call-template name="generalMultiLineBox">
							<xsl:with-param name="Title" 	select="$Title"/>
							<xsl:with-param name="Node"	select="./*"/>
						</xsl:call-template><br/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>

	<xsl:template match="InstructionsForDocuments"> 
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="OtherPaymentInstructions">
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Other Payment Instructions'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template><br/>
	</xsl:template>

	<xsl:template match="bankAccountNumber">
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Bank Account Number'"/>
			<xsl:with-param name="Node"	select="."/>
		</xsl:call-template><br/>
	</xsl:template>

	<xsl:template match="PaymentMethodInstructions">
		<xsl:variable name="Title">
			<xsl:call-template name="CamelStrToSentence">
				<xsl:with-param name="Str" 	select="name(./*)"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="$Title"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template><br/>
	</xsl:template>

	<xsl:template match="ReimbursementAdvice"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Reimbursement Advice'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="DebitAuthorityInformation"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Debit Authority Information'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="PresentationOfDocuments"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Document Presented'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template><br/>
	</xsl:template>

	<xsl:template match="DiscrepancyInstructions"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Discrepancy Instructions'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template><br/>
	</xsl:template>

	<xsl:template
		match="*[contains(name(),'DiscrepancyCode')]|
				documentsIncluded|
				paymentAtSight|
				deferredPayments|
				debitInformation">
		<xsl:call-template name="generalDesc"><xsl:with-param name="ID" select="."/></xsl:call-template>
	</xsl:template>
	
</xsl:stylesheet>