<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:java="http://xml.apache.org/xslt/java"
    exclude-result-prefixes="java">    
    <!--Variables-->
    <xsl:variable name="lineas">#CCCCCC</xsl:variable>
    <xsl:variable name="txt">#000000</xsl:variable>
    <xsl:variable name="txt-blanco">#FFFFFF</xsl:variable>
    <xsl:variable name="txt-azul-claro">#000000</xsl:variable>
    <xsl:variable name="txt-azul-oscuro">#000000</xsl:variable>
	<xsl:variable name="cabecera-informe">#eeeeee</xsl:variable>
	<xsl:variable name="cabecera">#f3f3f3</xsl:variable>
	<xsl:variable name="espacio"> </xsl:variable>
    <xsl:variable name="txt-font">Arial,Helvetica,sans-serif</xsl:variable>
   
    <!-- Variables -->
	<xsl:decimal-format name="peso" decimal-separator="," grouping-separator="."/>    
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
						<fo:block font-size="9pt" space-after="1mm" text-align="right" color="{$txt-font}">
						    Pagina  &#0160; <fo:page-number></fo:page-number>/<fo:page-number-citation ref-id = "lastBlock"/>
					    </fo:block>       
                </fo:static-content>
                
                <fo:static-content flow-name="xsl-region-after">
                    <!-- Separador -->
                    <fo:block space-after="1mm">
                        
                    </fo:block>
                    <!-- Separador -->	
                </fo:static-content>
                
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="18.59cm"/>
                            <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block /> <xsl:call-template name="cabecera-informe"/>
                                            </fo:table-cell>
                                        </fo:table-row>   
                                        <xsl:choose>
                                            <xsl:when test="count(valeVista/detalles) > 0">                                                
            										 <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block /> <xsl:call-template name="items-grupos-estado"/>
                                                        </fo:table-cell>
                                                     </fo:table-row> 
                                            </xsl:when>
                                        </xsl:choose>

                            </fo:table-body>
                        </fo:table>		            
                    </fo:block>		        
                    <fo:block id = "lastBlock">
                        &#0160;
                    </fo:block>                    
                </fo:flow> 
                
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    <xsl:template name="cabecera-informe">
        <fo:block>
            <fo:table table-layout="fixed">
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="7cm"/>
                <fo:table-column column-width="6cm"/>               
                <fo:table-body>                    
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="2">
                            <fo:block font-size="14pt" text-align="center" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                Informe de Vale Vista Proveedores 
                            </fo:block>                           
                        </fo:table-cell>
                        <fo:table-cell number-columns-spanned="1">
                            <fo:block font-size="12pt" text-align="center" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                 (fecha: <xsl:value-of select="valeVista/cabecera/fecha-actual"/>)
                            </fo:block>                           
                        </fo:table-cell>                        
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                Rut: <xsl:value-of select="valeVista/cabecera/rut"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="9pt" text-align="center" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="valeVista/cabecera/cliente"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="9pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                Fecha Pago:<xsl:value-of select="valeVista/cabecera/fecha-pago"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>   
                        <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                Nómina:<xsl:value-of select="valeVista/cabecera/nomina"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="9pt" text-align="center" font-family="{$txt-font}" color="{$txt-azul-claro}">
                               
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="9pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                Estado: <xsl:value-of select="valeVista/cabecera/estado"/>
                            </fo:block>
                        </fo:table-cell>
                        
                    </fo:table-row>  
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
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
                <fo:table-column column-width="16cm"/>
                <fo:table-column column-width="1.7cm"/>
                <fo:table-column column-width="1.7cm"/>                
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block>
                                <fo:external-graphic width="100px" height="42px">
                                    <xsl:attribute name="src">
                                        No Se Encuentran datos.
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
    
    
    <xsl:template name="items-grupos-estado">
        <xsl:for-each select="valeVista/detalles/grupoEstado">        
            <fo:block space-before="0.8cm" >
                <fo:table table-layout="fixed" >
                    <fo:table-column column-width="3cm"/>
                    <fo:table-column column-width="7cm"/>
                    <fo:table-column column-width="3.5cm"/>
                    <fo:table-column column-width="4.5cm"/>
                    <fo:table-body>	
                        <fo:table-row >
                            <fo:table-cell number-columns-spanned="4" border-bottom="1px solid #000000" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}">
                                    DETALLE Vale Vista <xsl:value-of select="estado"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>     
                        <fo:table-row >
                            <fo:table-cell number-columns-spanned="4"  > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}">
                                    &#0160;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>                        
                        <fo:table-row  >
                            <fo:table-cell number-columns-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}">
                                    RUT
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}">
                                    NOMBRE
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}">
                                    NUMERO VV
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}">
                                    MONTO
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>                        
                        <fo:table-row>
                            <fo:table-cell>                                                            
                                <fo:block /> <xsl:call-template name="items-informe"/>                                                            
                            </fo:table-cell>
                        </fo:table-row>                        
                    </fo:table-body>
                </fo:table>
            </fo:block>
        </xsl:for-each>      
        <xsl:choose>
        	<xsl:when test="count(valeVista/detalles/grupoEstado) > 1">         
		        <fo:block space-before="1cm">
		            <fo:table table-layout="fixed" >
		                <fo:table-column column-width="3cm"/>
		                <fo:table-column column-width="7cm"/>
		                <fo:table-column column-width="3.5cm"/>
		                <fo:table-column column-width="4.5cm"/>
		                <fo:table-body>	                       
		                    <fo:table-row  space-before="0.5cm" >
		                        <fo:table-cell number-columns-spanned="2"  > 
		                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}">
		                                TOTAL
		                            </fo:block>
		                        </fo:table-cell>
		                        <fo:table-cell number-rows-spanned="1"  > 
		                            <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}">
		                                <xsl:value-of select="count(valeVista/detalles/grupoEstado/detalleValeVista)"/>
		                            </fo:block>
		                        </fo:table-cell>
		                        <fo:table-cell number-rows-spanned="1"  > 
		                            <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}">
		                                 &#0036;<xsl:value-of select="format-number(sum(valeVista/detalles/grupoEstado/detalleValeVista/monto[number(.)=number(.)]),'###.###.###,##', 'peso')"/>
		                            </fo:block>
		                        </fo:table-cell>
		                    </fo:table-row>                                              
		                </fo:table-body>
		            </fo:table>
		        </fo:block>
			</xsl:when>
		</xsl:choose>        
    </xsl:template>    

    <xsl:template name="items-informe">
       
        <xsl:for-each select="detalleValeVista">
            <fo:block space-before="0cm">
                <fo:table table-layout="fixed">
                    <fo:table-column column-width="3cm"/>
                    <fo:table-column column-width="7cm"/>
                    <fo:table-column column-width="3.5cm"/>
                    <fo:table-column column-width="4.5cm"/>
                    <fo:table-body>					
                        <fo:table-row >
                            <fo:table-cell number-columns-spanned="1" > 
                                <fo:block font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="rut-beneficiario"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="nombre-beneficiario"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160;<xsl:value-of select="numero_vale_vista"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0036;<xsl:value-of select="format-number(monto,'###.###.###,##', 'peso')"/>
                                </fo:block>
                            </fo:table-cell>
						</fo:table-row>
                     </fo:table-body>
                </fo:table>
            </fo:block>
        </xsl:for-each>
        <fo:block space-before="0.1cm">
            <fo:table table-layout="fixed" >
                <fo:table-column column-width="3cm"/>
                <fo:table-column column-width="7cm"/>
                <fo:table-column column-width="3.5cm"/>
                <fo:table-column column-width="4.5cm"/>
                <fo:table-body>	                        
                    <fo:table-row space-before="0.5cm" >
                        <fo:table-cell number-columns-spanned="2" border-top="1px solid #000000"> 
                            <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}">
                                TOTAL
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-rows-spanned="1" border-top="1px solid #000000" > 
                            <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}">
                                <xsl:value-of select="count(detalleValeVista)"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell number-rows-spanned="1" border-top="1px solid #000000"> 
                            <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}">
                                &#0036;<xsl:value-of select="format-number(sum(detalleValeVista/monto[number(.)=number(.)]),'###.###.###,##', 'peso')"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>                                              
                </fo:table-body>
            </fo:table>
        </fo:block>         
    </xsl:template>
    
  
</xsl:stylesheet>
