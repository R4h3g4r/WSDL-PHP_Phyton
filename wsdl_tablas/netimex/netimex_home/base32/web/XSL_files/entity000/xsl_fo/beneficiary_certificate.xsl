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
                            <fo:table-column column-width="271pt" />
                            <fo:table-column column-width="447pt" />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="2" width="721pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="271pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="12pt" font-weight="bold">BENEFICIARY&apos;S CERTIFICATE</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell width="447pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="GeneralInformation">
                                                    <xsl:for-each select="DateDetails">
                                                        <xsl:for-each select="dateValue">
                                                            <xsl:if test="../dateQualifier = &apos;182&apos;">
                                                                <fo:inline font-size="10pt">
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
                                    <fo:table-cell width="271pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell width="447pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="271pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell line-height="9pt" width="447pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>&#160;<xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Party">
                                                    <xsl:for-each select="organizationName">
                                                        <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos;)">
                                                            <fo:inline font-size="11pt">
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
                                                    <xsl:if test="contains(  partyQualifier  , &apos;DDD&apos; )">
                                                        <xsl:for-each select="AddressInformation">
                                                            <xsl:if test="position()=1">
                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column />
                                                                    <fo:table-body>
                                                                        <xsl:for-each select="../AddressInformation">
                                                                            <fo:table-row>
                                                                                <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="line">
                                                                                            <fo:inline font-size="11pt">
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
                                                    </xsl:if>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="271pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell width="447pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="121pt" />
                            <fo:table-column column-width="390pt" />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="10pt" font-weight="bold">Contract No.</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell width="390pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="External">
                                                    <xsl:if test="References/referenceQualifier = 315">
                                                        <xsl:for-each select="References">
                                                            <xsl:for-each select="referenceValue">
                                                                <fo:inline font-size="11pt">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="121pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="10pt" font-weight="bold">Shipment No.</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell width="390pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="External">
                                                    <xsl:if test="References/referenceQualifier = 340">
                                                        <xsl:for-each select="References">
                                                            <xsl:for-each select="referenceValue">
                                                                <fo:inline font-size="11pt">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="121pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="10pt" font-weight="bold">Seller</fo:inline>
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
                                    <fo:table-cell line-height="9pt" width="390pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="customer_name">
                                                        <fo:inline font-size="11pt">
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
                                                        <fo:inline font-size="11pt">
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
                                                        <fo:inline font-size="11pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>&#160;<xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="country">
                                                        <fo:inline font-size="11pt">
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
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="121pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="10pt" font-weight="bold">Description of Goods Quality:</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell width="390pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="AdditionalInformation">
                                                    <xsl:if test="position()=1">
                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                            <fo:table-column />
                                                            <fo:table-body>
                                                                <xsl:for-each select="../AdditionalInformation">
                                                                    <fo:table-row>
                                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                            <fo:block>
                                                                                <xsl:for-each select="line">
                                                                                    <xsl:if test="@text_id =&apos;SYS04&apos;">
                                                                                        <fo:inline font-size="11pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:if>
                                                                                </xsl:for-each>&#160;</fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                </xsl:for-each>
                                                            </fo:table-body>
                                                        </fo:table>
                                                    </xsl:if>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="121pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="10pt" font-weight="bold">Vessel</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell width="390pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="RoutingSummary">
                                                    <xsl:for-each select="MeansOfTranspor">
                                                        <xsl:for-each select="SeaTransportIdentification">
                                                            <xsl:for-each select="Vessel">
                                                                <xsl:for-each select="vesselName">
                                                                    <fo:inline font-size="11pt">
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
                                    <fo:table-cell width="121pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="10pt" font-weight="bold">B/L No.</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell width="390pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>&#160;<xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="External">
                                                    <xsl:if test="References/referenceQualifier =705">
                                                        <xsl:for-each select="References">
                                                            <xsl:for-each select="referenceValue">
                                                                <fo:inline font-size="11pt">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="121pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="10pt" font-weight="bold">From/to</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell width="390pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="RoutingSummary">
                                                    <xsl:for-each select="Location">
                                                        <xsl:for-each select="LocationCodeOrName">
                                                            <xsl:for-each select="locationName">
                                                                <xsl:if test="contains(  ../../locationQualifier  , &apos;A&apos;)">
                                                                    <fo:inline font-size="11pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:if>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each> - <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="RoutingSummary">
                                                    <xsl:for-each select="Location">
                                                        <xsl:for-each select="LocationCodeOrName">
                                                            <xsl:for-each select="locationName">
                                                                <xsl:if test="contains(  ../../locationQualifier  , &apos;148&apos;)">
                                                                    <fo:inline font-size="11pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:if>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="121pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="10pt" font-weight="bold">Quantity:</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell width="390pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="TotalWeightsAndMeasures">
                                                    <xsl:for-each select="PackageCount">
                                                        <xsl:for-each select="numberOfPackages">
                                                            <fo:inline font-size="11pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>&#160;<xsl:for-each select="typeOfPackage">
                                                            <fo:inline font-size="11pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>&#160;</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell width="390pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:table width="350pt" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column />
                                                <fo:table-column />
                                                <fo:table-column />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="11pt" font-weight="bold">Total gross weight</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="11pt" font-weight="bold">Total Tare</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="11pt" font-weight="bold">Total net weight</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <fo:block>
                                                                            <fo:leader leader-pattern="space" />
                                                                        </fo:block>
                                                                        <xsl:for-each select="GrossWeight">
                                                                            <xsl:for-each select="value">
                                                                                <fo:inline font-size="11pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>&#160;<xsl:for-each select="weightUnitCode">
                                                                                <fo:inline font-size="11pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>&#160;</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <fo:block>
                                                                            <fo:leader leader-pattern="space" />
                                                                        </fo:block>
                                                                        <xsl:for-each select="TareWeight">
                                                                            <xsl:for-each select="value">
                                                                                <fo:inline font-size="11pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>&#160;<xsl:for-each select="weightUnitCode">
                                                                                <fo:inline font-size="11pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>&#160;</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="TotalWeightsAndMeasures">
                                                                        <fo:block>
                                                                            <fo:leader leader-pattern="space" />
                                                                        </fo:block>
                                                                        <xsl:for-each select="NetWeight">
                                                                            <xsl:for-each select="value">
                                                                                <fo:inline font-size="11pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>&#160;<xsl:for-each select="weightUnitCode">
                                                                                <fo:inline font-size="11pt">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>&#160;</fo:block>
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
                                            <fo:inline font-size="10pt" font-weight="bold">Payment</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell width="390pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="PaymentTerms">
                                                    <xsl:for-each select="PaymentTermsDetail">
                                                        <xsl:for-each select="UserDefinedPaymentTerms">
                                                            <xsl:for-each select="line">
                                                                <fo:inline font-size="11pt">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                        <fo:block>
                                                            <xsl:text>&#xA;</xsl:text>
                                                        </fo:block>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="504pt" />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell width="504pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="504pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="11pt" font-weight="bold">We herewith certify that no wood materials are used in this shipment.</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="504pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell text-align="center" width="504pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>&#160;<xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="customer_name">
                                                        <xsl:apply-templates />
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
