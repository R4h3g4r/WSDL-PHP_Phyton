<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cmp=" http://www.bolero.net/io/xmlns/header/1.0">

	<xsl:template match="Header">
		<xsl:element name="font">
			<xsl:attribute name="face">arial</xsl:attribute>
		</xsl:element>

		<table border="0" bgcolor="#F0F0F0" cellspacing="0" width="{$TableWidth * 2 + 30}">
           		<tr valign="top">
				<td><xsl:apply-templates select="./cmp:DocType"/></td>
				<td>
					<table border="0" cellspacing="0" width="{$TableWidth}">
			           		<tr valign="top">
							<td><xsl:apply-templates select="./cmp:DocumentID"/></td>
						</tr>
			           		<tr valign="top">
							<td><xsl:apply-templates select="./cmp:Status"/></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr><td><br/></td></tr>
		</table>
	</xsl:template>

	<xsl:template match="cmp:DocumentID"> 
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr>
				<th align="left" width="{$TitleWidth}" nowrap="nowrap"><xsl:text>Received From RID</xsl:text></th>
				<td align="left" width="{$TableWidth} - {$TitleWidth}"><xsl:value-of select="./cmp:RID"/></td>
			</tr>
			<tr>
				<th align="left" width="{$TitleWidth}" nowrap="nowrap"><xsl:text>General Document ID</xsl:text></th>
				<td align="left" width="{$TableWidth} - {$TitleWidth}"><xsl:value-of select="./cmp:GeneralID"/></td>
			</tr>
			<tr>
				<th align="left" width="{$TitleWidth}" nowrap="nowrap"><xsl:text>Document Version</xsl:text></th>
				<td align="left" width="{$TableWidth} - {$TitleWidth}"><xsl:value-of select="./cmp:Version"/></td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template match="cmp:DocType"> 
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr><td align="center"><img src="{$HeaderLogo}" /></td></tr>
			<tr>
				<td align="center" width="{$TableWidth} - {$TitleWidth}">
					<h1>
						<xsl:value-of select="./cmp:DocTypeDescription"/>
						<xsl:text> - </xsl:text>
						<xsl:value-of select="./cmp:DocTypeCode"/>
					</h1>
				</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template match="cmp:Status"> 
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr>
				<th align="left" width="{$TitleWidth}" nowrap="nowrap"><xsl:text>Status</xsl:text></th>
				<td align="left" width="{$TableWidth} - {$TitleWidth}"><xsl:value-of select="."/></td>
			</tr>
		</table>
	</xsl:template>

</xsl:stylesheet>