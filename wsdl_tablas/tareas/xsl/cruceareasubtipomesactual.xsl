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
	 		</table>
 		</body>
 	</html>
</xsl:template>
<xsl:template match="BEANDATA">
	<tr>
		<td colspan="4"  class="lineapar" height="10"></td>
           <!-- <td colspan="4"  class="lineapar" height="10">&nbsp;</td> -->
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