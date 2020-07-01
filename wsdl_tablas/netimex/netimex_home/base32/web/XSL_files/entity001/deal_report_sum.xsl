<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="REPORT/DEALS/REPORT_HEADER" name="ReportPageHeader">
  	   
	 	<tr align="right" valign="top">
			<td colspan="6"><font  size="2"><xsl:value-of select=".//REPORT_DATE"/></font></td>
	    </tr>
	    <tr><td></td></tr>
	    <br/>
        <tr align="center" valign="top">
			<td colspan="6"><font  size="4"><b><xsl:value-of select=".//HEADER"/></b></font></td>
	    </tr>
	<xsl:if test="contains(.//ORDER_BY_EMPTY/text(),'False')">
		<tr align="center" valign="top">
			<td colspan="6"><font  size="2"><b><i> <xsl:value-of select=".//ORDER_BY"/></i></b></font></td>
		</tr>
	</xsl:if>
		<xsl:if test="contains(.//CRITERIA_EMPTY/text(),'False')">
			<tr align="center" valign="top">
				<td colspan="6"><font  size="2"><b><i> <xsl:value-of select=".//CRITERIA"/></i></b></font></td>
			</tr>
		</xsl:if>
		<xsl:if test="contains(.//LOCAL_CURRENCY_EMPTY/text(),'False')">
			<tr align="center" valign="top">
				<td colspan="6"><font  size="2"><b><i> <xsl:value-of select=".//LOCAL_CURRENCY"/></i></b></font>				</td>
			</tr>
		</xsl:if>

	    <tr align="center" valign="top">
			<td colspan="6"><font  size="2"><b><i><xsl:value-of select=".//DATE_RANGE"/></i></b></font></td>
	    </tr>
	    <tr><td></td></tr>
	    <br/>
  		<xsl:call-template name="DoTableHeader"/>
</xsl:template>

<xsl:template match="REPORT_PAGE_HEADER">
</xsl:template>
<xsl:template match="TABLE_HEADER">
</xsl:template>

<xsl:template match="REPORT/DEALS/TABLE_HEADER"  name="DoTableHeader">
	<tr bgcolor="#e0e4ff" align="center" valign="top">
		<td align="left"><font  color="blue" size="2"><b><xsl:value-of select=".//CUST_OR_CURR"/></b></font></td>
		<td><font  color="blue" size="2"><b><xsl:value-of select=".//TOTALS"/></b></font></td>
		<td align="left"><font  color="blue" size="2"><b><xsl:value-of select=".//AMOUNT"/></b></font></td>
		<td align="left"><font  color="blue" size="2"><b><xsl:value-of select=".//AMOUNT_LOC"/></b></font></td>
		<td align="left"><font  color="blue" size="2"><b><xsl:value-of select=".//BALANC"/></b></font></td>
		<td align="left"><font  color="blue" size="2"><b><xsl:value-of select=".//BALANCE_LOC"/></b></font></td>
	</tr>
</xsl:template>

<xsl:template match="DEAL">
</xsl:template>

<xsl:template match="SUB_TOTAL">
		<tr>
			<td align="left"><xsl:value-of select="DATA_ITEM"/></td>
			<td align="left"><xsl:value-of select="SUM_ROWS"/></td>
			<td align="right"><xsl:value-of select="SUM_CUR"/></td>
			<td align="right"><xsl:value-of select="SUM_LOC_AMOUNT"/></td>
			<td align="right"><xsl:value-of select="SUM_BALANCE"/></td>
			<td align="right"><xsl:value-of select="SUM_LOC_BALANCE"/></td>
		</tr>
		<tr><td colspan="6"><hr/></td></tr>
</xsl:template>

<!--   the cancel button  -->
<xsl:template match="REPORT/PAGES" name="cancel_button">
		<tr>
			<td colspan="6" align="center">
		         <a href="{.//CANCEL_HREF}">
		            <IMG SRC="{.//CANCEL_IMG_SRC}" border='0' />
		      </a>
                  </td>
		</tr>
</xsl:template>


<xsl:template match="/">
   <html xmlns="http://www.w3.org/TR/xhtml1/strict">
      <head>
        <title>Deal Report</title>
      </head>
	<LINK REL="STYLESHEET" TYPE="text/css" HREF="netimex_style.css" TITLE="netimex_style"/>
      <body>
       <table border="0" cellspacing="2">
	    <tbody>
		 <xsl:call-template name="ReportPageHeader"/>
		<xsl:apply-templates select="REPORT/DEALS/REPORT_DATA"/>
		<!-- add by Ron -->
  		    <xsl:call-template name="cancel_button"/>
	    </tbody>
	   </table>
      </body>
   </html>
</xsl:template>


</xsl:stylesheet>
