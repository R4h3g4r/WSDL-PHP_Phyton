<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2011/07/18 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <!-- <xsl:param name="IMG_URL"/>-->
    <xsl:template match="impresionCotizacionSimulacion">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
        
            <fo:layout-master-set>
                <fo:simple-page-master master-name="cotizacion" page-height="11.000in" page-width="8.500in" margin-top="20.000px" margin-bottom="20.000px" margin-right="10.000px" margin-left="10.000px">
                    <fo:region-before region-name="xsl-region-before" display-align="after" extent="0.700in" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                    <fo:region-after region-name="xsl-region-after" display-align="before" extent="0.700in" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            
            <fo:page-sequence master-reference="cotizacion" font-size="9pt" font-family="Helvetica">
            
                <fo:static-content flow-name="xsl-region-before" border-bottom-style="solid" border-bottom-width="3pt" border-bottom-color="rgb(192,192,192)" font-size="10pt" font-family="Helvetica"></fo:static-content>
                <fo:static-content flow-name="xsl-region-after" padding-top="2pt" border-top-style="solid" border-top-width="1pt" border-top-color="rgb(192,192,192)" font-size="10pt" font-family="Helvetica">
                    <fo:table table-layout="fixed" width="100%">
                        <fo:table-column column-width="proportional-column-width(4)"/>
                        <fo:table-column column-width="proportional-column-width(1)"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block color="rgb(105,105,105)"></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:static-content>
                
                <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Helvetica">

                    <fo:block>
                        <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                                <fo:table-row display-align="auto" border-left-style="solid" border-left-width="2px" border-left-color="rgb(5,7,242)" border-top-left-radius="20px 20px" border-right-style="solid" border-right-width="2px" border-right-color="rgb(5,7,242)" border-bottom-right-radius="20px 20px" border-top-style="solid" border-top-width="0px" border-top-color="rgb(5,7,242)" border-top-right-radius="20px 20px" border-bottom-style="solid" border-bottom-width="0px" border-bottom-color="rgb(5,7,242)" border-bottom-left-radius="20px 20px" background-color="rgb(248,250,246)">
                                    <fo:table-cell text-align="center" padding-top="5pt" padding-left="15pt" padding-right="10pt" padding-bottom="15pt">
                                        <fo:block>
                        
                            <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                <fo:table-column column-width="proportional-column-width(50)" column-number="1"/>
                                <fo:table-column column-width="proportional-column-width(50)" column-number="2"/>
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell>
                                            <fo:block text-align="left">
                                                <fo:external-graphic width="1.352in" height="0.824in" vertical-align="middle">
                                                    <xsl:attribute name="src">
                                                        <xsl:value-of select="rutaImagen"/>
                                                    </xsl:attribute>
                                                </fo:external-graphic>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block>�
                                                <fo:table>
                                                    <fo:table-column column-width="4cm" column-number="1"/>
                                                    <fo:table-column column-width="5cm" column-number="2"/> 
                                                    <fo:table-body>
                                                    <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Oficina</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px"
                                                                       border-top-style="solid" border-top-width="0.1px"
                                                                       border-bottom-style="solid" border-bottom-width="0.1px">                                                                       
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="oficina"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>
                                                    <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Ejecutivo</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px"
                                                                       border-top-style="solid" border-top-width="0.1px"
                                                                       border-bottom-style="solid" border-bottom-width="0.1px">                                                                          
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="ejecutivo"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row> 
                                                    <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Fecha de Cotizaci�n</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px"
                                                                       border-top-style="solid" border-top-width="0.1px"
                                                                       border-bottom-style="solid" border-bottom-width="0.1px">                                                                          
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="fechaCotizacion"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>                                                    
                                                    </fo:table-body>                                                    
                                                 </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                            
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>      
                    
                    <fo:block text-align="center" color="rgb(5,7,242)">
                        <fo:block>�</fo:block>
                        <fo:block font-weight="bold" font-size="9pt">COTIZACI�N CR�DITO DE CONSUMO</fo:block>
                        <fo:block>�</fo:block>
                    </fo:block>   
                    
                    
                    <fo:block>
                        <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                                <fo:table-row display-align="auto" border-left-style="solid" border-left-width="2px" border-left-color="rgb(5,7,242)" border-top-left-radius="20px 20px" border-right-style="solid" border-right-width="2px" border-right-color="rgb(5,7,242)" border-bottom-right-radius="20px 20px" border-top-style="solid" border-top-width="0px" border-top-color="rgb(5,7,242)" border-top-right-radius="20px 20px" border-bottom-style="solid" border-bottom-width="0px" border-bottom-color="rgb(5,7,242)" border-bottom-left-radius="20px 20px" background-color="rgb(248,250,246)">
                                    <fo:table-cell text-align="center" padding-top="5pt" padding-left="15pt" padding-right="10pt" padding-bottom="15pt">
                                        <fo:block>


                            <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                <fo:table-column column-width="proportional-column-width(50)" column-number="1"/>
                                <fo:table-column column-width="proportional-column-width(50)" column-number="2"/>
                                <fo:table-body>
                                    <fo:table-row display-align="auto" background-color="rgb(248,250,246)"
                                                  border-left-style="solid" border-left-width="2px" border-left-color="rgb(5,7,242)" 
                                                  border-top-left-radius="20px 20px" border-right-style="solid" border-right-width="2px" border-right-color="rgb(5,7,242)" 
                                                  border-bottom-right-radius="20px 20px" border-top-style="solid" border-top-width="0px" border-top-color="rgb(5,7,242)" 
                                                  border-top-right-radius="20px 20px" border-bottom-style="solid" border-bottom-width="0px" border-bottom-color="rgb(5,7,242)" 
                                                  border-bottom-left-radius="20px 20px">
                                        <fo:table-cell>
                                            <fo:block text-align="left">�
                                                <fo:table>
                                                    <fo:table-column column-width="4cm" column-number="1"/>
                                                    <fo:table-column column-width="5cm" column-number="2"/> 
                                                    <fo:table-body>
                                                    <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Nombre del Cliente</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="nombreCliente"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>
                                                    <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Monto del Cr�dito a Cursar</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="right"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="montoCursado"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row> 
                                                    <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Monto L�quido</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="right"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="montoCredito"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>  
                                                    <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Fecha del 1er Vencimiento</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="fechaPrimerVencimiento"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row> 
                                                    <fo:table-row font-size="7pt">    
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>N� de la Cuenta Corriente de Cargo</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="cuentaCargo"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>                                                                                                                                                                                                              
                                                    </fo:table-body>                                                    
                                                 </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block text-align="right">�
                                                <fo:table>
                                                    <fo:table-column column-width="4cm" column-number="1"/>
                                                    <fo:table-column column-width="5cm" column-number="2"/> 
                                                    <fo:table-body>
                                                    <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Rut</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="rutCliente"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>
                                                    <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Plazo</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="plazoEnMeses"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row> 
                                                    <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Tasa de Inter�s Mensual</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="tasaCreditoSolicitada"/>%
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>     
                                                    <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Tasa de Inter�s Anual</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="tasaFinalCredito"/>%
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>                                                         
                                                    <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Meses de no Pago</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="mesesNoPago"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>  
                                                                                                                                                                                                         <fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Valor Cuota</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="proximaCuotaPagar"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>

													<fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Indicador CAE</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="indicadorCAE"/>%
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
													<fo:table-row font-size="7pt"> 
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>Costo Final del Cr�dito</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="montoTotalCredito"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell> 
                                                    </fo:table-row>                                                                                                         

                                                    
                                                    
                                                    </fo:table-body>                                                    
                                                 </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                   
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block> 
                    
                    
                    <fo:block margin-left="15px" margin-right="15px" font-size="7pt" font-family="Helvetica" text-align="left" color="rgb(62,67,253)">
                        <fo:block>�</fo:block>
                        <fo:block font-weight="bold" font-size="9pt">Gastos Asociados al Curse de Cr�dito</fo:block>
                        <fo:block>�</fo:block>
                    </fo:block> 
                    
                    

                    <fo:block>
                        <fo:table>
                            <fo:table-column column-width="10%"/>
                            <fo:table-body>
                                <fo:table-row display-align="auto" border-left-style="solid" border-left-width="2px" border-left-color="rgb(5,7,242)" border-top-left-radius="20px 20px" border-right-style="solid" border-right-width="2px" border-right-color="rgb(5,7,242)" border-bottom-right-radius="20px 20px" border-top-style="solid" border-top-width="0px" border-top-color="rgb(5,7,242)" border-top-right-radius="20px 20px" border-bottom-style="solid" border-bottom-width="0px" border-bottom-color="rgb(5,7,242)" border-bottom-left-radius="20px 20px" background-color="rgb(248,250,246)">
                                    <fo:table-cell text-align="center" padding-top="5pt" padding-left="15pt" padding-right="10pt" padding-bottom="15pt">
                                        <fo:block>                                        
                                        
                                        <fo:table>
                                        <fo:table-column column-width="4cm" column-number="1"/>
                                        <fo:table-column column-width="5cm" column-number="2"/>
                                            <fo:table-body>
                                                    <fo:table-row font-size="7pt">    
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>1) Impuesto D.L. 3475</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="right"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="montoImpuesto"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>
                                                    <fo:table-row font-size="7pt">    
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>2) Gastos Notariales</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="right"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="gastosNotariales"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>   
                                                    <fo:table-row font-size="7pt">    
                                                        <fo:table-cell display-align="center" color="rgb(5,7,242)" text-align="left" font-weight="bold" background-color="rgb(187,205,229)"
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px"
                                                                       border-top-color="rgb(255,255,255)" border-top-style="solid" border-top-width="2px"
                                                                       border-bottom-color="rgb(255,255,255)" border-bottom-style="solid" border-bottom-width="2px">
                                                            <fo:block>3) Total seguros Asociados</fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="right"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="montoTotalSeguros"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>                                                        
                                                    </fo:table-row>  
                                                    
                                                    <xsl:for-each select="seguros/element">
                                                        
                                                    <fo:table-row>    
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="left"  font-size="6pt"
                                                                       border-bottom-color="rgb(255,255,255)" border-top-color="rgb(255,255,255)" border-left-color="rgb(255,255,255)" border-right-color="rgb(255,255,255)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block><xsl:value-of select="descripcionSeguro"/></fo:block>
                                                        </fo:table-cell>                                                        
                                                        <fo:table-cell display-align="center" color="rgb(62,67,253)" text-align="right"  font-size="7pt"
                                                                       border-bottom-color="rgb(255,255,255)" border-top-color="rgb(255,255,255)" border-left-color="rgb(255,255,255)" border-right-color="rgb(255,255,255)"
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                            <fo:block>
                                                                <fo:inline>
                                                                    <xsl:value-of select="montoSeguros"/>
                                                                </fo:inline>
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
                                                                                                   
                                        
                    
                    <fo:block margin-left="15px" margin-right="15px" text-align="left" color="rgb(5,7,242)">
                        <fo:block>�</fo:block>
                        <fo:block font-weight="bold" font-size="7pt">CALENDARIO DE PAGO</fo:block>
                    </fo:block>                    
                    
                    <fo:block>
                        <fo:table>
                            <fo:table-column column-width="13cm"/>
                            <fo:table-body>
                                <fo:table-row display-align="auto" border-left-style="solid" border-left-width="2px" border-left-color="rgb(5,7,242)" border-top-left-radius="20px 20px" border-right-style="solid" border-right-width="2px" border-right-color="rgb(5,7,242)" border-bottom-right-radius="20px 20px" border-top-style="solid" border-top-width="0px" border-top-color="rgb(5,7,242)" border-top-right-radius="20px 20px" border-bottom-style="solid" border-bottom-width="0px" border-bottom-color="rgb(5,7,242)" border-bottom-left-radius="20px 20px" background-color="rgb(248,250,246)">
                                    <fo:table-cell text-align="center" padding-top="5pt" padding-left="15pt" padding-right="10pt" padding-bottom="15pt">
                                        <fo:block>
                                            <fo:table>
                                                <fo:table-column column-width="2cm" column-number="1"/>
                                                <fo:table-column column-width="3cm" column-number="2"/>
                                                <fo:table-column column-width="2cm" column-number="3"/>
                                                <fo:table-column column-width="2cm" column-number="4"/>
                                                <fo:table-column column-width="2cm" column-number="5"/>
                                                <fo:table-column column-width="2cm" column-number="6"/>
                                                <fo:table-header>
                                                    <fo:table-row text-align="center" border-top-style="solid" border-top-width="2px" font-size="7pt" font-family="Helvetica" background-color="rgb(187,205,229)">
                                                        <fo:table-cell color="rgb(5,7,242)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)" 
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                            <fo:block>Cuota</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell color="rgb(5,7,242)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)" 
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                            <fo:block>Fecha de Vencimiento</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell color="rgb(5,7,242)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)" 
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                            <fo:block>Amortizaci�n ($)</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell color="rgb(5,7,242)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)" 
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                            <fo:block>Inter�s ($)</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell color="rgb(5,7,242)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)" 
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                            <fo:block>Comisi�n ($)</fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell color="rgb(5,7,242)" text-align="center"
                                                                       border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)" 
                                                                       border-left-style="solid" border-left-width="0.1px" 
                                                                       border-right-style="solid" border-right-width="0.1px" 
                                                                       border-top-style="solid" border-top-width="0.1px" 
                                                                       border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                       padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                            <fo:block>Valor Cuota ($)</fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-header>
                                                <xsl:for-each select="calendarioPago/element">
                                                    <fo:table-body>
                                                        <fo:table-row border-top-style="solid" border-top-width="2px" font-size="6pt" font-weight="normal" background-color="rgb(255,255,255)">
                                                            <fo:table-cell color="rgb(62,67,253)" text-align="center"
                                                                           border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                           border-left-style="solid" border-left-width="0.1px" 
                                                                           border-right-style="solid" border-right-width="0.1px" 
                                                                           border-top-style="solid" border-top-width="0.1px" 
                                                                           border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                           padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                                <fo:block>
                                                                    <fo:inline>
                                                                        <xsl:value-of select="cuota"/>/
                                                                        <xsl:value-of select="numeroCuotas"/>
                                                                    </fo:inline>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell color="rgb(62,67,253)" text-align="center"
                                                                           border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                           border-left-style="solid" border-left-width="0.1px" 
                                                                           border-right-style="solid" border-right-width="0.1px" 
                                                                           border-top-style="solid" border-top-width="0.1px" 
                                                                           border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                           padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                                <fo:block>
                                                                    <fo:inline>
                                                                        <xsl:value-of select="fechaVencimiento"/>
                                                                    </fo:inline>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell color="rgb(62,67,253)" text-align="center"
                                                                           border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                           border-left-style="solid" border-left-width="0.1px" 
                                                                           border-right-style="solid" border-right-width="0.1px" 
                                                                           border-top-style="solid" border-top-width="0.1px" 
                                                                           border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                           padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                                <fo:block>
                                                                    <fo:inline>
                                                                        <xsl:value-of select="amortizacion"/>
                                                                    </fo:inline>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell color="rgb(62,67,253)" text-align="center"
                                                                           border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                           border-left-style="solid" border-left-width="0.1px" 
                                                                           border-right-style="solid" border-right-width="0.1px" 
                                                                           border-top-style="solid" border-top-width="0.1px" 
                                                                           border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                           padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                                <fo:block>
                                                                    <fo:inline>
                                                                        <xsl:value-of select="interes"/>
                                                                    </fo:inline>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell color="rgb(62,67,253)" text-align="center"
                                                                           border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                           border-left-style="solid" border-left-width="0.1px" 
                                                                           border-right-style="solid" border-right-width="0.1px" 
                                                                           border-top-style="solid" border-top-width="0.1px" 
                                                                           border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                           padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                                <fo:block>
                                                                    <fo:inline>
                                                                        <xsl:value-of select="comision"/>
                                                                    </fo:inline>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell color="rgb(62,67,253)" text-align="center"
                                                                           border-bottom-color="rgb(5,7,242)" border-top-color="rgb(5,7,242)" border-left-color="rgb(5,7,242)" border-right-color="rgb(5,7,242)"
                                                                           border-left-style="solid" border-left-width="0.1px" 
                                                                           border-right-style="solid" border-right-width="0.1px" 
                                                                           border-top-style="solid" border-top-width="0.1px" 
                                                                           border-bottom-style="solid" border-bottom-width="0.1px" 
                                                                           padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                                                <fo:block>
                                                                    <fo:inline>
                                                                        <xsl:value-of select="proximaCuotaPagarCalendario"/>
                                                                    </fo:inline>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </xsl:for-each>
                                            </fo:table>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        
                        <fo:block margin-left="15px" margin-right="15px" font-size="9pt" font-family="Helvetica" text-align="left" color="rgb(62,67,253)">
                            <fo:block>�</fo:block>
								<fo:inline>Notas Importantes:</fo:inline>                            
                            <fo:block>�</fo:block>
								<fo:inline>o	La aprobaci�n y condiciones definitivas de un cr�dito simulado y/o solicitado est�n sujetas a confirmaci�n de antecedentes financieros y comerciales al momento de la evaluaci�n para el curse definitivo del cr�dito, el que puede ser aprobado o rechazado.</fo:inline>
                            <fo:block>�</fo:block>
								<fo:inline>o	Valores aproximados y solo rigen para la fecha en que fue realizada simulaci�n.</fo:inline>
                            <fo:block>�</fo:block>                            
								<fo:inline>o	Para obtener un cr�dito de consumo no es necesario tomar seguros ni contratar otros servicios.</fo:inline>                            
                            <fo:block>�</fo:block>
								<fo:inline>o	Para cr�dito de consumo solicitado, es de absoluta voluntad del cliente, contratar los seguros seleccionados e indicados en esta cotizaci�n, cuyos precios declara conocer y aceptar. Adem�s est� en conocimiento, que puede obtener cr�dito con la misma tasa y dem�s condiciones que si no adquiere dichos seguros.</fo:inline>                            
                            <fo:block>�</fo:block>
								<fo:inline>o	Los seguros contratados, son cubiertos por  BCI Seguros Generales S.A y BCI Seguros Vida S.A.</fo:inline>                            
                            <fo:block>�</fo:block>
                       
                        </fo:block>
                        
                    </fo:block>
                    
                    <fo:block id="theEnd"/>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>