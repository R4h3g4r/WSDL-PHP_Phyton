<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="REPORT/DEALS/REPORT_HEADER" name="ReportPageHeader">
	 	<tr align="right" valign="top">
			<td colspan="10"><font  size="2"><xsl:value-of select=".//REPORT_DATE"/></font></td>
	    </tr>
	    <tr><td></td></tr>
	    <br/>
        <tr align="center" valign="top">
			<td colspan="10"><font  size="4"><b><xsl:value-of select=".//HEADER"/></b></font></td>
	    </tr>
	<xsl:if test="contains(.//ORDER_BY_EMPTY/text(),'False')">
		<tr align="center" valign="top">
			<td colspan="10"><font  size="2"><b><xsl:value-of select=".//ORDER_BY"/></b></font></td>
		</tr>
	</xsl:if>
	<xsl:if test="contains(.//CRITERIA_EMPTY/text(),'False')">
		<tr align="center" valign="top">
			<td colspan="10"><font  size="2"><b><xsl:value-of select=".//CRITERIA"/></b></font></td>
		</tr>
	</xsl:if>
	<xsl:if test="contains(.//LOCAL_CURRENCY_EMPTY/text(),'False')">
		<tr align="center" valign="top">
			<td colspan="10"><font  size="2"><b><xsl:value-of select=".//LOCAL_CURRENCY"/></b></font></td>
		</tr>
	</xsl:if>

	    <tr align="center" valign="top">
			<td colspan="10"><font  size="2"><b><i><xsl:value-of select=".//DATE_RANGE"/></i></b></font></td>
	    </tr>
	    <tr><td></td></tr>
	    <br/>
   <xsl:call-template name="DoTableHeader"/>
</xsl:template>

<xsl:template match="REPORT_PAGE_HEADER">
</xsl:template>
<xsl:template match="TABLE_HEADER">
</xsl:template>


<xsl:template  match="REPORT/DEALS/REPORT_HEADER" name="DoTableHeader">
	<tr bgcolor="#e0e4ff" align="center" valign="top">
		<xsl:if test="contains(.//SHOW_CUST/text(),'true')">
			<td><font  color="blue" size="2"><b><xsl:value-of select=".//CUST"/></b></font></td>
		</xsl:if>
		<td><font  color="blue" size="2"><b><xsl:value-of select=".//REF"/></b></font></td>
		<td><font  color="blue" size="2"><b><xsl:value-of select=".//DEAL_NO_HEAD"/></b></font></td>
		<td><font  color="blue" size="2"><b><xsl:value-of select=".//COUNTER_PARTY"/></b></font></td>
		<td><font  color="blue" size="2"><b><xsl:value-of select=".//ISSUE"/></b></font></td>
		<td><font  color="blue" size="2"><b><xsl:value-of select=".//EXPIRY"/></b></font></td>
		<!--td><font  color="blue" size="2"><b>Shipment Date</b></font></td>
		<td><font  color="blue" size="2"><b><xsl:value-of select=".//SIGHT"/></b></font></td-->
		<td><font  color="blue" size="2"><b><xsl:value-of select=".//CURR"/></b></font></td>
		<td><font  color="blue" size="2"><b><xsl:value-of select=".//AMOUNT"/></b></font></td>
		<td><font  color="blue" size="2"><b><xsl:value-of select=".//AMOUNT_LOC"/></b></font></td>
		<td><font  color="blue" size="2"><b><xsl:value-of select=".//BALANC"/></b></font></td>
		<td><font  color="blue" size="2"><b><xsl:value-of select=".//BALANCE_LOC"/></b></font></td>
	</tr>
</xsl:template>

