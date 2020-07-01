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
                            <fo:table-column column-width="198pt" />
                            <fo:table-column column-width="369pt" />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell width="198pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell width="369pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="11pt" font-weight="bold"> PACKING LIST</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="7pt" width="198pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell line-height="7pt" width="369pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="7pt" width="198pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <xsl:for-each select="customer_name">
                                                        <fo:inline font-weight="bold">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <xsl:for-each select="street">
                                                        <xsl:apply-templates />
                                                    </xsl:for-each>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <xsl:for-each select="city">
                                                        <xsl:apply-templates />
                                                    </xsl:for-each>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <xsl:for-each select="country">
                                                        <xsl:apply-templates />
                                                    </xsl:for-each>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell line-height="7pt" width="369pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>&#160;<xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Party">
                                                    <xsl:if test="contains(  partyQualifier  , &apos;DDD&apos;)">
                                                        <xsl:for-each select="organizationName">
                                                            <fo:inline font-weight="bold">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Party">
                                                    <xsl:for-each select="AddressInformation">
                                                        <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos;)">
                                                            <xsl:for-each select="line">
                                                                <fo:block>
                                                                    <xsl:text>&#xA;</xsl:text>
                                                                </fo:block>
                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column column-width="127pt" />
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell line-height="7pt" width="127pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:apply-templates />
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
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="198pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell width="369pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>&#160;<fo:inline font-size="10pt">Date: </fo:inline>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="GeneralInformation">
                                                    <xsl:for-each select="DateDetails">
                                                        <xsl:if test="contains(  dateQualifier  , &apos;182&apos; )">
                                                            <xsl:for-each select="dateValue">
                                                                <xsl:apply-templates />
                                                            </xsl:for-each>
                                                        </xsl:if>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell height="31pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="201pt" />
                                                <fo:table-column />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell line-height="7pt" width="201pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">VESSEL: </fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
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
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">ETS:</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="RoutingSummary">
                                                                        <xsl:for-each select="DateDetails">
                                                                            <xsl:if test="contains(  dateQualifier  , &apos;10&apos;)">
                                                                                <xsl:for-each select="dateValue">
                                                                                    <xsl:apply-templates />
                                                                                </xsl:for-each>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">ETA:</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">TERMS OF DELIVERY:</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="GeneralInformation">
                                                                        <xsl:for-each select="Incoterms">
                                                                            <xsl:for-each select="incoterm">
                                                                                <xsl:apply-templates />
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">PACKING:</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="MarksAndNumbers">
                                                                            <xsl:apply-templates />
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="7pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">BL NUMBER:</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="External">
                                                                        <xsl:for-each select="References">
                                                                            <xsl:if test="contains(  referenceQualifier  , &apos;315&apos;)">
                                                                                <xsl:for-each select="referenceValue">
                                                                                    <xsl:apply-templates />
                                                                                </xsl:for-each>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">PORT OF LOADING:</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="RoutingSummary">
                                                                        <xsl:for-each select="Location">
                                                                            <xsl:for-each select="LocationCodeOrName">
                                                                                <xsl:for-each select="locationName">
                                                                                    <xsl:if test="../../locationQualifier = &apos;9&apos;">
                                                                                        <xsl:apply-templates />
                                                                                    </xsl:if>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">PORT OF DELIVERY:</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="RoutingSummary">
                                                                        <xsl:for-each select="Location">
                                                                            <xsl:for-each select="LocationCodeOrName">
                                                                                <xsl:for-each select="locationName">
                                                                                    <xsl:if test="../../locationQualifier = &apos;7&apos;">
                                                                                        <xsl:apply-templates />
                                                                                    </xsl:if>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">ORIGIN OF THE GOODS:</fo:inline>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="RoutingSummary">
                                                                        <xsl:for-each select="Location">
                                                                            <xsl:for-each select="LocationCodeOrName">
                                                                                <xsl:for-each select="locationName">
                                                                                    <xsl:if test="../../locationQualifier = &apos;14&apos;">
                                                                                        <xsl:apply-templates />
                                                                                    </xsl:if>
                                                                                </xsl:for-each>
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
                                                                <fo:block>
                                                                    <xsl:text>&#xA;</xsl:text>
                                                                </fo:block>
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
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell line-height="7pt" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="7pt" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="10pt" font-weight="bold">Description:</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="AdditionalInformation">
                                                    <xsl:for-each select="line">
                                                        <fo:block>
                                                            <xsl:text>&#xA;</xsl:text>
                                                        </fo:block>
                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                            <fo:table-column column-width="758pt" />
                                                            <fo:table-body>
                                                                <fo:table-row>
                                                                    <fo:table-cell line-height="7pt" width="758pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                        <fo:block>
                                                                            <xsl:if test="@text_id = &apos;SYS04&apos;">
                                                                                <fo:inline font-size="11pt">
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
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="7pt" height="23pt" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>------------------------------------------------------------------------------------------------------------------------<fo:block>
                                                <xsl:text>&#xA;</xsl:text>
                                            </fo:block>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="124pt" />
                                                <fo:table-column column-width="135pt" />
                                                <fo:table-column column-width="117pt" />
                                                <fo:table-column />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell line-height="7pt" width="124pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="11pt">Container Number</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="7pt" width="135pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="11pt">Number of Containers</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="7pt" width="117pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="11pt">NetWeight</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell line-height="7pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="11pt">GrossWeight</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>------------------------------------------------------------------------------------------------------------------------<fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="ContainerDetails">
                                                    <fo:block>
                                                        <xsl:text>&#xA;</xsl:text>
                                                    </fo:block>
                                                    <xsl:if test="position()=1">
                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                            <fo:table-column />
                                                            <fo:table-column />
                                                            <fo:table-column />
                                                            <fo:table-column />
                                                            <fo:table-body>
                                                                <xsl:for-each select="../ContainerDetails">
                                                                    <fo:table-row>
                                                                        <fo:table-cell line-height="7pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                            <fo:block>
                                                                                <xsl:for-each select="containerIdentifier">
                                                                                    <xsl:apply-templates />
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell line-height="7pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                            <fo:block>
                                                                                <xsl:for-each select="numberOfContainers">
                                                                                    <xsl:apply-templates />
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell line-height="7pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                            <fo:block>
                                                                                <xsl:for-each select="NetWeight">
                                                                                    <xsl:for-each select="value">
                                                                                        <xsl:apply-templates />
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell line-height="7pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                            <fo:block>
                                                                                <xsl:for-each select="GrossWeight">
                                                                                    <xsl:for-each select="value">
                                                                                        <xsl:apply-templates />
                                                                                    </xsl:for-each>
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
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>------------------------------------------------------------------------------------------------------------------------<fo:block>
                                                <xsl:text>&#xA;</xsl:text>
                                            </fo:block>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="124pt" />
                                                <fo:table-column column-width="135pt" />
                                                <fo:table-column column-width="134pt" />
                                                <fo:table-column />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell width="124pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>Total</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell width="135pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="TotalQuantity">
                                                                            <xsl:for-each select="value">
                                                                                <xsl:apply-templates />
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell width="134pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="NetWeight">
                                                                            <xsl:for-each select="value">
                                                                                <xsl:apply-templates />
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <xsl:for-each select="GrossWeight">
                                                                            <xsl:for-each select="value">
                                                                                <xsl:apply-templates />
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>------------------------------------------------------------------------------------------------------------------------<fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="7pt" height="23pt" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="7pt" height="23pt" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="7pt" height="23pt" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell line-height="7pt" height="23pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="customer_name">
                                                        <fo:inline font-weight="bold">
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
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
