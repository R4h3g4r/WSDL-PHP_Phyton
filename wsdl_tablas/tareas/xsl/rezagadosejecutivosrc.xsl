<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="ReportTitle"></xsl:param>
<xsl:output method="html" indent="yes"  encoding="US-ASCII"/>
<xsl:attribute-set name="ColHeader">
	<xsl:attribute name="class">subseccion</xsl:attribute>
	<xsl:attribute name="width">75</xsl:attribute>
	<xsl:attribute name="align">right</xsl:attribute>
	<xsl:attribute name="valign">top</xsl:attribute>
	<xsl:attribute name="height">30</xsl:attribute>
</xsl:attribute-set>
<xsl:attribute-set name="RowData">
	<xsl:attribute name="class">lineaimpar</xsl:attribute>
	<xsl:attribute name="align">right</xsl:attribute>
	<xsl:attribute name="valign">top</xsl:attribute>
</xsl:attribute-set>
<xsl:template match="/">
	<html>
		<head>
			<title>BCI REPORTE</title>
			<link rel="stylesheet" href="/portalwls/common/estilos1024.css"></link>
		</head>
		<body>
			<table border="0" cellspacing="0" cellpadding="2" align="center">
				<tr bgcolor="#dedede">
 					<td xsl:use-attribute-sets="ColHeader" width="100">
						<xsl:text> </xsl:text>
		 			</td>
 					<td xsl:use-attribute-sets="ColHeader">
			 			<xsl:text>Back Office</xsl:text>
 					</td>
		 			<td xsl:use-attribute-sets="ColHeader">
	 					<xsl:text>Call Center</xsl:text>
		 			</td>
		 			<td xsl:use-attribute-sets="ColHeader" width="100">
	 					<xsl:text>Fuerza Venta</xsl:text>
		 			</td>
 					<td xsl:use-attribute-sets="ColHeader">
			 			<xsl:text>Marketing</xsl:text>
 					</td>
		 			<td xsl:use-attribute-sets="ColHeader">
	 					<xsl:text>Riesgo</xsl:text>
		 			</td>
 					<td xsl:use-attribute-sets="ColHeader">
			 			<xsl:text>Tecnologia</xsl:text>
		 			</td>
		 			<td xsl:use-attribute-sets="ColHeader">
	 					<xsl:text>UAS</xsl:text>
		 			</td>
 					<td xsl:use-attribute-sets="ColHeader">
			 			<xsl:text>BCK Telemarketing</xsl:text>
		 			</td>
					<td xsl:use-attribute-sets="ColHeader">
	 					<xsl:text>Total</xsl:text>
		 			</td>
 				</tr>
				<xsl:apply-templates>
				</xsl:apply-templates> 		
 			</table>
	 	</body>
 	</html>
</xsl:template>
<xsl:template match="BEANDATA">
	<tr>
		<td colspan="10"  class="lineapar" height="10">
				<xsl:text> </xsl:text>
		</td>
	</tr>
	<tr bgcolor="#f0f0f0">
		<td xsl:use-attribute-sets="RowData" >
			<b><xsl:value-of select="STRNAME"/></b>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="FLTASBCK"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="FLTASCCE"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="FLTASFVT"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="FLTASMRK"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="FLTASRGO"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="FLTASTEC"/>
		</td>
		
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="FLTASUAS"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="FLTASBOT"/>
		</td>
		
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="FLTTOTAL"/>
		</td>
	</tr>
	<tr>
		<td colspan="10"  bgcolor="#006666"><xsl:text> </xsl:text></td>
	</tr>
	</xsl:template>
</xsl:stylesheet>