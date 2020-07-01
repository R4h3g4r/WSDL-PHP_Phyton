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
                        <fo:table width="550pt" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="150pt" />
                            <fo:table-column column-width="150pt" />
                            <fo:table-column column-width="60pt" />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell height="21pt" number-columns-spanned="2" number-rows-spanned="3" width="429pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block line-height="5pt">
                                                    <fo:inline font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" font-weight="bold">&#160; </fo:inline>
                                                    <fo:inline font-size="8pt" font-weight="bold">Exporteur</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Exportateur</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Esportatore</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Exporter&#160; </fo:inline>
                                                </fo:block>
                                            </fo:block>
                                            <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block line-height="7pt">&#160; <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>&#160; <xsl:for-each select="DocumentRoot">
                                                        <xsl:for-each select="Internals">
                                                            <xsl:for-each select="customer_name">
                                                                <fo:inline font-size="10pt">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                    <fo:inline font-size="10pt">&#160; </fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="10pt">&#160; </fo:inline>
                                                    <xsl:for-each select="DocumentRoot">
                                                        <xsl:for-each select="Internals">
                                                            <xsl:for-each select="street">
                                                                <fo:inline font-size="10pt">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="10pt">&#160; </fo:inline>
                                                    <xsl:for-each select="DocumentRoot">
                                                        <xsl:for-each select="Internals">
                                                            <xsl:for-each select="city">
                                                                <fo:inline font-size="10pt">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="10pt">&#160;</fo:inline>&#160;<xsl:for-each select="DocumentRoot">
                                                        <xsl:for-each select="Internals">
                                                            <xsl:for-each select="country">
                                                                <fo:inline font-size="10pt">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:for-each>&#160; </fo:block>
                                            </fo:block>
                                            <fo:block>
                                                <xsl:text>&#xA;</xsl:text>
                                            </fo:block>
                                            <fo:block color="black" space-before.optimum="-8pt">
                                                <fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="1pt" />
                                            </fo:block>
                                            <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block line-height="5pt">
                                                    <fo:inline font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" font-weight="bold">&#160; </fo:inline>
                                                    <fo:inline font-size="8pt" font-weight="bold">Empfänger</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Destinataire</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Destinatario</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Consignee </fo:inline>
                                                    <fo:inline font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" font-weight="bold">&#160;&#160;&#160;&#160; </fo:inline>
                                                </fo:block>
                                            </fo:block>
                                            <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block line-height="8pt">
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>&#160;<xsl:for-each select="DocumentRoot">
                                                        <xsl:for-each select="Party">
                                                            <xsl:for-each select="organizationName">
                                                                <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos;)   or  contains(  ../partyQualifier  , &apos;DWE&apos;)">
                                                                    <fo:inline font-size="10pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:if>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>&#160;<xsl:for-each select="DocumentRoot">
                                                        <xsl:for-each select="Party">
                                                            <xsl:for-each select="AddressInformation">
                                                                <xsl:if test="contains(  ../partyQualifier  , &apos;DDD&apos;)  or  contains(  ../partyQualifier  , &apos;DWE&apos; )">
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
                                                    </xsl:for-each>&#160;<fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>&#160; </fo:block>
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell line-height="7pt" height="21pt" width="20pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>&#160; <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>&#160; </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell line-height="7pt" height="21pt" number-columns-spanned="2" width="60pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:inline font-size="10pt">Nr.</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="10pt">No</fo:inline>.&#160; <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="DocInfo">
                                                    <xsl:for-each select="References">
                                                        <xsl:for-each select="referenceValue">
                                                            <xsl:if test="contains(  ../referenceQualifier  , &apos;861&apos;)">
                                                                <fo:inline font-size="9pt">
                                                                    <xsl:apply-templates />
                                                                </fo:inline>
                                                            </xsl:if>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:inline font-size="inherited-property-value(&apos;font-size&apos;) - 2pt">&#160;</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="3" width="150pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="180pt" />
                                                <fo:table-column column-width="51pt" />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell line-height="7pt" number-columns-spanned="2" width="194pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">URSPRUNGZEUGNIS</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">CERTIFICAT D&apos;ORIGINE</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">CERTIFICATO D&apos;ORIGINE</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">CERTIFICATE OF ORIGIN</fo:inline>
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
                                                        <fo:table-cell line-height="7pt" width="180pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="8pt" font-weight="bold">SCHWEIZERISCHE EIDGENOSSENSCHAFT</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="8pt" font-weight="bold">CONFÉDÉRATION SUISSE</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="8pt" font-weight="bold">CONFEDERAZIONE SVIZZERA</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="8pt" font-weight="bold">SWISS CONFEDERATION</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell width="51pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block />
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="3" width="150pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block line-height="5pt">
                                                    <fo:inline font-weight="bold">&#160;</fo:inline>
                                                    <fo:inline font-size="8pt" font-weight="bold">Ursprungsstaat</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Pays d&apos;origine&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </fo:inline>
                                                    <xsl:for-each select="DocumentRoot">
                                                        <xsl:for-each select="GeneralInformation">
                                                            <xsl:for-each select="CountryFunction">
                                                                <xsl:for-each select="CountryCodeOrName">
                                                                    <xsl:for-each select="countryCode">
                                                                        <fo:inline font-size="10pt">
                                                                            <xsl:apply-templates />
                                                                        </fo:inline>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Paese d&apos;origine</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Country of origin</fo:inline>
                                                    <fo:inline font-size="8pt" font-weight="bold">&#160; </fo:inline>
                                                </fo:block>
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell line-height="5pt" number-columns-spanned="2" width="429pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:inline font-size="8pt" font-weight="bold">&#160; Angaben über die Beförderung (Ausfüllung freigestallt)</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="8pt">&#160; Informations relatives au transport (mention facultative)</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="8pt">&#160; Informatzioni riguardanti il trasporto (indicazione facoltativa)</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="8pt">&#160; Particulars of transport (optional declaration)</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="10pt">&#160; </fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>&#160; <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>&#160; <xsl:for-each select="DocumentRoot">
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
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell number-columns-spanned="3" width="150pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block line-height="5pt">
                                                    <fo:inline font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" font-weight="bold">&#160; </fo:inline>
                                                    <fo:inline font-size="8pt" font-weight="bold">Bemerkungen</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Observations</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Osservazioni</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Observations </fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                </fo:block>
                                            </fo:block>&#160; <xsl:for-each select="DocumentRoot">
                                                <xsl:for-each select="AdditionalInformation">
                                                    <xsl:if test="position()=1">
                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                            <fo:table-column />
                                                            <fo:table-body>
                                                                <xsl:for-each select="../AdditionalInformation">
                                                                    <fo:table-row>
                                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                            <fo:block>&#160;<xsl:for-each select="line">
                                                                                    <xsl:if test="@text_id = &apos;ADDIN&apos; and  @id =861">
                                                                                        <fo:inline font-size="10pt">
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
                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block line-height="5pt">
                                                    <fo:inline font-size="10pt" font-weight="bold">&#160; </fo:inline>
                                                    <fo:inline font-size="8pt" font-weight="bold">Zeichen, Nummern, Anzahl und Art der Packstücke; Warenbezeichnung</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Marques, numéros, nombre et nature des colis; désignation des marchandises</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Marche, numeri, numero e natura dei colli; designazione delle merci</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Marks, numbers, number and kind of packages; description of the goods </fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:block>
                                                        <xsl:text>&#xA;</xsl:text>
                                                    </fo:block>
                                                    <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                        <fo:block line-height="11pt">
                                                            <fo:inline font-size="8pt">&#160; </fo:inline>
                                                            <xsl:for-each select="DocumentRoot">
                                                                <xsl:for-each select="Package">
                                                                    <xsl:for-each select="PackageAndWeightDetail">
                                                                        <xsl:if test="position()=1">
                                                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                <fo:table-column column-width="92pt" />
                                                                                <fo:table-column />
                                                                                <fo:table-body>
                                                                                    <xsl:for-each select="../PackageAndWeightDetail">
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell width="92pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="marksAndNumbers">
                                                                                                        <fo:inline font-size="9pt">
                                                                                                            <xsl:apply-templates />
                                                                                                        </fo:inline>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="PackageCount">
                                                                                                        <xsl:for-each select="numberOfPackages">
                                                                                                            <fo:inline font-size="9pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>&#160;<xsl:for-each select="PackageCount">
                                                                                                        <xsl:for-each select="typeOfPackage">
                                                                                                            <fo:inline font-size="9pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
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
                                                            </xsl:for-each>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:inline font-size="8pt">&#160;</fo:inline>
                                                            <xsl:for-each select="DocumentRoot">
                                                                <fo:inline font-size="8pt">
                                                                    <xsl:for-each select="AdditionalInformation">
                                                                        <xsl:for-each select="line">
                                                                            <xsl:if test="@text_id =&apos;SYS04&apos;">
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
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                            <fo:inline font-size="8pt">&#160; </fo:inline>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                        </fo:block>
                                                    </fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block line-height="5pt">
                                                    <fo:inline font-size="8pt" font-weight="bold">&#160; Nettogewicht</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Poids net</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Peso netto</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Net Weight</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; kg.,l</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; etc./ecc.</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>&#160; <xsl:for-each select="DocumentRoot">
                                                        <xsl:for-each select="TotalWeightsAndMeasures">
                                                            <xsl:for-each select="NetWeight">
                                                                <xsl:for-each select="value">
                                                                    <xsl:apply-templates />
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:for-each>&#160;<xsl:for-each select="DocumentRoot">
                                                        <xsl:for-each select="TotalWeightsAndMeasures">
                                                            <xsl:for-each select="NetWeight">
                                                                <xsl:for-each select="weightUnitCode">
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
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" font-weight="bold">&#160; </fo:inline>
                                                    <fo:inline font-size="8pt" font-weight="bold">Bruttogewicht</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Poids brut</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Peso lordo</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">&#160; Gross weight</fo:inline>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>&#160; <xsl:for-each select="DocumentRoot">
                                                        <xsl:for-each select="TotalWeightsAndMeasures">
                                                            <xsl:for-each select="GrossWeight">
                                                                <xsl:for-each select="value">
                                                                    <xsl:apply-templates />
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:for-each>&#160;<xsl:for-each select="DocumentRoot">
                                                        <xsl:for-each select="TotalWeightsAndMeasures">
                                                            <xsl:for-each select="GrossWeight">
                                                                <xsl:for-each select="weightUnitCode">
                                                                    <fo:inline font-size="10pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </fo:block>
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="200pt" width="400pt">
                                    <fo:table-cell height="284pt" number-columns-spanned="5" width="150pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                        <fo:block>
                                            <fo:block>
                                                <xsl:text>&#xA;</xsl:text>
                                            </fo:block>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="568pt" />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell line-height="6pt" width="568pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-weight="bold">&#160; </fo:inline>
                                                                <fo:inline font-size="10pt" font-weight="bold">Die unterzeichnete Handelskammer bescheinigt den Ursprung oben bezeichnetr Ware</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt">&#160; La chambre de commerce soussignée certifie l&apos;origine des matchandises désignes ci-dessus</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt">&#160; La sottoscritta Camera di commercio certifica l&apos;origine delle merci summenzionate</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt">&#160; The undersigned Chamber of commerce certifies the origin of the above mentioned goods</fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <fo:block>
                                                <xsl:text>&#xA;</xsl:text>
                                            </fo:block>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="300pt" />
                                                <fo:table-column column-width="200pt" />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell line-height="6pt" width="300pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>&#160;<xsl:for-each select="DocumentRoot">
                                                                    <xsl:for-each select="GeneralInformation">
                                                                        <xsl:for-each select="Location">
                                                                            <xsl:for-each select="LocationCodeOrName">
                                                                                <xsl:for-each select="locationName">
                                                                                    <fo:inline font-size="10pt">
                                                                                        <xsl:apply-templates />
                                                                                    </fo:inline>
                                                                                </xsl:for-each>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>, <xsl:for-each select="DocumentRoot">
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
                                                        <fo:table-cell line-height="6pt" width="200pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">Zurcher Handelskammer</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">Chambre de Commerce de Zurich</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">Camera di Commercio di Zurigo</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                                <fo:inline font-size="10pt" font-weight="bold">Zurich Chamber of Commerce</fo:inline>
                                                                <fo:block>
                                                                    <fo:leader leader-pattern="space" />
                                                                </fo:block>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </fo:block>
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
