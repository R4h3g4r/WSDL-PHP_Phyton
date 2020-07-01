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
						<xsl:for-each select="/">
						   <xsl:for-each select="Certificado">
													<xsl:for-each select="imgLogo">
														<fo:external-graphic space-before.optimum="2pt" space-after.optimum="2pt" content-height="scale-to-fit" height="0.50in"  content-width="0.50in" scaling="non-uniform">
															<xsl:attribute name="src">url('<xsl:value-of select="../imgLogo" />')</xsl:attribute>
														</fo:external-graphic>
													</xsl:for-each>
						    </xsl:for-each>
						 </xsl:for-each>
                            <xsl:for-each select="CertificadoInteresesVO">
                                <fo:block>
                                    <xsl:text>&#xA;</xsl:text>
                                </fo:block>
                                <fo:table padding="0" width="60%" space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:table-column column-width="100pt" />
                                    <fo:table-column />
                                    <fo:table-body>
										<fo:table-row>
											<fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="center" padding-start="450pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                <fo:block>
													<fo:inline font-size="13pt" text-decoration="underline">CERTIFICADO</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
										</fo:table-row>						
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
                                    <fo:leader leader-pattern="space" />
                                </fo:block>
                                <fo:block>
                                    <xsl:text>&#xA;</xsl:text>
                                </fo:block>
                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:table-column />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" height="42pt" text-align="justify" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                <fo:block>
                                                    <fo:inline font-size="8pt" line-height="normal" white-space-collapse="true" wrap-option="wrap">CERTIFICADO Nº 20, SOBRE INTERESES CORRESPONDIENTES A CREDITOS HIPOTECARIOS PAGADOS Y DEMÁS ANTECEDENTES RELACIONADOS CON MOTIVO DEL BENEFICIO TRIBUTARIO ESTABLECIDO EN EL ART. 55 BIS DE LA LEY DE RENTA.</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
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
                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="justify" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                <fo:block>
                                                    <fo:inline font-size="8pt" height="auto">La entidad acreedora que ha otorgado créditos con garantía hipotecaria que se hubieran destinado a adquirir o construir una o más viviendas o destinados a pagar los créditos señalados BANCO CREDITO INVERSIONES, certifica para los efectos del beneficio tributario establecido en el Art. 55 bis de la Ley de la Renta que el Sr.:</fo:inline>
                                                    <xsl:for-each select="nombre">
                                                        <fo:inline font-size="8pt" height="auto">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                    <fo:inline font-size="8pt" height="auto">, Rut Nº </fo:inline>
                                                    <xsl:for-each select="rut">
                                                        <fo:inline font-size="8pt" height="auto">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                    <fo:inline font-size="8pt" height="auto">, durante el año </fo:inline>
                                                    <xsl:for-each select="ano">
                                                        <fo:inline font-size="8pt" height="auto">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                    <fo:inline font-size="8pt" height="auto"> en cumplimiento de las obligaciones hipotecarias referidas, ha pagado los siguientes intereses.</fo:inline>
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
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="before" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt" top="auto">Mes de Pago Efectivo del Dividendo del aporte (1)</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="before" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Monto Nominal De los Intereses Correspondientes a Dividendos Pagados (2) </fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="before" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Factor de Actualización (3)</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" display-align="before" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Monto Actualizado De los Intereses Correspondientes a Dividendos Pagados (4=)(2)*(3)</fo:inline>
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
                                                                        <xsl:for-each select="intPagado1">
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
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Febrero</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intPagado2">
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
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Marzo</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intPagado3">
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
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Abril</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intPagado4">
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
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Mayo</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intPagado5">
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
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Junio</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intPagado6">
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
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Julio</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intPagado7">
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
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Agosto</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intPagado8">
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
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Septiembre</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intPagado9">
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
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Octubre</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intPagado10">
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
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Noviembre</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intPagado11">
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
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">Diciembre</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="intPagado12">
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
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8pt">TOTALES</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="black" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                    <fo:block>
                                                                        <xsl:for-each select="totalIntPagado">
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
                                                                        <xsl:for-each select="totalIntActualiz">
                                                                            <fo:inline font-size="8pt">
                                                                                <xsl:apply-templates />
                                                                            </fo:inline>
                                                                        </xsl:for-each>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                        </fo:table-body>
                                                    </fo:table>
                                                    <fo:block>
                                                        <fo:leader leader-pattern="space" />
                                                    </fo:block>
                                                    <fo:inline font-size="8pt">Se extiende el presente certificado en cumplimiento de lo dispuesto en la resolución Ex. Nº 53 del Servicio de Impuestos Internos, publicada en el Diario Oficial del 12 del 12 del 2002.</fo:inline>
                                                    <fo:block>
                                                        <xsl:text>&#xA;</xsl:text>
                                                    </fo:block>
                                                    <fo:block text-align="center" space-before.optimum="1pt" space-after.optimum="2pt">
                                                        <fo:block>
                                                            <xsl:for-each select="/">
                                                                <xsl:for-each select="Certificado">
                                                                    <xsl:for-each select="imgFirma">
                                                                        <fo:external-graphic space-before.optimum="1pt" space-after.optimum="1pt" content-height="scale-to-fit" height="1.00in"  content-width="1.00in" scaling="non-uniform">
                                                                            <xsl:attribute name="src">url('<xsl:value-of select="../imgFirma" />')</xsl:attribute>
                                                                        </fo:external-graphic>
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                            <fo:block>
                                                                <fo:leader leader-pattern="space" />
                                                            </fo:block>
                                                            <fo:block>
                                                                <xsl:text>&#xA;</xsl:text>
                                                            </fo:block>
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
