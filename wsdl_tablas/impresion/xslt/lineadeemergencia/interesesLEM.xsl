<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:java="http://xml.apache.org/xslt/java"
    exclude-result-prefixes="java">
    <!--Variables-->
    <xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
    <xsl:variable name="lineas">#CCCCCC</xsl:variable>
    <xsl:variable name="celda-background">#E7EAF0</xsl:variable>
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
                                    <xsl:when test="count(interesesLEM/datos) > 0">
                                        
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block /> <xsl:call-template name="cabecera"/>
                                            </fo:table-cell>
                                        </fo:table-row>   
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block /> <xsl:call-template name="datosInteresesLEM"/>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block /> <xsl:call-template name="intereses_lem"/>
                                            </fo:table-cell>
                                        </fo:table-row>
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
    <xsl:template name="cabecera">
        <fo:block>
            <fo:table table-layout="fixed">
                <fo:table-column column-width="13cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="3cm"/>                
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block>
                                <fo:external-graphic width="100px" height="42px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="interesesLEM/imagenes/logo"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>  
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block font-size="18pt" text-align="left" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                Detalle Línea de Emergencia
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
                                Nombre Cliente: <xsl:value-of select="interesesLEM/datos/nombre_cliente"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                RUT :
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="center" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="interesesLEM/datos/rut_cliente"/>
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
                                        <xsl:value-of select="interesesLEM/imagenes/logo"/>
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
    <xsl:template name="datosInteresesLEM">
        <fo:block padding="0.5mm">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="6cm"/>
                <fo:table-column column-width="4cm"/>
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="6cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="interesesLEM/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Cuenta Corriente Asociada
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                : <xsl:value-of select="interesesLEM/datos/n_cta_cte"/>                     
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="interesesLEM/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Período consultado
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                : <xsl:value-of select="interesesLEM/datos/periodo"/>       
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="interesesLEM/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Nº Línea Emergencia
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                : <xsl:value-of select="interesesLEM/datos/n_linea_emergencia"/>              
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="interesesLEM/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Valor Impuesto del Mes
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                : <xsl:value-of select="interesesLEM/datos/valor_imp_mes"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
						<fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="interesesLEM/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Cupo Autorizado
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                : <xsl:value-of select="interesesLEM/datos/cupo_autorizado"/>                                       
                            </fo:block>
                        </fo:table-cell>
                          <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="interesesLEM/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Total Interés del Mes
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                : <xsl:value-of select="interesesLEM/datos/total_int_mes"/>       
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
						<fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:if test="interesesLEM/datos/indicadorMes = '1'">
	                                <fo:external-graphic width="3px" height="3px">
	                                    <xsl:attribute name="src">
	                                        <xsl:value-of select="interesesLEM/imagenes/bullet"/>
	                                    </xsl:attribute>
	                                </fo:external-graphic>
	                                Monto Utilizado
								</xsl:if>
								<xsl:if test="interesesLEM/datos/indicadorMes != '1'">
	                                <fo:external-graphic width="3px" height="3px">
	                                    <xsl:attribute name="src">
	                                        <xsl:value-of select="interesesLEM/imagenes/bullet"/>
	                                    </xsl:attribute>
	                                </fo:external-graphic>
	                                Monto Utilizado al cierre
								</xsl:if>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                : <xsl:value-of select="interesesLEM/datos/monto_utilizado"/>                                        
                            </fo:block>
                        </fo:table-cell>
                          <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                               &#0160;
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                &#0160;     
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                                        <fo:table-row>
						<fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="interesesLEM/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Monto última comisión de 
                                &#0160;&#0160;renovación cobrada
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                :  <xsl:value-of select="interesesLEM/datos/montoRenovacion"/>                                       
                            </fo:block>
                        </fo:table-cell>
                          <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="interesesLEM/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Fecha última comisión de 
                                &#0160;&#0160;renovación cobrada
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                : <xsl:value-of select="interesesLEM/datos/fechaRenovacion"/>        
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                                        <fo:table-row>
						<fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="interesesLEM/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Monto última comisión de 
                                &#0160;&#0160;Administración cobrada
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                : <xsl:value-of select="interesesLEM/datos/montoAdministracion"/>                                        
                            </fo:block>
                        </fo:table-cell>
                          <fo:table-cell>
                            <fo:block font-weight="bold" font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <fo:external-graphic width="3px" height="3px">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="interesesLEM/imagenes/bullet"/>
                                    </xsl:attribute>
                                </fo:external-graphic>
                                Fecha última comisión de 
                                &#0160;&#0160;Administración cobrada
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                : <xsl:value-of select="interesesLEM/datos/fechaAdministracion"/>       
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>
    <xsl:template name="intereses_lem">
        <fo:block padding="0.5mm">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="17.59cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                            <fo:block margin-top="1mm" margin-left="2mm" font-size="12pt" font-weight="bold" text-align="left" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                Detalle
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block>
                                <fo:table>
                                    <fo:table-column column-width="3.518cm"/>
                                    <fo:table-column column-width="3.518cm"/>
                                    <fo:table-column column-width="3.518cm"/>
                                    <fo:table-column column-width="3.518cm"/>
                                    <fo:table-column column-width="3.518cm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                                                <fo:block margin-top="1mm" font-size="7pt" font-weight="bold" text-align="center" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                                    Fecha
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                                                <fo:block margin-top="1mm" font-size="7pt" font-weight="bold" text-align="center" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                                    Monto
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                                                <fo:block margin-top="1mm" font-size="7pt" font-weight="bold" text-align="center" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                                    Tasa del día
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                                                <fo:block margin-top="1mm" font-size="7pt" font-weight="bold" text-align="center" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                                    Monto Interés del Día $
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" background-color="{$celda-background}">
                                                <fo:block margin-top="1mm" font-size="7pt" font-weight="bold" text-align="center" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                                    Monto Interés Acumulado $ 
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <xsl:choose>
                                           <xsl:when test="count(interesesLEM/listado/interes) > 0">                                                            
                                               <xsl:for-each select="interesesLEM/listado/interes">
                                                    <fo:table-row>
                                                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" >
                                                            <fo:block margin-top="0.5mm" text-align="center" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                                                <xsl:value-of select="fecha"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" >
                                                            <fo:block margin-top="0.5mm" text-align="right" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                                                $ <xsl:value-of select="monto"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" >
                                                            <fo:block margin-top="0.5mm" text-align="right" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                                                 <xsl:value-of select="tasa"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" >
                                                            <fo:block margin-top="0.5mm" text-align="right" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                                                $ <xsl:value-of select="monto_int_dia"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell border="0.4pt none {$lineas}" border-style="solid" >
                                                            <fo:block margin-top="0.5mm" text-align="right" font-size="7pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                                                <xsl:value-of select="monto_int_acumulado"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </xsl:for-each>                                                         
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <fo:table-row>
                                                    <fo:table-cell number-columns-spanned="5" border="0.4pt none {$lineas}" border-style="solid">
                                                        <fo:block margin-left="2.5mm" margin-bottom="1mm" margin-top="1mm" text-align="left" font-size="8pt" font-family="{$txt-font}" color="{$txt-azul-oscuro}">
                                                            No se encontro información.
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:otherwise>
                                        </xsl:choose>
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