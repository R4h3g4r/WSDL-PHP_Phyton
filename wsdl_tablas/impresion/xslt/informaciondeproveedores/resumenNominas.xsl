<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:java="http://xml.apache.org/xslt/java"
    exclude-result-prefixes="java">
    <!--Variables-->
    <xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
    <xsl:variable name="lineas">#CCCCCC</xsl:variable>
    <xsl:variable name="celda-background">#f8f8f8</xsl:variable>
    <xsl:variable name="txt">#000000</xsl:variable>
    <xsl:variable name="txt-blanco">#FFFFFF</xsl:variable>
    <xsl:variable name="txt-azul-claro">#000000</xsl:variable>
    <xsl:variable name="txt-azul-oscuro">#000000</xsl:variable>
	<xsl:variable name="cabecera-informe">#eeeeee</xsl:variable>
	<xsl:variable name="cabecera">#f3f3f3</xsl:variable>
	<xsl:variable name="azul">#2c47a2</xsl:variable>
	<xsl:variable name="blanco">#FFFFFF</xsl:variable>
    <xsl:variable name="salto-linea"><br/></xsl:variable>
    <xsl:variable name="txt-font">Arial,Helvetica,sans-serif</xsl:variable>
   
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
              
				<fo:static-content flow-name="xsl-region-after-otherlast">
     					 <fo:block id="last-page" space-before="12pt" keep-together.within-page="auto" >
      					</fo:block>
			   </fo:static-content>


                <fo:static-content flow-name="xsl-region-after">
                    <!-- Separador -->
                    <fo:block space-after="1mm">
                        <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
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
                                                <fo:block /> <xsl:call-template name="vale-vista-treinta-titulo"/>
                                            </fo:table-cell>
                                        </fo:table-row>   
                                        <xsl:choose>
                                         <xsl:when test="count(vale-vista/vale-treinta/detalle) > 0">
										 <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block /> <xsl:call-template name="vale-vista-treinta-cabecera"/>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                            <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block /> <xsl:call-template name="vale-vista-treinta-detalle"/>
                                                    </fo:table-cell>
                                             </fo:table-row>
                                            </xsl:when>
											<xsl:otherwise>
                                               <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block /> <xsl:call-template name="vale-vista-treinta-vacio"/>
                                                    </fo:table-cell>
                                                </fo:table-row>
											</xsl:otherwise>
                                        </xsl:choose>
										 <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block /> <xsl:call-template name="vale-vista-mayortreinta-titulo"/>
                                            </fo:table-cell>
                                        </fo:table-row>
										<xsl:choose>
                                         <xsl:when test="count(vale-vista/vale-mayor-treinta/detalle) > 0">
										 <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block /> <xsl:call-template name="vale-vista-treinta-cabecera"/>
                                            </fo:table-cell>
                                        </fo:table-row> 
                                            <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block /> <xsl:call-template name="vale-vista-mayortreinta-detalle"/>
                                                    </fo:table-cell>
                                             </fo:table-row>
                                            </xsl:when>
											<xsl:otherwise>
                                               <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block /> <xsl:call-template name="vale-vista-treinta-vacio"/>
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


    <xsl:template name="vale-vista-treinta-titulo">
        <fo:block>
            <fo:table table-layout="fixed">
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="9cm"/>
                <fo:table-column column-width="5cm"/>               
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block font-size="14pt" text-align="center" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                INFORME VALE VISTA 30 DÍAS
                            </fo:block>              
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>            
        </fo:block>
    </xsl:template>

	<xsl:template name="vale-vista-mayortreinta-titulo">
        <fo:block space-before="1cm">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="9cm"/>
                <fo:table-column column-width="5cm"/>               
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block font-size="14pt" text-align="center" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                INFORME VALE VISTA CON MÁS DE 30 DÍAS
                            </fo:block>              
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>            
        </fo:block>
    </xsl:template>
    
    
   
   
    <xsl:template name="vale-vista-treinta-vacio">
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
    

 <xsl:template name="vale-vista-treinta-cabecera">
       
            <fo:block space-before="1cm">
                <fo:table table-layout="fixed">
                    <fo:table-column column-width="4cm" />
                    <fo:table-column column-width="4cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-column column-width="3.5cm"/>
					<fo:table-column column-width="3.5cm"/>
                    <fo:table-body>
					<fo:table-row  space-before="0.5cm" >
                            <fo:table-cell number-columns-spanned="5"  > 
                                <fo:block font-size="9pt" text-align="center" font-weight="bold" font-family="{$txt-font}">
                                 &#0160;
                                </fo:block>
                            </fo:table-cell>
					</fo:table-row>
					
                    <fo:table-row >
                            <fo:table-cell number-columns-spanned="1"  > 
                                <fo:block font-size="10pt" text-align="center" font-family="{$txt-font}">
                                  No de Folio
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="10pt" text-align="center" font-family="{$txt-font}">
                                    Fecha de Pago
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="10pt" text-align="center" font-family="{$txt-font}">
                                 Total Vale Vista
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="10pt" text-align="center" font-family="{$txt-font}">
                                  Monto Vale Vista
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="10pt" text-align="center" font-family="{$txt-font}">
                                   Días de Vigencia
                                </fo:block>
                            </fo:table-cell>
					   </fo:table-row>
					   <fo:table-row  >
                            <fo:table-cell number-columns-spanned="5"  > 
                                <fo:block font-size="9pt" text-align="center" font-weight="bold" font-family="{$txt-font}" >
                                 &#0160;
                                </fo:block>
                            </fo:table-cell>
					</fo:table-row>
                     </fo:table-body>
                </fo:table>
            </fo:block>
    </xsl:template>


    <xsl:template name="vale-vista-treinta-detalle">
       
        <xsl:for-each select="vale-vista/vale-treinta/detalle">
            <fo:block space-before="0.2cm">
                <fo:table table-layout="fixed">
                    <fo:table-column column-width="4cm" />
                    <fo:table-column column-width="4cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-column column-width="3.5cm"/>
					<fo:table-column column-width="3.5cm"/>
                    <fo:table-body>
                        <fo:table-row >
                            <fo:table-cell number-columns-spanned="1" > 
                                <fo:block font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160;<xsl:value-of select="folio"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="center" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160;<xsl:value-of select="fecha-pago"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160;<xsl:value-of select="cantidad"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160;&#0036;<xsl:value-of select="monto"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160;<xsl:value-of select="dias-vigencia"/> 
                                </fo:block>
                            </fo:table-cell>
						</fo:table-row>
						<fo:table-row>
                        <fo:table-cell number-columns-spanned="5">
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                     </fo:table-body>
                </fo:table>
            </fo:block>
        </xsl:for-each>
    </xsl:template>
    
	


    <xsl:template name="vale-vista-mayortreinta-detalle">
       
        <xsl:for-each select="vale-vista/vale-mayor-treinta/detalle">
            <fo:block space-before="0.3cm">
                <fo:table table-layout="fixed">
                    <fo:table-column column-width="4cm" />
                    <fo:table-column column-width="4cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-column column-width="3.5cm"/>
					<fo:table-column column-width="3.5cm"/>
                    <fo:table-body>
                        <fo:table-row >
                            <fo:table-cell number-columns-spanned="1" > 
                                <fo:block font-size="10pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160;<xsl:value-of select="folio"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="center" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160;<xsl:value-of select="fecha-pago"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160;<xsl:value-of select="cantidad"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160;&#0036;<xsl:value-of select="monto"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160;<xsl:value-of select="dias-vigencia"/> 
                                </fo:block>
                            </fo:table-cell>
						</fo:table-row>
						<fo:table-row>
                        <fo:table-cell number-columns-spanned="5">
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                     </fo:table-body>
                </fo:table>
            </fo:block>
        </xsl:for-each>
    </xsl:template>
    
  
</xsl:stylesheet>
