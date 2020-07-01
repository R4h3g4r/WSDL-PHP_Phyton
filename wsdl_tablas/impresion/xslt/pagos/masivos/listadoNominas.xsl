<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:template match="ListadoNominas">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <!-- layout for the first page -->
                <fo:simple-page-master master-name="first"
                    page-width="21.5cm" page-height="27.9cm" margin-bottom="5mm" margin-top="5mm"
                    margin-left="15mm" margin-right="2cm" border="thick solid red">
                    <fo:region-body margin-top="10mm" margin-bottom="32mm"/>
                    <fo:region-before extent="12cm" />
                    <fo:region-after extent="32mm" />
                </fo:simple-page-master>
                <!-- layout for the other pages -->
                <fo:page-sequence-master master-name="basicPSM">
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference
                            master-reference="first" page-position="first" />
                    </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <!-- end: defines page layout -->
            <!-- actual layout -->
            <fo:page-sequence master-reference="first">
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block text-align="right">
                    </fo:block>
                    <fo:block text-align="center" font-size="9pt">
                        <fo:page-number/>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:table>
                            <fo:table-column/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <fo:inline font-weight="bold" font-size="19pt" color="#888888">
                                                <xsl:value-of select="tipoPago"/>
                                            </fo:inline>
                                            <fo:inline font-weight="bold" font-size="15pt">
                                                &#160;<xsl:value-of select="descripcionEstado"/> desde <xsl:value-of select="fechaPagoDesde"/> hasta <xsl:value-of select="fechaPagoHasta"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <xsl:if test="Nominas">
                            <fo:table font-size="9pt" border="solid" space-before="10mm">
                                <fo:table-column column-width="17mm"/><!-- Fecha Pago   -->
                                <fo:table-column column-width="25mm"/><!-- Folio        -->
                                <fo:table-column column-width="25mm"/><!-- Archivo      -->
                                <fo:table-column column-width="17mm"/><!-- Fecha Envio  -->
                                <fo:table-column column-width="10mm"/><!-- Pagos        -->
                                <fo:table-column column-width="20mm"/><!-- Monto Total  -->
                                <fo:table-column column-width="20mm"/><!-- Rechazados   -->
                                <fo:table-column column-width="20mm"/><!-- Monto        -->
                                <fo:table-column column-width="40mm"/><!-- Estado       -->
                                <fo:table-header>
                                    <fo:table-row vertical-align="center" text-align="center" font-weight="bold">
                                        <fo:table-cell border-bottom="solid">
                                            <fo:block>
                                                Fecha Pago
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-bottom="solid">
                                            <fo:block>
                                                Folio
                                            </fo:block>  
                                        </fo:table-cell>
                                        <fo:table-cell border-bottom="solid">
                                            <fo:block>
                                                Archivo
                                            </fo:block>  
                                        </fo:table-cell>
                                        <fo:table-cell border-bottom="solid">
                                            <fo:block>
                                                Fecha Envío
                                            </fo:block>  
                                        </fo:table-cell>
                                        <fo:table-cell border-bottom="solid">
                                            <fo:block>
                                                Pagos
                                            </fo:block>  
                                        </fo:table-cell>
                                        <fo:table-cell border-bottom="solid">
                                            <fo:block>
                                                Monto Total
                                            </fo:block>  
                                        </fo:table-cell>
                                        <fo:table-cell border-bottom="solid">
                                            <fo:block>
                                                Rechazados
                                            </fo:block>  
                                        </fo:table-cell>
                                        <fo:table-cell border-bottom="solid">
                                            <fo:block>
                                                Monto
                                            </fo:block>  
                                        </fo:table-cell>
                                        <fo:table-cell border-bottom="solid">
                                            <fo:block>
                                                Estado
                                            </fo:block>  
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-header>
                                <fo:table-body>
                                    <fo:table-row text-align="center" height="2mm">
                                    </fo:table-row>
                                    <xsl:for-each select="Nominas">
                                        <fo:table-row height="7mm">
                                            <fo:table-cell text-align="center">
                                                <fo:block>
                                                    <xsl:value-of select="fechaPago"/>
                                                </fo:block>                                   
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center">
                                                <fo:block>
                                                    <xsl:value-of select="folio"/>
                                                </fo:block>                                   
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center">
                                                <fo:block>
                                                    <xsl:value-of select="nombreArchivo"/>
                                                </fo:block>                                   
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center">
                                                <fo:block>
                                                    <xsl:value-of select="fechaEnvio"/>
                                                </fo:block>                                   
                                            </fo:table-cell>
                                            <fo:table-cell text-align="right">
                                                <fo:block>
                                                    <xsl:value-of select="pagosAceptados"/>
                                                </fo:block>                                   
                                            </fo:table-cell>
                                            <fo:table-cell text-align="right">
                                                <fo:block>
                                                    $<xsl:value-of select="montoTotalAceptados"/>
                                                </fo:block>                                   
                                            </fo:table-cell>
                                            <fo:table-cell text-align="right">
                                                <fo:block>
                                                    <xsl:value-of select="pagosRechazados"/>
                                                </fo:block>                                   
                                            </fo:table-cell>
                                            <fo:table-cell text-align="right">
                                                <fo:block>
                                                    $<xsl:value-of select="montoTotalRechazados"/>
                                                </fo:block>                                   
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center">
                                                <fo:block>
                                                    <xsl:value-of select="estadoNomina"/>
                                                </fo:block>                                   
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </xsl:for-each>
                                </fo:table-body>
                            </fo:table>
                        </xsl:if>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
