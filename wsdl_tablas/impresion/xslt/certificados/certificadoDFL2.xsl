<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in">
                <fo:region-body margin-top="0.6in" margin-bottom="0.6in" />
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
                        <xsl:for-each select="Certificado">
                            <xsl:for-each select="CertificadoDFL2VO">
                                <fo:block>
                                    <xsl:text>&#xA;</xsl:text>
                                </fo:block>
                                <fo:table padding="0" width="60%" space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:table-column column-width="100pt" />
                                    <fo:table-column />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" width="100pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Razón Social</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">:&#160; BANCO CREDITO INVERSIONES</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" width="100pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">RUT Nº</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">:&#160; 97.006.000-6</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" width="100pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Dirección</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">:&#160; HUERFANOS 1134, SANTIAGO</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" width="100pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">Giro o Actividad</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">:&#160; BANCO COMERCIAL</fo:inline>
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
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="justify" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">CERTIFICADO&#160; SOBRE DIVIDENDOS HIPOTECARIOS PAGADOS O APORTES ENTERADOS, SEGÚN CORRESPONDA, EN CUMPLIMIENTO DE OBLIGACIONES HIPOTECARIAS CONTRAIDAS PARA LA ADQUISICION O CONSTRUCCION DE UNA VIVIENDA NUEVA ACOGIDA A LAS NORMAS DEL D.F.L Nº2, DE 1959, CONFORME A LAS DISPOSICIONES DE LA LEY Nº 19.622, DE 1999, MODIFICADA POR LA LEY Nº19.768 DE 2001 Y Nº19.840 DE 2002.</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table start-indent="((8.5in - 0.6in - 0.6in) - (((8.5in - 0.6in - 0.6in) * 100) div 100) ) div 2" end-indent="((8.5in - 0.6in - 0.6in) - (((8.5in - 0.6in - 0.6in) * 100) div 100) ) div 2" text-align="center" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:table-column />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">CERTIFICADO Nº </fo:inline>
                                                    <xsl:for-each select="numCertificado">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
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
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" height="184pt" text-align="justify" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                <fo:block>
                                                    <fo:inline font-size="8pt">El Banco o Institución financiera, agente adminstrador de mutuos hipotecarios endosables, sociedades inmobiliarias o cooperativas de viviendas, BANCO CREDITO INVERSIONES, certifica que el Sr. </fo:inline>
                                                    <xsl:for-each select="nombre">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                    <fo:inline font-size="8pt">, Rut Nº </fo:inline>
                                                    <xsl:for-each select="rut">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                    <fo:inline font-size="8pt">, durante el año </fo:inline>
                                                    <xsl:for-each select="ano">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                    <fo:inline font-size="8pt"> en cumplimiento de las obligaciones hipotecarias contraídas para la adquisición o construcción de una vivienda nueva acogida a las normas del D.F.L. Nº2, de 1959, ha pagado los dividendos hipotecarios o enterado los aportes que se señalan a continuación; todo ello para los fines de invocar el beneficio tributario que establece la Ley Nº19.622, de 1999, modificada por las Leyes Nºs 19.768, de 2001 y 19.840, del 2002, respecto del cual se acogió a contar de </fo:inline>
                                                    <xsl:for-each select="fecEntrada">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                    <fo:inline font-size="8pt"> segun </fo:inline>
                                                    <xsl:for-each select="glosa">
                                                        <fo:inline font-size="8pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                    <fo:inline font-size="8pt">.</fo:inline>
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
                                                        <fo:table-body>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="before" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt" top="auto">Mes de Pago Efectivo del Dividendo o entero del aporte (1)</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="before" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Monto Nominal Dividendos Pagados o Aporte Enterados</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="before" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Factor de Actualización (3)</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="before" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Monto Actualizado Dividendos Pagados o Aportes Enterados (2)*(3)=(4)</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="before" number-columns-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Nº Cuotas pagadas durante el año por dividendos o Aportes</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="after" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Del Año (5)</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="after" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Atrasadas (6)</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Enero </fo:inline>
                                                                        <xsl:for-each select="ano">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNominal1">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="factorActualiz1">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intActualiz1">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagadas1">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagAtras1">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Febrero</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNominal2">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="factorActualiz2">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intActualiz2">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagadas2">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagAtras2">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Marzo</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNominal3">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="factorActualiz3">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intActualiz3">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagadas3">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagAtras3">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Abril</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNominal4">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="factorActualiz4">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intActualiz4">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagadas4">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagAtras4">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Mayo</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNominal5">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="factorActualiz5">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intActualiz5">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagadas5">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagAtras5">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Junio</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNominal6">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="factorActualiz6">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intActualiz6">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagadas6">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagAtras6">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Julio</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNominal7">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="factorActualiz7">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intActualiz7">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagadas7">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagAtras7">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Agosto</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNominal8">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="factorActualiz8">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intActualiz8">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagadas8">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagAtras8">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Septiembre</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNominal9">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="factorActualiz9">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intActualiz9">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagadas9">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagAtras9">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Octubre</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNominal10">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="factorActualiz10">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intActualiz10">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagadas10">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagAtras10">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Noviembre</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNominal11">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="factorActualiz11">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intActualiz11">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagadas11">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagAtras11">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Diciembre</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNominal12">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="factorActualiz12">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intActualiz12">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagadas12">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="cuotasPagAtras12">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">TOTALES</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="montoNomDividPag">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block />
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="numDividPagado">
                                                                            <xsl:apply-templates />
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="totalDividendo">
                                                                            <xsl:apply-templates />
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="numDividPagAtras">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
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
                                                                <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="justify" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">El monto a rebajar en su declaración de impuestos Anuales a la Renta debe ser calculado según las instrucciones impartidas en el Suplemento Tributario para la Declaración de los Impuestos Anuales a la Renta del año 2003, del SII.</fo:inline>
                                                                        <fo:block>
                                                                            <fo:leader leader-pattern="space" />
                                                                        </fo:block>
                                                                        <fo:inline font-size="8pt">Se extiende el presente certificado en cumplimiento de lo dispuesto en la Resolución Ex. Nº8145 del Servicio de impuestos internos, publicada en el Diario Oficial de 11.12.1999, y sus modificaciones posteriores.</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                        </fo:table-body>
                                                    </fo:table>
                                                    <fo:block text-align="center" space-before.optimum="1pt" space-after.optimum="2pt">
                                                        <fo:block>
                                                            <xsl:for-each select="/">
                                                                <xsl:for-each select="Certificado">
                                                                    <xsl:for-each select="imgFirma">
                                                                        <fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
                                                                            <xsl:attribute name="src">url('<xsl:value-of select="../imgFirma" />')</xsl:attribute>
                                                                        </fo:external-graphic>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </fo:block>
                                                    </fo:block>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                            </xsl:for-each>
                        </xsl:for-each>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
