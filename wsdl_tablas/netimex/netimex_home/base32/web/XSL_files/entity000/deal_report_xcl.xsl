<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="numberFormatString">vnd.ms-excel.numberformat:</xsl:param>
	<xsl:param name="numberFormat">
		<xsl:value-of select="$numberFormatString"/>
		<xsl:value-of select="REPORT/PARAMETERS/NUMBER_FORMAT"/>
	</xsl:param>
	<xsl:template match="REPORT_HEADER">
		<tr align="right" valign="top">
			<td colspan="11">
				<font size="2" >
					<xsl:value-of select="REPORT_DATE"/>
				</font>
			</td>
		</tr>
		<tr>
			<td/>
		</tr>
		<tr align="center" valign=" top">
			<td colspan="11">
				<font size="4">
					<b>
						<xsl:value-of select="HEADER"/>
					</b>
				</font>
			</td>
		</tr>
		<xsl:if test="contains(SHOW_CUST_HEADER/text(),'true')">
			<tr align="center" valign="top">
				<td colspan="11">
					<font size="2">
						<b>
							<i>
								<xsl:value-of select="CUST_NAME"/>
							</i>
						</b>
					</font>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="contains(ORDER_BY_EMPTY/text(),'False')">
			<tr align="center" valign="top">
				<td colspan="11">
					<font size="2">
						<b>
							<i>
								<xsl:value-of select="ORDER_BY"/>
							</i>
						</b>
					</font>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="contains(CRITERIA_EMPTY/text(),'False')">
			<tr align="center" valign="top">
				<td colspan="11">
					<font size="2">
						<b>
							<i>
								<xsl:value-of select="CRITERIA"/>
							</i>
						</b>
					</font>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="contains(LOCAL_CURRENCY_EMPTY/text(),'False')">
			<tr align="center" valign="top">
				<td colspan="11">
					<font size="2">
						<b>
							<i>
								<xsl:value-of select="LOCAL_CURRENCY"/>
							</i>
						</b>
					</font>
				</td>
			</tr>
		</xsl:if>
		<tr align="center" valign="top">
			<td colspan="11">
				<font size="2">
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
		<!--<xsl:call-template name="DoTableHeader"/>-->
	</xsl:template>
	<!--xsl:template match="REPORT/DEALS/REPORT_DATA/REPORT_PAGE_HEADER"-->
	<xsl:template match="REPORT_DATA/REPORT_PAGE_HEADER">
		<tr align="right" valign="top">
			<td colspan="11">
				<font size="2">
					<i>
						<xsl:value-of select="REPORT_DATE"/>
					</i>
				</font>
			</td>
		</tr>
		<tr>
			<td/>
		</tr>
		<tr align="center" valign="top">
			<td colspan="11">
				<font size="3">
					<b>
						<xsl:value-of select="HEADER"/>
					</b>
				</font>
			</td>
		</tr>
		<tr align="center" valign="top">
			<td colspan="11">
				<font size="2">
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
		<xsl:call-template name="DoTableHeader"/>
	</xsl:template>
	<xsl:template match="REPORT_DATA">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="REPORT_DATA/DEAL">
		<tr valign="top" height="17">
			<font size="2">
				<xsl:if test="contains(.//SHOW_CUST_NAME/text(),'true')">
					<td align="left" width="70">
						<xsl:value-of select="CUST_NAME"/>
					</td>
				</xsl:if>
				<td align="left" width="110">
					<xsl:text>=&#34;</xsl:text>
					<xsl:value-of select="REF_NO"/>
					<xsl:text>&#34;</xsl:text>
				</td>
				<!--td align="left" style="{$numberFormat}">
					<xsl:value-of select="DEAL_NO"/>
				</td-->
				<td align="left" width="90">
					<xsl:text>=&#34;</xsl:text>
					<xsl:value-of select="DEAL_NO"/>
					<xsl:text>&#34;</xsl:text>
				</td>
				<xsl:if test="contains(.//SHOW_CUST_NAME/text(),'true')">
					<td align="left" width="90">
						<xsl:value-of select="COUNTERPARTY"/>
					</td>
				</xsl:if>
				<xsl:if test="contains(.//SHOW_CUST_NAME/text(),'false')">
					<td align="left" width="140">
						<xsl:value-of select="COUNTERPARTY"/>
					</td>
				</xsl:if>
				<td align="left" >
					<xsl:value-of select="ISSUE_DATE"/>
				</td>
				<td align="left" >
					<xsl:value-of select="EXPIRY_DATE"/>
				</td>
				<!--td align="center">
					<xsl:value-of select="SHPMENT_DATE"/>
				</td>
				<td align="left">
					<xsl:value-of select="SIGHT_DAYS"/>
				</td-->
				<td align="left"  width="35">
					<xsl:value-of select="CURRENCY"/>
				</td>
				<td align="right" style="{$numberFormat}" width="120">
					<xsl:value-of select="ORIGINAL_AMOUNT"/>
				</td>
				<td align="right" style="{$numberFormat}" width="120">
					<xsl:value-of select="ORIGINAL_AMOUNT_LOC_CURR"/>
				</td>
				<td align="right" style="{$numberFormat}">
					<xsl:value-of select="BALANCE"/>
				</td>
				<td align="right" style="{$numberFormat}" width="120">
					<xsl:value-of select="BALANCE_LOC_CURR"/>
				</td>
			</font>
		</tr>
	</xsl:template>
	<xsl:template match="REPORT_DATA/SUB_TOTAL">
		<tr>
			<td bgcolor="yellow" colspan="6" align="left">
				<B><xsl:value-of select="TOTAL_ROWS_HEADER"/><xsl:value-of select="DATA_OUTPUT"/>- <xsl:value-of select="DATA_ITEM"/>:<xsl:value-of select="SUM_ROWS"/>
				</B>
			</td>
			<xsl:if test="contains(.//SHOW_CUST/text(),'true')">
				<td bgcolor="yellow" align="left">
					<xsl:text/>
				</td>
			</xsl:if>
			<td bgcolor="yellow" align="right">
				<b>
					<xsl:value-of select="SUM_CUR"/>
				</b>
			</td>
			<td bgcolor="yellow" align="right">
				<b>
					<xsl:value-of select="SUM_LOC_AMOUNT"/>
				</b>
			</td>
			<td bgcolor="yellow" align="right">
				<b>
					<xsl:value-of select="SUM_BALANCE"/>
				</b>
			</td>
			<td bgcolor="yellow" align="right">
				<b>
					<xsl:value-of select="SUM_LOC_BALANCE"/>
				</b>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="TABLE_HEADER" name="DoTableHeader">
		<tr bgcolor="#e0e4ff" align="left" valign="top">
			<xsl:if test="contains(.//SHOW_CUST/text(),'true')">
				<td>
					<font color="blue">
						<b>
							<xsl:value-of select="CUST"/>
						</b>
					</font>
				</td>
			</xsl:if>
			<td>
				<font color="blue">
					<b>
						<xsl:value-of select="REF"/>
					</b>
				</font>
			</td>
			<td>
				<font color="blue">
					<b>
						<xsl:value-of select="DEAL_NO_HEAD"/>
					</b>
				</font>
			</td>
			<td>
				<font color="blue">
					<b>
						<xsl:value-of select="COUNTER_PARTY"/>
					</b>
				</font>
			</td>
			<td>
				<font color="blue">
					<b>
						<xsl:value-of select="ISSUE"/>
					</b>
				</font>
			</td>
			<td>
				<font color="blue">
					<b>
						<xsl:value-of select="EXPIRY"/>
					</b>
				</font>
			</td>
			<!--td>
				<font  color="blue">
					<b>Shipment Date</b>
				</font>
			</td>
			<td>
				<font  color="blue">
					<b><xsl:value-of select="SIGHT"/></b>
				</font>
			</td-->
			<td>
				<font color="blue">
					<b>
						<xsl:value-of select="CURR"/>
					</b>
				</font>
			</td>
			<td align="right">
				<font color="blue">
					<b>
						<xsl:value-of select="AMOUNT"/>
					</b>
				</font>
			</td>
			<td align="right">
				<font color="blue">
					<b>
						<xsl:value-of select="AMOUNT_LOC"/>
					</b>
				</font>
			</td>
			<td align="right">
				<font color="blue">
					<b>
						<xsl:value-of select="BALANC"/>
					</b>
				</font>
			</td>
			<td align="right">
				<font color="blue">
					<b>
						<xsl:value-of select="BALANCE_LOC"/>
					</b>
				</font>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="REPORT_PAGE_BREAKS/REPORT_PAGE_BREAK"/>
	<xsl:template match="REPORT_FOOTER">
		<tr>
			<td/>
		</tr>
		<tr>
			<td/>
		</tr>
		<br/>
		<br/>
		<tr align="left" valign="top">
			<td colspan="3">
				<font size="2">
					<b>
						<i>
							<xsl:value-of select="NUMBER_OF_DEALS"/>
						</i>
					</b>
				</font>
			</td>
		</tr>
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
	mso-footer-margin:.5in;}
	td 
{
font-size:8.0pt; 
}
-->
</style>
<!--[if gte mso 9]><xml>
 <x:ExcelWorkbook>
  <x:ExcelWorksheets>
   <x:ExcelWorksheet>
    <x:Name>deal_report</x:Name>
    <x:WorksheetOptions>
     <x:Print>
      <x:ValidPrinterInfo/>
      <x:PaperSizeIndex>9</x:PaperSizeIndex>
      <x:VerticalResolution>0</x:VerticalResolution>
      <x:NumberofCopies>0</x:NumberofCopies>
     </x:Print>
     <x:Selected/>
     <x:NumberForma>Standart</x:NumberForma>
     <x:DoNotDisplayGridlines/>
     <x:ProtectContents>False</x:ProtectContents>
     <x:ProtectObjects>False</x:ProtectObjects>
     <x:ProtectScenarios>False</x:ProtectScenarios>
    </x:WorksheetOptions>
    <x:PageBreaks>
     <x:RowBreaks>
	]]>
@@@</xsl:comment>
				<xsl:call-template name="DoPageBreaks"/>
				<xsl:comment>@@@
	<![CDATA[
     </x:RowBreaks>
    </x:PageBreaks>
   </x:ExcelWorksheet>
  </x:ExcelWorksheets>
  <x:WindowHeight>6570</x:WindowHeight>
  <x:WindowWidth>12000</x:WindowWidth>
  <x:WindowTopX>0</x:WindowTopX>
  <x:WindowTopY>1425</x:WindowTopY>
  <x:ProtectStructure>False</x:ProtectStructure>
  <x:ProtectWindows>False</x:ProtectWindows>
 </x:ExcelWorkbook>
</xml><![endif]-->
	]]>
@@@</xsl:comment>
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
			<xsl:comment>@@@
	<![CDATA[
		<x:RowBreak>
			<x:Row>
	]]>
		@@@</xsl:comment>
			<xsl:value-of select="."/>
			<xsl:comment>@@@
	<![CDATA[
			</x:Row>
		</x:RowBreak>
	]]>
		@@@</xsl:comment>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
