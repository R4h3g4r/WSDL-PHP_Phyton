<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <!-- =======  Back Ground Color of the  table header: CS - 'silver', SCB -'#e0e4ff' ======= -->
    <xsl:variable name="backgrColorH" select="'silver'" />
    <!--xsl:variable name="backgrColorH" select="'#e0e4ff'" /-->
    <!-- =======  Back Ground Color of the  table even rows: CS - 'silver', SCB -'white' ======= -->
    <xsl:variable name="backgrColorR" select="'silver'" />
    <!--xsl:variable name="backgrColorR" select="'white'" /-->

    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="8.27in" page-width="11.69in" margin-left="0.5in" margin-right="0.5in">
                <fo:region-before extent="1.7in" />
                <fo:region-body margin-top="1.7in" margin-bottom="0.7in" font-family="Helvetica,Times,Courier" font-size="14pt" />
                <fo:region-after extent="0.7in" />
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
                            <fo:table-column column-width="700pt" />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell display-align="after" height="20pt" text-align="right" width="662pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
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
                                <fo:table-row display-align="after" height="15pt">
                                    <fo:table-cell line-height="6pt" padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="after" height="17pt" text-align="center" width="700pt" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
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
                                            <fo:inline font-weight="bold">&#160;</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row display-align="before" height="30pt">
                                    <fo:table-cell line-height="6pt" padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="before" height="30pt" text-align="center" width="700pt" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="REPORT">
                                                <xsl:for-each select="DEALS">
                                                    <xsl:for-each select="REPORT_HEADER">
                                                        <xsl:for-each select="ORDER_BY">
                                                            <!--xsl:if test="contains(  ../ORDER_BY_EMPTY , &apos;False&apos; )"-->
                                                                <fo:inline font-size="10pt" font-style="italic">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            <!--/xsl:if-->
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
                                                                   <fo:table-column column-width="80pt" />
                                                                </xsl:if>											   <!--=========-->
                                                                
                                                                <fo:table-column column-width="75pt" />
                                                                <fo:table-column column-width="69pt" />
                                                                <fo:table-column column-width="96pt" />
                                                                <fo:table-column column-width="42pt" />
                                                                <fo:table-column column-width="42pt" />
                                                                <fo:table-column column-width="30pt" />
                                                                <fo:table-column column-width="82pt" />
                                                                <fo:table-column column-width="82pt" />
                                                                <fo:table-column column-width="82pt" />
                                                                <fo:table-column column-width="82pt" />
                                                                <fo:table-body>
                                                                    <xsl:for-each select="../TABLE_HEADER">
                                                                        <fo:table-row>
                                                                        
                                                                        	   <xsl:if test="contains(  SHOW_CUST , &apos;true&apos; )">    <!-- One new row-->

                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" padding-start="0pt" background-color="{$backgrColorH}" display-align="before" text-align="left" width="80pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <!--xsl:if test="contains(  SHOW_CUST , &apos;true&apos; )"-->
                                                                                        <xsl:for-each select="CUST">
                                                                                            <fo:inline color="blue" font-weight="bold">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    <!--/xsl:if-->
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            
                                                                            </xsl:if>								<!--=========-->

                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="75pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="REF">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="69pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="DEAL_NO_HEAD">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="96pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="COUNTER_PARTY">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="42pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="ISSUE">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="42pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="EXPIRY">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="CURR">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="82pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="AMOUNT">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="82pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="AMOUNT_LOC">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="82pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="BALANC">
                                                                                        <fo:inline color="blue" font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-after-color="{$backgrColorH}" border-before-color="{$backgrColorH}" border-end-color="{$backgrColorH}" border-start-color="{$backgrColorH}" font-size="10pt" line-height="8pt" padding-after="0pt" background-color="{$backgrColorH}" display-align="before" text-align="center" width="82pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" border-style="solid" border-width="1pt" border-color="white">
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
                                <fo:table-row height="6pt">
                                    <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" height="6pt" number-columns-spanned="2" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:block color="black" space-before.optimum="-8pt">
                                                <fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="1pt" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="left" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-weight="bold">Document:deal_report.xml</fo:inline>
                                            <fo:inline font-weight="bold"></fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" width="150pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
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
                                    <fo:table-cell padding-after="0pt" padding-before="0pt" padding-start="3pt" padding-end="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="REPORT">
                                                <xsl:for-each select="DEALS">
                                                    <xsl:for-each select="REPORT_DATA">
                                                    
                                                    <xsl:choose>                                                      <!--Two new rows-->
                                                    <xsl:when test="SUB_TOTAL">

                                                        <xsl:for-each select="SUB_TOTAL">
                                                        
                                                        <!--xsl:value-of select="SUB_NUMBER" /-->        <!--Two new rows-->
                                                        <xsl:variable name="SubNumber" select="SUB_NUMBER" />

                                                            <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                <fo:table-column />
                                                                <fo:table-body>
                                                                    <fo:table-row>
                                                                        <fo:table-cell padding-after="0pt" padding-before="0pt" display-align="before" padding-start="3pt" padding-end="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                            <fo:block>
                                                                                <xsl:for-each select="/">
                                                                                    <xsl:for-each select="REPORT">
                                                                                        <xsl:for-each select="DEALS">
                                                                                            <xsl:for-each select="REPORT_DATA">
                                                                                            	       <!-- =========== Copy in other case from this place  =========  -->
                                                                                                <xsl:for-each select="DEAL">
                                                                                                    <xsl:if test="position()=1">
                                                                                                        <fo:table table-layout="fixed" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                                            
                                                                                           <xsl:if test="contains(  SHOW_CUST_NAME, &apos;true&apos; )">   <!-- One new row-->
																 <fo:table-column column-width="80pt" />
													    </xsl:if>								        <!--=========-->
                                                                                                            <fo:table-column column-width="75pt" />
                                                                                                            <fo:table-column column-width="70pt" />
                                                                                                            <fo:table-column column-width="96pt" />
                                                                                                            <fo:table-column column-width="42pt" />
                                                                                                            <fo:table-column column-width="42pt" />
                                                                                                            <fo:table-column column-width="30pt" />
                                                                                                            <fo:table-column column-width="82pt" />
                                                                                                            <fo:table-column column-width="82pt" />
                                                                                                            <fo:table-column column-width="82pt" />
                                                                                                            <fo:table-column column-width="82pt" />
                                                                                                            <fo:table-body>
                                                                                                                <xsl:for-each select="../DEAL">
                                                                                                                <xsl:if test="SUB_NUMBER &lt; $SubNumber  ">   <!--One new row-->

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
                                                               							   
                                             <xsl:if test="contains(  SHOW_CUST_NAME, &apos;true&apos; )">   <!-- One new row-->                        
                                                                   			    
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" padding-start="0pt" display-align="before" text-align="left" width="80pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="CUST_NAME">
                                                                                                                                     <fo:inline background-repeat="repeat-y">
                                                                                                                                         <xsl:apply-templates />
                                                                                                                                     </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        
                                             </xsl:if> 						<!--=========-->

                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" width="75pt" padding-start="3pt" padding-end="3pt" text-align="start" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="REF_NO">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="left" width="70pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="DEAL_NO">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="left" width="96pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="COUNTERPARTY">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="left" width="42pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="ISSUE_DATE">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="left" width="42pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="EXPIRY_DATE">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="center" width="30pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="CURRENCY">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="right" width="82pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="ORIGINAL_AMOUNT">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="right" width="82pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="ORIGINAL_AMOUNT_LOC_CURR">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="right" width="82pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="BALANCE">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="right" width="82pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="BALANCE_LOC_CURR">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                    </fo:table-row>
                                                                                                                    
                                                                                                                </xsl:if>           <!-- Closed if SUB_NUMBER-->
                                                                                                                </xsl:for-each>
                                                                                                            </fo:table-body>
                                                                                                        </fo:table>
                                                                                                    </xsl:if>
                                                                                                </xsl:for-each>        
                                                                                                                                 <!--Copied in other case uptill this place. -->
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>                                                                     
                                                                    <fo:table-row>
                                                                        <fo:table-cell padding-after="0pt" padding-before="0pt" padding-start="3pt" padding-end="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                            <fo:block>

