<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="ISO-8859-1" indent="yes" />

	<xsl:variable name="TableWidth" select="365" />
	<xsl:variable name="TitleWidth" select="160" />
	<xsl:variable name="Lower" select="'abcdefghijklmnopqrstuvwxyz'"/>
	<xsl:variable name="Upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>

	<xsl:variable name="HeaderLogo"		select="'..\Images\Surecomp-logo.gif'"/>
	<xsl:variable name="SeparatorImage"	select="'..\Images\Surecomp-globe-mini.gif'"/>
	<xsl:variable name="SemanticsFile"		select="'..\Semantics.htm#'"/>

	<xsl:variable name="MainBoxBgColor" select="'gray'" />
	<xsl:variable name="MainBoxFontColor" select="'white'" />
	<xsl:variable name="SubBoxBgColor" select="'silver'" />
	<xsl:variable name="SubBoxFontColor" select="'black'" />

	<xsl:variable name="LinksColor" 						select="white" />
	<xsl:variable name="BgColor" 						select="white" />
	
	<xsl:template match="*">
		<xsl:variable name="Title">
			<xsl:call-template name="CamelStrToSentence">
				<xsl:with-param name="Str" 	select="name()"/>
			</xsl:call-template>
		</xsl:variable>
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr align="left" valign="top">
				<th align="left" width="{$TitleWidth}" nowrap="nowrap">
					<xsl:element name="a">
						<xsl:attribute name="href">
							<xsl:value-of select="$SemanticsFile" /><xsl:value-of select="$Title"/>							</xsl:attribute>
						<xsl:attribute name="target">_new</xsl:attribute>
						<xsl:value-of select="$Title"/>
					</xsl:element>
				</th>
				<td align="left" width="{$TableWidth - $TitleWidth}"><xsl:value-of select="."/></td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template match="line"> 
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr align="left" valign="top"><td align="left"><xsl:value-of select="."/></td></tr>
		</table>
	</xsl:template>

	<xsl:template name="CamelStrToSentence">
		<xsl:param name="Str" />
		<xsl:value-of select="translate(substring($Str,1,1),$Lower,$Upper)"/>
		<xsl:if test="string-length($Str) &gt; 1">
			<xsl:call-template name="StrToSentence">
				<xsl:with-param name="Str" select="substring($Str,2)"/>
				<xsl:with-param name="PrevCaps" select="'Yes'"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template name="StrToSentence">
		<xsl:param name="Str" />
		<xsl:param name="PrevCaps" />
		<xsl:variable name="Caps">
			<xsl:choose>
				<xsl:when test="substring($Str,1,1)=	translate(substring($Str,1,1),$Lower,$Upper)">
					Yes
				</xsl:when>
				<xsl:otherwise>No</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:if test="substring($Str,1,1)=translate(substring($Str,1,1),$Lower,$Upper)
		and $PrevCaps='No'">
			<xsl:text> </xsl:text>
		</xsl:if>
		<xsl:value-of select="substring($Str,1,1)"/>
		<xsl:if test="string-length($Str) &gt; 1">
			<xsl:call-template name="StrToSentence">
				<xsl:with-param name="Str" select="substring($Str,2)"/>
				<xsl:with-param name="PrevCaps" select="$Caps"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template name="DetermineBgColor">
		<xsl:param name="ID" />
		<xsl:variable name="CodesColors"
					select="document('..\Code Lists\SurecompCodesColors.xml')" />
		<!-- Find the name of the Table containing the Code and Name -->
		<xsl:variable name="ColorDesc">
			<xsl:for-each select="$CodesColors//*[code = $ID]">
				<xsl:value-of select="name"/>
			</xsl:for-each>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="string-length($ColorDesc) &gt; 1">
				<!-- These lines produce the description of the qualifier from $DocDesc -->
				<xsl:value-of select="$ColorDesc"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>white</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="generalDesc">
		<xsl:param name="ID" />
		<xsl:variable name="CodesDocuments"
					select="document('..\Code Lists\SurecompCodesDocuments.xml')" />
		<!-- Find the name of the Table containing the Code and Name -->
		<xsl:variable name="DocDesc">
			<xsl:text>..\Code Lists\</xsl:text>
			<xsl:for-each select="$CodesDocuments//*[code = name($ID)]">
				<xsl:value-of select="name"/>
			</xsl:for-each>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="string-length($DocDesc) &gt; 1">
				<!-- These lines produce the description of the qualifier from $DocDesc -->
				<xsl:variable name="Desc">
					<xsl:for-each select="document($DocDesc)//*[code = $ID]">
						<xsl:value-of select="name"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:choose>
					<xsl:when test="string-length($Desc) &gt; 1"><xsl:value-of select="$Desc"/></xsl:when>
					<xsl:otherwise>
						<xsl:text>Undefined </xsl:text>
						<xsl:value-of select="name($ID)"/>
						<xsl:text> (</xsl:text>
						<xsl:value-of select="$ID"/>
						<xsl:text>)</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>Error! Undefined Document for </xsl:text>
				<xsl:value-of select="name($ID)"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="generalDescAsTitle">
		<xsl:param name="DocDesc" />
		<xsl:param name="DocCode" />	<!-- Optional Parameter - Document to Decode Value -->
		<xsl:param name="ID" />
		<xsl:param name="Value" />
		<xsl:param name="OtherID" />
			<!-- These lines produce the description of the qualifier from $DocDesc -->
		<xsl:variable name="Desc">
			<xsl:call-template name="generalDesc">
				<xsl:with-param name="ID" select="$ID"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="Title">
			<xsl:call-template name="CamelStrToSentence">
				<xsl:with-param name="Str" 	select="name($ID)"/>
			</xsl:call-template>
		</xsl:variable>
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr valign="top">
			<th align="left" width="{$TitleWidth}" nowrap="nowrap">
				<xsl:element name="a">
					<xsl:attribute name="href">
						<xsl:value-of select="$SemanticsFile" /><xsl:value-of select="$Title"/>						</xsl:attribute>
					<xsl:attribute name="target">_new</xsl:attribute>
					<xsl:choose>
						<xsl:when test="$OtherID"><xsl:value-of select="$OtherID"/></xsl:when>
						<xsl:when test="string-length($Desc) &gt; 0">
							<xsl:value-of select="$Desc"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:text>Undefined </xsl:text>
							<xsl:value-of select="name($ID)"/>
						</xsl:otherwise>
					</xsl:choose>
					<i><xsl:text> (</xsl:text><xsl:value-of select="$ID"/><xsl:text>)</xsl:text></i>
				</xsl:element>
			</th>
			<xsl:choose>
				<xsl:when test="$DocCode">
					<xsl:variable name="ValueDesc">
						<xsl:for-each select="$DocCode//*[code = $Value]">
							<xsl:value-of select="name"/>
						</xsl:for-each>
					</xsl:variable>
					<td align="left" width="{$TableWidth} - {$TitleWidth}">
						<xsl:value-of select="$ValueDesc"/>
					</td>
				</xsl:when>
				<xsl:otherwise>
					<td align="left" width="{$TableWidth} - {$TitleWidth}"><xsl:value-of select="$Value"/></td>
				</xsl:otherwise>
			</xsl:choose>
			</tr>
		</table>
	</xsl:template>

	<xsl:template name="generalDescAsValue">
		<xsl:param name="DocDesc" />
		<xsl:param name="ID" />
		<xsl:param name="Value" />
		<xsl:variable name="Desc">
			<xsl:call-template name="generalDesc">
				<xsl:with-param name="ID" select="$Value"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="Title">
			<xsl:call-template name="CamelStrToSentence">
				<xsl:with-param name="Str" 	select="name(.)"/>
			</xsl:call-template>
		</xsl:variable>

		<!-- These lines produce the description of the qualifier from $DocDesc -->
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<tr valign="top">
			<th align="left" width="{$TitleWidth}" nowrap="nowrap">
				<xsl:element name="a">
					<xsl:attribute name="href">
						<xsl:value-of select="$SemanticsFile" /><xsl:value-of select="$Title"/>						</xsl:attribute>
					<xsl:attribute name="target">_new</xsl:attribute>
					<xsl:value-of select="$ID"/>
				</xsl:element>
			</th>
			<td align="left" width="{$TableWidth} - {$TitleWidth}">
				<xsl:choose>
					<xsl:when test="string-length($Desc) &gt; 1"><xsl:value-of select="$Desc"/></xsl:when>
					<xsl:otherwise>
						<xsl:text>Undefined </xsl:text>
						<xsl:value-of select="$ID"/>
					</xsl:otherwise>
				</xsl:choose>
				<i><xsl:text> (</xsl:text><xsl:value-of select="$Value"/><xsl:text>)</xsl:text></i>
			</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template name="generalMultiLineBox">
		<xsl:param name="Node" />
		<xsl:param name="Title" />
		<xsl:param name="SubBox" select="/.." />
		
		<xsl:variable name="BgColor">
			<xsl:choose>
				<xsl:when test="$SubBox"><xsl:value-of select="$SubBoxBgColor"/></xsl:when>
				<xsl:otherwise><xsl:value-of select="$MainBoxBgColor"/></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="FontColor">
			<xsl:choose>
				<xsl:when test="$SubBox"><xsl:value-of select="$SubBoxFontColor"/></xsl:when>
				<xsl:otherwise><xsl:value-of select="$MainBoxFontColor"/></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<table border="0" cellspacing="0" width="{$TableWidth}" bgcolor="{$BgColor}">
			<tr align="left">
				<th colspan="2">
					<font color="{$FontColor}"><big><xsl:value-of select="$Title"/></big></font>
				</th>
			</tr>
			<tr>
				<td>
					<table border="0" cellspacing="0" width="{$TableWidth}" bgcolor="white">
						<tr align="left">
							<td colspan="1">
								<xsl:choose>
									<xsl:when test="name($Node) = name(.)">
										<xsl:value-of select="." />
									</xsl:when>
									<xsl:when test="count($Node) &gt; 0">
										<xsl:apply-templates select="$Node"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>No Information Supplied in Document</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template name="generalMultiLine">
		<xsl:param name="Title" />
		<table border="0" cellspacing="0" width="{$TableWidth}">
			<xsl:for-each select="./*[position() = 1]">
			<tr align="left">
				<th align="left" width="{$TitleWidth}"><xsl:value-of select="$Title"/></th>
				<td align="left"><xsl:value-of select="."/></td>
			</tr>
			</xsl:for-each>
			<xsl:for-each select="./*[position() > 1]">
			<tr align="left">
				<th align="left" width="{$TitleWidth}"><xsl:text> </xsl:text></th>
				<td align="left"><xsl:value-of select="."/></td>
			</tr>
			</xsl:for-each>
		</table>
	</xsl:template>

</xsl:stylesheet>