<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <!--Variables-->
    <xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
    <xsl:variable name="lineas">#CCCCCC</xsl:variable>
    <xsl:variable name="txt">#000000</xsl:variable>
    <xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
    <xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
    <xsl:variable name="alto-filas">5mm</xsl:variable>
    <xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
    <xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
    <xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
    <xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
    <xsl:variable name="espacio-celda-top">2mm</xsl:variable>
    <xsl:variable name="size-fuente-margen">7pt</xsl:variable>
    <xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>

    <!-- Variables -->
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <!-- Propiedades pagina -->
            <fo:layout-master-set>
                <fo:simple-page-master master-name="pagina"
                    page-height="28cm"
                    page-width="22cm"
                    margin-top="1cm"
                    margin-bottom="1cm"
                    margin-left="1cm"
                    margin-right="1cm">
                    <fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
                    <fo:region-before extent="3cm"/>
                    <fo:region-after extent="2cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <!-- Propiedades pagina -->
            <fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
                <fo:static-content flow-name="xsl-region-before">
                    <!-- imagen bci -->
                    <fo:block space-after="3mm">
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="15cm"/>
                            <fo:table-column column-width="5cm"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="nomina/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
                                    </fo:table-cell>
                                    <fo:table-cell padding-before="1cm">
                                        <fo:block font-size="10pt" font-weight="" space-after="1mm" text-align="right" color="{$txt}">
                                           Santiago, <xsl:value-of select="nomina/fechaImpresion"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                    <!-- imagen bci -->
                    <!-- Separador -->
                        <fo:block space-after="2mm">
                        <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
                        </fo:block>
                    <!-- Separador -->
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after">
                    <!-- Separador -->
                    <fo:block space-after="1mm">
                        <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
                    </fo:block>
                    <!-- Separador -->
                    <fo:block font-size="7pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
                        Pagina <fo:page-number/>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <xsl:call-template name="contenido"/>
                </fo:flow>
            </fo:page-sequence> 
        </fo:root>
    </xsl:template>
    
    <xsl:template name="contenido">
        <!-- cabecera cliente -->
        <fo:block font-size="5pt" space-after="1mm">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="20cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-size="11pt" font-weight="" space-after="1mm" text-align="left" color="{$txt}">
                                Señores
                            </fo:block>
                            <fo:block font-size="11pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
                                <xsl:value-of select="nomina/nombreEmpresa"/>
                            </fo:block>
                            <fo:block font-size="11pt" font-weight="bold" space-after="3mm" text-align="left" color="{$txt}">
                                Presente
                            </fo:block>
                            <fo:block font-size="11pt" font-weight="" space-after="1mm" text-align="left" color="{$txt}">
                                De mi consideración 
                            </fo:block>
                            <fo:block font-size="11pt" font-weight="" space-after="1mm" text-align="left" color="{$txt}">
                                Por medio de la presente me permito informar a Usted que de acuerdo a lo instruido por la Empresa 
                                <xsl:value-of select="nomina/nombreEmpresa"/>, RUT <xsl:value-of select="nomina/rutEmpresa"/> 
                                se ha procedido a efectuar el pago que a continuación se indica:
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
        <!-- cabecera cliente -->

        <!-- Separador -->
        <fo:block space-after="3mm">
        </fo:block>
        <!-- Separador -->
        
        <fo:block font-size="8.5pt" space-after="10mm">
            <fo:table table-layout="fixed">
                    <fo:table-column column-width="3cm" />
                    <fo:table-column column-width="3cm" />
                    <fo:table-column column-width="2cm" />
                    <fo:table-column column-width="3cm" />
                    <fo:table-column column-width="2cm" />
                    <fo:table-column column-width="3cm" />
                    <fo:table-column column-width="4cm" />
                    <fo:table-body>
                        <fo:table-row space-after="1mm">
                            <fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
                                <fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
                                    Código de Identificación
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
                                <fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
                                    Monto Total ($)
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
                                <fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
                                    Cantidad Total
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
                                <fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
                                    Monto Aceptado ($)
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
                                <fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
                                    Cantidad Aceptada
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
                                <fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
                                    Fecha de Pago
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
                                <fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
                                    Estado
                                </fo:block>
                            </fo:table-cell>

                        </fo:table-row>
                        
                            <fo:table-row>
                                <fo:table-cell border="0.5pt solid {$lineas}">
                                    <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
                                        &#0160;<xsl:value-of select="/nomina/idNomina"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="0.5pt solid {$lineas}">
                                    <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="right">
                                        &#0160;<xsl:value-of select="/nomina/montoTotal"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
                                    <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="right">
                                        &#0160;<xsl:value-of select="/nomina/cantidadTotal"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
                                    <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="right">
                                        &#0160;<xsl:value-of select="/nomina/montoAceptado"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
                                    <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="right">
                                        &#0160;<xsl:value-of select="/nomina/cantidadAceptado"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
                                    <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
                                        &#0160;<xsl:value-of select="/nomina/fechaPago"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
                                        <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
                                        &#0160;<xsl:value-of select="/nomina/estado"/>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                    </fo:table-body>
                </fo:table>
        </fo:block>

        <fo:block font-size="5pt" space-after="1mm">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="20cm"/>
                <fo:table-column column-width="5cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-size="11pt" font-weight="" space-after="3mm" text-align="left" color="{$txt}">
                            Se extiende el presente certificado a expresa petición del interesado y para los fines que estime convenientes y sin ulterior responsabilidad para el Banco.
                            </fo:block>
                            <fo:block font-size="11pt" font-weight="" space-after="1mm" text-align="left" color="{$txt}">
                            Atentamente
                            </fo:block>
                            <fo:block font-size="11pt" font-weight="" space-after="4mm" text-align="left" color="{$txt}">
                            <fo:external-graphic width="110pt"  height="110pt" text-align="right" position="relative">
									<xsl:attribute name="src">
                                        <xsl:value-of select="/nomina/rutaImagen"/>sello_bci.gif
									</xsl:attribute>
								</fo:external-graphic>
                            </fo:block>
                            <fo:block font-size="11pt" font-weight="" space-after="1mm" text-align="left" color="{$txt}">
                            cc.Archivo
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>    
    </xsl:template>

    <xsl:template name="montoFormateado">
        <xsl:param name="montoaFormatear"/>
        <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="right">
            &#0160;<xsl:value-of select="format-number($montoaFormatear, '###.###', 'peso')"/>
        </fo:block>
    </xsl:template>
    
    <xsl:template name="subTitulo">
        <xsl:param name="titulo"/>
        <xsl:param name="fecha"/>
        <fo:block font-size="9pt" font-weight="bold" text-align="left" color="#0361A2" >
            <fo:table table-layout="fixed">
                <fo:table-column column-width="0.3cm" />
                <fo:table-column column-width="8cm" />
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell padding-before="1mm">
                            <fo:external-graphic height="1.2mm" width="1.2mm">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="nomina/rutaImagen"/>01-bullet2-rj.gif
                                </xsl:attribute>
                            </fo:external-graphic>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>
                                <xsl:value-of select="$titulo"/>
                                <xsl:if test="$fecha != ''">
                                    <xsl:value-of select="$fecha"/>
                                </xsl:if>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

    <xsl:template name="itemTitulo">
        <xsl:param name="titulo"/> 
        <fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="0.5cm" />
                <fo:table-column column-width="8cm" />
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell padding-left="2mm" padding-before="1mm" >
                           <fo:external-graphic height="1mm" width="1mm">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="nomina/rutaImagen"/>01-bullet1-rj.gif
                                </xsl:attribute>
                            </fo:external-graphic>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>
                                <xsl:value-of select="$titulo"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

</xsl:stylesheet>