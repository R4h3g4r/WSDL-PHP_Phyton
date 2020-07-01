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
    <xsl:variable name="vinieta"><xsl:value-of select="calificacionDetalle/imagenes/bullet"/></xsl:variable>
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
                    <fo:region-body margin-top="0.5cm" margin-bottom="2cm" background-color="#ffffff"/>
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
                                    <xsl:when test="count(calificacionDetalle/informacion) > 0">
                                        
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
                                            <xsl:when test="count(calificacionDetalle/calificacion_paso) > 0">
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block /> <xsl:call-template name="items-checkeados"/>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:when>
                                        </xsl:choose>
                                        <xsl:choose>
                                            <xsl:when test="count(calificacionDetalle/observaciones) > 0">
                                                <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block /> <xsl:call-template name="observaciones"/>
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
                                        <xsl:value-of select="calificacionDetalle/imagenes/logo"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>  
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block font-size="18pt" text-align="left" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                Detalle Calificación
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
                                Nombre Deudor: <xsl:value-of select="calificacionDetalle/informacion/nombre_deudor"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                RUT: 
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="center" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/rut_deudor"/>
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
                <fo:table-column column-width="4cm"/>
                <fo:table-column column-width="6cm"/>
                <fo:table-column column-width="4cm"/>
                <fo:table-column column-width="6cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Estado Calificación
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/estado"/>                                
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Regional
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/regional"/>             
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Grupo Económico
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/grupo_economico"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Oficina
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/oficina"/>             
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Unidad de Negocio
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/unidad_negocio"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Ejecutivo
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/ejecutivo"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Actividad
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/actividad"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Tendencia
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/tendencia"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Elaborado Por
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/elaborado_por"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Fecha Balance
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/fecha_balance"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Aprobado Por
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/aprobado_por"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Fecha de Calificación
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/fecha_calificacion"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="calificacionDetalle/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Fecha Aprobación
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="calificacionDetalle/informacion/fecha_aprobacion"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        
                                    </xsl:attribute>
                                </fo:external-graphic>
                                
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                
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
                                        <xsl:value-of select="calificacionDetalle/imagenes/logo"/>
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
    
    <xsl:template name="items-checkeados">
        
        <xsl:for-each select="calificacionDetalle/calificacion_paso">
            <fo:block space-before="1cm">
                <fo:table table-layout="fixed">
                    <fo:table-column column-width="6cm"/>
                    <fo:table-column column-width="8cm"/>
                    <fo:table-body>
                        <fo:table-row >
                            <fo:table-cell number-columns-spanned="2"> 
                                <fo:block font-size="14pt" text-align="left" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <fo:external-graphic width="3px" height="3px" src="{vinieta}">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="$vinieta"/>
                                        </xsl:attribute>
                                    </fo:external-graphic>
                                    <xsl:value-of select="nombre_calificacion"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row space-before="0.5cm" >
                            <fo:table-cell number-rows-spanned="3"> 
                                <fo:block font-size="10pt" text-align="right" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    Resumen:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    	Escala de Calificación: 
                                    <xsl:value-of select="calificacion"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row >
                            <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    	Calificación Interna: 
                                    <xsl:value-of select="desc_calificacion"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row >
                            <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    	PI Resultante: 
                                    <xsl:value-of select="pi"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                     </fo:table-body>
                </fo:table>
            </fo:block>
            <xsl:for-each select="paso">
                <fo:block space-before="0.5cm">
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="20cm"/>
                        <fo:table-body>
                            <fo:table-row  >
                                <fo:table-cell> 
                                    <fo:block font-size="11pt" text-align="left" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                        Paso <xsl:value-of select="numero_paso"/> ,
                                        Nota: <xsl:value-of select="desc_calificacion"/>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:block>
                <xsl:for-each select="paso_item">
                    <fo:block padding="0.5mm" space-before="0.5cm">
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="5cm"/>
                            <fo:table-column column-width="13cm"/>
                            <xsl:variable name="cantidad_items" select="count(item)"></xsl:variable>
                            
                            <fo:table-body>
                                
                                <fo:table-row  >
                                    <fo:table-cell number-rows-spanned="{$cantidad_items}+1" vertical-align="center" 
                                        border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                                        <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-weight="bold" font-size="9pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                            Calificación <xsl:value-of select="id_calificacion_item" ></xsl:value-of>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell number-rows-spanned="1" vertical-align="center" 
                                        border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                                        <fo:block margin-left="1mm" margin-top="1mm" text-align="center" font-weight="bold" font-size="9pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                        <xsl:value-of select="titulo_columna"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <xsl:for-each select="item" >
                                    <fo:table-row  >
                                        <fo:table-cell number-rows-spanned="1" vertical-align="center" 
                                            border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                                            <fo:block margin-left="1mm" margin-top="1mm" text-align="left" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                                <xsl:value-of select="gloza" ></xsl:value-of>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </xsl:for-each>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </xsl:for-each>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="observaciones">
        
            <fo:block space-before="1cm">
                <fo:table table-layout="fixed">
                    <fo:table-column column-width="18cm"/>
                    <fo:table-body>
                        <fo:table-row >
                            <fo:table-cell> 
                                <fo:block font-size="14pt" text-align="left" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <fo:external-graphic width="3px" height="3px" src="{vinieta}">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="$vinieta"/>
                                        </xsl:attribute>
                                    </fo:external-graphic>
                                    Observaciones
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row >
                            <fo:table-cell> 
                                    <fo:block space-before="0.5cm">
                                        <fo:table table-layout="fixed">
                                            <fo:table-column column-width="18cm"/>
                                            <fo:table-body>
                                                <xsl:for-each select="calificacionDetalle/observaciones">
                                                    <fo:table-row>
                                                        <fo:table-cell> 
                                                            <fo:block space-before="0.3cm" margin-left="2cm" font-size="9pt" text-align="justify" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                                                <xsl:value-of select="mensaje-sin-informacion"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </xsl:for-each>
                                            </fo:table-body>
                                        </fo:table>
                                    </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
            </fo:block>
    </xsl:template>
    
</xsl:stylesheet>
