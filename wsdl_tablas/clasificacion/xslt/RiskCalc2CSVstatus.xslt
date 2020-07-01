<?xml version="1.0" encoding="UTF-8"?>
<!-- Author: Jose M Selman (jselman@bee.cl)                   -->
<!--                                                          -->
<!-- Transforma el output de risk calc para Moody's RiskCalc: -->
<!-- North American Private Companies Model, en csv           -->
<!--                                                          -->
<!-- Solo para errores                                        -->
<!--                                                          -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	
	<xsl:template match="/">
		<xsl:apply-templates select="RISKCALC-OUT/OPERATION-LIST/OPERATION"/>
	</xsl:template>
	
	<xsl:template match="OPERATION">
		<xsl:apply-templates select="ARGUMENT-LIST"/>
		<xsl:value-of select="ERROR-CODE"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="ERROR-EX"/>
		<xsl:text>
</xsl:text>
	</xsl:template>
	
	<xsl:template match="ARGUMENT-LIST">
		<xsl:value-of select="ARGUMENT[@TYPE='FirmID']"/>
		<xsl:text>,</xsl:text>
	</xsl:template>
	
</xsl:stylesheet>