<xsl:template match="DEAL">
			<tr valign="top"><font size="2" >
				<xsl:if test="contains(.//SHOW_CUST_NAME/text(),'true')">
					<td align="left"><font size="2" ><xsl:value-of select=".//CUST_NAME"/></font></td>
				</xsl:if>
				<td align="left"><font size="2" ><xsl:value-of select=".//REF_NO"/></font></td>
				<td align="right"><font size="2" ><xsl:value-of  select=".//DEAL_NO"/></font></td>
				<td align="center"><font size="2" ><xsl:value-of select=".//COUNTERPARTY"/></font></td>
				<td align="left"><font size="2" ><xsl:value-of select=".//ISSUE_DATE"/></font></td>
				<td align="left"><font size="2" ><xsl:value-of select=".//EXPIRY_DATE"/></font></td>
				<td align="left"><font size="2" ><xsl:value-of select=".//CURRENCY"/></font></td>
				<td align="right">				
                           <font size="2" ><xsl:value-of select=".//ORIGINAL_AMOUNT"/></font></td>
				<td align="right">
				        <font size="2" ><xsl:value-of select=".//ORIGINAL_AMOUNT_LOC_CURR"/></font></td>
				<td align="right">
                              <font size="2" ><xsl:value-of select=".//BALANCE"/></font></td>
				<td align="right">
                              <font size="2" ><xsl:value-of select=".//BALANCE_LOC_CURR"/></font></td>
			</font>
			</tr>
			<tr><td colspan="11"><hr/></td></tr>
</xsl:template>
  
<xsl:template match="SUB_TOTAL">
		<tr>
		<xsl:variable name="temp">
		      <xsl:value-of select=".//SHOW_CUST" />
		</xsl:variable>

		<xsl:variable name="col">
		      <xsl:choose>
                        <xsl:when test="$temp = 'true'"><xsl:value-of select="7" /></xsl:when>
                        <xsl:otherwise><xsl:value-of select="6" /></xsl:otherwise>
                   </xsl:choose>
             </xsl:variable>	
            <td bgcolor="yellow" colspan="{$col}" align="left">        
		             <B><xsl:value-of select="TOTAL_ROWS_HEADER"/> <xsl:value-of select="DATA_OUTPUT"/> - <xsl:value-of select="DATA_ITEM"/>:                                         <xsl:value-of select="SUM_ROWS"/></B></td>
			
			<td bgcolor="yellow" align="right"><b><xsl:value-of select="SUM_CUR"/></b></td>
			<td bgcolor="yellow" align="right"><b><xsl:value-of select="SUM_LOC_AMOUNT"/></b></td>
			<td bgcolor="yellow" align="right"><b><xsl:value-of select="SUM_BALANCE"/></b></td>
			<td bgcolor="yellow" align="right"><b><xsl:value-of select="SUM_LOC_BALANCE"/></b></td>
		</tr>
		<tr><td colspan="11"><hr/></td></tr>
</xsl:template>

<!--   the cancel button  -->
<xsl:template match="REPORT/PAGES" name="cancel_button">
	<tr>
		<td colspan="10" align="center">	
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
       <table border="0" cellspacing="0">
	    <tbody>
		 <xsl:call-template name="ReportPageHeader"/>
		<xsl:apply-templates select="REPORT/DEALS/REPORT_DATA"/>
		<!--===== This area here is for paging (not in use right now)=========-->
		<!--table align="center">
			<tr>
		<xsl:for-each select="REPORT/PAGES/PAGE">
			<xsl:choose>
				<xsl:when test="contains(CURRENT_PAGE/text(),'True')">
					<td><font size="4"><b><xsl:value-of select=".//PAGE_NUMBER"/></b></font></td>
				</xsl:when>
			
				<xsl:when test="contains(CURRENT_PAGE/text(),'False')">
					<td><font size="4"><a href= <xsl:value-of select=".//PAGE_HREF"/> ><xsl:value-of select="./PAGE_NUMBER"/></a></font>&nbsp;</td>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
			</tr>
		</table-->
		<tr>
			<td colspan="10"><b><xsl:apply-templates select="REPORT/DEALS/REPORT_FOOTER"/></b></td>
		</tr>
		 <xsl:call-template name="cancel_button"/>
	    </tbody>
	   </table>
      </body>
   </html>
</xsl:template>
	
</xsl:stylesheet>
