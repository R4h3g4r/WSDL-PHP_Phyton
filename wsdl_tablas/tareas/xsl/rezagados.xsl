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
 					<td xsl:use-attribute-sets="ColHeader">
 					<a href="ReportServlet?reportName=Rezagados&#32;Ejecutivo&#47;Area&#32;Destination&#38;typeCode=BCK">
 						 <xsl:text>Back Office</xsl:text>
					</a>
 					</td>
		 			<td xsl:use-attribute-sets="ColHeader">
					<a href="ReportServlet?reportName=Rezagados&#32;Ejecutivo&#47;Area&#32;Destination&#38;typeCode=CCE">	 					
	 					<xsl:text>Call Center</xsl:text>
					</a>
		 			</td>
		 			<td xsl:use-attribute-sets="ColHeader" width="100">
	 					
					<a href="ReportServlet?reportName=Rezagados&#32;Ejecutivo&#47;Area&#32;Destination&#38;typeCode=FVT">	 					
	 					<xsl:text>Fuerza Venta</xsl:text>
					</a>
	 					
		 			</td>
 					<td xsl:use-attribute-sets="ColHeader">
 					
					<a href="ReportServlet?reportName=Rezagados&#32;Ejecutivo&#47;Area&#32;Destination&#38;typeCode=MRK">	 					
						<xsl:text>Marketing</xsl:text>
					</a>
		 			
 					</td>
		 			<td xsl:use-attribute-sets="ColHeader">
	 					
					<a href="ReportServlet?reportName=Rezagados&#32;Ejecutivo&#47;Area&#32;Destination&#38;typeCode=RGO">	 					
						<xsl:text>Riesgo</xsl:text>
					</a>
	 					
		 			</td>
 					<td xsl:use-attribute-sets="ColHeader">
			 			
					<a href="ReportServlet?reportName=Rezagados&#32;Ejecutivo&#47;Area&#32;Destination&#38;typeCode=TEC">	 					
						<xsl:text>Tecnologia</xsl:text>
					</a>
			 			
		 			</td>
		 			
		 			<td xsl:use-attribute-sets="ColHeader">
	 					
					<a href="ReportServlet?reportName=Rezagados&#32;Ejecutivo&#47;Area&#32;Destination&#38;typeCode=UAS">	 					
						<xsl:text>UAS</xsl:text>
					</a>
	 					
		 			</td>
 					<td xsl:use-attribute-sets="ColHeader">
			 			
					<a href="ReportServlet?reportName=Rezagados&#32;Ejecutivo&#47;Area&#32;Destination&#38;typeCode=BOT">	 					
						<xsl:text>BCK Telemarketing</xsl:text>
					</a>
			 			
		 			</td>
		 			
					<td xsl:use-attribute-sets="ColHeader">
	 					<xsl:text>Total</xsl:text>
		 			</td>
 				</tr>
				<xsl:apply-templates/>
				
		<tr>
			<td colspan="10"  bgcolor="#006666"><xsl:text> </xsl:text></td>
		</tr>
		<tr bgcolor="#f0f0f0">
			
			<td xsl:use-attribute-sets="RowData" >
			<b>
			<xsl:text>Total</xsl:text>
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
 				<xsl:call-template name="ADDFVT">
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
 				<xsl:call-template name="ADDRGO">
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
 				<xsl:call-template name="ADDUAS">
 				   <xsl:with-param name="node" select="REPORTDATA/BEANDATA[1]"/>
 				</xsl:call-template>
			</b>
			</td>

			<td xsl:use-attribute-sets="RowData" >
			<b>
 				<xsl:call-template name="ADDBOT">
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
		<td colspan="10"  class="lineapar" height="10">
				<xsl:text> </xsl:text>
		</td>
	</tr>
	<tr bgcolor="#f0f0f0">
	
	
		<td xsl:use-attribute-sets="RowData" >
		<a>
		<xsl:attribute name="href">
			<xsl:text>
				ReportServlet?reportName=Rezagados&#32;Ejecutivo&#47;Area&#32;Source&#38;typeCode=
			</xsl:text>
			<xsl:value-of select="STRID"/>
		</xsl:attribute>
		<b><xsl:value-of select="STRNAME"/></b>
		</a>
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
			<b><xsl:value-of select="FLTTOTAL"/></b>
		</td>
	</tr>
	<tr>
		<td colspan="10"  bgcolor="#006666"><xsl:text> </xsl:text></td>
	</tr>
	</xsl:template>
</xsl:stylesheet>