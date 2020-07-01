<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="8.5in" page-width="11.2in" margin-left="0.6in" margin-right="0.6in">
                <fo:region-body margin-top="0.79in" margin-bottom="0.79in" font-family="Helvetica,Times,Courier" font-size="14pt" />
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:template match="/">
        <fo:root>
            <xsl:copy-of select="$fo:layout-master-set" />
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="352pt" />
                                                <fo:table-column />
                                                <fo:table-column />
                                                <fo:table-column />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell height="40pt" number-rows-spanned="3" width="352pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column />
                                                                    <fo:table-column />
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell line-height="8pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block />
                                                                            </fo:table-cell>
                                                                            <fo:table-cell line-height="8pt" height="38pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="Internals">
                                                                                            <xsl:for-each select="customer_name">
                                                                                                <fo:inline font-size="8pt">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                    <fo:block>
                                                                                        <fo:leader leader-pattern="space" />
                                                                                    </fo:block>
                                                                                    <xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="Internals">
                                                                                            <xsl:for-each select="street">
                                                                                                <fo:inline font-size="8pt">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                    <fo:block>
                                                                                        <fo:leader leader-pattern="space" />
                                                                                    </fo:block>
                                                                                    <xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="Internals">
                                                                                            <xsl:for-each select="city">
                                                                                                <fo:inline font-size="8pt">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                    <fo:block>
                                                                                        <fo:leader leader-pattern="space" />
                                                                                    </fo:block>
                                                                                    <xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="Internals">
                                                                                            <xsl:for-each select="country">
                                                                                                <fo:inline font-size="8pt">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </fo:table-body>
                                                                </fo:table>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell height="40pt" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column column-width="232pt" />
                                                                    <fo:table-column />
                                                                    <fo:table-column />
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell width="232pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block />
                                                                            </fo:table-cell>
                                                                            <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block />
                                                                            </fo:table-cell>
                                                                            <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block />
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell width="232pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12pt" font-weight="bold">Commercial Invoice</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="DocInfo">
                                                                                            <xsl:for-each select="References">
                                                                                                <xsl:for-each select="referenceValue">
                                                                                                    <xsl:if test="contains(  ../referenceQualifier  , &apos;380&apos;)">
                                                                                                        <fo:inline font-size="7pt">
                                                                                                            <xsl:apply-templates />
                                                                                                        </fo:inline>
                                                                                                    </xsl:if>
                                                                                                </xsl:for-each>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="7pt">Date</fo:inline>&#160;<xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="GeneralInformation">
                                                                                            <xsl:for-each select="DateDetails">
                                                                                                <xsl:for-each select="dateValue">
                                                                                                    <xsl:if test="../dateQualifier = 136">
                                                                                                        <fo:inline font-size="7pt">
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
                                                                    </fo:table-body>
                                                                </fo:table>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell line-height="4pt" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column />
                                                                    <fo:table-column />
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell number-rows-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="7pt">Customer Reference</fo:inline>
                                                                                    <fo:inline font-size="10pt">&#160;</fo:inline>
                                                                                    <xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="Internals">
                                                                                            <xsl:for-each select="deal_no">
                                                                                                <fo:inline font-size="7pt">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="7pt">Order Confirmation</fo:inline>
                                                                                    <fo:inline font-size="7pt">&#160;</fo:inline>
                                                                                    <xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="External">
                                                                                            <xsl:for-each select="References">
                                                                                                <xsl:for-each select="referenceValue">
                                                                                                    <xsl:if test="contains(  ../referenceQualifier  , &apos;216&apos; )">
                                                                                                        <fo:inline font-size="7pt">
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
                                                                            <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="7pt">Delivery Number </fo:inline>
                                                                                    <fo:inline font-size="9pt">&#160;&#160;&#160; </fo:inline>
                                                                                    <xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="External">
                                                                                            <xsl:for-each select="References">
                                                                                                <xsl:for-each select="referenceValue">
                                                                                                    <xsl:if test="contains(  ../referenceQualifier  , &apos;640&apos; )">
                                                                                                        <fo:inline font-size="7pt">
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
                                                                    </fo:table-body>
                                                                </fo:table>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell line-height="10pt" height="34pt" number-rows-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Sold to</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Party">
                                                                        <xsl:for-each select="organizationName">
                                                                            <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos;)">
                                                                                <fo:inline font-size="8pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Party">
                                                                        <xsl:for-each select="AddressInformation">
                                                                            <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos; )">
                                                                                <fo:inline font-size="8pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="10pt" height="34pt" number-rows-spanned="2" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Ship to</fo:inline>
                                                                <fo:inline font-size="7"></fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Party">
                                                                        <xsl:for-each select="organizationName">
                                                                            <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos;)">
                                                                                <fo:inline font-size="8pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Party">
                                                                        <xsl:for-each select="AddressInformation">
                                                                            <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos; )">
                                                                                <fo:inline font-size="8pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="10pt" height="34pt" number-rows-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Bill to</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Party">
                                                                        <xsl:for-each select="organizationName">
                                                                            <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos;)">
                                                                                <fo:inline font-size="8pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Party">
                                                                        <xsl:for-each select="AddressInformation">
                                                                            <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos; )">
                                                                                <fo:inline font-size="8pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell line-height="4pt" height="34pt" width="352pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column column-width="129pt" />
                                                                    <fo:table-column column-width="94pt" />
                                                                    <fo:table-column />
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell line-height="6pt" height="15pt" number-rows-spanned="2" width="129pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="7pt">Bank Account Details</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell line-height="6pt" height="15pt" number-rows-spanned="2" width="94pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="PaymentTerms">
                                                                                            <xsl:for-each select="BankDetails">
                                                                                                <xsl:for-each select="BankAccountReference">
                                                                                                    <xsl:for-each select="bankAccountName">
                                                                                                        <fo:inline font-size="7pt">
                                                                                                            <xsl:apply-templates />
                                                                                                        </fo:inline>
                                                                                                    </xsl:for-each>
                                                                                                </xsl:for-each>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell line-height="6pt" height="15pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="7pt">Account Nr</fo:inline>&#160;<xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="PaymentTerms">
                                                                                            <xsl:for-each select="BankDetails">
                                                                                                <xsl:for-each select="BankAccountReference">
                                                                                                    <xsl:for-each select="bankAccountNumber">
                                                                                                        <fo:inline font-size="7pt">
                                                                                                            <xsl:apply-templates />
                                                                                                        </fo:inline>
                                                                                                    </xsl:for-each>
                                                                                                </xsl:for-each>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                    <fo:inline font-size="9pt">&#160;&#160; </fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell line-height="6pt" height="15pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="7pt">SWIFT Code </fo:inline>
                                                                                    <fo:inline font-size="9pt">&#160; </fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </fo:table-body>
                                                                </fo:table>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="89pt" />
                                                <fo:table-column column-width="164pt" />
                                                <fo:table-column />
                                                <fo:table-column />
                                                <fo:table-column column-width="37pt" />
                                                <fo:table-column column-width="38pt" />
                                                <fo:table-column column-width="31pt" />
                                                <fo:table-column column-width="37pt" />
                                                <fo:table-column column-width="62pt" />
                                                <fo:table-column />
                                                <fo:table-column column-width="63pt" />
                                                <fo:table-column column-width="70pt" />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell height="17pt" text-align="center" width="89pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Item No.</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell height="17pt" text-align="center" width="164pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Description</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell height="17pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Quantity</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="10pt" height="17pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Unit of Measure</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="10pt" height="17pt" text-align="center" width="37pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Net </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:if test="position() = 1">
                                                                            <xsl:for-each select="LineItem">
                                                                                <xsl:for-each select="Product">
                                                                                    <xsl:for-each select="NetWeight">
                                                                                        <xsl:for-each select="weightUnitCode">
                                                                                            <fo:inline font-size="7pt">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:if>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="10pt" height="17pt" text-align="center" width="38pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Gross </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:if test="position() = 1">
                                                                            <xsl:for-each select="LineItem">
                                                                                <xsl:for-each select="Product">
                                                                                    <xsl:for-each select="GrossWeight">
                                                                                        <xsl:for-each select="weightUnitCode">
                                                                                            <fo:inline font-size="7pt">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:if>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="10pt" height="17pt" text-align="center" width="31pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Vol </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:if test="position() = 1">
                                                                            <xsl:for-each select="LineItem">
                                                                                <xsl:for-each select="Product">
                                                                                    <xsl:for-each select="NetVolume">
                                                                                        <xsl:for-each select="volumeUnitCode">
                                                                                            <fo:inline font-size="7pt">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:if>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="10pt" height="17pt" text-align="center" width="37pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Number of </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:if test="position() = 1">
                                                                            <xsl:for-each select="LineItem">
                                                                                <xsl:for-each select="Product">
                                                                                    <xsl:for-each select="PackageCount">
                                                                                        <xsl:for-each select="typeOfPackage">
                                                                                            <fo:inline font-size="7pt">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:if>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="10pt" height="17pt" text-align="center" width="62pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Price per unit</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell height="17pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Disc 1</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="10pt" height="17pt" text-align="center" width="63pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Net Price per Unit</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell height="17pt" text-align="center" width="70pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Total</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell line-height="7pt" text-align="left" width="89pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:for-each select="LineItem">
                                                                            <xsl:for-each select="Product">
                                                                                <xsl:if test="position()=1">
                                                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                        <fo:table-column column-width="95pt" />
                                                                                        <fo:table-body>
                                                                                            <xsl:for-each select="../Product">
                                                                                                <fo:table-row>
                                                                                                    <fo:table-cell line-height="7pt" text-align="left" width="95pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                        <fo:block>
                                                                                                            <xsl:for-each select="productName">
                                                                                                                <fo:inline font-size="7pt">
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
                                                        <fo:table-cell line-height="7pt" width="164pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:for-each select="LineItem">
                                                                            <xsl:for-each select="Product">
                                                                                <xsl:for-each select="ProductCharacteristics">
                                                                                    <xsl:for-each select="C_ProductCharacteristic">
                                                                                        <xsl:if test="c_ProductCharacteristicQualifier = &apos;ItemDescription&apos;">
                                                                                            <xsl:for-each select="c_ProductCharacteristicValue">
                                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                                    <fo:table-column />
                                                                                                    <fo:table-body>
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell line-height="7pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                                                <fo:block>
                                                                                                                    <fo:inline font-size="7pt">
                                                                                                                        <xsl:apply-templates />
                                                                                                                    </fo:inline>
                                                                                                                </fo:block>
                                                                                                            </fo:table-cell>
                                                                                                        </fo:table-row>
                                                                                                    </fo:table-body>
                                                                                                </fo:table>
                                                                                            </xsl:for-each>
                                                                                        </xsl:if>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:for-each select="LineItem">
                                                                            <xsl:for-each select="LineItemQuantity">
                                                                                <xsl:if test="position()=1">
                                                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                        <fo:table-column />
                                                                                        <fo:table-body>
                                                                                            <xsl:for-each select="../LineItemQuantity">
                                                                                                <fo:table-row>
                                                                                                    <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                        <fo:block>
                                                                                                            <xsl:for-each select="value">
                                                                                                                <fo:inline font-size="7pt">
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
                                                        <fo:table-cell line-height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:for-each select="LineItem">
                                                                            <xsl:for-each select="LineItemQuantity">
                                                                                <xsl:if test="position()=1">
                                                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                        <fo:table-column />
                                                                                        <fo:table-body>
                                                                                            <xsl:for-each select="../LineItemQuantity">
                                                                                                <fo:table-row>
                                                                                                    <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                        <fo:block>
                                                                                                            <xsl:for-each select="unitOfMeasure">
                                                                                                                <fo:inline font-size="7pt">
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
                                                        <fo:table-cell line-height="5pt" text-align="right" width="37pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:for-each select="LineItem">
                                                                            <xsl:for-each select="Product">
                                                                                <xsl:for-each select="NetWeight">
                                                                                    <xsl:if test="position()=1">
                                                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                            <fo:table-column />
                                                                                            <fo:table-body>
                                                                                                <xsl:for-each select="../NetWeight">
                                                                                                    <fo:table-row>
                                                                                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                            <fo:block>
                                                                                                                <xsl:for-each select="value">
                                                                                                                    <fo:inline font-size="7pt">
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
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="5pt" text-align="right" width="38pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:for-each select="LineItem">
                                                                            <xsl:for-each select="Product">
                                                                                <xsl:for-each select="GrossWeight">
                                                                                    <xsl:if test="position()=1">
                                                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                            <fo:table-column />
                                                                                            <fo:table-body>
                                                                                                <xsl:for-each select="../GrossWeight">
                                                                                                    <fo:table-row>
                                                                                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                            <fo:block>
                                                                                                                <xsl:for-each select="value">
                                                                                                                    <fo:inline font-size="7pt">
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
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="5pt" text-align="right" width="31pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:for-each select="LineItem">
                                                                            <xsl:for-each select="Product">
                                                                                <xsl:for-each select="NetVolume">
                                                                                    <xsl:if test="position()=1">
                                                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                            <fo:table-column />
                                                                                            <fo:table-body>
                                                                                                <xsl:for-each select="../NetVolume">
                                                                                                    <fo:table-row>
                                                                                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                            <fo:block>
                                                                                                                <xsl:for-each select="value">
                                                                                                                    <fo:inline font-size="7pt">
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
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="5pt" text-align="right" width="37pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:for-each select="LineItem">
                                                                            <xsl:for-each select="Product">
                                                                                <xsl:for-each select="PackageCount">
                                                                                    <xsl:if test="position()=1">
                                                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                            <fo:table-column />
                                                                                            <fo:table-body>
                                                                                                <xsl:for-each select="../PackageCount">
                                                                                                    <fo:table-row>
                                                                                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                            <fo:block>
                                                                                                                <xsl:for-each select="numberOfPackages">
                                                                                                                    <fo:inline font-size="7pt">
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
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="5pt" text-align="right" width="62pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:for-each select="LineItem">
                                                                            <xsl:for-each select="UnitPrice">
                                                                                <xsl:if test="position()=1">
                                                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                        <fo:table-column />
                                                                                        <fo:table-body>
                                                                                            <xsl:for-each select="../UnitPrice">
                                                                                                <fo:table-row>
                                                                                                    <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                        <fo:block>
                                                                                                            <xsl:for-each select="value">
                                                                                                                <fo:inline font-size="7pt">
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
                                                        <fo:table-cell line-height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:for-each select="LineItem">
                                                                            <xsl:for-each select="Product">
                                                                                <xsl:for-each select="ProductCharacteristics">
                                                                                    <xsl:for-each select="C_ProductCharacteristic">
                                                                                        <xsl:if test="c_ProductCharacteristicQualifier = &apos;DiscountAmount&apos;">
                                                                                            <xsl:for-each select="c_ProductCharacteristicValue">
                                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                                    <fo:table-column />
                                                                                                    <fo:table-body>
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                                <fo:block>
                                                                                                                    <fo:inline font-size="7pt">
                                                                                                                        <xsl:apply-templates />
                                                                                                                    </fo:inline>
                                                                                                                </fo:block>
                                                                                                            </fo:table-cell>
                                                                                                        </fo:table-row>
                                                                                                    </fo:table-body>
                                                                                                </fo:table>
                                                                                            </xsl:for-each>
                                                                                        </xsl:if>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="5pt" text-align="right" width="63pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:for-each select="LineItem">
                                                                            <xsl:for-each select="UnitPrice">
                                                                                <xsl:for-each select="value">
                                                                                    <fo:inline font-size="7pt">
                                                                                        <xsl:apply-templates />
                                                                                    </fo:inline>
                                                                                </xsl:for-each>
                                                                                <fo:block>
                                                                                    <fo:leader leader-pattern="space" />
                                                                                </fo:block>&#160;</xsl:for-each>-<xsl:for-each select="Product">
                                                                                <xsl:for-each select="ProductCharacteristics">
                                                                                    <xsl:for-each select="C_ProductCharacteristic">
                                                                                        <xsl:if test="c_ProductCharacteristicQualifier = &apos;DiscountAmount&apos;">
                                                                                            <xsl:for-each select="c_ProductCharacteristicValue">
                                                                                                <fo:inline font-size="7pt">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </xsl:if>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>&#160;</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="5pt" text-align="right" width="70pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="LineItemDetails">
                                                                        <xsl:for-each select="LineItem">
                                                                            <xsl:for-each select="LineItemTotalAmount">
                                                                                <xsl:for-each select="MultiCurrency">
                                                                                    <xsl:for-each select="MonetaryAmount">
                                                                                        <xsl:if test="position()=1">
                                                                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                                <fo:table-column />
                                                                                                <fo:table-body>
                                                                                                    <xsl:for-each select="../MonetaryAmount">
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                                <fo:block>
                                                                                                                    <xsl:for-each select="value">
                                                                                                                        <fo:inline font-size="7pt">
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
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="170pt" />
                                                <fo:table-column column-width="63pt" />
                                                <fo:table-column column-width="78pt" />
                                                <fo:table-column column-width="42pt" />
                                                <fo:table-column column-width="41pt" />
                                                <fo:table-column column-width="42pt" />
                                                <fo:table-column column-width="41pt" />
                                                <fo:table-column />
                                                <fo:table-column column-width="50pt" />
                                                <fo:table-column />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell line-height="7pt" number-rows-spanned="3" width="301pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt" font-weight="bold">GOODS DESCRIPTION</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="AdditionalInformation">
                                                                        <xsl:for-each select="line">
                                                                            <fo:table font-size="7pt" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                <fo:table-column />
                                                                                <fo:table-body>
                                                                                    <fo:table-row>
                                                                                        <fo:table-cell line-height="7pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                            <fo:block>
                                                                                                <xsl:if test="@text_id = &apos;SYS04&apos;">
                                                                                                    <fo:inline font-size="7pt">
                                                                                                        <xsl:apply-templates />
                                                                                                    </fo:inline>
                                                                                                </xsl:if>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                </fo:table-body>
                                                                            </fo:table>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="7pt" font-weight="bold">ADDITIONAL INFORMATION</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="AdditionalInformation">
                                                                        <xsl:for-each select="line">
                                                                            <fo:table font-size="7pt" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                <fo:table-column column-width="72pt" />
                                                                                <fo:table-body>
                                                                                    <fo:table-row>
                                                                                        <fo:table-cell line-height="7pt" width="72pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                            <fo:block>
                                                                                                <xsl:if test="@text_id = &apos;ADDIN&apos;  and  @id = &apos;380&apos;">
                                                                                                    <fo:inline font-size="7pt">
                                                                                                        <xsl:apply-templates />
                                                                                                    </fo:inline>
                                                                                                </xsl:if>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                </fo:table-body>
                                                                            </fo:table>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Internals">
                                                                        <xsl:for-each select="customer_name">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="7pt" number-rows-spanned="3" width="388pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt" font-weight="bold">Destination: </fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="RoutingSummary">
                                                                        <xsl:for-each select="Location">
                                                                            <xsl:for-each select="LocationCodeOrName">
                                                                                <xsl:if test="../locationQualifier = &apos;148&apos;">
                                                                                    <fo:inline font-size="7pt">
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
                                                                <fo:inline font-size="7pt" font-weight="bold">Shipping Mark:</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="MarksAndNumbers">
                                                                            <fo:inline font-size="7pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="7pt" font-weight="bold">LC No:</fo:inline>
                                                                <fo:inline font-size="7pt">&#160;</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Internals">
                                                                        <xsl:for-each select="reference_no">
                                                                            <fo:inline font-size="7pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="7pt" font-weight="bold">Package Type:</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="PackageCount">
                                                                            <xsl:for-each select="typeOfPackage">
                                                                                <fo:inline font-size="7pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="7pt" font-weight="bold">Shipped By: </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="RoutingSummary">
                                                                        <xsl:for-each select="transportModeCode">
                                                                            <fo:inline font-size="7pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="7pt" font-weight="bold">From: </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="RoutingSummary">
                                                                        <xsl:for-each select="Location">
                                                                            <xsl:for-each select="LocationCodeOrName">
                                                                                <xsl:if test="../locationQualifier = &apos;A&apos;">
                                                                                    <fo:inline font-size="7pt">
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
                                                                <fo:inline font-size="7pt" font-weight="bold">To: </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="RoutingSummary">
                                                                        <xsl:for-each select="Location">
                                                                            <xsl:for-each select="LocationCodeOrName">
                                                                                <xsl:if test="../locationQualifier = &apos;148&apos;">
                                                                                    <fo:inline font-size="7pt">
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
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="8pt" width="50pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Total Unit of Measure</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="8pt" width="63pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Total Net </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="NetWeight">
                                                                            <xsl:for-each select="weightUnitCode">
                                                                                <fo:inline font-size="7pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="8pt" width="78pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Total Gross&#160;&#160;&#160; </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="GrossWeight">
                                                                            <xsl:for-each select="weightUnitCode">
                                                                                <fo:inline font-size="7pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="8pt" width="42pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Total Vol.&#160; </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="NetVolume">
                                                                            <xsl:for-each select="volumeUnitCode">
                                                                                <fo:inline font-size="7pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="8pt" width="41pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Total </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="PackageCount">
                                                                            <xsl:for-each select="typeOfPackage">
                                                                                <fo:inline font-size="7pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Vat Rate</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell width="50pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block />
                                                        </fo:table-cell>
                                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Amount</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell width="50pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block />
                                                        </fo:table-cell>
                                                        <fo:table-cell text-align="right" width="63pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="NetWeight">
                                                                            <xsl:for-each select="value">
                                                                                <fo:inline font-size="7pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell text-align="right" width="78pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="GrossWeight">
                                                                            <xsl:for-each select="value">
                                                                                <fo:inline font-size="7pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell text-align="right" width="42pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="NetVolume">
                                                                            <xsl:for-each select="value">
                                                                                <fo:inline font-size="7pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell width="41pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="PackageCount">
                                                                            <xsl:for-each select="numberOfPackages">
                                                                                <fo:inline font-size="7pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="9pt" number-columns-spanned="3" number-rows-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Total</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="7pt">Rebate</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="7pt">Net 1</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="7pt">Net 2</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:block>
                                                                    <xsl:text>&#xA;</xsl:text>
                                                                </fo:block>
                                                                <fo:block color="black" space-before.optimum="-8pt">
                                                                    <fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="1pt" />
                                                                </fo:block>
                                                                <fo:inline font-size="7pt" font-weight="bold">Total in&#160; </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="GeneralInformation">
                                                                        <xsl:for-each select="TotalAmount">
                                                                            <xsl:for-each select="MultiCurrency">
                                                                                <xsl:for-each select="MonetaryAmount">
                                                                                    <xsl:for-each select="currencyCode">
                                                                                        <fo:inline font-size="8pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="GeneralInformation">
                                                                        <xsl:for-each select="TotalAmount">
                                                                            <xsl:for-each select="MultiCurrency">
                                                                                <xsl:for-each select="MonetaryAmount">
                                                                                    <xsl:for-each select="value">
                                                                                        <fo:inline font-size="8pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell line-height="10pt" number-columns-spanned="5" width="170pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="7pt">Terms of Delivery and Payment:</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="7pt">&#160;</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TermsAndConditions">
                                                                        <xsl:for-each select="AdditionalTermsAndConditions">
                                                                            <fo:inline font-size="7pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="7pt">Payment Terms:&#160; </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="PaymentTerms">
                                                                        <xsl:for-each select="PaymentTermsDetail">
                                                                            <xsl:for-each select="UserDefinedPaymentTerms">
                                                                                <fo:inline font-size="7pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="7pt">Incoterms:&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="GeneralInformation">
                                                                        <xsl:for-each select="Incoterms">
                                                                            <xsl:for-each select="incotermsCode">
                                                                                <fo:inline font-size="7pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
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
