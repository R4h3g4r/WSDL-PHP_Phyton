<?xml version="1.0" encoding="UTF-8"?>
<!-- Author: Jose M Selman (jselman@bee.cl)                   -->
<!--                                                          -->
<!-- Transforma el output de risk calc para Moody's RiskCalc: -->
<!-- North American Private Companies Model, en csv           -->
<!--                                                          -->
<!-- OBSERVACION: Se asume verbose = 3 en el request          -->
<!--                                                          -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	
	<xsl:template match="/">
		<xsl:apply-templates select="RISKCALC-OUT/OPERATION-LIST/OPERATION"/>
	</xsl:template>
	
	<xsl:template match="OPERATION">
		<xsl:apply-templates select="ARGUMENT-LIST"/>
		<xsl:apply-templates select="OUTPUT-LIST"/>
	</xsl:template>
	
	<xsl:template match="ARGUMENT-LIST">
		<xsl:value-of select="ARGUMENT[@TYPE='FirmID']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="ARGUMENT[@TYPE='FiscalYear']"/>
		<xsl:text>1231,</xsl:text>
	</xsl:template>
	
	<xsl:template match="OUTPUT-LIST">
		<xsl:value-of select="OUTPUT[@TYPE='1YrPD']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='Custom1Yr']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='5YrPD']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='Custom5Yr']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='5YrBondDefaultRateMapping']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='Assets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='InventoriesCostOfGoodsSold']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='LiabilitiesAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='NetIncomeGrowth']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='NetIncomeAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='QuickRatio']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='RetainedEarningsAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='SalesGrowth']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='CashAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='DebtServiceCoverageRatio']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='RiskCalcOrdinal']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='SizeOrdinal']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='CapitalStructureOrdinal']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='ProfitabilityOrdinal']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='LiquidityOrdinal']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='TradingAccountsOrdinal']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='SalesGrowthOrdinal']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='Percentile1YrPD']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='Percentile5YrPD']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='Percentile5YrRateMapping']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='PrvError']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='PercentileAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='PercentileInventoriesCostOfGoodsSold']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='PercentileLiabilitiesAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='PercentileNetIncomeGrowth']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='PercentileNetIncomeAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='PercentileQuickRatio']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='PercentileRetEarningsAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='PercentileSalesGrowth']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='PercentileCashAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='PercentileDebtSvcCovRatio']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='1YrRelativeContributionAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='1YrRelativeContributionInventoriesCostOfGoodsSold']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='1YrRelativeContributionLiabilitiesAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='1YrRelativeContributionNetIncomeGrowth']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='1YrRelativeContributionNetIncomeAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='1YrRelativeContributionQuickRatio']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='1YrRelativeContributionRetEarningsAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='1YrRelativeContributionSalesGrowth']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='1YrRelativeContributionCashAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='1YrRelativeContributionDebtServiceCoverageRatio']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='5YrRelativeContributionAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='5YrRelativeContributionInventoriesCostOfGoodsSold']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='5YrRelativeContributionLiabilitiesAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='5YrRelativeContributionNetIncomeGrowth']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='5YrRelativeContributionNetIncomeAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='5YrRelativeContributionQuickRatio']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='5YrRelativeContributionRetEarningsAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='5YrRelativeContributionSalesGrowth']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='5YrRelativeContributionCashAssets']"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="OUTPUT[@TYPE='5YrRelativeContributionDebtServiceCoverageRatio']"/>
		<xsl:text>
</xsl:text>
	</xsl:template>
</xsl:stylesheet>
