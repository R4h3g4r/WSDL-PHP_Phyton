<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in">
                <fo:region-before extent="1.7in" />
                <fo:region-body margin-top="1.7in" margin-bottom="0.79in" />
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:template match="/">
        <fo:root>
            <xsl:copy-of select="$fo:layout-master-set" />
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-column column-width="150pt" />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" height="30pt" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                        <fo:block>
                                            <fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
                                                <xsl:attribute name="src">url('<xsl:value-of select="/FichaClienteEmpresaXml/logo" />')</xsl:attribute>
                                            </fo:external-graphic>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" text-align="right" width="150pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:inline color="#86AFCA" font-size="14px" font-weight="bold">Ficha Cliente Inversiones Empresa</fo:inline>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:inline color="#86AFCA" font-size="10pt" font-weight="bold">Informacion de la Empresa</fo:inline>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:block>
                            <xsl:text>&#xA;</xsl:text>
                        </fo:block>
                        <fo:table background-color="#F1F1F1" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row width="25%">
                                    <fo:table-cell background-color="#F1F1F1" border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline background-color="#F1F1F1" font-size="8pt">Razon Social</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="razonSocial">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell background-color="#F1F1F1" border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline background-color="#F1F1F1" font-size="8pt">Nombre Fantasia</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="nombreFantasia">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell background-color="#F1F1F1" border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline background-color="#F1F1F1" font-size="8pt">Rut</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="rut">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Banca</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="banca">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell background-color="#F1F1F1" border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline background-color="#F1F1F1" font-size="8pt">Oficina</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="oficina">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Direccion</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="direccion">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Comuna</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="comuna">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Ciudad</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="ciudad">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Telefono</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="telefono">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Numero Celular</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="celular">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">E-Mail</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="email">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Direccion pagina web</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="web">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Numero Fax</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="fax">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Fecha escritura de constitucion</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="fechaEscritura">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Notaria</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="AntecedentesAdicionalesEmpresaTO">
                                                    <xsl:for-each select="notaria">
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
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:inline font-family="Times" font-size="10pt">&#160;</fo:inline>
                        <fo:inline color="#86AFCA" font-family="Times" font-size="10pt" font-weight="bold">Representante Legal</fo:inline>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:block>
                            <xsl:text>&#xA;</xsl:text>
                        </fo:block>
                        <fo:table background-color="#F1F1F1" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="8pt">Nombre Representante Legal</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="nombre">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:inline font-size="8pt">&#160;</fo:inline>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="apellidoPaterno">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:inline font-size="8pt">&#160;</fo:inline>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="apellidoMaterno">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Cliente BCI</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Si </fo:inline>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="clienteBCI">
                                                        <fo:inline padding-before="-3pt" padding-after="-2pt" text-decoration="underline" color="black">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:choose>
                                                                    <xsl:when test=".='true'">
                                                                        <fo:inline white-space-collapse="false" font-family="ZapfDingbats" font-size="10pt" padding-start="1pt" padding-end="1pt">&#x2714;</fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:when test=".='1'">
                                                                        <fo:inline white-space-collapse="false" font-family="ZapfDingbats" font-size="10pt" padding-start="1pt" padding-end="1pt">&#x2714;</fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:when test=".='S'">
                                                                        <fo:inline white-space-collapse="false" font-family="ZapfDingbats" font-size="10pt" padding-start="1pt" padding-end="1pt">&#x2714;</fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                        <fo:inline text-decoration="underline" color="black">
                                                                            <fo:leader leader-length="8pt" leader-pattern="rule" />
                                                                        </fo:inline>
                                                                    </xsl:otherwise>
                                                                </xsl:choose>
                                                            </fo:inline>
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:inline font-size="8pt"> No </fo:inline>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="clienteBCI">
                                                        <fo:inline padding-before="-3pt" padding-after="-2pt" text-decoration="underline" color="black">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:choose>
                                                                    <xsl:when test=".='true'">
                                                                        <fo:inline white-space-collapse="false" font-family="ZapfDingbats" font-size="10pt" padding-start="1pt" padding-end="1pt">&#x2714;</fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:when test=".='1'">
                                                                        <fo:inline white-space-collapse="false" font-family="ZapfDingbats" font-size="10pt" padding-start="1pt" padding-end="1pt">&#x2714;</fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:when test=".='N'">
                                                                        <fo:inline white-space-collapse="false" font-family="ZapfDingbats" font-size="10pt" padding-start="1pt" padding-end="1pt">&#x2714;</fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                        <fo:inline text-decoration="underline" color="black">
                                                                            <fo:leader leader-length="8pt" leader-pattern="rule" />
                                                                        </fo:inline>
                                                                    </xsl:otherwise>
                                                                </xsl:choose>
                                                            </fo:inline>
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Oficina</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="oficina">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Rut</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="rutRepresentante">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">E-Mail</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="email">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Fecha Nacimiento</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="fechaNacimiento">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Nacionalidad</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="nacionalidad">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Cargo que ocupa en la empresa</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="cargo">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Pais de residencia de Representante Legal</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="paisRecidencia">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Nombre Contacto</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="nombreContacto">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">E-Mail</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="emailContacto">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Telefono</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="fonoContacto">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Numero Celular</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="celularContacto">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Fax</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="faxContacto">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Cantidad/ Nº de empleados</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="cantidadEmpleados">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Cotiza en bolsa</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">SI </fo:inline>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="cotizaBolza">
                                                        <fo:inline padding-before="-3pt" padding-after="-2pt" text-decoration="underline" color="black">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:choose>
                                                                    <xsl:when test=".='true'">
                                                                        <fo:inline white-space-collapse="false" font-family="ZapfDingbats" font-size="10pt" padding-start="1pt" padding-end="1pt">&#x2714;</fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:when test=".='1'">
                                                                        <fo:inline white-space-collapse="false" font-family="ZapfDingbats" font-size="10pt" padding-start="1pt" padding-end="1pt">&#x2714;</fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:when test=".='S'">
                                                                        <fo:inline white-space-collapse="false" font-family="ZapfDingbats" font-size="10pt" padding-start="1pt" padding-end="1pt">&#x2714;</fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                        <fo:inline text-decoration="underline" color="black">
                                                                            <fo:leader leader-length="8pt" leader-pattern="rule" />
                                                                        </fo:inline>
                                                                    </xsl:otherwise>
                                                                </xsl:choose>
                                                            </fo:inline>
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:inline font-size="8pt"> No </fo:inline>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                    <xsl:for-each select="cotizaBolza">
                                                        <fo:inline padding-before="-3pt" padding-after="-2pt" text-decoration="underline" color="black">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:choose>
                                                                    <xsl:when test=".='true'">
                                                                        <fo:inline white-space-collapse="false" font-family="ZapfDingbats" font-size="10pt" padding-start="1pt" padding-end="1pt">&#x2714;</fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:when test=".='1'">
                                                                        <fo:inline white-space-collapse="false" font-family="ZapfDingbats" font-size="10pt" padding-start="1pt" padding-end="1pt">&#x2714;</fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:when test=".='N'">
                                                                        <fo:inline white-space-collapse="false" font-family="ZapfDingbats" font-size="10pt" padding-start="1pt" padding-end="1pt">&#x2714;</fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                        <fo:inline text-decoration="underline" color="black">
                                                                            <fo:leader leader-length="8pt" leader-pattern="rule" />
                                                                        </fo:inline>
                                                                    </xsl:otherwise>
                                                                </xsl:choose>
                                                            </fo:inline>
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Donde</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:if test="FichaClienteEmpresaXml/RepresentanteLegalEmpresaTO/cotizaBolza = &apos;S&apos;">
                                                <xsl:for-each select="FichaClienteEmpresaXml">
                                                    <xsl:for-each select="RepresentanteLegalEmpresaTO">
                                                        <xsl:for-each select="dondeCotiza">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:inline color="#86AFCA" font-family="Times" font-size="10pt" font-weight="bold">Apoderados O Gerentes (Firmas Autorizadas)</fo:inline>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <xsl:for-each select="FichaClienteEmpresaXml">
                            <xsl:for-each select="ApoderadoGerenteEmpresa">
                                <fo:table background-color="#F1F1F1" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:table-column />
                                    <fo:table-column />
                                    <fo:table-column />
                                    <fo:table-column />
                                    <fo:table-header>
                                        <fo:table-row>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Nombre Completo</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Rut</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Fecha de Nacimiento</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Nacionalidad</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-header>
                                    <fo:table-body>
                                        <xsl:for-each select="ApoderadoGerenteEmpresaTO">
                                            <fo:table-row>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="nombre">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="rut">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="fechaNacimiento">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="nacionalidad">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </xsl:for-each>
                                    </fo:table-body>
                                </fo:table>
                            </xsl:for-each>
                        </xsl:for-each>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:inline color="#86AFCA" font-family="Times" font-size="10pt" font-weight="bold">Antecedentes de la propiedad de la Sociedad</fo:inline>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <xsl:for-each select="FichaClienteEmpresaXml">
                            <xsl:for-each select="AntecedentesSociedadEmpresa">
                                <fo:table background-color="#F1F1F1" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:table-column />
                                    <fo:table-column />
                                    <fo:table-column />
                                    <fo:table-column />
                                    <fo:table-header>
                                        <fo:table-row>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Nombre o Razon Social</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Rut</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Porcentaje de Participacion</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Actividad</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-header>
                                    <fo:table-body>
                                        <xsl:for-each select="AntecedentesSociedadEmpresaTO">
                                            <fo:table-row>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="razonSocial">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="rut">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="porcentajeParticipacion">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="actividad">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </xsl:for-each>
                                    </fo:table-body>
                                </fo:table>
                            </xsl:for-each>
                        </xsl:for-each>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:block>
                            <xsl:text>&#xA;</xsl:text>
                        </fo:block>
                        <fo:table background-color="#F1F1F1" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Sociedad Socia</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="SociedadSociaEmpresaTO">
                                                    <xsl:for-each select="nombre">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Direccion</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="SociedadSociaEmpresaTO">
                                                    <xsl:for-each select="direccion">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Telefono</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="SociedadSociaEmpresaTO">
                                                    <xsl:for-each select="telefono">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Pais de Constitucion</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="FichaClienteEmpresaXml">
                                                <xsl:for-each select="SociedadSociaEmpresaTO">
                                                    <xsl:for-each select="pais">
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
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <xsl:for-each select="FichaClienteEmpresaXml">
                            <xsl:for-each select="SocioEmpresa">
                                <fo:table background-color="#F1F1F1" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:table-column />
                                    <fo:table-column />
                                    <fo:table-header>
                                        <fo:table-row>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Nombre Socio</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Rut</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-header>
                                    <fo:table-body>
                                        <xsl:for-each select="SocioEmpresaTO">
                                            <fo:table-row>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="nombre">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="rut">
                                                            <fo:inline font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </xsl:for-each>
                                    </fo:table-body>
                                </fo:table>
                            </xsl:for-each>
                        </xsl:for-each>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:inline color="#86AFCA" font-family="Times" font-size="10pt" font-weight="bold">Antecedentes Adicionales</fo:inline>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:inline font-size="8pt">Si la cuenta va a recibir/enviar transferencias, especifique los paises de origen y destinos previstos:</fo:inline>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <xsl:for-each select="FichaClienteEmpresaXml">
                            <xsl:for-each select="AntecedentesAdicionalesEmpresaTO">
                                <xsl:for-each select="comentarioCuenta">
                                    <fo:inline background-color="#F1F1F1" font-size="8pt">
                                        <xsl:apply-templates />
                                    </fo:inline>
                                </xsl:for-each>
                            </xsl:for-each>
                        </xsl:for-each>
                        <fo:block>
                            <xsl:text>&#xA;</xsl:text>
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
