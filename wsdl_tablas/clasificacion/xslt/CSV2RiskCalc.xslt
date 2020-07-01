<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Author: Jose M Selman (jselman@bee.cl)                                     -->
<!--                                                                            -->
<!-- Transforma el archivo csv de entrada en el formato XML esperado por Moodys -->
<!-- RiskCalc: North American Private Companies Model                           -->
<!--                                                                            -->


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" encoding="ISO-8859-1"/>
	
	<xsl:param name="rc_username"/>
	<xsl:param name="rc_password"/>
	
	<xsl:template match="/">
	<RISKCALC>
		<AUTHENTICATION>
			<USERID><xsl:copy-of select="$rc_username"/></USERID>
			<PASSWORD><xsl:copy-of select="$rc_password"/></PASSWORD>
		</AUTHENTICATION>
		<OPERATION-LIST>
		<xsl:for-each select="csvFile/line">
			<OPERATION MODEL='PRV' SUBMODEL='NAMR' FUNCTION='PDCLC'>
				<ARGUMENT-LIST>
					<ARGUMENT TYPE="FirmID"><xsl:value-of select="value[position() = 2]" /></ARGUMENT>
					<ARGUMENT TYPE="Verbose">3</ARGUMENT>
					<ARGUMENT TYPE="FiscalYear"><xsl:value-of select="value[position() = 3]" /></ARGUMENT>
					<ARGUMENT TYPE="CashEquivalents"><xsl:value-of select="value[position() = 4]" /></ARGUMENT>
					<ARGUMENT TYPE="Inventory"><xsl:value-of select="value[position() = 5]" /></ARGUMENT>
					<ARGUMENT TYPE="CurrAssets"><xsl:value-of select="value[position() = 6]" /></ARGUMENT>
					<ARGUMENT TYPE="TotalAssets"><xsl:value-of select="value[position() = 7]" /></ARGUMENT>
					<ARGUMENT TYPE="PrevYrAssets"><xsl:value-of select="value[position() = 8]" /></ARGUMENT>
					<ARGUMENT TYPE="CurrLiabilities"><xsl:value-of select="value[position() = 9]" /></ARGUMENT>
					<ARGUMENT TYPE="TotalLiabilities"><xsl:value-of select="value[position() = 10]" /></ARGUMENT>
					<ARGUMENT TYPE="RetainedEarnings"><xsl:value-of select="value[position() = 11]" /></ARGUMENT>
					<ARGUMENT TYPE="Sales"><xsl:value-of select="value[position() = 12]" /></ARGUMENT>
					<ARGUMENT TYPE="PrevYrSales"><xsl:value-of select="value[position() = 13]" /></ARGUMENT>
					<ARGUMENT TYPE="CostOfGoodsSold"><xsl:value-of select="value[position() = 14]" /></ARGUMENT>
					<ARGUMENT TYPE="EBIT"><xsl:value-of select="value[position() = 15]" /></ARGUMENT>
					<ARGUMENT TYPE="InterestExpense"><xsl:value-of select="value[position() = 16]" /></ARGUMENT>
					<ARGUMENT TYPE="NetIncome"><xsl:value-of select="value[position() = 17]" /></ARGUMENT>
					<ARGUMENT TYPE="PrevYrNetIncome"><xsl:value-of select="value[position() = 18]" /></ARGUMENT>
					<ARGUMENT TYPE="ExtraItems"><xsl:value-of select="value[position() = 19]" /></ARGUMENT>
					<ARGUMENT TYPE="PrevYrExtraItems"><xsl:value-of select="value[position() = 20]" /></ARGUMENT>
					<ARGUMENT TYPE="Country"><xsl:value-of select="value[position() = 21]" /></ARGUMENT>
				</ARGUMENT-LIST>
		  	</OPERATION>
		</xsl:for-each>
		</OPERATION-LIST>
	</RISKCALC>
	</xsl:template>
</xsl:stylesheet>