<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param	name="numberFormatString">vnd.ms-excel.numberformat:</xsl:param>
	<xsl:param  name="numberFormat">        
	     <xsl:value-of select="$numberFormatString"/>
		<xsl:value-of select="REPORT/PARAMETERS/NUMBER_FORMAT"/>
	</xsl:param> 

	<xsl:template match="REPORT_HEADER">	        
		<tr align="right" valign="top">
			<td colspan="6">
				<font  size="2">
				        
						<xsl:value-of select="REPORT_DATE"/>
				        
				</font>
			</td>
		</tr>
		<tr>
			<td/>
		</tr>
		<br/>
		<tr align="center" valign="top">
			<td colspan="6">
				<font  size="4">
					<b>
						<xsl:value-of select="HEADER"/>
					</b>
				</font>
			</td>
		</tr>
		<xsl:if test="contains(ORDER_BY_EMPTY/text(),'False')">
		<tr align="center" valign="top">
			<td colspan="6"><font  size="2"><b><i> <xsl:value-of select="ORDER_BY"/></i></b></font></td>
		</tr>
	</xsl:if>
		<xsl:if test="contains(CRITERIA_EMPTY/text(),'False')">
			<tr align="center" valign="top">
				<td colspan="6"><font  size="2"><b><i> <xsl:value-of select="CRITERIA"/></i></b></font></td>
			</tr>
		</xsl:if>
		<xsl:if test="contains(LOCAL_CURRENCY_EMPTY/text(),'False')">
			<tr align="center" valign="top">
				<td colspan="6"><font  size="2"><b><i> <xsl:value-of select="LOCAL_CURRENCY"/></i></b></font>				</td>
			</tr>
		</xsl:if>

		<tr align="center" valign="top">
			<td colspan="6">
				<font  size="2">
					<b>
						<i>
							<xsl:value-of select="DATE_RANGE"/>
						</i>
					</b>
				</font>
			</td>
		</tr>
		<tr>
			<td/>
		</tr>
		<br/>
		<xsl:call-template name="DoTableHeader"/>
	</xsl:template>
	<!--xsl:template match="REPORT/DEALS/REPORT_DATA/REPORT_PAGE_HEADER"-->
	<xsl:template match="REPORT_DATA/REPORT_PAGE_HEADER">
	        
	</xsl:template>
	<xsl:template match="REPORT_DATA/TABLE_HEADER">
	</xsl:template>

	<xsl:template match="REPORT_DATA">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="REPORT_DATA/DEAL">
	        
	</xsl:template>
	<xsl:template match="REPORT_DATA/SUB_TOTAL">
		<tr>
			<td align="left"><b><xsl:value-of select="DATA_ITEM"/></b></td>
			<td align="center"><b><xsl:value-of select="SUM_ROWS"/></b></td>
			<td align="right"><b><xsl:value-of select="SUM_CUR"/></b></td>
			<td align="right" style="{$numberFormat}"><b><xsl:value-of select="SUM_LOC_AMOUNT"/></b></td>
			<td align="right" style="{$numberFormat}"><b><xsl:value-of select="SUM_BALANCE"/></b></td>
			<td align="right" style="{$numberFormat}"><b><xsl:value-of select="SUM_LOC_BALANCE"/></b></td>
		</tr>
	</xsl:template>
	<xsl:template match="TABLE_HEADER" name="DoTableHeader">
		<tr bgcolor="#e0e4ff" align="center" valign="top">
			<!--<td style='width:48pt'>-->
			<td>
			        <font  color="blue">
					<b><xsl:value-of select=".//CUST_OR_CURR"/></b>
				</font>
			</td>
			<td>
				<font  color="blue">
					<b><xsl:value-of select="TOTALS"/></b>
				</font>
			</td>
			<td>
				<font  color="blue" >
					<b><xsl:value-of select="AMOUNT"/></b>
				</font>
			</td>
			<td>
				<font  color="blue">
					<b><xsl:value-of select="AMOUNT_LOC"/></b>
				</font>
			</td>
			<td>
				<font  color="blue">
					<b><xsl:value-of select="BALANC"/></b>
				</font>
			</td>
			<td>
				<font  color="blue">
					<b><xsl:value-of select="BALANCE_LOC"/></b>
				</font>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="REPORT_PAGE_BREAKS/REPORT_PAGE_BREAK">
	</xsl:template>
	<xsl:template match="REPORT_FOOTER">
	        
	</xsl:template>
	<xsl:template match="/">
		<html xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/xhtml1/strict">
			<head>
				<title>Deal Report For Excel</title>
<xsl:comment>@@@
	<![CDATA[
<style>
<!--
@page
	{mso-page-orientation:landscape;
	mso-footer-data:"&P";
	margin:1.0in 1.0in 1.0in .75in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	}
 td
 { white-space:nowrap;
 mso-rotate:0;}
-->
</style>
<!--[if gte mso 9]><xml>
 <x:ExcelWorkbook>
  <x:ExcelWorksheets>
   <x:ExcelWorksheet>
    <x:Name>deal_report_summarize</x:Name>    
   <x:WorksheetOptions>
     <x:Print>
      <x:ValidPrinterInfo/>
      <x:PaperSizeIndex>9</x:PaperSizeIndex>
      <x:HorizontalResolution>300</x:HorizontalResolution>
      <x:VerticalResolution>300</x:VerticalResolution>
     </x:Print>
     <x:Selected/>
     <x:Panes>
      <x:Pane>
       <x:Number>3</x:Number>
       <x:RangeSelection>$A$1:$I$53</x:RangeSelection>
      </x:Pane>
     </x:Panes>
     <x:ProtectContents>False</x:ProtectContents>
     <x:ProtectObjects>False</x:ProtectObjects>
     <x:ProtectScenarios>False</x:ProtectScenarios>
    </x:WorksheetOptions>
   
   </x:ExcelWorksheet>
  </x:ExcelWorksheets> 
 </x:ExcelWorkbook>
</xml><![endif]-->
	]]>
@@@</xsl:comment>

				<xsl:call-template name="DoPageBreaks"/>
			</head>
			<body>
				<table border="0" cellspacing="0" cellpadding="5">
					<tbody>
						<!--xsl:apply-templates select="REPORT/DEALS/REPORT_HEADER"/>
						<xsl:apply-templates select="REPORT/DEALS/REPORT_DATA/DEAL"/-->
						<xsl:apply-templates select="REPORT/DEALS"/>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template name="DoPageBreaks">
		<xsl:for-each select="REPORT/DEALS/REPORT_PAGE_BREAKS/REPORT_PAGE_BREAK">
			<xsl:value-of select="."/>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
