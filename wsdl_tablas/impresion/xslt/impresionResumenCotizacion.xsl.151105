<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2011/07/18 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <!-- <xsl:param name="IMG_URL"/>-->
    <xsl:template match="impresionResumenCotizacion"> 
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
        
            <fo:layout-master-set>
                <fo:simple-page-master master-name="cotizacion" page-height="280.0mm" page-width="216.0mm" margin-top="10mm" margin-bottom="10mm" margin-right="15mm" margin-left="20mm" border="thick solid red">
                    <fo:region-before extent="20mm" />
                    <fo:region-after  extent="7mm" />
                    <fo:region-body margin-top="20mm" margin-bottom="10mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="cotizacion" font-size="9pt" font-family="Arial, Helvetica, sans-serif" initial-page-number="1">
                <fo:flow flow-name="xsl-region-body">
                    <xsl:call-template name="bodyCotizacion"/>
                </fo:flow>
            </fo:page-sequence>
            
        </fo:root>
    </xsl:template>                
                
    <xsl:template name="bodyCotizacion">
    
                  <fo:table border-collapse="collapse">
                  <fo:table-column column-width="50mm" />
                  <fo:table-column column-width="50mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell text-align="left">
                                    <fo:block >
                                      <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="logoBciSomosDiferentes"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block >

                                    </fo:block>
                            </fo:table-cell>
                            
                      </fo:table-row>
                </fo:table-body>
                </fo:table>

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
                                      <fo:block text-align="left">
                                        <fo:block font-weight="bold" text-align="left">
                                          Resumen Cotización
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
                                                  Número de Operación :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="caiOperacion"/><xsl:value-of select="iicOperacion"/>
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
                                                  <xsl:value-of select="glosaProducto"/>
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
                                                  <xsl:value-of select="descripcionMoneda"/>
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
                                                  <xsl:value-of select="montoLiquidoCredito"/> 
                                                </fo:block>
                                            </fo:table-cell>
                                            </fo:table-row>
                                            
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  montoBrutoCredito :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="montoBrutoCredito"/>
                                                </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>
                                                                                       
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Impuesto D.L. 3475 :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
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
                                                  Gastos Notariales :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