<xsl:variable name="colWidth">
  <xsl:choose>
    <xsl:when test="contains(  /REPORT/DEALS/REPORT_DATA/DEAL/SHOW_CUST_NAME, &apos;true&apos; )">
      <xsl:value-of select="number(392)" />
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="number(313)" />
    </xsl:otherwise>
  </xsl:choose>
</xsl:variable>                                                                             
                                                                                <xsl:for-each select="/">
                                                                                    <xsl:for-each select="REPORT">
                                                                                        <xsl:for-each select="DEALS">
                                                                                            <xsl:for-each select="REPORT_DATA">
                                                                                                <xsl:for-each select="SUB_TOTAL">
                                                                                                    <xsl:if test="position()=1">
                                                                                                        <fo:table table-layout="fixed" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                               
                                                                                                            <fo:table-column column-width="{$colWidth}pt" />
                                                                                                            <fo:table-column column-width="123pt" />
                                                                                                            <fo:table-column column-width="83pt" />
                                                                                                            <fo:table-column column-width="83pt" />
                                                                                                            <fo:table-column column-width="83pt" />
                                                                                                            <fo:table-body>
                                                                                                                <xsl:for-each select="../SUB_TOTAL">
                                                                                                                <xsl:if test="SUB_NUMBER =  $SubNumber">  <!-- One new row-->

                                                                                                                    <fo:table-row>
																		<fo:table-cell border-after-color="yellow" border-before-color="yellow" border-end-color="yellow" border-start-color="yellow" padding-after="0pt" padding-before="0pt" padding-start="0pt" background-color="yellow" display-align="before" text-align="left" padding-end="3pt" border-style="solid" border-width="1pt" border-color="black">
                                                                                                                            <fo:block>
                                                                                                                                <fo:inline font-size="9pt" font-weight="bold"><xsl:value-of select="TOTAL_ROWS_HEADER"/></fo:inline>
                                                                                                                                <xsl:for-each select="DATA_OUTPUT">
                                                                                                                                    <fo:inline font-size="9pt" font-weight="bold">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                                <fo:inline font-weight="bold"> - </fo:inline>
                                                                                                                                <xsl:for-each select="DATA_ITEM">
                                                                                                                                    <fo:inline font-size="9pt" font-weight="bold">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>&#160;<fo:inline font-weight="bold">: </fo:inline>
                                                                                                                                <xsl:for-each select="SUM_ROWS">
                                                                                                                                    <fo:inline font-size="9pt" font-weight="bold">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell border-after-color="yellow" border-before-color="yellow" border-end-color="yellow" border-start-color="yellow" padding-after="0pt" padding-before="0pt" background-color="yellow" display-align="before" text-align="right" width="123pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-color="black">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="SUM_CUR">
                                                                                                                                    <fo:inline font-size="9pt" font-weight="bold">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell border-after-color="yellow" border-before-color="yellow" border-end-color="yellow" border-start-color="yellow" padding-after="0pt" padding-before="0pt" background-color="yellow" display-align="before" text-align="right" width="83pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-color="black">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="SUM_LOC_AMOUNT">
                                                                                                                                    <fo:inline font-size="9pt" font-weight="bold">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell border-after-color="yellow" border-before-color="yellow" border-end-color="yellow" border-start-color="yellow" padding-after="0pt" padding-before="0pt" background-color="yellow" display-align="before" text-align="right" width="83pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-color="black">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="SUM_BALANCE">
                                                                                                                                    <fo:inline font-size="9pt" font-weight="bold">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell border-after-color="yellow" border-before-color="yellow" border-end-color="yellow" border-start-color="yellow" padding-after="0pt" padding-before="0pt" background-color="yellow" display-align="before" text-align="right" width="83pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-color="black">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="SUM_LOC_BALANCE">
                                                                                                                                    <fo:inline font-size="9pt" font-weight="bold">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                    </fo:table-row>
                                                                                                                    </xsl:if>    <!-- Closed if SUB_NUMBER -->

                                                                                                                </xsl:for-each>
                                                                                                            </fo:table-body>
                                                                                                        </fo:table>
                                                                                                    </xsl:if>
                                                                                                </xsl:for-each>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                </fo:table-body>
                                                            </fo:table>
                                                        </xsl:for-each>
                                                    
                                                    </xsl:when>                     <!--Closed When-->
                  <!-- =============   Without SubTotal ==============  -->
                  					     <xsl:otherwise>
                  					     							   <xsl:for-each select="DEAL">
                                                                                                    <xsl:if test="position()=1">
                                                                                                        <fo:table table-layout="fixed" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                           <xsl:if test="contains(  SHOW_CUST_NAME , &apos;true&apos; )">   <!-- One new row-->
																 <fo:table-column column-width="80pt" />
													    </xsl:if>								        <!--=========-->
		 														  <fo:table-column column-width="75pt" />
                                                                                                            <fo:table-column column-width="70pt" />
                                                                                                            <fo:table-column column-width="96pt" />
                                                                                                            <fo:table-column column-width="42pt" />
                                                                                                            <fo:table-column column-width="42pt" />
                                                                                                            <fo:table-column column-width="30pt" />
                                                                                                            <fo:table-column column-width="82pt" />
                                                                                                            <fo:table-column column-width="82pt" />
                                                                                                            <fo:table-column column-width="82pt" />
                                                                                                            <fo:table-column column-width="82pt" />
                                                                                                            <fo:table-body>
                                                                                                                <xsl:for-each select="../DEAL">
                                                                                                                <!--xsl:if test="SUB_NUMBER =;  $SubNumber"-->    <!--==== -->

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
                                                                   							   
              
<xsl:if test="contains(  SHOW_CUST_NAME, &apos;true&apos; )">   <!-- One new row-->                        
                                                                   			    
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" padding-start="0pt" display-align="before" text-align="left" width="80pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="CUST_NAME">
                                                                                                                                     <fo:inline background-repeat="repeat-y">
                                                                                                                                         <xsl:apply-templates />
                                                                                                                                     </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        
                                             </xsl:if> 						<!--=========-->

                                                                                                                        
                                                                                                                            <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" width="75pt" padding-start="3pt" padding-end="3pt" text-align="start" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="REF_NO">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        
                                                                                                                        
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="left" width="70pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="DEAL_NO">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="left" width="96pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="COUNTERPARTY">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="left" width="42pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="ISSUE_DATE">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="left" width="42pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="EXPIRY_DATE">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="center" width="30pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="CURRENCY">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="right" width="82pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="ORIGINAL_AMOUNT">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="right" width="82pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="ORIGINAL_AMOUNT_LOC_CURR">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="right" width="82pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="BALANCE">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                        <fo:table-cell font-size="8pt" padding-after="0pt" padding-before="0pt" display-align="before" text-align="right" width="82pt" padding-start="3pt" padding-end="3pt" border-style="solid" border-width="1pt" border-left-color="{$borderColor}" border-right-color="{$borderColor}" border-top-color="{$borderColor}" border-bottom-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="BALANCE_LOC_CURR">
                                                                                                                                    <fo:inline background-repeat="repeat-y">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                    </fo:table-row>
                                                                                                                    
                                                                                                                <!--/xsl:if-->           <!-- Closed if SUB_NUMBER-->
                                                                                                                </xsl:for-each>
                                                                                                            </fo:table-body>
                                                                                                        </fo:table>
                                                                                                    </xsl:if>
                                                                                                </xsl:for-each>        
								</xsl:otherwise>
								</xsl:choose>
                  					      
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <xsl:for-each select="REPORT">
                            <xsl:for-each select="DEALS">
                                <xsl:for-each select="REPORT_FOOTER">
                                    <xsl:for-each select="NUMBER_OF_DEALS">
                                        <fo:inline font-size="10pt" font-style="italic" font-weight="bold">
                                            <xsl:apply-templates />
                                        </fo:inline>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </xsl:for-each>                        
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
