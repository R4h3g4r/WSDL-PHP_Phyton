<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in">
                <fo:region-before extent="1.79in" />
                <fo:region-body margin-top="1.79in" margin-bottom="0.79in" />
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
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="logo">
                                                    <fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
                                                        <xsl:attribute name="src">url('<xsl:value-of select="." />')</xsl:attribute>
                                                    </fo:external-graphic>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" text-align="right" width="150pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline color="#000000" font-size="9pt">NOMBRES </fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="nombre">
                                                        <fo:inline color="#000000" font-size="9pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:inline color="#000000" font-size="9pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </fo:inline>
                                            <fo:inline color="#000000" font-size="9pt">RUT</fo:inline>
                                            <fo:inline color="#000000" font-size="9pt">: </fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="ClienteBancaPrivadaTO">
                                                    <xsl:for-each select="rut">
                                                        <fo:inline color="#000000" font-size="9pt">
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
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:inline color="#0060A1" font-size="14pt" font-weight="bold">Conocimiento de Cliente y Origen de Fondos</fo:inline>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:inline color="#0060A1" font-size="10pt" font-weight="bold">Cuestionario de Preguntas</fo:inline>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:block>
                            <xsl:text>&#xA;</xsl:text>
                        </fo:block>
                        <fo:table background-color="#F1F1F1" padding="1" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">1.Describa la naturaleza de su(s) negocio(s). Indique su relación con la empresa (dueño, empleado) y/o cargo que ocupa. Incluya productos, servicios y ventas anuales.</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="8pt">Respuesta: </fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="RespuestaOpcionTO">
                                                    <xsl:for-each select="pregunta1">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:inline font-size="8pt"></fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">2. Cómo y cuándo se estableció en el negocio/cargo? (Si es dueño, señale si se estableció con ahorros previos, herencia, obsequio, etc).  </fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="8pt">Respuesta :&#160; </fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="RespuestaOpcionTO">
                                                    <xsl:for-each select="pregunta2">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">3. Cómo está distribuida la propiedad de su negocio?, cuál es su participación? </fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="8pt">Respuesta: </fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="RespuestaOpcionTO">
                                                    <xsl:for-each select="pregunta3">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">4. Cuál es su estructura familiar y de relacionados (parientes, socios, empresas, etc)? </fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="8pt">Respuesta: </fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="RespuestaOpcionTO">
                                                    <xsl:for-each select="pregunta4">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">5. Tiene a cargo decisiones de inversión de algún familiar?, Qué porcentaje representa de sus inversiones? </fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="8pt">Respuesta: </fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="RespuestaOpcionTO">
                                                    <xsl:for-each select="pregunta5">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">6. Necesidades de Banca Privada. Tiene alguna otra consideración especial? (Por ejemplo, requerimientos de fusiones de empresa, administración de patrimonio familiar, sucesión, seguros, etc)</fo:inline>
                                            <fo:block>
                                                <fo:leader leader-pattern="space" />
                                            </fo:block>
                                            <fo:inline font-size="8pt">Respuesta: </fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="RespuestaOpcionTO">
                                                    <xsl:for-each select="pregunta6">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" number-columns-spanned="4" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                        <fo:block>
                                            <fo:inline font-size="8pt">7. Fuente De Ingresos / Egresos</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">INGRESOS </fo:inline>
                                            <fo:inline font-size="8pt">$$$</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">EGRESOS $$$</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Renta Fija</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="ingresosRentaFija">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Dividendo y/o arriendo</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="egresosDividendo">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Renta Variable</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="ingresosRentaVariable">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Casas comerciales</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="egresosCasasComerciales">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Renta Conyuge</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="ingresosRentaConyuge">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Educacion</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="egresosEducacion">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Retiros</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="ingresosRetiros">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Retiros</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="egresosRetiros">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Otros Ingresos</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="ingresosOtros">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Otras deudas</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="egresosOtros">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">TOTAL INGRESOS</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="ingresosTotales">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">TOTAL EGRESOS</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="egresosTotales">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">INGRESOS LIQUIDOS</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="IngresosEgresosClienteTO">
                                                    <xsl:for-each select="ingresosLiquidos">
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
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block break-after="page">
                            <xsl:text>&#xA;</xsl:text>
                        </fo:block>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" number-columns-spanned="4" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                        <fo:block>
                                            <fo:inline font-size="8pt">8. Patrimonio</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">ACTIVOS</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">PASIVOS</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Depositos a plazo</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="activosDepositoPlazo">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Deudas casas comerciales</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="pasivosDeudasCasasComerciales">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Acciones y bonos</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="activosAccionesBonos">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Deudas con bancos</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="pasivosDeudasBancos">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Fondos Mutuos</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="activosDfondosMutuos">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Deudas hipotecarias</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="pasivosDeudasHipotecarias">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Activos en leasing</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="activosLeasing">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Deudas Leasing</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="pasivosDeudasLeasing">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Bienes raices</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="activosBienesRaices">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Otras deudas</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="pasivosOtrasDeudas">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Vehiculos</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="activosVehiculos">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Participacion en sociedades</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="activosParticipacionSociedades">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">Otros activos</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="activosOtros">
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
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">TOTAL ACTIVOS</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="activosTotales">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">TOTAL PASIVOS</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="PatrimonioClienteTO">
                                                    <xsl:for-each select="totalPasivos">
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
                        <fo:block>
                            <xsl:text>&#xA;</xsl:text>
                        </fo:block>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="8pt">9. Señale el origen de fondos a invertie en bci: </fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="RespuestaOpcionTO">
                                                    <xsl:for-each select="pregunta9">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:inline font-size="8pt">&#160;</fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="RespuestaOpcionTO">
                                                    <xsl:for-each select="pregunta9Glosa">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <fo:inline font-size="8pt">&#160;</fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="RespuestaOpcionTO">
                                                    <xsl:for-each select="pregunta9Texto">
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
                        <fo:inline color="#0060A1" font-family="Times" font-size="10pt">Informacion Cuestionario</fo:inline>
                        <fo:block>
                            <xsl:text>&#xA;</xsl:text>
                        </fo:block>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline color="#000000" font-size="8pt">Fecha ingreso formulario: </fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="RespuestaOpcionTO">
                                                    <xsl:for-each select="fechaIngresoFormulario">
                                                        <fo:inline color="#000000" font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline color="#000000" font-size="8pt">Ejecutivo que refiere: </fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="RespuestaOpcionTO">
                                                    <xsl:for-each select="nombreEjecutivoFormulario">
                                                        <fo:inline color="#000000" font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline color="#000000" font-size="8pt">Fecha ultima actualizacion: </fo:inline>
                                            <xsl:for-each select="ConocimientoClienteXml">
                                                <xsl:for-each select="RespuestaOpcionTO">
                                                    <xsl:for-each select="fechaUltimaActualizacion">
                                                        <fo:inline color="#000000" font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" font-family="Times" font-size="10pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <fo:inline color="#0060A1" font-size="9pt">Comentarios</fo:inline>
                        <fo:block>
                            <fo:leader leader-pattern="space" />
                        </fo:block>
                        <xsl:for-each select="ConocimientoClienteXml">
                            <xsl:for-each select="Comentario">
                                <fo:table background-color="#F1F1F1" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:table-column />
                                    <fo:table-column />
                                    <fo:table-column />
                                    <fo:table-header>
                                        <fo:table-row>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline color="#000000" font-size="8pt">Comentario</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline color="#000000" font-size="8pt">Ejecutivo</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline color="#000000" font-size="8pt">Fecha</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-header>
                                    <fo:table-body>
                                        <xsl:for-each select="ComentarioTO">
                                            <fo:table-row>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="comentario">
                                                            <fo:inline color="#000000" font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="usuarioComentario">
                                                            <fo:inline color="#000000" font-size="8pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-bottom-color="#CCCCCC" border-left-color="#CCCCCC" border-right-color="#CCCCCC" border-top-color="#CCCCCC" border-style="solid" border-width="1pt" border-color="#F1F1F1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                    <fo:block>
                                                        <xsl:for-each select="fechaComentario">
                                                            <fo:inline color="#000000" font-size="8pt">
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
                            <xsl:text>&#xA;</xsl:text>
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
