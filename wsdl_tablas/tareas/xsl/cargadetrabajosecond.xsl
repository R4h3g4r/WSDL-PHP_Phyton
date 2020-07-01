<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="total.xsl"/>

<xsl:param name="ReportTitle"></xsl:param>
<xsl:param name="WebServer"></xsl:param>
<xsl:output method="html" indent="yes"  encoding="US-ASCII" omit-xml-declaration="yes"/>

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
							<xsl:text>Alerta TBanc</xsl:text>
						</td>
 						<td xsl:use-attribute-sets="ColHeader" width="100">
							<xsl:text>Oficina BCI</xsl:text>
						</td>
 						<td xsl:use-attribute-sets="ColHeader" width="100">
							<xsl:text>Back Office</xsl:text>
						</td>
 						<td xsl:use-attribute-sets="ColHeader" width="100">
							<xsl:text>Call Center</xsl:text>
						</td>
 						<td xsl:use-attribute-sets="ColHeader" width="100">
							<xsl:text>No Cliente</xsl:text>
						</td>
	 					<td xsl:use-attribute-sets="ColHeader" width="100">
							<xsl:text>Marketing</xsl:text>
						</td>
 						<td xsl:use-attribute-sets="ColHeader" width="100">
							<xsl:text>Tecnologia</xsl:text>
						</td>
 						<td xsl:use-attribute-sets="ColHeader" width="100">
							<xsl:text>Web TBanc</xsl:text>
						</td>
 						<td xsl:use-attribute-sets="ColHeader" width="100">
							<xsl:text>Total</xsl:text>
						</td>
					</tr>
					<xsl:apply-templates/>

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
 				<xsl:call-template name="ADDALE">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>
			
			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDBCI">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>
			
			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDBCK">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>

			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDCCE">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>

			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDENC">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>

			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDMRK">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>

			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDTEC">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>

			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDWEB">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>
			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDTOTAL">
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
			<td colspan="10" class="lineapar" height="10"> </td>
		</tr>
		<tr bgcolor="#f0f0f0">
			<td xsl:use-attribute-sets="RowData" >
				<b>
					<xsl:value-of select="STRNAME"/>
				</b>
			</td>
			<td xsl:use-attribute-sets="RowData" >
				<xsl:value-of select="FLTASALE"/>
			</td>
			<td xsl:use-attribute-sets="RowData" >
				<xsl:value-of select="FLTASBCI"/>
			</td>
			<td xsl:use-attribute-sets="RowData" >
				<xsl:value-of select="FLTASBCK"/>
			</td>
			<td xsl:use-attribute-sets="RowData" >
				<xsl:value-of select="FLTASCCE"/>
			</td>
			<td xsl:use-attribute-sets="RowData" >
				<xsl:value-of select="FLTASENC"/>
			</td>
			<td xsl:use-attribute-sets="RowData" >
				<xsl:value-of select="FLTASMRK"/>
			</td>
			<td xsl:use-attribute-sets="RowData" >
				<xsl:value-of select="FLTASTEC"/>
			</td>
			<td xsl:use-attribute-sets="RowData" >
				<xsl:value-of select="FLTASWEB"/>
			</td>
			<td xsl:use-attribute-sets="RowData" >
				<b><xsl:value-of select="FLTTOTAL"/></b>
			</td>
		</tr>
		<tr>
			<td colspan="10" bgcolor="#006666"> </td>
		</tr>
		
		
	</xsl:template>
</xsl:stylesheet>
