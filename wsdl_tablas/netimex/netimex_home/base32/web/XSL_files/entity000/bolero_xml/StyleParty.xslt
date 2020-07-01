<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="Party">
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Organization Identification'"/>
			<xsl:with-param name="Node"	select="./organizationName|./OrganizationIdentification"/>
		</xsl:call-template><br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Transaction Reference'"/>
			<xsl:with-param name="Node"	select="./TransactionReference"/>
		</xsl:call-template><br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Address'"/>
			<xsl:with-param name="Node"	select="./AddressInformation"/>
		</xsl:call-template><br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Contact Details'"/>
			<xsl:with-param name="Node"	select="./ContactDetails"/>
		</xsl:call-template><br/>
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr><td><br/></td></tr>
		</table>
	</xsl:template>

	<xsl:template match="OrganizationIdentification">
		<xsl:call-template name="generalDescAsTitle">
			<xsl:with-param name="ID" 			select="organizationIdentifierType"/>
			<xsl:with-param name="Value"		select="organizationIdentifier"/>
		</xsl:call-template>
		<xsl:apply-templates select="otherQualifier"/>
	</xsl:template>

	<xsl:template match="TransactionReference">
		<xsl:call-template name="generalDescAsTitle">
			<xsl:with-param name="ID" 			select="transactionReferenceType"/>
			<xsl:with-param name="Value"		select="transactionReferenceIdentifier"/>
		</xsl:call-template>
		<xsl:apply-templates select="otherQualifier"/>
	</xsl:template>

	<xsl:template match="AddressInformation|FullAddress|NormalisedAddress"> 
		<xsl:apply-templates/> 
	</xsl:template>

	<xsl:template match="City">
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr align="left" valign="top">
				<th align="left" width="{$TitleWidth}" nowrap="nowrap">
					<xsl:text>City</xsl:text>
				</th>
				<td align="left" width="{$TableWidth - $TitleWidth}">
					<xsl:apply-templates select="./*" />
				</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template match="StateOrProvince">
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr align="left" valign="top">
				<th align="left" width="{$TitleWidth}" nowrap="nowrap">
					<xsl:text>State or Province</xsl:text>
				</th>
				<td align="left" width="{$TableWidth - $TitleWidth}">
					<xsl:apply-templates select="./*" />
				</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template match="Country">
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr align="left" valign="top">
				<th align="left" width="{$TitleWidth}" nowrap="nowrap">
					<xsl:text>Country</xsl:text>
				</th>
				<td align="left" width="{$TableWidth - $TitleWidth}">
					<xsl:apply-templates select="./*" />
				</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template match="ContactDetails">
		<xsl:call-template name="generalDescAsTitle">
			<xsl:with-param name="ID" 			select="contactQualifier"/>
			<xsl:with-param name="Value"		select="contactValue"/>
			<xsl:with-param name="OtherID" 	select="otherQualifier"/>
		</xsl:call-template>
	</xsl:template>

</xsl:stylesheet>