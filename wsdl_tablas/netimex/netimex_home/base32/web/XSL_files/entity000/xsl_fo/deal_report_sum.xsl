<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <!-- =======  Back Ground Color of the  table header: CS - 'silver', SCB -'#e0e4ff' ======= -->
    <!--xsl:variable name="backgrColorH" select="'silver'" /-->
    <xsl:variable name="backgrColorH" select="'#e0e4ff'" />
    <!-- =======  Back Ground Color of the  table even rows: CS - 'silver', SCB -'white' ======= -->
    <!--xsl:variable name="backgrColorR" select="'silver'" /-->
    <xsl:variable name="backgrColorR" select="'white'" />

    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="8.27in" page-width="11.69in" margin-left="0.7in" margin-right="0.7in">
                <fo:region-before extent="1.79in" />
                <fo:region-body margin-top="1.79in" margin-bottom="0.79in" font-family="Helvetica,Times,Courier" font-size="14pt" />
                <fo:region-after extent="0.79in" />
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:template match="/">
        <fo:root>
            <xsl:copy-of select="$fo:layout-master-set" />
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block>
                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="672pt" />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell display-align="after" height="20pt" text-align="right" width="672pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <xsl:for-each select="REPORT">
                                                <xsl:for-each select="DEALS">
                                                    <xsl:for-each select="REPORT_HEADER">
                                                        <xsl:for-each select="REPORT_DATE">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="after" height="17pt" text-align="center" width="672pt" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="REPORT">
                                                <xsl:for-each select="DEALS">
                                                    <xsl:for-each select="REPORT_HEADER">
                                                        <xsl:for-each select="HEADER">
                                                            <fo:inline font-size="13pt" font-weight="bold">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="6pt" padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="after" text-align="center" width="672pt" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-weight="bold">&#160;</fo:inline>
                                            <xsl:for-each select="REPORT">
                                                <xsl:for-each select="DEALS">
                                                    <xsl:for-each select="REPORT_HEADER">
                                                        <xsl:for-each select="ORDER_BY">
                                                            <xsl:if test="contains(  ../ORDER_BY_EMPTY , &apos;False&apos; )">
                                                                <fo:inline font-size="10pt" font-style="italic">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:if>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <xsl:for-each select="REPORT">
                                                <xsl:for-each select="DEALS">
                                                    <xsl:for-each select="REPORT_HEADER">
                                                        <xsl:for-each select="CRITERIA">
                                                            <xsl:if test="contains(  ../CRITERIA_EMPTY , &apos;False&apos; )">
                                                                <fo:inline font-size="10pt" font-style="italic">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:if>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <xsl:for-each select="REPORT">
                                                <xsl:for-each select="DEALS">
                                                    <xsl:for-each select="REPORT_HEADER">
                                                        <xsl:for-each select="LOCAL_CURRENCY">
                                                            <xsl:if test="contains(  ../LOCAL_CURRENCY_EMPTY , &apos;False&apos; )">
                                                                <fo:inline font-size="10pt" font-style="italic">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:if>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell font-size="10pt" line-height="8pt" padding-after="0pt" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="REPORT">
                                                <xsl:for-each select="DEALS">
                                                    <xsl:for-each select="TABLE_HEADER">
                                                        <xsl:if test="position()=1">
                                                            <fo:table table-layout="fixed" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                            
                                                                <xsl:if test="contains(  SHOW_CUST , &apos;true&apos; )">    <!--One new row-->
                                                                   <fo:table-column column-width="90pt" />                                                                
                                                                </xsl:if>											   <!--=========-->

                                                                <fo:table-column column-width="80pt" />
                                                                <fo:table-column column-width="110pt" />
                                                                <fo:table-column column-width="110pt" />
                                                                <fo:table-column column-width="110pt" />
                                                                <fo:table-column column-width="120pt" />
                                                                <fo:table-body>
                                                                    <xsl:for-each select="../TABLE_HEADER">
                                                                        <fo:table-row>
                                                                        
                                                                            <xsl:if test="contains(  SHOW_CUST , &apos;true&apos; )">    <!-- One new row-->

                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" padding-start="0pt" background-color="{$backgrColorH}" display-align="before" text-align="left" width="90pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="CUST_OR_CURR">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                    <fo:block>
                                                                                        <fo:leader leader-pattern="space" />
                                                                                    </fo:block>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            
                                                                            </xsl:if>								<!--=========-->

                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="80pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="TOTALS">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="110pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="AMOUNT">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="110pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="AMOUNT_LOC">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="110pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="BALANC">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="120pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="BALANCE_LOC">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </xsl:for-each>
                                                                </fo:table-body>
                                                            </fo:table>
                                                        </xsl:if>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after" display-align="after">
                    <fo:block>
                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-column column-width="150pt" />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="before" height="25pt" text-align="left" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-weight="bold">Document: D:\Program Files\DocPreparation\DealReport\deal_report_sum.dtd</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="before" text-align="right" width="150pt" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-weight="bold">Page: </fo:inline>
                                            <fo:page-number font-weight="bold" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell padding-before="0pt" padding-start="3pt" padding-end="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="REPORT">
                                                <xsl:for-each select="DEALS">
                                                    <xsl:for-each select="REPORT_DATA">
                                                        <xsl:for-each select="SUB_TOTAL">
                                                            <xsl:if test="position()=1">
                                                                <fo:table table-layout="fixed" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
 								<xsl:if test="contains(  SHOW_CUST, &apos;true&apos; )">   <!-- One new row-->

                                                                    <fo:table-column column-width="90pt" />
 							      </xsl:if>								       			 <!--=========-->                                                         
                                                                    <fo:table-column column-width="80pt" />
                                                                    <fo:table-column column-width="110pt" />
                                                                    <fo:table-column column-width="110pt" />
                                                                    <fo:table-column column-width="110pt" />
                                                                    <fo:table-column column-width="120pt" />
                                                                    <fo:table-body>
                                                                        <xsl:for-each select="../SUB_TOTAL">
                                                                            <fo:table-row>
                                                                            
                                            <xsl:if test="position()  mod 2 = 0" >    <!--5 new rows -->
                                               <!--xsl:attribute name="background-color">gray</xsl:attribute -->   <!-- can use this record without variable -->
                                               <xsl:attribute name="background-color">
                                                  <xsl:value-of select="$backgrColorR" />
                                               </xsl:attribute>
                                            </xsl:if>
                                                                   							   
                                            <xsl:variable name="borderColor">
                    			        <xsl:choose>
			  					<xsl:when test="position()  mod 2 = 0" >  
			       					<xsl:value-of select="$backgrColorR" /> 
			  					</xsl:when>
			   					<xsl:otherwise>
			       					<xsl:value-of select="'white'" /> 
			   					</xsl:otherwise>
		     					  </xsl:choose>
		 				     </xsl:variable>
		 				     
                                             <xsl:if test="contains(  SHOW_CUST, &apos;true&apos; )">   <!-- One new row-->                        	                                                                            
                                                                                <fo:table-cell padding-before="0pt" width="90pt" padding-start="3pt" padding-end="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="DATA_ITEM">
                                                                                            <fo:inline font-size="9pt" font-weight="bold">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                
                                             </xsl:if> 						<!--=========-->
                                                                                
                                                                                <fo:table-cell padding-before="0pt" text-align="center" width="80pt" padding-start="3pt" padding-end="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="SUM_ROWS">
                                                                                            <fo:inline font-size="9pt" font-weight="bold">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell padding-before="0pt" text-align="right" width="110pt" padding-start="3pt" padding-end="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="SUM_CUR">
                                                                                            <fo:inline font-size="9pt" font-weight="bold">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell padding-before="0pt" text-align="right" width="110pt" padding-start="3pt" padding-end="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="SUM_LOC_AMOUNT">
                                                                                            <fo:inline font-size="9pt" font-weight="bold">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell padding-before="0pt" text-align="right" width="110pt" padding-start="3pt" padding-end="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="SUM_BALANCE">
                                                                                            <fo:inline font-size="9pt" font-weight="bold">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell padding-before="0pt" text-align="right" width="120pt" padding-start="3pt" padding-end="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="SUM_LOC_BALANCE">
                                                                                            <fo:inline font-size="9pt" font-weight="bold">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                            </fo:table-row>
                                                                        </xsl:for-each>
                                                                    </fo:table-body>
                                                                </fo:table>
                                                            </xsl:if>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
