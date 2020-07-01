<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <xsl:template match="credUnivCalendarioDePago">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
        
            <fo:layout-master-set>
                <fo:simple-page-master master-name="cotizacion" page-height="280.0mm" page-width="216.0mm" margin-top="10mm" margin-bottom="10mm" margin-right="15mm" margin-left="20mm" border="thick solid red">
                    <fo:region-before extent="20mm" />
                    <fo:region-after  extent="7mm" />
                    <fo:region-body margin-top="20mm" margin-bottom="10mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="cotizacion" font-size="9pt" font-family="Arial, Helvetica, sans-serif" initial-page-number="1">
                <fo:static-content flow-name="xsl-region-before">
                </fo:static-content>            
                <fo:static-content flow-name="xsl-region-after" > 
                    <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                        <fo:table-column column-width="100%"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="right" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
                                        <fo:page-number/> / <fo:page-number-citation ref-id="theEndBanco"/>
                                    </fo:block>
                                </fo:table-cell>                                
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>                               
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <xsl:call-template name="bodyCotizacion"/>
                    <fo:block id="theEndBanco"/>
                </fo:flow>
            </fo:page-sequence>
            
        </fo:root>
    </xsl:template>                
                
                
    <xsl:template name="bodyCotizacion">

        <fo:block>
          <fo:table>
            <fo:table-column column-width="100%"/>
              <fo:table-body>
                <fo:table-row display-align="auto" border-left-style="solid" border-left-width="2px" border-left-color="rgb(5,7,242)" border-top-left-radius="20px 20px" border-right-style="solid" border-right-width="2px" border-right-color="rgb(5,7,242)" border-bottom-right-radius="20px 20px" border-top-style="solid" border-top-width="0px" border-top-color="rgb(5,7,242)" border-top-right-radius="20px 20px" border-bottom-style="solid" border-bottom-width="0px" border-bottom-color="rgb(5,7,242)" border-bottom-left-radius="20px 20px" background-color="rgb(248,250,246)">
                  <fo:table-cell text-align="center" padding-top="5pt" padding-left="15pt" padding-right="10pt" padding-bottom="15pt">
                    <fo:block>

                      <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                        <fo:table-column column-width="100%" column-number="1"/>
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block text-align="left">
                                <fo:external-graphic vertical-align="middle">
                                  <xsl:attribute name="src">
                                    <xsl:value-of select="logoImages"/>
                                  </xsl:attribute>
                                </fo:external-graphic> 
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell color="rgb(119,169,212)" font-weight="bold" font-size="15pt">
                              <fo:block space-before="3mm" text-align="left" border-bottom-style="solid" border-bottom-width="1px">
                                Simulación Crédito Bci Universitario
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>                                    
                        </fo:table-body>
                      </fo:table>                                        


                      <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                        <fo:table-column column-width="100%" column-number="1"/>
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block text-align="center" space-before="5mm">

                                <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                  <fo:table-column column-width="proportional-column-width(45)" column-number="1"/>
                                  <fo:table-column column-width="proportional-column-width(10)" column-number="2"/>
                                  <fo:table-column column-width="proportional-column-width(45)" column-number="3"/>
                                  <fo:table-body>
                                    <fo:table-row>
                                      <fo:table-cell>
                                        <fo:block font-weight="bold" text-align="left">
                                          Datos del cliente
                                        </fo:block>
                                        <fo:table space-before="5mm" space-after="5mm" table-layout="fixed" width="100%" border-collapse="collapse">                                                                                                                                    
                                          <fo:table-column column-width="proportional-column-width(35)" column-number="1"/>
                                          <fo:table-column column-width="proportional-column-width(65)" column-number="2"/>
                                          <fo:table-body>
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Nombre Titular :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="nombreCliente"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                 Rut Titular :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="rutCliente"/> - <xsl:value-of select="dvCliente"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row> 
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                 Nombre Aval :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="nombreAval"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>    
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                 Rut Aval :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="rutAval"/> - <xsl:value-of select="dvAval"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>                                                                                                                                                                                                                       
                                          </fo:table-body>
                                        </fo:table>     
                                      </fo:table-cell>
                                      <fo:table-cell>
                                        <fo:block text-align="left"> 

                                        </fo:block>
                                      </fo:table-cell>                                                                                                                        
                                      <fo:table-cell>

                                      <fo:table>                                                                                                                                      
                                        <fo:table-column column-width="proportional-column-width(100)" column-number="1"/>
                                        <fo:table-body>
                                          <fo:table-row>
                                            <fo:table-cell font-weight="bold" text-align="left">    
                                              <fo:block>
                                                Datos Ejecutivo
                                              </fo:block>
                                            </fo:table-cell>                                                                                                                                                                
                                          </fo:table-row>
                                        </fo:table-body>
                                      </fo:table>                                                                                                                                                             

                                      <fo:block text-align="left">
                                        <fo:table space-before="5mm" space-after="5mm" table-layout="fixed" width="100%" border-collapse="collapse">                                                                                                                                    
                                          <fo:table-column column-width="proportional-column-width(35)" column-number="1"/>
                                          <fo:table-column column-width="proportional-column-width(65)" column-number="2"/>
                                          <fo:table-body>
                                            <fo:table-row>
                                              <fo:table-cell space-before="5mm" border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Oficina :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="oficinaDescripcion"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Ejecutivo :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="usuario"/>
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

                    <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                      <fo:table-column column-width="100%" column-number="1"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell>
                            <fo:block text-align="center" space-before="5mm">

                              <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                <fo:table-column column-width="proportional-column-width(45)" column-number="1"/>
                                <fo:table-column column-width="proportional-column-width(10)" column-number="2"/>
                                <fo:table-column column-width="proportional-column-width(45)" column-number="3"/>
                                <fo:table-body>
                                  <fo:table-row>
                                    <fo:table-cell>
                                      <fo:block text-align="left">
                                        <fo:block font-weight="bold" text-align="left">
                                          Datos Crédito
                                        </fo:block>                                                                                                                                             
                                        <fo:table space-before="5mm" space-after="5mm" table-layout="fixed" width="100%" border-collapse="collapse">                                                                                                                                    
                                          <fo:table-column column-width="proportional-column-width(55)" column-number="1"/>
                                          <fo:table-column column-width="proportional-column-width(45)" column-number="2"/>
                                          <fo:table-body>
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Fecha de Simulación :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="fechaCurse"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>                                                                                                                                                                              
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Producto :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="productoDescripcion"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Institución :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="nombreUniversidad"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row> 
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Carrera :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="carrera"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row> 
                                          <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Moneda : 
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="monedaDescripcion"/>
                                                </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>                                            
                                          <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Monto Crédito : 
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  (<xsl:value-of select="signoMoneda"/>)&#xA0;<xsl:value-of select="montoCredito"/>
                                                </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>                                            
                                          <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Tasa de interés : 
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="tasaCreditoSolicitada"/>&#xA0;%
                                                </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>                                            
                                          <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Plazo : 
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="plazo"/>
                                                </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>                                            
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Duración de la carrera (Semestre) : 
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="duracionCarrera"/>
                                                </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>       
                                          <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Gastos notariales : 
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  $&#xA0;<xsl:value-of select="gastoNotarial"/>
                                                </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>                                       
                                        </fo:table-body>
                                      </fo:table>                                                                                                                                             
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="left"> 

                                    </fo:block>
                                  </fo:table-cell>                                                                                                                        
                                  <fo:table-cell>
                                    <fo:block text-align="left"> 
                                      <fo:table space-before="5mm" space-after="5mm" table-layout="fixed" width="100%" border-collapse="collapse">                                                                                                                                    
                                        <fo:table-column column-width="proportional-column-width(50)" column-number="1"/>
                                        <fo:table-column column-width="proportional-column-width(50)" column-number="2"/>
                                        <fo:table-body>
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                Impuesto DL 3475 :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left"> 
                                                $&#xA0;<xsl:value-of select="montoImpuesto"/>
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                Seguro de Desgravamen Aval :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left"> 
                                                (<xsl:value-of select="signoMoneda"/>)&#xA0;<xsl:value-of select="seguroAval"/>
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row> 
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                Seguros Deudor Directo :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left"> 
                                                
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>                                           

                                        <xsl:for-each select="segurosDeudorDirecto/seguro">
                                            <fo:table-row border-top-style="solid" border-top-width="2px">
                                              <fo:table-cell
                                                  border-left-style="solid" border-left-width="1px" 
                                                  border-right-style="solid" border-right-width="1px" 
                                                  border-top-style="solid" border-top-width="1px" 
                                                  border-bottom-style="solid" border-bottom-width="1px" 
                                                  padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                              <fo:block text-align="right">
                                                <fo:inline>
                                                  <xsl:value-of select="descripcion"/>
                                                </fo:inline>
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell
                                                  border-left-style="solid" border-left-width="1px" 
                                                  border-right-style="solid" border-right-width="1px" 
                                                  border-top-style="solid" border-top-width="1px" 
                                                  border-bottom-style="solid" border-bottom-width="1px" 
                                                  padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                              <fo:block text-align="left">
                                                <fo:inline>
                                                  (<xsl:value-of select="signoMoneda"/>)&#xA0;<xsl:value-of select="monto"/>
                                                </fo:inline>
                                              </fo:block>
                                            </fo:table-cell>
                                            </fo:table-row>
                                        </xsl:for-each>

                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                Total Seguros Deudor Directo :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left"> 
                                                (<xsl:value-of select="signoMoneda"/>)&#xA0;<xsl:value-of select="montoSeguros"/>
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

                  <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                    <fo:table-column column-width="100%" column-number="1"/>
                    <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell>
                          <fo:block text-align="center" space-before="5mm">

                            <fo:table space-before="5mm" space-after="5mm" table-layout="fixed" width="100%" border-collapse="collapse">                                                                                                                                    
                              <fo:table-column column-width="proportional-column-width(30)" column-number="1"/>
                              <fo:table-column column-width="proportional-column-width(70)" column-number="2"/>
                              <fo:table-body>
                                <fo:table-row>
                                  <fo:table-cell border-top-style="solid" border-top-width="1px"
                                        border-bottom-style="solid" border-bottom-width="1px"
                                        border-left-style="solid" border-left-width="1px"
                                        border-right-style="solid" border-right-width="1px">  
                                    <fo:block text-align="left">
                                      CAE :
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border-top-style="solid" border-top-width="1px"
                                        border-bottom-style="solid" border-bottom-width="1px"
                                        border-left-style="solid" border-left-width="1px"
                                        border-right-style="solid" border-right-width="1px">  
                                    <fo:block text-align="right"> 
                                      <xsl:value-of select="indicadorCAEValor"/>&#xA0;%
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>                                 
                                <fo:table-row>
                                  <fo:table-cell border-top-style="solid" border-top-width="1px"
                                        border-bottom-style="solid" border-bottom-width="1px"
                                        border-left-style="solid" border-left-width="1px"
                                        border-right-style="solid" border-right-width="1px">  
                                    <fo:block text-align="left">
                                      Costo Total del Crédito :
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border-top-style="solid" border-top-width="1px"
                                        border-bottom-style="solid" border-bottom-width="1px"
                                        border-left-style="solid" border-left-width="1px"
                                        border-right-style="solid" border-right-width="1px">  
                                    <fo:block text-align="right"> 
                                      (<xsl:value-of select="signoMoneda"/>)&#xA0;<xsl:value-of select="montoTotalCredito"/>
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

                    <fo:table space-before="5mm" width="100%">
                      <fo:table-column column-width="100%" column-number="1"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell>
                            <fo:block text-align="center">

                              <fo:block text-align="left" font-weight="bold">
                                Calendario de Pago
                              </fo:block>                             

                              <fo:table>
                                <fo:table-column/>
                                <fo:table-body>
                                  <fo:table-row display-align="auto" border-left-style="solid" border-left-width="2px" border-right-style="solid" border-right-width="2px" border-top-style="solid" border-top-width="0px" border-bottom-style="solid" border-bottom-width="0px">
                                    <fo:table-cell text-align="center">
                                      <fo:block space-before="5mm" space-after="5mm">
                                        <fo:table>
                                          <fo:table-column column-width="15mm" column-number="1"/>
                                          <fo:table-column column-width="38mm" column-number="2"/>
                                          <fo:table-column column-width="30mm" column-number="3"/>
                                          <fo:table-column column-width="29mm" column-number="4"/>
                                          <fo:table-column column-width="29mm" column-number="5"/>
                                          <fo:table-column column-width="29mm" column-number="6"/>
                                          <fo:table-header>
                                            <fo:table-row text-align="center" border-top-style="solid" border-top-width="2px">
                                              <fo:table-cell text-align="center" font-weight="bold"                                                                                                                                                                      
                                                    border-left-style="solid" border-left-width="1px" 
                                                    border-right-style="solid" border-right-width="1px" 
                                                    border-top-style="solid" border-top-width="1px" 
                                                    border-bottom-style="solid" border-bottom-width="1px" 
                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                <fo:block>N° de cuotas</fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell text-align="center" font-weight="bold"
                                                    border-left-style="solid" border-left-width="1px" 
                                                    border-right-style="solid" border-right-width="1px" 
                                                    border-top-style="solid" border-top-width="1px" 
                                                    border-bottom-style="solid" border-bottom-width="1px" 
                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                <fo:block>Fecha de Vencimiento</fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell text-align="center" font-weight="bold"
                                                    border-left-style="solid" border-left-width="1px" 
                                                    border-right-style="solid" border-right-width="1px" 
                                                    border-top-style="solid" border-top-width="1px" 
                                                    border-bottom-style="solid" border-bottom-width="1px" 
                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                <fo:block>Amortización (UF)</fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell text-align="center" font-weight="bold"
                                                    border-left-style="solid" border-left-width="1px" 
                                                    border-right-style="solid" border-right-width="1px" 
                                                    border-top-style="solid" border-top-width="1px" 
                                                    border-bottom-style="solid" border-bottom-width="1px" 
                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                <fo:block>Comisión</fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell text-align="center" font-weight="bold"
                                                    border-left-style="solid" border-left-width="1px" 
                                                    border-right-style="solid" border-right-width="1px" 
                                                    border-top-style="solid" border-top-width="1px" 
                                                    border-bottom-style="solid" border-bottom-width="1px" 
                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                <fo:block>Interés (UF)</fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell text-align="center" font-weight="bold"
                                                    border-left-style="solid" border-left-width="1px" 
                                                    border-right-style="solid" border-right-width="1px" 
                                                    border-top-style="solid" border-top-width="1px" 
                                                    border-bottom-style="solid" border-bottom-width="1px" 
                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                <fo:block>Valor Cuota (UF)</fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>
                                          </fo:table-header>
                                          <fo:table-body>
                                        <xsl:for-each select="calendarioDePago/calendario">
                                            <fo:table-row border-top-style="solid" border-top-width="2px">
                                              <fo:table-cell text-align="center"
                                                  border-left-style="solid" border-left-width="1px" 
                                                  border-right-style="solid" border-right-width="1px" 
                                                  border-top-style="solid" border-top-width="1px" 
                                                  border-bottom-style="solid" border-bottom-width="1px" 
                                                  padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                              <fo:block>
                                                <fo:inline>
                                                  <xsl:value-of select="numVencimiento"/>
                                                </fo:inline>
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center"
                                                  border-left-style="solid" border-left-width="1px" 
                                                  border-right-style="solid" border-right-width="1px" 
                                                  border-top-style="solid" border-top-width="1px" 
                                                  border-bottom-style="solid" border-bottom-width="1px" 
                                                  padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                              <fo:block>
                                                <fo:inline>
                                                  <xsl:value-of select="fecVencPago"/>
                                                </fo:inline>
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center"
                                                  border-left-style="solid" border-left-width="1px" 
                                                  border-right-style="solid" border-right-width="1px" 
                                                  border-top-style="solid" border-top-width="1px" 
                                                  border-bottom-style="solid" border-bottom-width="1px" 
                                                  padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                              <fo:block>
                                                <fo:inline>
                                                  <xsl:value-of select="capitalSigCuota"/>
                                                </fo:inline>
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center"
                                                  border-left-style="solid" border-left-width="1px" 
                                                  border-right-style="solid" border-right-width="1px" 
                                                  border-top-style="solid" border-top-width="1px" 
                                                  border-bottom-style="solid" border-bottom-width="1px" 
                                                  padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                              <fo:block>
                                                <fo:inline>
                                                  <xsl:value-of select="comision"/>
                                                </fo:inline>
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center"
                                                  border-left-style="solid" border-left-width="1px" 
                                                  border-right-style="solid" border-right-width="1px" 
                                                  border-top-style="solid" border-top-width="1px" 
                                                  border-bottom-style="solid" border-bottom-width="1px" 
                                                  padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                              <fo:block>
                                                <fo:inline>
                                                  <xsl:value-of select="intereses"/>
                                                </fo:inline>
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell text-align="center"
                                                  border-left-style="solid" border-left-width="1px" 
                                                  border-right-style="solid" border-right-width="1px" 
                                                  border-top-style="solid" border-top-width="1px" 
                                                  border-bottom-style="solid" border-bottom-width="1px" 
                                                  padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                              <fo:block>
                                                <fo:inline>
                                                  <xsl:value-of select="cuota"/>
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

        <fo:block margin-left="15px" margin-right="15px" font-size="9pt" font-family="Helvetica" text-align="left">
            <fo:block> </fo:block>
                <fo:inline>(*) El valor de los intereses de la última cuota y por añadiduría, el valor final del saldo capital, estarán disponibles una vez se conozca la tasa de interés del periodo de la operación.</fo:inline>
            <fo:block> </fo:block>
                <fo:inline>Importante: Luego de pagar la cuota n°12, cliente tiene 3 meses para renovar crédito o ver forma de pago del cuotón.</fo:inline>
            <fo:block> </fo:block>
                <fo:block>1.  Los valores indicados en la presente simulación de crédito, son sólo referenciales, el valor definitivo de la cuota quedará informado al otorgamiento del crédito.</fo:block>
                <fo:block>2.  La entrega de una cotización, queda sujeta a que el Banco evalúe previamente el riesgo comercial, y se aprueben las condiciones para el otorgamiento.</fo:block>
                <fo:block>3.  La aprobación y condiciones definitivas de un crédito simulado y/o solicitado están sujetas a confirmación de antecedentes financieros y comerciales al momento de la evaluación para el curse definitivo del crédito, el que puede ser aprobado o rechazado.</fo:block>
                <fo:block>4.  Los seguros contratados, son cubiertos por BCI Seguros Generales S.A. y BCI Seguros de Vida S.A.</fo:block>
                <fo:block>5.  Los gastos notariales corresponden a una estimación para una operación de crédito de consumo en Santiago, pudiendo variar para operaciones de regiones cuyos aranceles dependerán de la localidad que se realice la operación.</fo:block>
                <fo:block>6.  CAE (Carga Anual Equivalente): es el indicador que, expresado en forma de porcentaje, revela el costo de un crédito en periodo anual, cualquiera que sea el plazo pactado para el pago de la obligación. La CAE contempla el tipo de interés, todos los gastos asociados al crédito y el plazo de la operación; y se calcula sobre base anual.</fo:block>
                <fo:block>7.  CTC (Costo Total del Crédito): es el indicador que, expresado en una suma de dinero, da cuenta del monto total a pagar por el crédito solicitado. Se calcula sumando el monto total del crédito, lo adeudado por tasa de interés y los gastos asociados al crédito.</fo:block>
                <fo:block>8.  CAE y CTC se calcula de acuerdo a las fórmulas indicadas en el Decreto N°43 del Ministerio de Economía Fomento y Turismo que aprobó el reglamento sobre información al Consumidor de Créditos de Consumo.</fo:block>
            <fo:block> </fo:block>
                <fo:inline>Para Consultas o Comentarios Comuníquese al 600 6928000</fo:inline>
        </fo:block>                                                                     
    </xsl:template>

</xsl:stylesheet>