<!--                                                    $<xsl:value-of select='format-number(gastosNotaria, "###","decimal")'/> -->
                                                  <xsl:value-of select="gastosNotaria"/>
                                                </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>                                          
                                          
                                          
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  oficina :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
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
                                                  ejecutivo :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="ejecutivo"/>
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
                                                Fecha de Colocación :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left"> 
                                                <xsl:value-of select="fechaCotizacion"/>
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                Tasa de Interés :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left"> 
                                               <xsl:value-of select='format-number(tasaCreditoSolicitada, "###,##","decimal")'/>%
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
                                              <fo:block text-align="left"> 
                                               <xsl:value-of select='format-number(indicadorCae, "###,##","decimal")'/>%
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>
                                          
                                            <fo:table-row>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left">
                                                  Costo Total Crédito :
                                                </fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select="costoTotalCredito"/>
                                                </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>                                          
                                          
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                Tasa de Interés Anual :
                                              </fo:block>
                                            </fo:table-cell>
                                              <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                    border-left-style="solid" border-left-width="1px"
                                                    border-right-style="solid" border-right-width="1px">  
                                                <fo:block text-align="left"> 
                                                  <xsl:value-of select='format-number(tasaFinal, "###,##","decimal")'/>%
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
                                              <fo:block text-align="left"> 
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
                                                N° Cuenta Cargo :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left"> 
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
                                              <fo:block text-align="left"> 
                                                <xsl:value-of select="valorCuota"/>
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>      
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                Plazo en meses :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left"> 
                                                <xsl:value-of select="numeroDeCuotas"/>
                                              </fo:block>
                                            </fo:table-cell>
                                          </fo:table-row>
                                          <fo:table-row>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left">
                                                Plazo Tot. Cre. (meses) :
                                              </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border-top-style="solid" border-top-width="1px"
                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                  border-left-style="solid" border-left-width="1px"
                                                  border-right-style="solid" border-right-width="1px">  
                                              <fo:block text-align="left"> 
                                                <xsl:value-of select="plazoCredito"/>
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
                  

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt" display-align="center">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" padding-before="5mm">
                      Amortización de Capital e Intereses.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="5mm">
                      El Cliente se obliga a pagar al Banco en cualquiera de sus sucursales, BCI o BCI Nova, según donde se haya 
                      otorgado este crédito, la suma indicada en la cláusula precedente, en las cuotas, por los montos y en las fechas 
                      que se indican a continuación:  
                  </fo:block>

                  <fo:block font-size="10pt" space-after="3mm" display-align="center">
                    <fo:table table-layout="fixed" display-align="center">
                      <fo:table-column column-width="30mm"/>
                      <fo:table-column column-width="30mm"/>
                      <fo:table-column column-width="32mm"/>
                      <fo:table-column column-width="32mm"/>
                      <fo:table-column column-width="32mm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                Cuota N°
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                Fecha de vencimiento
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                Amortización de capital
                            </fo:block>
                            <fo:block font-weight="bold" text-align="center">
                                <fo:inline><xsl:apply-templates select="glsMonCreAbr" /></fo:inline>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                Intereses
                            </fo:block>
                            <fo:block font-weight="bold" text-align="center">
                                <fo:inline><xsl:apply-templates select="glsMonCreAbr" /></fo:inline>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                Monto de la cuota
                            </fo:block>
                            <fo:block font-weight="bold" text-align="center">
                                <fo:inline><xsl:apply-templates select="glsMonCreAbr" /></fo:inline>
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>

                        <xsl:for-each select="calendario/element">
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt gray">
                              <fo:block text-align="center">
                                &#x00A0;<xsl:value-of select="cuota"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray">
                              <fo:block text-align="center">
                                &#x00A0;<xsl:value-of select="fechaVenc"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray">
                              <fo:block text-align="center">
                                &#x00A0;<xsl:value-of select="capital"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray">
                              <fo:block text-align="center">
                                &#x00A0;<xsl:value-of select="intereses"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray">
                              <fo:block text-align="center">
                                &#x00A0;<xsl:value-of select="montoCuota"/>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </xsl:for-each>    
                      </fo:table-body>
                    </fo:table>
                  </fo:block>

                  <fo:block text-align="justify" line-height="15pt" padding-after="5mm">
                      <xsl:value-of select="calendario/msjeCuoton"/>
                  </fo:block>

                  <fo:block text-align="justify" line-height="15pt" padding-after="5mm">
                      El Crédito devengará una tasa de interés fija del <fo:inline><xsl:apply-templates select="tasaCreditoSolicitada" /></fo:inline>% <fo:inline><xsl:apply-templates select="glsPeriodoBaseTasa" /></fo:inline>, la que se devengará a partir de esta 
                      fecha y durante todo el plazo pactado.
                  </fo:block>

                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
                            

                     
                              
          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block font-size="10pt" space-after="1mm">
                    <fo:table table-layout="fixed">
                      <fo:table-column column-width="proportional-column-width(75)"/>
                      <fo:table-column column-width="proportional-column-width(25)"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                SEGUROS CONTRATADOS TITULAR
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="center">
                                PRIMA BRUTA
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>                        
                        
                        <xsl:if test="count(seguros/seguroTitular) > 0">
                        <xsl:for-each select="seguros/seguroTitular">
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="left">
                                <fo:inline>
                                    &#x00A0;<xsl:value-of select="descripcion"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="left">
                                <fo:inline>
                                    &#x00A0;<xsl:value-of select="montoPrima"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </xsl:for-each>
                        </xsl:if>
                        
                        <xsl:if test="count(seguros/seguroTitular) = 0">
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="center">
                                Sin seguros contratados Titular.
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="left">
                                <fo:inline>
                                    &#x00A0;
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </xsl:if>
                                                
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
                
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block font-size="10pt" space-after="1mm">
                    <fo:table table-layout="fixed">
                      <fo:table-column column-width="proportional-column-width(75)"/>
                      <fo:table-column column-width="proportional-column-width(25)"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                SEGUROS CONTRATADOS AVAL
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="center">
                                PRIMA BRUTA
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row> 
                                               
                        <xsl:if test="count(seguros/seguroAval) > 0">
                        <xsl:for-each select="seguros/seguroAval">
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="left">
                                <fo:inline>
                                    &#x00A0;<xsl:value-of select="descripcion"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="left">
                                <fo:inline>
                                    &#x00A0;<xsl:value-of select="montoPrima"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </xsl:for-each> 
                        </xsl:if>
                        
                        <xsl:if test="count(seguros/seguroAval) = 0">
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="center">
                                Sin seguros contratados Aval.
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="left">
                                <fo:inline>
                                    &#x00A0;
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </xsl:if>
                           
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
                        
                                                                     
    </xsl:template>

</xsl:stylesheet>