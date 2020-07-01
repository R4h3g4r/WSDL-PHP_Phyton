<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template
		match="DocumentsRequired|
				DebitAuthority|
				ChargeAmount"> 
		<xsl:apply-templates/> 
	</xsl:template>

	<xsl:template
		match="	BankChargesInformation|
				AdditionalDebitInstructions">
		<xsl:for-each select="./*">
			<xsl:value-of select="."/><br/>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="RequirementsForFulfillment"> 
		<xsl:if test="./creditIssueTypeCode">
			<xsl:call-template name="generalMultiLineBox">
				<xsl:with-param name="Title" 	select="'Credit Issue Type'"/>
				<xsl:with-param name="Node"	select="./creditIssueTypeCode"/>
			</xsl:call-template><br/>
		</xsl:if>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Documents Required'"/>
			<xsl:with-param name="Node"	select="./DocumentsRequired"/>
		</xsl:call-template><br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Payment of Bank Charges'"/>
			<xsl:with-param name="Node"	select="./PaymentOfBankCharges"/>
		</xsl:call-template><br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Debit Authority'"/>
			<xsl:with-param name="Node"	select="./DebitAuthority"/>
		</xsl:call-template><br/>
		<xsl:apply-templates select="./DebitAuthorityCharges"/>
		<xsl:apply-templates select="./ReimbursementInstructions"/>
	</xsl:template>

	<xsl:template match="DocumentTypeAndFormat">
		<xsl:variable name="Title">
			<xsl:call-template name="generalDesc">
				<xsl:with-param name="ID" select="documentName"/>
			</xsl:call-template>
			<i><xsl:text> (</xsl:text><xsl:value-of select="documentName"/><xsl:text>) </xsl:text></i>
		</xsl:variable>
		<br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="$Title"/>
			<xsl:with-param name="Node"	select="./*[not (name() = 'documentName')]"/>
			<xsl:with-param name="SubBox" select="'Yes'"/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="DocumentInformation">
		<table>
			<tr valign="top">
				<th width="10">
					<xsl:if test="position() = 1">
						<xsl:text>&gt;</xsl:text>
					</xsl:if>
				</th>
				<td><xsl:for-each select="./*"><xsl:value-of select="."/><br/></xsl:for-each></td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template match="PaymentOfBankCharges"> 
		<xsl:variable name="Title">
			<xsl:choose>
				<xsl:when test="./bankChargeType">
					<xsl:call-template name="generalDesc">
						<xsl:with-param name="ID" select="bankChargeType"/>
					</xsl:call-template>
					<i><xsl:text> (</xsl:text><xsl:value-of select="bankChargeType"/><xsl:text>) </xsl:text></i>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>Unspecified Types of Bank Charges</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="$Title"/>
			<xsl:with-param name="Node"	select="./*[not (name() = 'bankChargeType')]"/>
			<xsl:with-param name="SubBox" select="'Yes'" />
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="AdvisingBankCharges"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Advising Bank Charges'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template><br/>
	</xsl:template>

	<xsl:template match="TotalAdvisingBankCharges"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Total Advising Bank Charges'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template><br/>
	</xsl:template>

	<xsl:template match="RequestForPaymentOfBankCharges"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Bank Charges'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template><br/>
	</xsl:template>

	<xsl:template match="TotalBankCharges"> 
		<br/><xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Total Bank Charges'"/>
			<xsl:with-param name="Node"	select="./*"/>
			<xsl:with-param name="SubBox" select="'Yes'" />
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="bankChargeType"> 
		<xsl:call-template name="generalDescAsValue">
			<xsl:with-param name="ID" 			select="'Charge Type'"/>
			<xsl:with-param name="Value"		select="."/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="bankChargesPayableBy"> 
		<xsl:call-template name="generalDescAsValue">
			<xsl:with-param name="ID" 			select="'Payable By'"/>
			<xsl:with-param name="Value"		select="."/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="debitInstructions"> 
		<xsl:call-template name="generalDescAsValue">
			<xsl:with-param name="ID" 			select="'Debit Instructions'"/>
			<xsl:with-param name="Value"		select="."/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="bankChargesClaimMethod">
		<xsl:call-template name="generalDescAsValue">
			<xsl:with-param name="ID" 			select="'Claim Method'"/>
			<xsl:with-param name="Value"		select="."/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="creditIssueTypeCode">
		<xsl:call-template name="generalDesc"><xsl:with-param name="ID" select="."/></xsl:call-template>
	</xsl:template>

	<xsl:template match="DebitAuthorityCharges"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Debit Authority Charges'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template><br/>
	</xsl:template>

	<xsl:template match="ReimbursementInstructions"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Reimbursement Instructions'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template><br/>
	</xsl:template>

</xsl:stylesheet>