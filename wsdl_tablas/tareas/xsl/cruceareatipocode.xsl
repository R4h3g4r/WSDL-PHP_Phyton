<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="total.xsl"/>

<xsl:param name="ReportTitle"></xsl:param>
<xsl:param name="WebServer"></xsl:param>
<xsl:output method="html" indent="yes"  encoding="iso-8859-1" omit-xml-declaration="yes"/>

<xsl:template match="/">
	<html>
		<head>
			<title>BCI REPORTE</title>
			<link rel="stylesheet" href="/portalwls/common/estilos1024.css"></link>
		</head>
		<body>
			
			<table border="0" cellspacing="0" cellpadding="2" align="center">
			
			<tr>
			<td xsl:use-attribute-sets="ColHeader">
				<xsl:value-of select="$ReportTitle"/>
 			</td>
			
			</tr>
			</table>
		
			<table border="0" cellspacing="0" cellpadding="2" align="center">
				<tr bgcolor="#dedede">
 					<td xsl:use-attribute-sets="ColHeader" width="100">
						<xsl:text> </xsl:text>
 					</td>
 					<td xsl:use-attribute-sets="ColHeader" width="100">
			 			<xsl:text>Ingresados</xsl:text>
 					</td>
 					<td xsl:use-attribute-sets="ColHeader" width="100">
			 			<xsl:text>Solucionados</xsl:text>
 					</td>
 					<td xsl:use-attribute-sets="ColHeader" width="100">
			 			<xsl:text>Cerrados</xsl:text>
 					</td>
		 		</tr>
				<xsl:apply-templates></xsl:apply-templates> 
		<tr>
			<td colspan="8"  bgcolor="#006666"><xsl:text> </xsl:text></td>
		</tr>
		<tr bgcolor="#f0f0f0">
			
			<td xsl:use-attribute-sets="RowData" >
			<b>
			<xsl:text>Total</xsl:text>
			</b>
			</td>
			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="INGRESADOS">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>
			
			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="SOLUCIONADOS">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>

			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="CERRADOS">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>
		
		</tr>
				
	 		</table>
 		</body>
 	</html>
</xsl:template>
<xsl:template match="BEANDATA">
	<tr>
		<td colspan="4"  class="lineapar" height="10"><xsl:text> </xsl:text></td>
	</tr>
	<tr bgcolor="#f0f0f0">
		<td xsl:use-attribute-sets="RowData" >
			<b><xsl:value-of select="STRDESCRIPCION"/></b>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="INGRESADOS"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="SOLUCIONADOS"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="CERRADOS"/>
		</td>
	</tr>
	<tr>
		<td colspan="4"  bgcolor="#006666"> </td>
	</tr>
	</xsl:template>
</xsl:stylesheet>