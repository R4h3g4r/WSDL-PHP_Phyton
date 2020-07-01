<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="TermsAndConditions"> 
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'Terms and Conditions'"/>
			<xsl:with-param name="Node"	select="./*"/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="GeneralTermsAndConditions">
		<br/>
		<xsl:call-template name="generalMultiLineBox">
			<xsl:with-param name="Title" 	select="'General Terms and Conditions'"/>
			<xsl:with-param name="Node"	select="./*"/>
			<xsl:with-param name="SubBox"	select="'Yes'"/>
		</xsl:call-template><br/>
	</xsl:template>
	
	<xsl:template match="Incoterms">
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr align="left" valign="top">
				<th align="left" width="{$TitleWidth}" nowrap="nowrap">
					<xsl:apply-templates select="incotermsCode" />
				</th>
				<td align="left" width="{$TableWidth - $TitleWidth}">
					<xsl:apply-templates select="LocationCodeOrName" />
				</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template match="incotermsCode">
		<xsl:call-template name="generalDesc"><xsl:with-param name="ID" select="."/></xsl:call-template>
	</xsl:template>

	<xsl:template match="AdditionalTermsAndConditions">
		<xsl:for-each select="./*">
			<xsl:value-of select="."/><br/>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="clause">
		<xsl:value-of select="."/><br/>
	</xsl:template>

</xsl:stylesheet>