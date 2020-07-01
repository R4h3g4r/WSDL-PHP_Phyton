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
 					<td xsl:use-attribute-sets="ColHeader">
						<xsl:text> </xsl:text>
 					</td>				
 					<td colspan="3" align="center" class="subseccion">
			 			<xsl:text>CLIENTES</xsl:text>
 					</td>
 					<td xsl:use-attribute-sets="ColHeader">
						<xsl:text> </xsl:text>
 					</td>				
 					<td colspan="3" align="center" class="subseccion">
			 			<xsl:text>NO CLIENTES</xsl:text>
 					</td> 					
		 		</tr>
				<tr bgcolor="#dedede">
 					<td xsl:use-attribute-sets="ColHeader">
						<xsl:text> </xsl:text>
 					</td>
 					<td xsl:use-attribute-sets="ColHeader">
			 			<xsl:text>Ingresados</xsl:text>
 					</td>
 					<td xsl:use-attribute-sets="ColHeader">
			 			<xsl:text>Solucionados</xsl:text>
 					</td>
 					<td xsl:use-attribute-sets="ColHeader">
			 			<xsl:text>Cerrados</xsl:text>
 					</td>
 					<td xsl:use-attribute-sets="ColHeader">
						<xsl:text> </xsl:text>
 					</td> 					
 					<td xsl:use-attribute-sets="ColHeader">
			 			<xsl:text>Ingresados</xsl:text>
 					</td>
 					<td xsl:use-attribute-sets="ColHeader">
			 			<xsl:text>Solucionados</xsl:text>
 					</td>
 					<td xsl:use-attribute-sets="ColHeader">
			 			<xsl:text>Cerrados</xsl:text>
 					</td>
		 		</tr>		 		
				<xsl:apply-templates/>

		<tr bgcolor="#f0f0f0">
			
			<td xsl:use-attribute-sets="RowData" >
			<b>
			<xsl:text>Total</xsl:text>
			</b>
			</td>
			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDCING">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>
			
			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDCSOL">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>

			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDCCER">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>
			
			<td xsl:use-attribute-sets="RowData" >
				<b> </b>
			</td>

			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDING">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>

			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDSOL">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>

			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDCER">
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
		<td colspan="8"  class="lineapar" height="10"> </td>
	</tr>
	<tr bgcolor="#f0f0f0">
		<td xsl:use-attribute-sets="RowData" >
		<b>
			<a>
			<xsl:attribute name="href">
				<xsl:text>
					ReportServlet?reportName=Resumen&#32;por&#32;tipo&#40;Tarjeta&#32;Visa&#41;&#40;Mes&#32;Actual&#41;&#38;typeCode=
				</xsl:text>
				<xsl:value-of select="CODE"/>
			</xsl:attribute>

			<xsl:value-of select="STRDESCRIPCION"/>
			</a>
		</b>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="CLIENTING"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="CLIENTSOL"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="CLIENTCER"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<b> </b>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="NOCLIENTING"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="NOCLIENTSOL"/>
		</td>
		<td xsl:use-attribute-sets="RowData" >
			<xsl:value-of select="NOCLIENTCER"/>
		</td>		
	</tr>
	<tr>
		<td colspan="8"  bgcolor="#006666"> </td>
	</tr>
	</xsl:template>
</xsl:stylesheet>