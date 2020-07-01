<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in">
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
                                    <fo:table-cell height="14pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
                                                <xsl:attribute name="src">url('<xsl:value-of select="/DocumentRoot/Internals/logo_img_src" />')</xsl:attribute>
                                            </fo:external-graphic>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="221pt" />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column column-width="77pt" />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell height="18pt" number-rows-spanned="2" text-align="center" width="195pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:inline font-size="14pt" font-weight="bold">PACKING LIST</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell line-height="10pt" height="18pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:inline font-size="9pt">No.: </fo:inline>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="DocInfo">
                                                    <xsl:if test="contains( References/referenceQualifier  , &apos;271&apos; )">
                                                        <xsl:for-each select="References">
                                                            <xsl:for-each select="referenceValue">
                                                                <fo:inline font-size="10pt">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell line-height="10pt" height="18pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:inline font-size="9pt">Date: </fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell line-height="10pt" height="18pt" width="77pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:inline font-size="9pt">Page:</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell height="18pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:inline font-size="9pt">Order No: </fo:inline>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="External">
                                                    <xsl:if test="References/referenceQualifier = 216">
                                                        <xsl:for-each select="References">
                                                            <xsl:for-each select="referenceValue">
                                                                <fo:inline font-size="9pt">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="4" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:inline font-size="9pt">Reference:</fo:inline>
                                            <fo:inline font-size="10pt">&#160;</fo:inline>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="reference_no">
                                                        <fo:inline font-size="10pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="10pt" height="23pt" width="195pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:inline font-size="9pt">Consignee:</fo:inline>
                                            <fo:inline font-size="10pt">&#160;</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>&#160;<xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Party">
                                                    <xsl:for-each select="organizationName">
                                                        <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos;)  or  contains(  ../partyQualifier  , &apos;DWE&apos;)">
                                                            <fo:inline font-size="10pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:if>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Party">
                                                    <xsl:for-each select="AddressInformation">
                                                        <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos;) or  contains(  ../partyQualifier  , &apos;DWE&apos; )">
                                                            <xsl:for-each select="line">
                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column />
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell line-height="5pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="10pt">
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
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell line-height="8pt" height="23pt" number-columns-spanned="4" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:inline font-size="9pt">Notify:</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
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
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="8pt" width="195pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:inline font-size="9pt">Marks and Numbers:</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="TotalWeightsAndMeasures">
                                                    <xsl:for-each select="MarksAndNumbers">
                                                        <fo:inline font-size="10pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
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
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
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
                                    <fo:table-cell line-height="8pt" number-columns-spanned="4" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:inline font-size="9pt">Carrier:</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="9pt">Forwarder:</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="9pt">Incoterms: </fo:inline>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="GeneralInformation">
                                                    <xsl:for-each select="Incoterms">
                                                        <xsl:for-each select="incoterm">
                                                            <fo:inline font-size="10pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="9pt">Mode of transport: </fo:inline>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="RoutingSummary">
                                                    <xsl:for-each select="transportModeCode">
                                                        <fo:inline font-size="10pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="9pt">Import license No:&#160; </fo:inline>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="External">
                                                    <xsl:if test="References/referenceQualifier = 911">
                                                        <xsl:for-each select="References">
                                                            <xsl:for-each select="referenceValue">
                                                                <fo:inline font-size="10pt">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="9pt">Letter of credit No: </fo:inline>
                                            <xsl:for-each select="DocumentRoot">
                                                <fo:inline font-size="9pt">
                                                    <xsl:for-each select="Internals">
                                                        <xsl:for-each select="deal_no">
                                                            <fo:inline font-size="10pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </fo:inline>
                                            </xsl:for-each>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="9pt">Issuing date: </fo:inline>
                                            <xsl:for-each select="DocumentRoot">
                                                <fo:inline font-size="9pt">
                                                    <xsl:for-each select="GeneralInformation">
                                                        <xsl:for-each select="DateDetails">
                                                            <xsl:if test="dateQualifier  = 136">
                                                                <xsl:for-each select="dateValue">
                                                                    <fo:inline font-size="10pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </xsl:if>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </fo:inline>
                                            </xsl:for-each>
                                            <fo:inline font-size="9pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Expiry Date: </fo:inline>
                                            <xsl:for-each select="DocumentRoot">
                                                <fo:inline font-size="9pt">
                                                    <xsl:for-each select="GeneralInformation">
                                                        <xsl:for-each select="DateDetails">
                                                            <xsl:if test="dateQualifier  = 36">
                                                                <xsl:for-each select="dateValue">
                                                                    <fo:inline font-size="10pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </xsl:if>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </fo:inline>
                                            </xsl:for-each>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell height="56pt" number-columns-spanned="5" width="221pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="217pt" />
                                                <fo:table-column />
                                                <fo:table-column />
                                                <fo:table-column />
                                                <fo:table-column />
                                                <fo:table-column />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell width="217pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="9pt">Packaging&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </fo:inline>
                                                                <fo:inline font-size="9pt">Item description </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="9pt">Net weight&#160; </fo:inline>(<xsl:for-each select="DocumentRoot">
                                                                    <fo:inline font-size="9pt">
                                                                        <xsl:for-each select="Package">
                                                                            <xsl:if test="position() = 1">
                                                                                <xsl:for-each select="PackageAndWeightDetail">
                                                                                    <xsl:for-each select="NetWeight">
                                                                                        <xsl:for-each select="weightUnitCode">
                                                                                            <fo:inline font-size="9pt">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </fo:inline>
                                                                </xsl:for-each>)</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="8pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="9pt">Package net weight</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="9pt">(</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <fo:inline font-size="9pt">
                                                                        <xsl:for-each select="Package">
                                                                            <xsl:if test="position() = 1">
                                                                                <xsl:for-each select="PackageAndWeightDetail">
                                                                                    <xsl:for-each select="NetWeight">
                                                                                        <xsl:for-each select="weightUnitCode">
                                                                                            <fo:inline font-size="9pt">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                                <fo:inline font-size="9pt">)</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="8pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="9pt">Total gross weight</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>(<xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Package">
                                                                        <xsl:if test="position() = 1">
                                                                            <xsl:for-each select="PackageAndWeightDetail">
                                                                                <xsl:for-each select="GrossWeight">
                                                                                    <xsl:for-each select="weightUnitCode">
                                                                                        <fo:inline font-size="9pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:if>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>)<fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="8pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="9pt">Dimensions</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="9pt">(</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Package">
                                                                        <xsl:if test="position() = 1">
                                                                            <xsl:for-each select="PackageAndWeightDetail">
                                                                                <xsl:for-each select="Dimensions">
                                                                                    <xsl:for-each select="dimensionUnitCode">
                                                                                        <fo:inline font-size="9pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:if>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:inline font-size="9pt">)</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="8pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:inline font-size="9pt">Total cubage</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>&#160;<fo:inline font-size="9pt">(</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Package">
                                                                        <xsl:if test="position() = 1">
                                                                            <xsl:for-each select="PackageAndWeightDetail">
                                                                                <xsl:for-each select="GrossVolume">
                                                                                    <xsl:for-each select="volumeUnitCode">
                                                                                        <fo:inline font-size="9pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:if>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:inline font-size="9pt">)</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell height="43pt" width="217pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <fo:block>
                                                                    <xsl:text>&#xA;</xsl:text>
                                                                </fo:block>
                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column />
                                                                    <fo:table-column />
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="Package">
                                                                                            <xsl:for-each select="PackageAndWeightDetail">
                                                                                                <fo:block>
                                                                                                    <xsl:text>&#xA;</xsl:text>
                                                                                                </fo:block>
                                                                                                <xsl:if test="position()=1">
                                                                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                                        <fo:table-column />
                                                                                                        <fo:table-body>
                                                                                                            <xsl:for-each select="../PackageAndWeightDetail">
                                                                                                                <fo:table-row>
                                                                                                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                                                        <fo:block>
                                                                                                                            <xsl:for-each select="marksAndNumbers">
                                                                                                                                <fo:inline font-size="9pt">
                                                                                                                                    <xsl:apply-templates />
                                                                                                                                </fo:inline>
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
                                                                                                            </xsl:for-each>
                                                                                                        </fo:table-body>
                                                                                                    </fo:table>
                                                                                                </xsl:if>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="DocumentRoot">
                                                                                        <xsl:for-each select="Package">
                                                                                            <xsl:for-each select="Content">
                                                                                                <xsl:for-each select="Product">
                                                                                                    <xsl:if test="position()=1">
                                                                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                                            <xsl:for-each select="../Product">
                                                                                                                <fo:table-column />
                                                                                                            </xsl:for-each>
                                                                                                            <fo:table-body>
                                                                                                                <fo:table-row>
                                                                                                                    <xsl:for-each select="../Product">
                                                                                                                        <fo:table-cell line-height="6pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                                                            <fo:block>
                                                                                                                                <xsl:for-each select="productName">
                                                                                                                                    <fo:inline font-size="9pt">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                                <fo:block>
                                                                                                                                    <fo:leader leader-pattern="space" />
                                                                                                                                </fo:block>
                                                                                                                                <xsl:for-each select="itemDescription">
                                                                                                                                    <fo:inline font-size="8pt">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                                <fo:block>
                                                                                                                                    <fo:leader leader-pattern="space" />
                                                                                                                                </fo:block>
                                                                                                                                <xsl:for-each select="quantity">
                                                                                                                                    <fo:inline font-size="9pt">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                                <fo:block>
                                                                                                                                    <fo:leader leader-pattern="space" />
                                                                                                                                </fo:block>
                                                                                                                                <xsl:for-each select="packageQty">
                                                                                                                                    <fo:inline font-size="9pt">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                                <fo:inline font-size="9pt"> * </fo:inline>
                                                                                                                                <xsl:for-each select="netWeight">
                                                                                                                                    <fo:inline font-size="9pt">
                                                                                                                                        <xsl:apply-templates />
                                                                                                                                    </fo:inline>
                                                                                                                                </xsl:for-each>
                                                                                                                                <fo:block>
                                                                                                                                    <fo:leader leader-pattern="space" />
                                                                                                                                </fo:block>
                                                                                                                            </fo:block>
                                                                                                                        </fo:table-cell>
                                                                                                                    </xsl:for-each>
                                                                                                                </fo:table-row>
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
                                                        </fo:table-cell>
                                                        <fo:table-cell height="43pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Package">
                                                                        <xsl:for-each select="Content">
                                                                            <xsl:for-each select="Product">
                                                                                <xsl:if test="position()=1">
                                                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                        <fo:table-column />
                                                                                        <fo:table-body>
                                                                                            <xsl:for-each select="../Product">
                                                                                                <fo:table-row>
                                                                                                    <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                        <fo:block>
                                                                                                            <xsl:if test="number(  packageQty  )  != 0  and   number(  netWeight  )   != 0">
                                                                                                                <fo:inline font-size="9pt">rodi</fo:inline>
                                                                                                            </xsl:if>
                                                                                                            <fo:block>
                                                                                                                <fo:leader leader-pattern="space" />
                                                                                                            </fo:block>
                                                                                                            <fo:block>
                                                                                                                <fo:leader leader-pattern="space" />
                                                                                                            </fo:block>
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
                                                        <fo:table-cell height="43pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Package">
                                                                        <xsl:for-each select="PackageAndWeightDetail">
                                                                            <xsl:if test="position()=1">
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column />
                                                                                    <fo:table-body>
                                                                                        <xsl:for-each select="../PackageAndWeightDetail">
                                                                                            <fo:table-row>
                                                                                                <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                    <fo:block>
                                                                                                        <xsl:if test="number(  NetWeight/value  )   != 0">
                                                                                                            <xsl:for-each select="NetWeight">
                                                                                                                <xsl:for-each select="value">
                                                                                                                    <fo:inline font-size="9pt">
                                                                                                                        <xsl:apply-templates />
                                                                                                                    </fo:inline>
                                                                                                                </xsl:for-each>
                                                                                                            </xsl:for-each>
                                                                                                        </xsl:if>
                                                                                                        <fo:block>
                                                                                                            <fo:leader leader-pattern="space" />
                                                                                                        </fo:block>
                                                                                                        <fo:block>
                                                                                                            <fo:leader leader-pattern="space" />
                                                                                                        </fo:block>
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
                                                        <fo:table-cell height="43pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Package">
                                                                        <xsl:for-each select="PackageAndWeightDetail">
                                                                            <xsl:if test="position()=1">
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column />
                                                                                    <fo:table-body>
                                                                                        <xsl:for-each select="../PackageAndWeightDetail">
                                                                                            <fo:table-row>
                                                                                                <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                    <fo:block>
                                                                                                        <xsl:if test="number(  GrossWeight/value  )  !=  0">
                                                                                                            <xsl:for-each select="GrossWeight">
                                                                                                                <xsl:for-each select="value">
                                                                                                                    <fo:inline font-size="9pt">
                                                                                                                        <xsl:apply-templates />
                                                                                                                    </fo:inline>
                                                                                                                </xsl:for-each>
                                                                                                            </xsl:for-each>
                                                                                                        </xsl:if>
                                                                                                        <fo:block>
                                                                                                            <fo:leader leader-pattern="space" />
                                                                                                        </fo:block>
                                                                                                        <fo:block>
                                                                                                            <fo:leader leader-pattern="space" />
                                                                                                        </fo:block>
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
                                                        <fo:table-cell height="43pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Package">
                                                                        <xsl:for-each select="PackageAndWeightDetail">
                                                                            <xsl:if test="position()=1">
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column />
                                                                                    <fo:table-body>
                                                                                        <xsl:for-each select="../PackageAndWeightDetail">
                                                                                            <fo:table-row>
                                                                                                <fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                    <fo:block>
                                                                                                        <xsl:for-each select="Dimensions">
                                                                                                            <xsl:for-each select="heightValue">
                                                                                                                <fo:inline font-size="7pt">
                                                                                                                    <xsl:apply-templates />
                                                                                                                </fo:inline>
                                                                                                            </xsl:for-each>
                                                                                                        </xsl:for-each>/<xsl:for-each select="Dimensions">
                                                                                                            <xsl:for-each select="widthValue">
                                                                                                                <fo:inline font-size="7pt">
                                                                                                                    <xsl:apply-templates />
                                                                                                                </fo:inline>
                                                                                                            </xsl:for-each>
                                                                                                        </xsl:for-each>/<xsl:for-each select="Dimensions">
                                                                                                            <xsl:for-each select="lengthValue">
                                                                                                                <fo:inline font-size="7pt">
                                                                                                                    <xsl:apply-templates />
                                                                                                                </fo:inline>
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
                                                                                        </xsl:for-each>
                                                                                    </fo:table-body>
                                                                                </fo:table>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell height="43pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="Package">
                                                                        <xsl:for-each select="PackageAndWeightDetail">
                                                                            <xsl:if test="position()=1">
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column />
                                                                                    <fo:table-body>
                                                                                        <xsl:for-each select="../PackageAndWeightDetail">
                                                                                            <fo:table-row>
                                                                                                <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                    <fo:block>
                                                                                                        <xsl:for-each select="GrossVolume">
                                                                                                            <xsl:if test="number(  value  )   != 0">
                                                                                                                <xsl:for-each select="value">
                                                                                                                    <fo:inline font-size="9pt">
                                                                                                                        <xsl:apply-templates />
                                                                                                                    </fo:inline>
                                                                                                                </xsl:for-each>
                                                                                                            </xsl:if>
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
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block>
                            <xsl:text>&#xA;</xsl:text>
                        </fo:block>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="customer_name">
                                                        <fo:inline font-size="10pt" font-weight="bold">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>&#160;&#160;&#160;&#160;&#160; <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="street">
                                                        <fo:inline font-size="9pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>, <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="city">
                                                        <fo:inline font-size="9pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>, <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="country">
                                                        <fo:inline font-size="9pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
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
