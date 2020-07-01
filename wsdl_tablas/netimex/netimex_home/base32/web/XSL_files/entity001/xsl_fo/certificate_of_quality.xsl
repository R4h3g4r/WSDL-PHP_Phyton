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
                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell height="10pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
                                                <xsl:attribute name="src">url('<xsl:value-of select="/DocumentRoot/Internals/logo_img_src" />')</xsl:attribute>
                                            </fo:external-graphic>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block color="black" space-before.optimum="-8pt">
                            <fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="1pt" />
                        </fo:block>
                        <fo:block font-size="24pt" font-weight="bold" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:block text-align="center">Certificate of Quality<fo:block>
                                    <xsl:text>&#xA;</xsl:text>
                                </fo:block>
                                <fo:block color="black" space-before.optimum="-8pt">
                                    <fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="1pt" />
                                </fo:block>
                            </fo:block>
                        </fo:block>
                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="149pt" />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell width="149pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-weight="bold">Client&apos;s Name:</fo:inline>
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
                                    <fo:table-cell line-height="10pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Party">
                                                    <xsl:for-each select="organizationName">
                                                        <xsl:if test="contains(  ../partyQualifier , &apos;DDD&apos;)">
                                                            <fo:inline font-weight="bold">
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
                                                        <xsl:if test="position()=1">
                                                            <fo:table table-layout="fixed" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                <fo:table-column />
                                                                <fo:table-body>
                                                                    <xsl:for-each select="../AddressInformation">
                                                                        <fo:table-row>
                                                                            <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                <fo:block>
                                                                                    <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos; )">
                                                                                        <xsl:for-each select="line">
                                                                                            <fo:inline font-weight="bold">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </xsl:if>
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
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="149pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-weight="bold">Project:</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell line-height="9pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="149pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-weight="bold">Supplier:</fo:inline>
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
                                    <fo:table-cell line-height="9pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
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
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="street">
                                                        <fo:inline font-weight="bold">
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
                                                        <fo:inline font-weight="bold">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>,<xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="country">
                                                        <fo:inline font-weight="bold">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="149pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-weight="bold">L/C No.:</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell line-height="9pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="deal_no">
                                                        <fo:inline font-weight="bold">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="149pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-weight="bold">Contract No.:</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell line-height="9pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="External">
                                                    <xsl:if test="References/referenceQualifier = 315">
                                                        <xsl:for-each select="References">
                                                            <xsl:for-each select="referenceValue">
                                                                <fo:inline font-weight="bold">
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
                                    <fo:table-cell width="149pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-weight="bold">Description of Goods:</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="AdditionalInformation">
                                                    <xsl:if test="position()=1">
                                                        <fo:table table-layout="fixed" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                            <fo:table-column />
                                                            <fo:table-body>
                                                                <xsl:for-each select="../AdditionalInformation">
                                                                    <fo:table-row>
                                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                            <fo:block>
                                                                                <xsl:for-each select="line">
                                                                                    <xsl:if test="@text_id =&apos;SYS04&apos;">
                                                                                        <fo:inline font-weight="bold">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:if>
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
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="650pt" />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell width="650pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="9pt" width="650pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="11pt" font-weight="bold">We herewith confirm that the equipment has been manufactured, tested and inspected according </fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="11pt" font-weight="bold">to the relevant drawings and specifications.</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="650pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="9pt" width="650pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="11pt" font-weight="bold">The achieved results are satisfactory and therefore the equipment is fit for purpose and has </fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="11pt" font-weight="bold">been released for shipment. Detailed and definite inspection results are collected in </fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="11pt" font-weight="bold">the </fo:inline>
                                            <fo:inline font-size="11pt" font-style="italic" font-weight="bold">Manufacturing Data Records</fo:inline>
                                            <fo:inline font-size="11pt" font-weight="bold"> file.</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="188pt" />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell width="188pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="188pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="Internals">
                                                    <xsl:for-each select="customer_name">
                                                        <fo:inline font-size="10pt" font-weight="bold">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>&#160;</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="188pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="210pt" />
                                                <fo:table-column />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell text-align="center" width="210pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">Project Mgr.</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">Quality Mgr. Systems</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell width="210pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block />
                                                        </fo:table-cell>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block />
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell width="188pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="GeneralInformation">
                                                    <xsl:for-each select="Location">
                                                        <xsl:for-each select="LocationCodeOrName">
                                                            <fo:inline font-size="10pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>, <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="GeneralInformation">
                                                    <xsl:for-each select="DateDetails">
                                                        <xsl:for-each select="dateValue">
                                                            <xsl:if test="contains(  ../dateQualifier  , &apos;182&apos;)">
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
