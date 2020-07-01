<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <xsl:variable name="titulos">
            #FFFFFF
        </xsl:variable>
        <xsl:variable name="lineas">
            #EBEBEB
        </xsl:variable>
        <xsl:variable name="txt">
            #000000
        </xsl:variable>
        <xsl:variable name="sombreadoTablas">
            #CFCFCF
        </xsl:variable>
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="all-pages" page-width="210mm" page-height="297mm" margin-top="15mm">
                    <fo:region-body padding="0" margin="0.7in" region-name="xsl-region-body" column-gap="0.25in" />
                    <fo:region-before region-name="xsl-region-before" extent="7in"/>
                    <fo:region-after padding="0" region-name="xsl-region-after" display-align="before" extent="0.7in" />
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="default-page">
                    <fo:repeatable-page-master-reference master-reference="all-pages" />
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:static-content flow-name="xsl-region-before" >
                        <fo:block >
                              <fo:table width="21cm" space-after="4mm">
                            <fo:table-column column-width="2cm" />  <!-- margen -->
                            <fo:table-column column-width="14cm" /> <!-- BCI -->
                            <fo:table-column />                     <!-- Sello Agua -->
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt" >
                               <xsl:attribute name="src">
                               url('<xsl:value-of select="ComprobanteAutorizacionRegulaciones/rutaLogoCabecera" />')
                               </xsl:attribute>
                             </fo:external-graphic>
                       </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="ComprobanteAutorizacionRegulaciones/rutaLogoSelloAgua" />')
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:table-cell>
                                </fo:table-row>
                             </fo:table-body>
                        </fo:table>
                    </fo:block>
               </fo:static-content>
               <fo:static-content flow-name="xsl-region-after" margin-left="18.7cm" font-size="8pt">
                    <fo:block font-weight="bold" font-size="8pt" color="{$txt}" >
                        Página
                        <fo:page-number />
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block margin-left="117mm">
                    <fo:block margin-left="5mm" width="20pt" height="20pt" space-before="6mm" >
                        <fo:inline font-weight="bold" font-size="12pt" color="{$txt}">
                            Autorización
                        </fo:inline>
                    </fo:block>
                    
                        <fo:block margin-left="5mm" width="200pt" height="200pt" space-before="2mm">
                        
                            <fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}"  space-before="12mm">
                            <fo:inline font-weight="bold">
                                Estimado Colaborador:
                                </fo:inline>
                            </fo:block>
                            <fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}">
                                Hemos realizado el proceso de autorización de regularizaciones.
                            </fo:block>
                            
                            <fo:block space-before="7mm">
                                <fo:table width="16cm">
                                    <fo:table-column column-width="8cm" />
                                    <fo:table-column column-width="8cm" />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block text-align="left" font-size="10pt" color="{$txt}">
                                                    <fo:inline font-weight="bold">
                                                        Colaborador
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            
                                            <fo:table-cell>
                                                <fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}">
                                                    <fo:inline font-weight="bold">
                                                        Fecha de Autorización
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block text-align="left" font-size="8pt" color="{$txt}" >
                                                    <fo:inline font-weight="normal">
                                                        <xsl:value-of select="ComprobanteAutorizacionRegulaciones/datosColaborador/nombreColaborador" />
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            
                                            <fo:table-cell>
                                                <fo:block font-weight="normal" text-align="left" font-size="8pt" color="{$txt}" >
                                                    <fo:inline font-weight="normal">
                                                        <xsl:value-of select="ComprobanteAutorizacionRegulaciones/datosColaborador/fechaAutorizacion" />
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>

                            <xsl:if test="ComprobanteAutorizacionRegulaciones/datosColaborador/regularizacionesAutorizadas != '' ">
                                <fo:block font-weight="normal" space-before="7mm" text-align="left" font-size="8pt" color="{$txt}">
                                    <fo:inline font-weight="bold">
                                        Regularizaciones autorizadas
                                    </fo:inline>
                                </fo:block>   
                            
                                <fo:block font-size="5pt" space-before="2mm" space-after="0.5cm">
                                     <fo:table  width="18cm">
                                        <fo:table-column column-width="0.5cm" />
                                        <fo:table-column column-width="2cm" />
                                        <fo:table-column column-width="2.5cm" />
                                        <fo:table-column column-width="3cm" />
                                        <fo:table-column column-width="2cm" />
                                        <fo:table-column column-width="2cm" />
                                        <fo:table-column column-width="2cm" />
                                        <fo:table-column column-width="2cm" />
                                        <fo:table-body >
                                            <fo:table-row >
                                                <fo:table-cell>
                                                </fo:table-cell>
                                                <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        N° regularización
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        Producto	
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        Tipo de Regularización	
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        Fecha de Ingreso	
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        Total pagos	
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        Monto Total	
                                                    </fo:block>
                                                </fo:table-cell>
                                                
                                                <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        Estado
                                                    </fo:block>
                                                </fo:table-cell>
                                                
                                                
                                            </fo:table-row>
                                            <xsl:for-each select="ComprobanteAutorizacionRegulaciones/datosColaborador/regularizacionesAutorizadas/datosListaRegularizaciones">
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="numeroRegularizacion" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="glosaProducto" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="glosaTipoRegularizacion" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="fechaCreacion" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="cantidadRegularizaciones" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="montoTotalNomina" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="estadoRegularizacion" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </xsl:if>
                            <xsl:if test="ComprobanteAutorizacionRegulaciones/datosColaborador/regularizacionesErrorAutorizacion != '' ">
                                <fo:block font-weight="normal" space-before="3mm" text-align="left" font-size="8pt" color="{$txt}">
                                    <fo:inline font-weight="bold">
                                        Regularizaciones no autorizadas
                                    </fo:inline>
                                </fo:block>   
                            
                                <fo:block font-size="5pt" space-before="2mm" space-after="0.5cm">
                                    <fo:table  width="18cm">
                                        <fo:table-column column-width="0.5cm" />
                                        <fo:table-column column-width="2cm" />
                                        <fo:table-column column-width="2.5cm" />
                                        <fo:table-column column-width="3cm" />
                                        <fo:table-column column-width="2cm" />
                                        <fo:table-column column-width="2cm" />
                                        <fo:table-column column-width="2cm" />
                                        <fo:table-column column-width="2cm" />
                                        <fo:table-body >
                                            <fo:table-row >
                                                <fo:table-cell>
                                                </fo:table-cell>
                                                <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        N° regularización
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        Producto
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        Tipo de Regularización
                                                    </fo:block>
                                                </fo:table-cell>
                                                
                                                <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        Total pagos
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        Monto Total
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        Estado
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                                    <fo:block font-weight="bold" font-size="8pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                        Error
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                            <xsl:for-each select="ComprobanteAutorizacionRegulaciones/datosColaborador/regularizacionesErrorAutorizacion/datosListaRegularizaciones">
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="numeroRegularizacion" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="glosaProducto" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="glosaTipoRegularizacion" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="cantidadRegularizaciones" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="montoTotalNomina" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="estadoRegularizacion" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                        <fo:block font-size="8pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
                                                            <xsl:value-of select="descripcionError" />
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </xsl:if>
                        </fo:block>
                        
                        <xsl:if test="position() = last()">
                            <fo:table space-after="7cm">
                                <fo:table-column column-width="0.5cm" />
                                <fo:table-column column-width="2cm" />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell margin-left="16.7cm">
                                            <fo:block font-size="8pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell margin-left="17.2cm">
                                            <fo:block font-size="8pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </xsl:if>
                        <xsl:if test="position() != last()">
                            <fo:table space-after="7cm">
                                <fo:table-column column-width="0.5cm" />
                                <fo:table-column column-width="2cm" />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell margin-left="16.7cm">
                                            <fo:block font-size="8pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell margin-left="17.2cm">
                                            <fo:block font-size="8pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </xsl:if>
                        <fo:block space-before="1cm" font-size="8pt" margin-left="0mm">
                            Observación: Guarde este comprobante como respaldo de su operación.
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
        
    </xsl:template>
</xsl:stylesheet>