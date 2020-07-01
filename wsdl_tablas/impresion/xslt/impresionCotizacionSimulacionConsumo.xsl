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
                <fo:simple-page-master master-name="cotizacion" page-height="280.0mm" page-width="216.0mm" margin-top="10mm" margin-bottom="10mm" margin-right="15mm" margin-left="20mm" border="thick solid red">
                    <fo:region-before extent="20mm" />
                    <fo:region-after  extent="7mm" />
                    <fo:region-body margin-top="20mm" margin-bottom="10mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="cotizacion" font-size="9pt" font-family="Arial, Helvetica, sans-serif" initial-page-number="1">
                <fo:static-content flow-name="xsl-region-before">
                  <fo:block>
                    <fo:external-graphic vertical-align="middle">
                      <xsl:attribute name="src">
                        <xsl:value-of select="rutaImagen"/>
                      </xsl:attribute>
                    </fo:external-graphic> 
                  </fo:block>
                </fo:static-content>            
                <fo:static-content flow-name="xsl-region-after" >
                    <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                        <fo:table-column column-width="40%"/>
                        <fo:table-column column-width="60%"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                                        Copia Banco
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="right" font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                                    </fo:block>
                                </fo:table-cell>                                
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>                    
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <xsl:call-template name="bodyCotizacion"/>
                </fo:flow>
            </fo:page-sequence>

       
            <fo:page-sequence master-reference="cotizacion" font-size="9pt" font-family="Arial, Helvetica, sans-serif" initial-page-number="1">
                <fo:static-content flow-name="xsl-region-before">
                  <fo:block>
                    <fo:external-graphic vertical-align="middle">
                      <xsl:attribute name="src">
                        <xsl:value-of select="rutaImagen"/>
                      </xsl:attribute>
                    </fo:external-graphic> 
                  </fo:block>
                </fo:static-content>            
                <fo:static-content flow-name="xsl-region-after" >
                    <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                        <fo:table-column column-width="40%"/>
                        <fo:table-column column-width="60%"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                                        Copia Cliente
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="right" font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                                    </fo:block>
                                </fo:table-cell>                                
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>                    
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <xsl:call-template name="bodyCotizacion"/>
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

                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell color="rgb(119,169,212)" font-weight="bold" font-size="15pt">
                              <fo:block space-before="3mm" text-align="left" border-bottom-style="solid" border-bottom-width="1px">
                                <xsl:value-of select="tituloDocumento"/>
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
                                          Datos Cliente
                                        </fo:block>
                                        <fo:table space-before="5mm" space-after="5mm" table-layout="fixed" width="100%" border-collapse="collapse">                                                                                                                                    
                                          <fo:table-column column-width="proportional-column-width(35)" column-number="1"/>
                                          <fo:table-column column-width="proportional-column-width(65)" column-number="2"/>
                                          <fo:table-body>
                                          <xsl:if test="nombreCliente != 'NO_CLIENTE'">
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Nombre :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">�
                                                  <xsl:value-of select="nombreCliente"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>
                                          </xsl:if>
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  RUT :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">�
                                                  <xsl:value-of select="rutCliente"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row> 
                                          <xsl:if test="nombreCliente = 'NO_CLIENTE'">
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Rango de Renta :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">�
                                                  <xsl:value-of select="glosaTramoRenta"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>
                                          </xsl:if>                                                                                                                                                                                       
                                          </fo:table-body>
                                        </fo:table>     
                                      </fo:table-cell>
                                      <fo:table-cell>
                                        <fo:block text-align="left">�

                                        </fo:block>
                                      </fo:table-cell>                                                                                                                        
                                      <fo:table-cell>

                                      <fo:table>                                                                                                                                      
                                        <fo:table-column column-width="proportional-column-width(100)" column-number="1"/>
                                        <fo:table-body>
                                          <fo:table-row>
                                            <fo:table-cell font-weight="bold" text-align="left">    
                                              <fo:block>
                                                Datos Ejecutivo BCI
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
                                                <fo:block text-align="left">�
                                                  <xsl:value-of select="oficina"/>
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
                                                <fo:block text-align="left">�
                                                  <xsl:value-of select="ejecutivo"/>
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
                                          Datos Cr�dito
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
                                                  Fecha de Simulaci�n :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">�
                                                  <xsl:value-of select="fechaCotizacion"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>                 
                                          <xsl:value-of select="producto"/>                                                                                                                                                               
                                          <xsl:if test="producto = 'CON500'">
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
                                                <fo:block text-align="left">�
                                                  Cr�dito Universal
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>
                                          </xsl:if>
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Monto del cr�dito a cursar :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">�
                                                  <xsl:value-of select="montoCursado"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row> 
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Monto L�quido :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">�
                                                  <xsl:value-of select="montoCredito"/>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row> 
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Meses de No Pago :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">�
                                                  <xsl:value-of select="mesesNoPago"/>
                                                </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>                                                                                                                                                         
                                        </fo:table-body>
                                      </fo:table>                                                                                                                                             
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block text-align="left">�

                                    </fo:block>
                                  </fo:table-cell>                                                                                                                        
                                  <fo:table-cell>
                                    <fo:block text-align="left">�
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
                                                Plazo :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">�
                                                <xsl:value-of select="plazoEnMeses"/>
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                Tasa de Inter�s Mensual :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">�
                                                <xsl:value-of select="tasaCreditoSolicitada"/>%
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row> 
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                Tasa de Inter�s Anual :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">�
                                                <xsl:value-of select="tasaFinalCredito"/>%
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row> 
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                Fecha 1 er Vencimiento :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">�
                                                <xsl:value-of select="fechaPrimerVencimiento"/>
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row> 
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                N� Cuenta Cargo :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">�
                                                <xsl:value-of select="cuentaCargo"/>
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>         
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                Valor Cuota :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">�
                                                <xsl:value-of select="proximaCuotaPagar"/>
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
                                      Costo Total del Cr�dito :
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border-top-style="solid" border-top-width="1px"
                                        border-bottom-style="solid" border-bottom-width="1px"
                                        border-left-style="solid" border-left-width="1px"
                                        border-right-style="solid" border-right-width="1px">  
                                    <fo:block text-align="right">�
                                      <xsl:value-of select="montoTotalCredito"/>
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>
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
                                    <fo:block text-align="right">�
                                      <xsl:value-of select="indicadorCAE"/>
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
                              <fo:table-column column-width="proportional-column-width(55)" column-number="1"/>
                              <fo:table-column column-width="proportional-column-width(45)" column-number="2"/>
                              <fo:table-body>
                                <fo:table-row>
                                  <fo:table-cell>
                                    <fo:block font-weight="bold" text-align="left">
                                      Gastos Asociados al Curse de Cr�dito
                                    </fo:block>
                                    <fo:table space-before="5mm" space-after="5mm" table-layout="fixed" width="100%" border-collapse="collapse">                                                                                                                                    
                                      <fo:table-column column-width="proportional-column-width(60)" column-number="1"/>
                                      <fo:table-column column-width="proportional-column-width(40)" column-number="2"/>
                                      <fo:table-body>
                                        <fo:table-row>
                                          <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                border-bottom-style="solid" border-bottom-width="1px"
                                                border-left-style="solid" border-left-width="1px"
                                                border-right-style="solid" border-right-width="1px">  
                                            <fo:block text-align="left">
                                              1) Impuesto D.L. 3475 :
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                border-bottom-style="solid" border-bottom-width="1px"
                                                border-left-style="solid" border-left-width="1px"
                                                border-right-style="solid" border-right-width="1px">  
                                            <fo:block text-align="left">�
                                              <xsl:value-of select="montoImpuesto"/>
                                            </fo:block>
                                          </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                          <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                border-bottom-style="solid" border-bottom-width="1px"
                                                border-left-style="solid" border-left-width="1px"
                                                border-right-style="solid" border-right-width="1px">  
                                            <fo:block text-align="left">
                                              2) Gastos Notariales :
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                border-bottom-style="solid" border-bottom-width="1px"
                                                border-left-style="solid" border-left-width="1px"
                                                border-right-style="solid" border-right-width="1px">  
                                            <fo:block text-align="left">�
                                              <xsl:value-of select="gastosNotariales"/>
                                            </fo:block>
                                          </fo:table-cell>
                                        </fo:table-row> 
                                        <fo:table-row>
                                          <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                border-left-style="solid" border-left-width="1px"
                                                border-right-style="solid" border-right-width="1px">  
                                            <fo:block text-align="left">
                                              3) Total Seguros Asociados :
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                border-left-style="solid" border-left-width="1px"
                                                border-right-style="solid" border-right-width="1px">  
                                            <fo:block text-align="left">�
                                              <xsl:value-of select="montoTotalSeguros"/>
                                            </fo:block>
                                          </fo:table-cell>
                                        </fo:table-row>

                                      <xsl:for-each select="seguros/element">
                                        <fo:table-row>    
                                          <fo:table-cell border-right-style="solid" border-right-width="1px" border-left-style="solid" border-left-width="1px">
                                            <fo:block text-align="left">
                                              <xsl:value-of select="descripcionSeguro"/>
                                            </fo:block>
                                          </fo:table-cell>                                                        
                                          <fo:table-cell margin-left="2mm" border-right-style="solid" border-right-width="1px">
                                            <fo:block text-align="left">
                                              <xsl:value-of select="montoSeguros"/>
                                            </fo:block>
                                          </fo:table-cell>                                                        
                                        </fo:table-row>                                                        
                                      </xsl:for-each> 

                                      <xsl:if test="isTipoAuto = 'true'">
                                        <fo:table-row>
                                          <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                border-bottom-style="solid" border-bottom-width="1px"
                                                border-left-style="solid" border-left-width="1px"
                                                border-right-style="solid" border-right-width="1px">   
                                            <fo:block text-align="left">
                                              4) Garant�a :
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                border-bottom-style="solid" border-bottom-width="1px"
                                                border-left-style="solid" border-left-width="1px"
                                                border-right-style="solid" border-right-width="1px">   
                                            <fo:block text-align="left">
                                              <xsl:value-of select="gastoGarantia"/>
                                            </fo:block>
                                          </fo:table-cell>
                                        </fo:table-row>   
                                        <fo:table-row>
                                          <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                border-bottom-style="solid" border-bottom-width="1px"
                                                border-left-style="solid" border-left-width="1px"
                                                border-right-style="solid" border-right-width="1px">   
                                            <fo:block text-align="left">
                                              5) Tasaci�n :
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                border-bottom-style="solid" border-bottom-width="1px"
                                                border-left-style="solid" border-left-width="1px"
                                                border-right-style="solid" border-right-width="1px">   
                                            <fo:block text-align="left">
                                              <xsl:value-of select="gastoTasacion"/>
                                            </fo:block>
                                          </fo:table-cell>
                                          </fo:table-row>   
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">   
                                              <fo:block text-align="left">
                                                6) Alzamiento :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">   
                                              <fo:block text-align="left">
                                                <xsl:value-of select="gastoAlzamiento"/>
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>   
                                        </xsl:if>

                                          <fo:table-row>    
                                            <fo:table-cell border-top-style="solid" border-top-width="1px">
                                              <fo:block text-align="left"></fo:block>
                                            </fo:table-cell>                                                        
                                            <fo:table-cell border-top-style="solid" border-top-width="1px">
                                              <fo:block text-align="left"></fo:block>
                                            </fo:table-cell>                                                        
                                          </fo:table-row>                                                                                                                                                                                                 

                                        </fo:table-body>
                                      </fo:table>     
                                    </fo:table-cell>
                                    <fo:table-cell>
                                      <fo:block text-align="left">�

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
                                                <fo:block>Cuota</fo:block>
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
                                                <fo:block>Amortizaci�n (<xsl:if test="monedaCredito = '0999'">$</xsl:if><xsl:if test="monedaCredito = '0998'">UF</xsl:if>)</fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell text-align="center" font-weight="bold"
                                                    border-left-style="solid" border-left-width="1px" 
                                                    border-right-style="solid" border-right-width="1px" 
                                                    border-top-style="solid" border-top-width="1px" 
                                                    border-bottom-style="solid" border-bottom-width="1px" 
                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                <fo:block>Inter�s (<xsl:if test="monedaCredito = '0999'">$</xsl:if><xsl:if test="monedaCredito = '0998'">UF</xsl:if>)</fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell text-align="center" font-weight="bold"
                                                    border-left-style="solid" border-left-width="1px" 
                                                    border-right-style="solid" border-right-width="1px" 
                                                    border-top-style="solid" border-top-width="1px" 
                                                    border-bottom-style="solid" border-bottom-width="1px" 
                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                <fo:block>Comisi�n (<xsl:if test="monedaCredito = '0999'">$</xsl:if><xsl:if test="monedaCredito = '0998'">UF</xsl:if>)</fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell text-align="center" font-weight="bold"
                                                    border-left-style="solid" border-left-width="1px" 
                                                    border-right-style="solid" border-right-width="1px" 
                                                    border-top-style="solid" border-top-width="1px" 
                                                    border-bottom-style="solid" border-bottom-width="1px" 
                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                <fo:block>Valor Cuota <xsl:value-of select="numeroCuotas"/>(<xsl:if test="monedaCredito = '0999'">$</xsl:if><xsl:if test="monedaCredito = '0998'">UF</xsl:if>)</fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>
                                          </fo:table-header>
                                        <xsl:for-each select="calendarioPago/element">
                                          <fo:table-body>
                                            <fo:table-row border-top-style="solid" border-top-width="2px">
                                              <fo:table-cell text-align="center"
                                                  border-left-style="solid" border-left-width="1px" 
                                                  border-right-style="solid" border-right-width="1px" 
                                                  border-top-style="solid" border-top-width="1px" 
                                                  border-bottom-style="solid" border-bottom-width="1px" 
                                                  padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
                                              <fo:block>
                                                <fo:inline>
                                                  <xsl:value-of select="cuota"/>/
                                                  <xsl:value-of select="numeroCuotas"/>
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
                                                  <xsl:value-of select="fechaVencimiento"/>
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
                                                  <xsl:value-of select="amortizacion"/>
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
                                                  <xsl:value-of select="interes"/>
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
          <fo:block>�</fo:block>
                  <fo:inline>Notas Importantes:</fo:inline>
        <xsl:if test="msjeCuoton != ''">
          <fo:block>�</fo:block>
                  <fo:inline>o    <xsl:value-of select="msjeCuoton"/></fo:inline>
        </xsl:if>
          <fo:block>�</fo:block>
                  <fo:inline>o    Los valores indicados en la presente simulaci�n de cr�dito, son s�lo referenciales, el valor definitivo de la cuota quedar� informado al otorgamiento del cr�dito.</fo:inline>
          <fo:block>�</fo:block>
                  <fo:inline>o    La entrega de una cotizaci�n, queda sujeta a que el Banco eval�e previamente el riesgo comercial,  y se aprueben las condiciones para el otorgamiento.</fo:inline>
          <fo:block>�</fo:block>                            
                  <fo:inline>o    La aprobaci�n y condiciones definitivas de un cr�dito simulado y/o solicitado est�n sujetas a confirmaci�n de antecedentes financieros y comerciales al momento de la evaluaci�n para el curse definitivo del cr�dito, el que puede ser aprobado o rechazado.</fo:inline>
          <fo:block>�</fo:block>
                  <fo:inline>o    Los seguros contratados, son cubiertos por  BCI Seguros Generales S.A y BCI Seguros Vida S.A.</fo:inline>                            
          <fo:block>�</fo:block>
                  <fo:inline>o    Los gastos notariales corresponden a una estimaci�n para una operaci�n de cr�dito de consumo en Santiago, pudiendo variar para operaciones de regiones cuyos aranceles depender�n de la localidad que se realice la operaci�n.</fo:inline>                                                        
          <fo:block>�</fo:block>
                  <fo:inline>o    CAE (Carga Anual Equivalente): Es el indicador que, expresado en forma de porcentaje, revela el costo de un cr�dito en per�odo anual, cualquiera que sea el plazo pactado para el pago de la obligaci�n. La CAE contempla el tipo de inter�s, todos los gastos asociados al cr�dito y el plazo de la operaci�n; y se calcula sobre base anual.</fo:inline>
          <fo:block>�</fo:block>
                  <fo:inline>o    CTC (Costo Total del Cr�dito): Es el indicador que, expresado en una suma de dinero, da cuenta del monto total a pagar por el cr�dito solicitado. Se calcula sumando el monto del cr�dito, lo adeudado por tasa de inter�s y los gastos asociados al cr�dito.</fo:inline>
          <fo:block>�</fo:block>
                  <fo:inline>o    CAE y el CTC, se calcula  de acuerdo a las f�rmulas indicadas en el Decreto N�43 del Ministerio de Econom�a Fomento y Turismo que aprob� el reglamento sobre informaci�n al Consumidor de Cr�ditos de Consumo.</fo:inline>
          <fo:block>�</fo:block>
          <xsl:if test="producto = 'CON500'">
                  <fo:inline>o    Los Cr�ditos Universales de consumo son cr�ditos a tasa fija denominados en pesos, otorgados a personas naturales, que no requieren garant�as reales.</fo:inline>                                                        
          <fo:block>�</fo:block>
          </xsl:if>

        </fo:block>                                                                     
    </xsl:template>

</xsl:stylesheet>