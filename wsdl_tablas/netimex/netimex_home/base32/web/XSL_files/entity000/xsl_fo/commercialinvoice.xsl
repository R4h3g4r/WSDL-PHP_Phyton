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
                        <xsl:for-each select="DocumentRoot">
                            <fo:block>
                                <xsl:text>&#xA;</xsl:text>
                            </fo:block>
                            <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block>
                                                <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column column-width="138pt" />
                                                    <fo:table-column column-width="129pt" />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell line-height="10pt" height="19pt" width="138pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
                                                                        <xsl:attribute name="src">url('<xsl:value-of select="Internals/logo_img_src" />')</xsl:attribute>
                                                                    </fo:external-graphic>
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
                                                            <fo:table-cell line-height="10pt" height="19pt" width="129pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="Internals">
                                                                        <xsl:for-each select="customer_name">
                                                                            <fo:inline font-size="10pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <xsl:for-each select="Internals">
                                                                        <xsl:for-each select="street">
                                                                            <fo:inline font-size="10pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <xsl:for-each select="Internals">
                                                                        <xsl:for-each select="city">
                                                                            <fo:inline font-size="10pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <xsl:for-each select="Internals">
                                                                        <xsl:for-each select="country">
                                                                            <fo:inline font-size="10pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block>
                                                <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block text-align="center">
                                                        <fo:inline font-style="italic" font-weight="bold">Commercial Invoice</fo:inline>
                                                    </fo:block>
                                                </fo:block>
                                                <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                                <fo:block>
                                                                    <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Invoice Number / Date</fo:inline>
                                                                        </fo:block>
                                                                    </fo:block>
                                                                    <xsl:for-each select="DocInfo">
                                                                        <xsl:for-each select="References">
                                                                            <xsl:if test="contains(  referenceQualifier  , &apos;380&apos;)">
                                                                                <xsl:for-each select="referenceValue">
                                                                                    <xsl:apply-templates />
                                                                                </xsl:for-each>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each> / <xsl:for-each select="GeneralInformation">
                                                                        <xsl:for-each select="DateDetails">
                                                                            <xsl:for-each select="dateValue">
                                                                                <xsl:apply-templates />
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                            <fo:table-cell background-color="#BFBFBF" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                <fo:block>
                                                                    <fo:inline font-weight="bold">Original</fo:inline>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                            <fo:table-cell line-height="9pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                                <fo:block>
                                                                    <fo:inline font-weight="bold">Packing List Number:</fo:inline>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <xsl:for-each select="DocInfo">
                                                                        <xsl:for-each select="References">
                                                                            <xsl:if test="contains(  referenceQualifier  , &apos;271&apos;)">
                                                                                <xsl:for-each select="referenceValue">
                                                                                    <xsl:apply-templates />
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
                                                            <fo:table-cell line-height="9pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                                <fo:block>
                                                                    <fo:inline font-weight="bold">L/C Number:</fo:inline>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <xsl:for-each select="Internals">
                                                                        <xsl:for-each select="deal_no">
                                                                            <xsl:apply-templates />
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block>
                                                <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell line-height="10pt" height="65pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                                <fo:block>
                                                                    <fo:inline font-weight="bold">Buyer / Importer</fo:inline>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>&#160;<xsl:for-each select="Party">
                                                                        <xsl:if test="contains(  partyQualifier  , &apos;DDD&apos;)  or  contains(  partyQualifier  , &apos;DWE&apos;)">
                                                                            <xsl:for-each select="organizationName">
                                                                                <fo:inline font-size="10pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:if>
                                                                    </xsl:for-each>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <xsl:for-each select="Party">
                                                                        <xsl:for-each select="AddressInformation">
                                                                            <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos; )  or  contains(  ../partyQualifier  , &apos;DWE&apos; )">
                                                                                <xsl:for-each select="line">
                                                                                    <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
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
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell line-height="10pt" height="65pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                                                <fo:block>
                                                                    <fo:inline font-weight="bold">Payment Terms</fo:inline>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <xsl:for-each select="PaymentTerms">
                                                                        <xsl:for-each select="PaymentTermsDetail">
                                                                            <xsl:for-each select="UserDefinedPaymentTerms">
                                                                                <fo:inline font-size="11pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                        <fo:block>
                                                                            <fo:leader leader-pattern="space" />
                                                                        </fo:block>
                                                                    </xsl:for-each>
                                                                    <fo:block>
                                                                        <xsl:text>&#xA;</xsl:text>
                                                                    </fo:block>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                                <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block line-height="10pt" text-align="right">
                                                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                                                            <fo:table-column />
                                                            <fo:table-column />
                                                            <fo:table-column />
                                                            <fo:table-body>
                                                                <fo:table-row>
                                                                    <fo:table-cell line-height="10pt" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Contract No.</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                            <xsl:for-each select="External">
                                                                                <xsl:if test="References/referenceQualifier = 315">
                                                                                    <xsl:for-each select="References">
                                                                                        <xsl:for-each select="referenceValue">
                                                                                            <xsl:apply-templates />
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:if>
                                                                            </xsl:for-each>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell line-height="10pt" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Shipment No.</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                            <xsl:for-each select="External">
                                                                                <xsl:if test="References/referenceQualifier = 340">
                                                                                    <xsl:for-each select="References">
                                                                                        <xsl:for-each select="referenceValue">
                                                                                            <xsl:apply-templates />
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:if>
                                                                            </xsl:for-each>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell line-height="10pt" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Shipment Date</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                            <xsl:for-each select="RoutingSummary">
                                                                                <xsl:for-each select="DateDetails">
                                                                                    <xsl:for-each select="dateValue">
                                                                                        <xsl:apply-templates />
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row>
                                                                    <fo:table-cell line-height="10pt" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Vessel Name</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                            <xsl:for-each select="RoutingSummary">
                                                                                <xsl:for-each select="MeansOfTranspor">
                                                                                    <xsl:for-each select="SeaTransportIdentification">
                                                                                        <xsl:for-each select="Vessel">
                                                                                            <xsl:for-each select="vesselName">
                                                                                                <xsl:apply-templates />
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell line-height="10pt" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Voyage Number</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                            <xsl:for-each select="RoutingSummary">
                                                                                <xsl:for-each select="MeansOfTranspor">
                                                                                    <xsl:for-each select="SeaTransportIdentification">
                                                                                        <xsl:for-each select="VoyageDetail">
                                                                                            <xsl:for-each select="voyageNumber">
                                                                                                <xsl:apply-templates />
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell line-height="10pt" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Flight Number</fo:inline>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row>
                                                                    <fo:table-cell line-height="10pt" text-align="left" height="26pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Port of Loading</fo:inline>&#160;<fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                            <xsl:for-each select="RoutingSummary">
                                                                                <xsl:for-each select="Location">
                                                                                    <xsl:if test="locationQualifier  = &apos;9&apos;">
                                                                                        <xsl:for-each select="LocationCodeOrName">
                                                                                            <xsl:apply-templates />
                                                                                        </xsl:for-each>
                                                                                    </xsl:if>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell line-height="10pt" text-align="left" height="26pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Port of Discharge</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                            <xsl:for-each select="RoutingSummary">
                                                                                <xsl:for-each select="Location">
                                                                                    <xsl:if test="locationQualifier = &apos;12&apos;">
                                                                                        <xsl:for-each select="LocationCodeOrName">
                                                                                            <xsl:apply-templates />
                                                                                        </xsl:for-each>
                                                                                    </xsl:if>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell line-height="10pt" text-align="left" height="26pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Final Destination</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                            <xsl:for-each select="RoutingSummary">
                                                                                <xsl:for-each select="Location">
                                                                                    <xsl:if test="locationQualifier  = &apos;148&apos;">
                                                                                        <xsl:for-each select="LocationCodeOrName">
                                                                                            <xsl:apply-templates />
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
                                                                    <fo:table-cell line-height="11pt" text-align="left" height="49pt" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Description of Goods</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                            <xsl:for-each select="AdditionalInformation">
                                                                                <xsl:for-each select="line">
                                                                                    <xsl:if test="@text_id = &apos;SYS04&apos;">
                                                                                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                            <fo:table-column />
                                                                                            <fo:table-body>
                                                                                                <fo:table-row>
                                                                                                    <fo:table-cell line-height="5pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                                        <fo:block>
                                                                                                            <xsl:apply-templates />
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                </fo:table-row>
                                                                                            </fo:table-body>
                                                                                        </fo:table>
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
                                                                    <fo:table-cell line-height="10pt" text-align="left" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Marks and numbers</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                            <xsl:for-each select="TotalWeightsAndMeasures">
                                                                                <xsl:for-each select="MarksAndNumbers">
                                                                                    <xsl:apply-templates />
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row>
                                                                    <fo:table-cell line-height="10pt" text-align="left" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-weight="bold">Packing Mode</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                            <xsl:for-each select="TotalWeightsAndMeasures">
                                                                                <xsl:for-each select="PackageCount">
                                                                                    <xsl:for-each select="typeOfPackage">
                                                                                        <xsl:apply-templates />
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                            </fo:table-body>
                                                        </fo:table>
                                                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                                                            <fo:table-column />
                                                            <fo:table-column />
                                                            <fo:table-column />
                                                            <fo:table-column />
                                                            <fo:table-body>
                                                                <fo:table-row background-color="#AEAEAE">
                                                                    <fo:table-cell text-align="center" height="17pt" number-rows-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-size="11pt">Product Name</fo:inline>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell text-align="center" height="17pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-size="11pt">Quantity</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell text-align="center" height="17pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-size="11pt">Unit Price</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell text-align="center" height="17pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <fo:inline font-size="11pt">Amount</fo:inline>
                                                                            <fo:block>
                                                                                <fo:leader leader-pattern="space" />
                                                                            </fo:block>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row background-color="#AEAEAE">
                                                                    <fo:table-cell text-align="center" height="9pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <xsl:for-each select="LineItemDetails">
                                                                                <xsl:if test="position() =1">
                                                                                    <xsl:for-each select="LineItem">
                                                                                        <xsl:for-each select="LineItemQuantity">
                                                                                            <xsl:for-each select="unitOfMeasure">
                                                                                                <fo:inline font-size="10pt">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:if>
                                                                            </xsl:for-each>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell text-align="center" height="9pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <xsl:for-each select="GeneralInformation">
                                                                                <xsl:for-each select="TotalAmount">
                                                                                    <xsl:for-each select="MultiCurrency">
                                                                                        <xsl:for-each select="MonetaryAmount">
                                                                                            <xsl:for-each select="currencyCode">
                                                                                                <fo:inline font-size="10pt">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell text-align="center" height="9pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <xsl:for-each select="GeneralInformation">
                                                                                <xsl:for-each select="TotalAmount">
                                                                                    <xsl:for-each select="MultiCurrency">
                                                                                        <xsl:for-each select="MonetaryAmount">
                                                                                            <xsl:for-each select="currencyCode">
                                                                                                <fo:inline font-size="10pt">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row background-color="white">
                                                                    <fo:table-cell line-height="7pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <xsl:for-each select="LineItemDetails">
                                                                                <xsl:for-each select="LineItem">
                                                                                    <xsl:for-each select="Product">
                                                                                        <xsl:if test="position()=1">
                                                                                            <fo:table table-layout="fixed" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                                <fo:table-column />
                                                                                                <fo:table-body>
                                                                                                    <xsl:for-each select="../Product">
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                                                <fo:block>
                                                                                                                    <xsl:for-each select="productName">
                                                                                                                        <fo:inline font-size="10pt">
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
                                                                    <fo:table-cell line-height="7pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <xsl:for-each select="LineItemDetails">
                                                                                <xsl:for-each select="LineItem">
                                                                                    <xsl:for-each select="LineItemQuantity">
                                                                                        <xsl:if test="position()=1">
                                                                                            <fo:table table-layout="fixed" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                                <fo:table-column />
                                                                                                <fo:table-body>
                                                                                                    <xsl:for-each select="../LineItemQuantity">
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                                <fo:block>
                                                                                                                    <xsl:for-each select="value">
                                                                                                                        <fo:inline font-size="10pt">
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
                                                                    <fo:table-cell line-height="7pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <xsl:for-each select="LineItemDetails">
                                                                                <xsl:for-each select="LineItem">
                                                                                    <xsl:for-each select="UnitPrice">
                                                                                        <xsl:if test="position()=1">
                                                                                            <fo:table table-layout="fixed" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                                <fo:table-column />
                                                                                                <fo:table-body>
                                                                                                    <xsl:for-each select="../UnitPrice">
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                                <fo:block>
                                                                                                                    <xsl:for-each select="value">
                                                                                                                        <fo:inline font-size="10pt">
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
                                                                    <fo:table-cell line-height="7pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                        <fo:block>
                                                                            <xsl:for-each select="LineItemDetails">
                                                                                <xsl:for-each select="LineItem">
                                                                                    <xsl:for-each select="LineItemTotalAmount">
                                                                                        <xsl:for-each select="MultiCurrency">
                                                                                            <xsl:for-each select="MonetaryAmount">
                                                                                                <xsl:if test="position()=1">
                                                                                                    <fo:table table-layout="fixed" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                                        <fo:table-column />
                                                                                                        <fo:table-body>
                                                                                                            <xsl:for-each select="../MonetaryAmount">
                                                                                                                <fo:table-row>
                                                                                                                    <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                                                                        <fo:block>
                                                                                                                            <xsl:for-each select="value">
                                                                                                                                <fo:inline font-size="10pt">
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
                                                                </fo:table-row>
                                                            </fo:table-body>
                                                        </fo:table>
                                                    </fo:block>
                                                </fo:block>
                                                <fo:block>
                                                    <fo:leader leader-pattern="space" />
                                                </fo:block>
                                                <fo:block>
                                                    <xsl:text>&#xA;</xsl:text>
                                                </fo:block>
                                                <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <fo:inline font-size="11pt">For and on behalf of</fo:inline>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row>
                                                            <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <xsl:for-each select="Internals">
                                                                        <xsl:for-each select="customer_name">
                                                                            <fo:inline font-size="11pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
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
                        </xsl:for-each>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
