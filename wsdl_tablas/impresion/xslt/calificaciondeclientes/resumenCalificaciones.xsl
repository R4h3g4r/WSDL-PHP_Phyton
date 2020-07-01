<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:java="http://xml.apache.org/xslt/java"
    exclude-result-prefixes="java">
    <!--Variables-->
    <xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
    <xsl:variable name="lineas">#CCCCCC</xsl:variable>
    <xsl:variable name="celda-background">#f8f8f8</xsl:variable>
    <xsl:variable name="txt">#000000</xsl:variable>
    <xsl:variable name="txt-blanco">#FFFFFF</xsl:variable>
    <xsl:variable name="txt-azul-claro">#0361a2</xsl:variable>
    <xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
    <xsl:variable name="txt-font">Arial,Helvetica,sans-serif</xsl:variable>
    <xsl:variable name="img-logo"><xsl:value-of select="relojEverest/imagenes/logo"/></xsl:variable>
    <!-- Variables -->
    <xsl:template match="/" name="inicio">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <!-- Propiedades pagina -->
            <fo:layout-master-set>
                <fo:simple-page-master master-name="pagina" 
                    page-height="35.56cm" 
                    page-width="21.59cm" 
                    margin-top="5mm" 
                    margin-bottom="1cm" 
                    margin-left="2cm" 
                    margin-right="2cm">
                    <fo:region-body margin-top="0.5cm" margin-bottom="0.5cm" background-color="#ffffff"/>
                    <fo:region-before extent="0.5cm"/>
                    <fo:region-after extent="2cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <!-- Propiedades pagina -->
            <fo:page-sequence master-reference="pagina" initial-page-number="1" language="en"
                country="us">
                
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block color="{$txt-blanco}"> . </fo:block>		       
                </fo:static-content>
                
                <fo:static-content flow-name="xsl-region-after">
                    <!-- Separador -->
                    <fo:block space-after="1mm">
                        <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="17.59cm"/>
                    </fo:block>
                    <!-- Separador -->	
                </fo:static-content>
                
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="17.59cm"/>
                            <fo:table-body>
                                <xsl:choose>
                                    <xsl:when test="count(calificacionResumen/informacion) > 0">
                                        
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block /> <xsl:call-template name="cabecera-resumen"/>
                                            </fo:table-cell>
                                        </fo:table-row>   
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block /> <xsl:call-template name="datosCalificacion"/>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <xsl:choose>
                                            <xsl:when test="count(calificacionResumen/riesgo-puro) > 0">
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block /> <xsl:call-template name="riesgo-puro"/>
                                                    </fo:table-cell>
                                                </fo:table-row>   
                                            </xsl:when>
										</xsl:choose>
										<xsl:choose>
											<xsl:when test="count(calificacionResumen/ajuste-por-linea) > 0">
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block /> <xsl:call-template name="ajuste-linea"/>
                                                    </fo:table-cell>
                                                </fo:table-row> 
                                            </xsl:when>
										</xsl:choose>
                                        
                                        
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block /> <xsl:call-template name="cabecera-vacia"/>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                    </xsl:otherwise>
                               </xsl:choose>
                            </fo:table-body>
                        </fo:table>		            
                    </fo:block>		        
                </fo:flow> 
                
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    <xsl:template name="cabecera-resumen">
        <fo:block>
            <fo:table table-layout="fixed">
                <fo:table-column column-width="14cm"/>
                <fo:table-column column-width="1.7cm"/>
                <fo:table-column column-width="1.7cm"/>                
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block>
                                <fo:external-graphic width="100px" height="42px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/logo"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>  
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block font-size="18pt" text-align="left" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                Resumen Calificación
                            </fo:block>                           
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                Nombre Deudor: <xsl:value-of select="calificacionResumen/informacion/nombre-deudor"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                RUT:
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="center" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionResumen/informacion/rut-deudor"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>   
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                                        
                </fo:table-body>
            </fo:table>            
        </fo:block>
    </xsl:template>
    
    <xsl:template name="datosCalificacion">
        <fo:block padding="0.5mm">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="6cm"/>
                <fo:table-column column-width="8cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Estado Calificación
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionResumen/informacion/estado"/>                                
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Grupo Económico
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionResumen/informacion/grupo-economico"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Unidad de Negocio
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionResumen/informacion/unidad-negocio"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Tendencia
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionResumen/informacion/tendencia"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Ejecutivo
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionResumen/informacion/ejecutivo"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>
    
    <xsl:template name="riesgo-puro">
        <fo:block padding="0.5mm">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="10" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-top="1mm" margin-left="2mm" font-size="12pt" font-weight="bold" text-align="left" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Riesgo Puro
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Referencias Externas
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="3" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Paso 1
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="2" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Paso 2
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="2" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Paso 3
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="2" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Paso 4
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell  border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                .
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                A
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                B
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell  border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                C
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                A
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                B
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                A
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                B
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                A
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                B
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Detalle
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-1/paso-1a"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-1/paso-1b"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-1/paso-1c"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-2/paso-2a"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-2/paso-2b"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-3/paso-3a"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-3/paso-3b"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-4/paso-4a"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-4/paso-4b"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Calificación Parcial
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="3" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-1/calificacion-parcial"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="2" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-2/calificacion-parcial"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="2" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-3/calificacion-parcial"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="2" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-4/calificacion-parcial"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Calificación Acumulada
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="3" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block border-bottom="0.4pt none {$lineas}" margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-1/calificacion-acumulada"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="2" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-2/calificacion-acumulada"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="2" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-3/calificacion-acumulada"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="2" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/riesgo-puro/paso-4/calificacion-acumulada"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Calificación del Deudor
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="5" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block border-bottom="0.4pt none {$lineas}" margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/calificacion-deudor/riesgo-puro/calificacion"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="4" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/calificacion-deudor/riesgo-puro/nota"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                PI
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="9" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block border-bottom="0.4pt none {$lineas}" margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/informacion/pi-RP"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>

                </fo:table-body>
            </fo:table>
            
        </fo:block>
    </xsl:template>
    
    <xsl:template name="ajuste-linea">
        <fo:block padding="0.5mm">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="2.25cm"/>
                <fo:table-column column-width="2.25cm"/>
                <fo:table-column column-width="2.25cm"/>
                <fo:table-column column-width="2.25cm"/>
                <fo:table-column column-width="2.25cm"/>
                <fo:table-column column-width="2.25cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="7" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-top="1mm" margin-left="2mm" font-size="12pt" font-weight="bold" text-align="left" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Ajuste por línea
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                .
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Paso 5
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Paso 6
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Paso 7
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Paso 8
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Paso 9
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Paso 10
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Ajuste Corto Plazo
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/ajuste-corto-plazo/paso-5"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/ajuste-corto-plazo/paso-6"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/ajuste-corto-plazo/paso-7"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/ajuste-corto-plazo/paso-8"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/ajuste-corto-plazo/paso-9"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/ajuste-corto-plazo/paso-10"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Calificación Acumulada
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/calif-corto-acumulada/paso-5"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/calif-corto-acumulada/paso-6"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/calif-corto-acumulada/paso-7"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/calif-corto-acumulada/paso-8"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/calif-corto-acumulada/paso-9"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/calif-corto-acumulada/paso-10"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Ajuste Largo Plazo
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/ajuste-largo-plazo/paso-5"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/ajuste-largo-plazo/paso-6"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/ajuste-largo-plazo/paso-7"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/ajuste-largo-plazo/paso-8"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/ajuste-largo-plazo/paso-9"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/ajuste-largo-plazo/paso-10"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Calificación Acumulada
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/calif-largo-acumulada/paso-5"/> 
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/calif-largo-acumulada/paso-6"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/calif-largo-acumulada/paso-7"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/calif-largo-acumulada/paso-8"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/calif-largo-acumulada/paso-9"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/ajuste-por-linea/calif-largo-acumulada/paso-10"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                                        
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Calificación del Deudor
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                C/P
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/calificacion-deudor/corto-plazo/calificacion"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/calificacion-deudor/corto-plazo/nota"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                L/P
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/calificacion-deudor/largo-plazo/calificacion"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/calificacion-deudor/largo-plazo/nota"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                PI   <xsl:value-of select="calificacionResumen/informacion/nombre-deudor"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                C/P
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="2" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/calificacion-deudor/corto-plazo/pi-CP"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                L/P
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="2" border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                <xsl:value-of select="calificacionResumen/calificacion-deudor/largo-plazo/pi-LP"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                </fo:table-body>
            </fo:table>
            
        </fo:block>
    </xsl:template>
    <xsl:template name="cabecera-vacia">
        <fo:block>
            <fo:table table-layout="fixed">
                <fo:table-column column-width="14cm"/>
                <fo:table-column column-width="1.7cm"/>
                <fo:table-column column-width="1.7cm"/>                
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block>
                                <fo:external-graphic width="100px" height="42px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionResumen/imagenes/logo"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>  
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="17.59cm"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block font-size="18pt" text-align="Center" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                No hay información para la calificación
                            </fo:block>                           
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="17.59cm"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>            
        </fo:block>
    </xsl:template>
</xsl:stylesheet>