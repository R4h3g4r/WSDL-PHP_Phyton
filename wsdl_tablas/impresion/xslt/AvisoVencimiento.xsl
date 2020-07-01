<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in">
                <fo:region-body margin-top="0in" margin-bottom="0in" />
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:template match="/">
        <fo:root>
            <xsl:copy-of select="$fo:layout-master-set" />
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="69pt" />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" width="69pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
                                                <xsl:attribute name="src">url('<xsl:value-of select="AvisoVencimientoDividendo/logo" />')</xsl:attribute>
                                            </fo:external-graphic>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="6pt" font-weight="bold">BANCO CRÉDITO INVERSIONES</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                            <fo:block>
                                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column />
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="6pt" font-weight="bold" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt">SR.(ES).</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                        <xsl:for-each select="nombre">
                                                                                            <fo:inline font-size="6pt" font-weight="bold" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                        <xsl:for-each select="direccion">
                                                                                            <fo:inline font-size="6pt" font-weight="bold" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </xsl:for-each>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
                                                                                <fo:block>
                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                        <xsl:for-each select="comuna">
                                                                                            <fo:inline font-size="6pt" font-weight="bold" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt">
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
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                        <fo:block>
                                            <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block>
                                                    <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                        <fo:block>
                                                            <fo:inline font-weight="bold">DIVIDENDO HIPOTECARIO</fo:inline>
                                                        </fo:block>
                                                    </fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:block>
                                <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:block>
                                        <fo:table background-color="silver" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                            <fo:table-column />
                                            <fo:table-column />
                                            <fo:table-column />
                                            <fo:table-column />
                                            <fo:table-column />
                                            <fo:table-column />
                                            <fo:table-column />
                                            <fo:table-column />
                                            <fo:table-column />
                                            <fo:table-body>
                                                <fo:table-row background-color="silver">
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <fo:inline font-size="6pt" font-weight="bold">SUC</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <fo:inline font-size="6pt" font-weight="bold">RUT</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <fo:inline font-size="6pt" font-weight="bold">NÚMERO CRÉDITO</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" number-columns-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <fo:inline font-size="6pt" font-weight="bold">DIVIDENDO</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <fo:inline font-size="6pt" font-weight="bold">VENCIMIENTO</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <fo:inline font-size="6pt" font-weight="bold">MONEDA</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <fo:inline font-size="6pt" font-weight="bold">ACUERDO</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <fo:inline font-size="6pt" font-weight="bold">MORA</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                                <fo:table-row>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" background-color="silver" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <fo:inline font-size="6pt" font-weight="bold">ACTUAL</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" background-color="silver" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <fo:inline font-size="6pt" font-weight="bold">PACTADO</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                                <fo:table-row background-color="white">
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" background-color="white" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:for-each select="AvisoVencimientoDividendo">
                                                                <xsl:for-each select="sucursal">
                                                                    <fo:inline font-size="6pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:for-each select="AvisoVencimientoDividendo">
                                                                <xsl:for-each select="rut">
                                                                    <fo:inline font-size="6pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                            <fo:inline font-size="6pt">-</fo:inline>
                                                            <xsl:for-each select="AvisoVencimientoDividendo">
                                                                <xsl:for-each select="dv">
                                                                    <fo:inline font-size="6pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:for-each select="AvisoVencimientoDividendo">
                                                                <xsl:for-each select="nroOperacion">
                                                                    <fo:inline font-size="6pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:for-each select="AvisoVencimientoDividendo">
                                                                <fo:inline font-size="6pt">
                                                                    <xsl:for-each select="nroDividendo">
                                                                        <fo:inline>
                                                                            <xsl:apply-templates />
                                                                        </fo:inline>
                                                                    </xsl:for-each>
                                                                </fo:inline>
                                                            </xsl:for-each>
                                                            <fo:inline>&#160;</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:for-each select="AvisoVencimientoDividendo">
                                                                <xsl:for-each select="totalDividendos">
                                                                    <fo:inline font-size="6pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:for-each select="AvisoVencimientoDividendo">
                                                                <xsl:for-each select="fechaVencimiento">
                                                                    <fo:inline font-size="6pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:for-each select="AvisoVencimientoDividendo">
                                                                <xsl:for-each select="monedaCredito">
                                                                    <fo:inline font-size="6pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:for-each select="AvisoVencimientoDividendo">
                                                                <xsl:for-each select="numeroAcuerdo">
                                                                    <fo:inline font-size="6pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <xsl:for-each select="AvisoVencimientoDividendo">
                                                                <xsl:for-each select="dividendosImpagos">
                                                                    <fo:inline font-size="6pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </fo:table-body>
                                        </fo:table>
                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                            <fo:table-column column-width="20pt" />
                                            <fo:table-column />
                                            <fo:table-body>
                                                <fo:table-row>
                                                    <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="center" text-align="center" width="20pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                        <fo:block>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:inline font-weight="bold">C</fo:inline>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:inline font-weight="bold">L</fo:inline>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:inline font-weight="bold">I</fo:inline>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:inline font-weight="bold">E</fo:inline>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:inline font-weight="bold">N</fo:inline>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:inline font-weight="bold">T</fo:inline>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:inline font-weight="bold">E</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="black" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <fo:block>
                                                                <xsl:text>&#xA;</xsl:text>
                                                            </fo:block>
                                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-body>
                                                                    <fo:table-row background-color="silver">
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">AMORTIZACIÓN</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">INTERÉS</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">COMISIÓN</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">SEG. INCENDIO</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">S. DESGRAVAM.</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">S. ADICIONALES</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">MONTO PRORROG.</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                    <fo:table-row>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="amortizacion">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="intereses">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="comision">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="seguroIncendio">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="seguroDesgravamen">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="seguroCesantia">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="montoReprogramado">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
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
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-body>
                                                                    <fo:table-row>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" height="5pt" number-columns-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column />
                                                                                    <fo:table-column />
                                                                                    <fo:table-column />
                                                                                    <fo:table-column />
                                                                                    <fo:table-body>
                                                                                        <fo:table-row background-color="silver">
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">FECHA</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">TOTAL A PAGAR</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">FECHA</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">TOTAL A PAGAR</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="fechaPago1">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="valorAPagar1">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="fechaPago6">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="valorAPagar6">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="fechaPago2">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="valorAPagar2">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="fechaPago7">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="valorAPagar7">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="fechaPago3">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="valorAPagar3">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="fechaPago8">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="valorAPagar8">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="fechaPago4">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="valorAPagar4">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="fechaPago9">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="valorAPagar9">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="fechaPago5">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="valorAPagar5">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="fechaPago10">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="valorAPagar10">
                                                                                                            <fo:inline>
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
                                                                        <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="white" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block />
                                                                        </fo:table-cell>
                                                                        <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="white" height="5pt" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:block>
                                                                                    <xsl:text>&#xA;</xsl:text>
                                                                                </fo:block>
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column />
                                                                                    <fo:table-body>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" background-color="silver" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">TOTAL A PAGAR</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="totalDividendo">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                    <fo:inline> UF</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" background-color="silver" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">TOTAL A PAGAR</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline>&#160; $ </fo:inline>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="totalDividendoPesos">
                                                                                                            <fo:inline font-size="6pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" background-color="silver" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">INTERESES PENAL</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="interesMoraPesos">
                                                                                                            <fo:inline font-size="6pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" background-color="silver" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">OTROS CARGOS</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="gastosCobranzaPesos">
                                                                                                            <fo:inline font-size="6pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" background-color="silver" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">TOTAL RECIBO</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline>&#160; $ </fo:inline>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="totalAPagarPesos">
                                                                                                            <fo:inline font-size="6pt">
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
                                                                    <fo:table-row>
                                                                        <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="white" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column />
                                                                                    <fo:table-column />
                                                                                    <fo:table-body>
                                                                                        <fo:table-row background-color="silver">
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" number-columns-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">SALDO DEUDA UF</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">CAPITAL</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="saldoDeuda">
                                                                                                            <fo:inline font-size="6pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">DIVIDENDOS IMPAGOS</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="montoImpago">
                                                                                                            <fo:inline font-size="6pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">DEUDA REPROG.</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="deudaReprogramada">
                                                                                                            <fo:inline font-size="6pt">
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
                                                                        <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="white" height="5pt" number-columns-spanned="2" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:block>
                                                                                    <xsl:text>&#xA;</xsl:text>
                                                                                </fo:block>
                                                                                <fo:table width="100pt" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column column-width="50pt" />
                                                                                    <fo:table-column column-width="50pt" />
                                                                                    <fo:table-body>
                                                                                        <fo:table-row background-color="silver">
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" width="50pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">DIVIDENDOS CANCELADOS</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" background-color="white" height="5pt" text-align="center" width="50pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="dividendosCancelados">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
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
                                                                                <fo:inline>SE INFORMA QUE A PARTIR DE FEBRERO 2003 DISPONDRÁ DE 5 DÍAS CORRIDOS DE GRACIA DESPUÉS DE LA FECHA DE VENCIMIENTO, TRANSCURRIDOS LOS CUALES SE APLICARÁN LOS GASTOS DE COBRANZA EXTERNA</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                    <fo:table-row>
                                                                        <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="white" height="5pt" number-columns-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:table font-weight="bold" padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column />
                                                                                    <fo:table-body>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" height="5pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="convenio">
                                                                                                            <fo:inline font-size="6pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" height="5pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="mensaje1">
                                                                                                            <fo:inline font-size="6pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" height="5pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="mensaje2">
                                                                                                            <fo:inline font-size="6pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                    <fo:inline padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt">&#160;</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" height="5pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="mensaje3">
                                                                                                            <fo:inline font-size="6pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="after" height="5pt" number-columns-spanned="2" text-align="left">
                                                                                                <fo:block>
                                                                                                    <fo:block>
                                                                                                        <fo:leader leader-pattern="space" />
                                                                                                    </fo:block>
                                                                                                    <fo:inline>INFÓRMESE SOBRE EL LÍMITE DE GARANTÍA ESTATAL A LOS DEPÓSITOS</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                    </fo:table-body>
                                                                                </fo:table>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="white" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column />
                                                                                    <fo:table-body>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline>Vo Bo Y TIMBRE</fo:inline>
                                                                                                    <fo:block>
                                                                                                        <fo:leader leader-pattern="space" />
                                                                                                    </fo:block>
                                                                                                    <fo:inline>CAJA</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                    </fo:table-body>
                                                                                </fo:table>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="white" display-align="after" height="5pt" number-columns-spanned="2" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                            <fo:block>
                                                                                <fo:inline>FORMA DE PAGO</fo:inline>
                                                                                <fo:block>
                                                                                    <fo:leader leader-pattern="space" />
                                                                                </fo:block>
                                                                                <fo:inline>EFECTIVO ---&#160;&#160;&#160; DOCUMENTO --</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                </fo:table-body>
                                                            </fo:table>
                                                            <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                <fo:table-column />
                                                                <fo:table-body>
                                                                    <fo:table-row>
                                                                        <fo:table-cell font-size="6pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" padding-top="3pt" text-align="left" border-style="solid" border-width="1pt" border-color="black" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" height="5pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline>INFORMACIÓN SOBRE SEGUROS CONTRATADOS POR SU OPERACIÓN HIPOTECARIA</fo:inline>
                                                                                <fo:block>
                                                                                    <fo:leader leader-pattern="space" />
                                                                                </fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="desPolizaIncendio">
                                                                                        <fo:inline>
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                                <fo:block>
                                                                                    <fo:leader leader-pattern="space" />
                                                                                </fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="desPolizaDesgravamen">
                                                                                        <fo:inline>
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
                                                <fo:table-row>
                                                    <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="center" height="34pt" text-align="center" width="20pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                        <fo:block>
                                                            <fo:inline font-weight="bold">C</fo:inline>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:inline font-weight="bold">A</fo:inline>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:inline font-weight="bold">J</fo:inline>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:inline font-weight="bold">A</fo:inline>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="34pt" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                        <fo:block>
                                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                <fo:table-column column-width="69pt" />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-body>
                                                                    <fo:table-row>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" width="69pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                            <fo:block>
                                                                                <fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
                                                                                    <xsl:attribute name="src">url('<xsl:value-of select="AvisoVencimientoDividendo/logo" />')</xsl:attribute>
                                                                                </fo:external-graphic>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">BANCO CRÉDITO INVERSIONES</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                            <fo:block>
                                                                                <fo:inline font-size="8pt" font-weight="bold">CRÉDITO HIPOTECARIO</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                            <fo:block>
                                                                                <fo:inline font-size="8pt" font-weight="bold">TALÓN CONTROL PARA EL BANCO</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                </fo:table-body>
                                                            </fo:table>
                                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-column />
                                                                <fo:table-body>
                                                                    <fo:table-row background-color="silver">
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">AMORTIZACIÓN</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">INTERÉS</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">COMISIÓN</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">SEG. INCENDIO</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">S. DESGRAVAM.</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">S. ADICIONALES</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">MONTO PRORROG.</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                    <fo:table-row>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="amortizacion">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="intereses">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="comision">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="seguroIncendio">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="seguroDesgravamen">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="seguroCesantia">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="montoReprogramado">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                </fo:table-body>
                                                            </fo:table>
                                                            <fo:table width="70%" space-before.optimum="3pt" space-after.optimum="3pt">

                                                                <fo:table-column column-width="100pt" />
                                                                <fo:table-column column-width="100pt" />
                                                                <fo:table-body>
                                                                    <fo:table-row>

                                                                        <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" background-color="silver">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold">RUT</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" background-color="silver">
									                                        <fo:block>
									                                            <fo:inline font-size="6pt" font-weight="bold">NÚMERO CRÉDITO</fo:inline>
									                                        </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                    <fo:table-row>
                                                                        <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-width="1pt" border-color="silver" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <fo:inline font-size="6pt" font-weight="bold"></fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                    <fo:table-row>

                                                                        <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="rut">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                                <fo:inline font-size="6pt">-</fo:inline>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="dv">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-bottom-color="black" border-left-color="black" border-right-color="black" border-top-color="black" border-style="solid" border-width="1pt" border-color="silver" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                            <fo:block>
                                                                                <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                    <xsl:for-each select="nroOperacion">
                                                                                        <fo:inline font-size="6pt">
                                                                                            <xsl:apply-templates />
                                                                                        </fo:inline>
                                                                                    </xsl:for-each>
                                                                                </xsl:for-each>
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
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" height="35pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                            <fo:block>
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column />
                                                                                    <fo:table-body>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline>Vo Bo Y TIMBRE</fo:inline>
                                                                                                    <fo:block>
                                                                                                        <fo:leader leader-pattern="space" />
                                                                                                    </fo:block>
                                                                                                    <fo:inline>CAJA</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                    </fo:table-body>
                                                                                </fo:table>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" height="35pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                            <fo:block>
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column />
                                                                                    <fo:table-body>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" background-color="silver" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">TOTAL A PAGAR</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="totalDividendo">
                                                                                                            <fo:inline>
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                    <fo:inline> UF</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                    </fo:table-body>
                                                                                </fo:table>
                                                                                <fo:block>
                                                                                    <fo:leader leader-pattern="space" />
                                                                                </fo:block>
                                                                                <fo:block>
                                                                                    <xsl:text>&#xA;</xsl:text>
                                                                                </fo:block>
                                                                                <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:block>
                                                                                        <fo:inline bottom="auto" font-size="6pt" line-height="1pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" white-space-collapse="true" wrap-option="wrap">FORMA DE PAGO </fo:inline>
                                                                                    </fo:block>
                                                                                </fo:block>
                                                                                <fo:inline bottom="auto" font-size="6pt" line-height="1pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" white-space-collapse="true" wrap-option="wrap">EFECTIVO ---&#160;&#160;&#160; DOCUMENTO --</fo:inline>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" height="35pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                            <fo:block>
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column />
                                                                                    <fo:table-body>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" background-color="silver" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">TOTAL A PAGAR</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline>&#160; $ </fo:inline>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="totalDividendoPesos">
                                                                                                            <fo:inline font-size="6pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" background-color="silver" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">INTERESES PENAL</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="interesMoraPesos">
                                                                                                            <fo:inline font-size="6pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" background-color="silver" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">OTROS CARGOS</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="gastosCobranzaPesos">
                                                                                                            <fo:inline font-size="6pt">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </xsl:for-each>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" background-color="silver" height="5pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-weight="bold">TOTAL RECIBO</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell font-size="6pt" border-style="solid" border-width="1pt" border-color="black" height="5pt" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline>&#160; $ </fo:inline>
                                                                                                    <xsl:for-each select="AvisoVencimientoDividendo">
                                                                                                        <xsl:for-each select="totalAPagarPesos">
                                                                                                            <fo:inline font-size="6pt">
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
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </fo:table-body>
                                        </fo:table>
                                    </fo:block>
                                </fo:block>
                            </fo:block>
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
