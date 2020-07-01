<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2011/07/18 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <!-- <xsl:param name="IMG_URL"/>-->
    <xsl:template match="impresionCreditoConsumoCaev">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

            <fo:layout-master-set>
                <fo:simple-page-master master-name="cotizacion" page-height="330mm" page-width="215.9mm" margin-top="10mm" margin-bottom="20mm" margin-right="10mm" margin-left="10mm">
                    <fo:region-before region-name="xsl-region-before" display-align="after" extent="15mm"/>
                    <fo:region-after region-name="xsl-region-after" display-align="before" extent="15mm"/>
                    <fo:region-body margin-top="20mm" margin-bottom="25mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>           

            <fo:page-sequence master-reference="cotizacion" font-size="9pt" font-family="Arial, Helvetica, sans-serif" force-page-count="no-force" initial-page-number="1">
                <fo:static-content flow-name="xsl-region-before"></fo:static-content>            
                <fo:static-content flow-name="xsl-region-after" >
                    <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                        <fo:table-column column-width="40%"/>
                        <fo:table-column column-width="60%"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
                                        Copia Banco
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="right" font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
                                        <fo:page-number/> / <fo:page-number-citation ref-id="theEndBanco"/>
                                    </fo:block>
                                </fo:table-cell>                                
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>                    
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Arial, Helvetica, sans-serif">         
                    <xsl:call-template name="bodyCaev"/>
                    <fo:block id="theEndBanco"/>
                </fo:flow>
            </fo:page-sequence>

            <fo:page-sequence master-reference="cotizacion" font-size="9pt" font-family="Arial, Helvetica, sans-serif" force-page-count="no-force" initial-page-number="1">
                <fo:static-content flow-name="xsl-region-before"></fo:static-content>            
                <fo:static-content flow-name="xsl-region-after" >
                    <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                        <fo:table-column column-width="40%"/>
                        <fo:table-column column-width="60%"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
                                        Copia Cliente
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="right" font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
                                        <fo:page-number/> / <fo:page-number-citation ref-id="theEndCliente"/>
                                    </fo:block>
                                </fo:table-cell>                                
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>                    
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                    <xsl:call-template name="bodyCaev"/>
                    <fo:block id="theEndCliente"/>
                </fo:flow>
            </fo:page-sequence>   

        </fo:root>
    </xsl:template>

    <xsl:template name="bodyCaev">
                    <fo:block>
                        <fo:external-graphic vertical-align="middle" height="15mm" width="30mm">
                            <xsl:attribute name="src">
                                <xsl:value-of select="rutaImagen"/>
                            </xsl:attribute>
                        </fo:external-graphic> 
                    </fo:block>
                    <fo:block>
                        <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                                <fo:table-row >
                                    <fo:table-cell text-align="center" 
                                                   border-top-style="solid" border-top-width="1px"
                                                   border-bottom-style="solid" border-bottom-width="1px"
                                                   border-left-style="solid" border-left-width="1px"
                                                   border-right-style="solid" border-right-width="1px">
                                        <fo:block>

                      <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                        <fo:table-column column-width="100%" column-number="1"/>
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block font-weight="bold" font-size="9pt" font-family="Arial, Helvetica, sans-serif " space-before="2mm" text-align="center" border-bottom-style="solid" border-bottom-width="1px">
                                Comunicación Trimestral Crédito de Consumo
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

                                <fo:table text-align="center" font-family="Arial, Helvetica, sans-serif " table-layout="fixed" width="100%" border-collapse="collapse">                                 
                                  <fo:table-column column-width="proportional-column-width(65)" column-number="1"/>
                                  <fo:table-column column-width="proportional-column-width(35)" column-number="2"/>
                                  <fo:table-body>

                                    <fo:table-row font-weight="bold" font-size="14pt">
                                      <fo:table-cell border-top-style="solid" border-top-width="0px"
                                              border-bottom-style="solid" border-bottom-width="0px"
                                              border-left-style="solid" border-left-width="0px"
                                              border-right-style="solid" border-right-width="0px">  
                                        <fo:block>

                                        </fo:block>
                                      </fo:table-cell>
                                      <fo:table-cell padding-top="1mm" border-top-style="solid" border-top-width="1px"
                                              border-bottom-style="solid" border-bottom-width="1px"
                                              border-left-style="solid" border-left-width="1px"
                                              border-right-style="solid" border-right-width="1px">  
                                        <fo:block> 
                                            CAEV:                                           
                                            <xsl:if test="caev > '0.0'">
                                                <xsl:value-of select='format-number(caev, "###.###.##0,00","decimal")'/> %
                                            </xsl:if>
                                            <xsl:if test="'0.0' >= caev">
                                                -- %
                                            </xsl:if>                                            
                                        </fo:block>
                                      </fo:table-cell>
                                    </fo:table-row>                                     
                                  </fo:table-body>
                                </fo:table> 

                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>  
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="center" space-before="5mm"
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">

                                                                <fo:table font-family="Arial, Helvetica, sans-serif " table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="proportional-column-width(65)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(35)" column-number="2"/>
                                                                    <fo:table-body>
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Nombre Titular / Fecha
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="nombreTitular"/>/ <xsl:value-of select="fechaCotizacion"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </fo:table-body>
                                                                </fo:table> 

                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>   
                                                    
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="center" space-before="5mm"
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">

                                                                <fo:table font-family="Arial, Helvetica, sans-serif " table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="proportional-column-width(65)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(35)" column-number="2"/>
                                                                    <fo:table-body>
                                                                        <fo:table-row font-size="9pt" color="rgb(255,255,255)" background-color="rgb(0,0,120)"
                                                                                      border-top-style="solid" border-top-width="1px"
                                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-left-style="solid" border-left-width="1px"
                                                                                      border-right-style="solid" border-right-width="1px">
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="left">
                                                                                    I. Producto Principal
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="right"> 
                                                                                     
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                    
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Plazo del Crédito Pendiente (meses)
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="plazoCredito"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Número de Cuotas
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="cuotaVigente"/>/<xsl:value-of select="numeroCuotas"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                        
                                                                        
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Saldo del Crédito
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="saldoCredito"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row> 
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Valor de la Cuota
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="valorCuota"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                          
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Fecha del Próximo Pago
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="fecProxPago"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>    
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Costo Total de Prepago
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="costoTotalPrepago"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Carga Anual Equivalente Vigente (CAEV)
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:if test="caev > '0.0'">
                                                                                        <xsl:value-of select='format-number(caev, "###.###.##0,00","decimal")'/> %
                                                                                    </xsl:if>
                                                                                    <xsl:if test="'0.0' >= caev">
                                                                                        -- %
                                                                                    </xsl:if>  
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                         
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Garantías Vigentes
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>
                                                                            
                                                                                <xsl:if test="count(garantiasVigentes/garantia) > 0">
                                                                                    <xsl:for-each select="garantiasVigentes/garantia">
                                                                                    <fo:block text-align="center"> 
                                                                                        <xsl:value-of select="descripcion"/>
                                                                                    </fo:block> 
                                                                                    </xsl:for-each>
                                                                                </xsl:if>
                                                                                <xsl:if test="count(garantiasVigentes/garantia) = 0">
                                                                                    <fo:block text-align="center"> 
                                                                                        Sin Garantía
                                                                                    </fo:block>
                                                                                </xsl:if>                                                                                  

                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                                                                                                                                                                                                                                            
                                                                    </fo:table-body>
                                                                </fo:table> 

                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>    
                                                    
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="center" space-before="5mm"
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">

                                                                <fo:table font-family="Arial, Helvetica, sans-serif " table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="proportional-column-width(65)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(35)" column-number="2"/>
                                                                    <fo:table-body>
                                                                        <fo:table-row font-size="9pt" color="rgb(255,255,255)" background-color="rgb(0,0,120)"
                                                                                      border-top-style="solid" border-top-width="1px"
                                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-left-style="solid" border-left-width="1px"
                                                                                      border-right-style="solid" border-right-width="1px">
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="left">
                                                                                    II. Historial
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="right"> 
                                                                                     
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                                                                                            
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Número de Cuotas pagadas
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="numCuotasPagadas"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Número de Cuotas Vencidas no pagadas
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="numCuotasVencNoPago"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>   
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Monto Vencido no Pagado
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="montoVencNoPago"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row> 
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Detalle:
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <xsl:for-each select="cuotasNoPago/cuotaNP">
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="cuota"/>
                                                                                </fo:block> 
                                                                                </xsl:for-each>                                                                               
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                                                                                          
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left" font-weight="bold"  border-top-style="solid" border-top-width="1px">
                                                                                    Monto Cargado por atraso
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center" font-weight="bold" border-top-style="solid" border-top-width="1px"> 
                                                                                    <xsl:value-of select="montoCargAtraso"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        
                                                                         <xsl:for-each select="cscs/csc">
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Cuota  <xsl:value-of select="nroCancelacion"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="intMora"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>   
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Cobranza
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="honorarios"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        </xsl:for-each>
                                                                        
                                                                        <fo:table-row font-size="9pt" font-weight="bold">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left" border-top-style="solid" border-top-width="1px">
                                                                                    Monto total Atrasado
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center" border-top-style="solid" border-top-width="1px"> 
                                                                                    <xsl:value-of select="montoTotalAtrasado"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                                                                    </fo:table-body>
                                                                </fo:table> 

                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>                                                    
                                                    
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="center" space-before="5mm"
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">

                                                                <fo:table font-family="Arial, Helvetica, sans-serif " table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="proportional-column-width(65)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(35)" column-number="2"/>
                                                                    <fo:table-body>
                                                                        <fo:table-row font-size="9pt" color="rgb(255,255,255)" background-color="rgb(0,0,120)"
                                                                                      border-top-style="solid" border-top-width="1px"
                                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-left-style="solid" border-left-width="1px"
                                                                                      border-right-style="solid" border-right-width="1px">
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="left">
                                                                                    III. Gastos o Cargos por Productos o servicios Voluntariamente Contratados
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="right"> 
                                                                                     
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                    
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                     
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row> 
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Valor Cuota de Referencia
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="cuotaReferencia"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                          
                                                                        <xsl:for-each select="seguros/seguro">
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>  
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left" font-weight="bold">
                                                                                    Nombre de Seguro
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center" font-weight="bold"> 
                                                                                    <xsl:value-of select="descripcion"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row> 
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Costo Total
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="monto"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Nombre proveedor del servicio asociado
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="compania"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Cobertura
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="cobertura"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                         <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Estado
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="estadoSeguro"/><xsl:if test="fechaSeguro != '' or fechaSeguro != null">(<xsl:value-of select="fechaSeguro"/>)</xsl:if>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </xsl:for-each>                                                                                                                                                                                                                                                                                                                                                                                                           
                                                                    </fo:table-body>
                                                                </fo:table> 
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>  
                                                    
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="center" space-before="5mm"
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">

                                                                <fo:table font-family="Arial, Helvetica, sans-serif " table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="proportional-column-width(65)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(35)" column-number="2"/>
                                                                    <fo:table-body>
                                                                        <fo:table-row font-size="9pt" color="rgb(255,255,255)" background-color="rgb(0,0,120)"
                                                                                      border-top-style="solid" border-top-width="1px"
                                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-left-style="solid" border-left-width="1px"
                                                                                      border-right-style="solid" border-right-width="1px">
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="left">
                                                                                    IV. Condiciones de Prepago
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                    
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="left">
                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Cargo Prepago
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="cargoPrepago"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row> 
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Valor UF
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="valorUf"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Plazo de Aviso para pago anticipado o Prepago
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="plazoAvisoPrepago"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                          
                                                                    </fo:table-body>
                                                                </fo:table> 
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>                                                                                                                     
                                                                
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="center" space-before="5mm"
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">

                                                                <fo:table font-family="Arial, Helvetica, sans-serif " table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="proportional-column-width(65)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(35)" column-number="2"/>
                                                                    <fo:table-body>
                                                                        <fo:table-row font-size="9pt" color="rgb(255,255,255)" background-color="rgb(0,0,120)"
                                                                                      border-top-style="solid" border-top-width="1px"
                                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-left-style="solid" border-left-width="1px"
                                                                                      border-right-style="solid" border-right-width="1px">
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="left">
                                                                                    V. Costos por Atraso
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="right"> 
                                                                                     
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                    
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Interés Moratorio (%)
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="interesMora"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>  
                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left">
                                                                                    Gastos de Cobranza (%)
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                      <fo:block text-align="center" 
                                                                                border-top-style="solid" border-top-width="1px"
                                                                                border-right-style="solid" border-right-width="1px">
          
                                                                          <fo:table>                                                                    
                                                                              <fo:table-column column-width="proportional-column-width(50)" column-number="1"/>
                                                                              <fo:table-column column-width="proportional-column-width(50)" column-number="2"/>
                                                                              <fo:table-body>
                                                                                  <fo:table-row font-size="9pt">
                                                                                      <fo:table-cell border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-right-style="solid" border-right-width="1px">  
                                                                                          <fo:block text-align="left">
                                                                                              Monto Deuda
                                                                                          </fo:block>
                                                                                      </fo:table-cell>
                                                                                        <fo:table-cell border-bottom-style="solid" border-bottom-width="1px"
                                                                                                border-left-style="solid" border-left-width="1px"
                                                                                                border-right-style="solid" border-right-width="1px"> 
                                                                                          <fo:block text-align="center"> 
                                                                                              %Honorarios
                                                                                          </fo:block>
                                                                                      </fo:table-cell>
                                                                                  </fo:table-row>
                                                                                  <fo:table-row font-size="9pt">
                                                                                      <fo:table-cell border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-right-style="solid" border-right-width="1px">  
                                                                                          <fo:block text-align="left">
                                                                                              Hasta 10 UF
                                                                                          </fo:block>
                                                                                      </fo:table-cell>
                                                                                        <fo:table-cell border-bottom-style="solid" border-bottom-width="1px"
                                                                                                border-left-style="solid" border-left-width="1px"
                                                                                                border-right-style="solid" border-right-width="1px"> 
                                                                                          <fo:block text-align="center"> 
                                                                                              <xsl:value-of select="cobranzaPrimero"/>
                                                                                          </fo:block>
                                                                                      </fo:table-cell>
                                                                                  </fo:table-row>
                                                                                  <fo:table-row font-size="9pt">
                                                                                      <fo:table-cell border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-right-style="solid" border-right-width="1px">  
                                                                                          <fo:block text-align="left">
                                                                                              Sobre 10 UF y hasta 50 UF
                                                                                          </fo:block>
                                                                                      </fo:table-cell>
                                                                                        <fo:table-cell border-bottom-style="solid" border-bottom-width="1px"
                                                                                                border-left-style="solid" border-left-width="1px"
                                                                                                border-right-style="solid" border-right-width="1px">   
                                                                                          <fo:block text-align="center"> 
                                                                                              <xsl:value-of select="cobranzaSegundo"/>
                                                                                          </fo:block>
                                                                                      </fo:table-cell>
                                                                                  </fo:table-row> 
                                                                                  <fo:table-row font-size="9pt">
                                                                                      <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                          <fo:block text-align="left">
                                                                                              Sobre 50 UF
                                                                                          </fo:block>
                                                                                      </fo:table-cell>
                                                                                        <fo:table-cell border-left-style="solid" border-left-width="1px"
                                                                                                border-right-style="solid" border-right-width="1px">  
                                                                                          <fo:block text-align="center"> 
                                                                                              <xsl:value-of select="cobranzaTercero"/>
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
                                                    
                                                    

                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="center" space-before="5mm"
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">

                                                                <fo:table font-family="Arial, Helvetica, sans-serif " table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="proportional-column-width(100)" column-number="1"/>
                                                                    <fo:table-body>
                                                                        <fo:table-row font-size="9pt" color="rgb(255,255,255)" background-color="rgb(0,0,120)"
                                                                                      border-top-style="solid"    border-top-width="1px"
                                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-left-style="solid"   border-left-width="1px"
                                                                                      border-right-style="solid"  border-right-width="1px">
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="left">
                                                                                    Definiciones Legales
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>                                                                    

                                                                        <fo:table-row font-size="9pt">
                                                                            <fo:table-cell>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Carga Anual Equivalente Vigente o "CAEV": </fo:inline>
                                                                                Es el indicador expresado en forma de porcentaje que posibilita al Consumidor o Cliente comparar, determinar y 
                                                                                verificar la conveniencia de contratar un nuevo Crédito de Consumo para pagar anticipadamente o prepagar un crédito vigente.
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Plazo Pendiente del Crédito de Consumo: </fo:inline>
                                                                                El periodo que resta o falta para el término de la vigencia del Crédito de Consumo o de su extinción.
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Saldo del Crédito: </fo:inline>
                                                                                La suma de dinero compuesta por el monto de capital, intereses y Gastos o Cargos Propios del Crédito y los Gastos 
                                                                                o Cargos por Productos o Servicios Voluntariamente Contratados si los hubiere, que se encuentran pendientes de pago 
                                                                                y con plazo vigente.
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Valor de la Cuota: </fo:inline>
                                                                                El monto que se obliga a pagar un Cliente al contratar un Crédito de Consumo en forma periódica, que considera todos 
                                                                                los intereses, amortizaciones, Gastos o Cargos Propios del Crédito y Gastos o Cargos por Productos o Servicios 
                                                                                Voluntariamente Contratados.
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Fecha de Próximo Pago: </fo:inline>
                                                                                Fecha en que vence el plazo para pagar la siguiente cuota establecida en una secuencia de pagos periódicos.
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Costo Total del Pago Anticipado o Prepago: </fo:inline>
                                                                                El monto total a pagar por el Consumidor, para extinguir la obligación anticipadamente, incluida la Comisión por 
                                                                                Pago Anticipado o Prepago.
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Número de Cuotas Pagadas: </fo:inline>
                                                                                La cantidad de cuotas periódicas de un Crédito de Consumo que se han extinguido por medio del pago, a una fecha 
                                                                                determinada.
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Número de Cuotas Vencidas y no Pagadas: </fo:inline>
                                                                                La cantidad de cuotas periódicas de un Crédito de Consumo que se encuentran pendientes de pago desde la fecha 
                                                                                establecida para ello en el contrato, a una fecha determinada.
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Monto Vencido y no Pagado: </fo:inline>
                                                                                La suma de dinero calculada a una fecha determinada, de la o las Cuotas Vencidas y no Pagadas. 
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Monto por Mora o Atraso: </fo:inline>
                                                                                La suma de dinero que debe asumir el Consumidor por concepto de intereses moratorios, por no haber pagado las 
                                                                                cuotas del Crédito de Consumo dentro del plazo establecido en el contrato.
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Monto Total Atrasado: </fo:inline>
                                                                                Corresponden a la suma del Monto Vencido y no Pagado y el Monto por Mora o Atraso.
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Valor de la Cuota Básica de Referencia: </fo:inline>
                                                                                El monto que se obliga a pagar un Cliente al contratar un Crédito de Consumo en forma periódica, que considera 
                                                                                sólo los intereses, amortizaciones y Gastos o Cargos Propios del Crédito.
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Comisión por Pago Anticipado o Prepago: </fo:inline>
                                                                                El valor extraordinario y voluntario que asume el Consumidor al pagar en forma anticipada el Crédito de Consumo, 
                                                                                sea en forma total o parcial, esto es, antes del plazo establecido para ello. Este cargo se rige por el Artículo 
                                                                                10 de la Ley N° 18.010. 
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Interés Moratorio: </fo:inline>
                                                                                La tasa de interés que se aplica por no pagar una obligación en la fecha estipulada.
                                                                                </fo:block>
                                                                                <fo:block text-align="left" padding-top="5mm">
                                                                                <fo:inline font-weight = "bold">Gastos de Cobranza: </fo:inline>
                                                                                El monto correspondiente al costo de la cobranza extrajudicial de una obligación vencida y no pagada en la fecha 
                                                                                establecida en el contrato, traspasado por el Banco al Cliente, y que sólo se puede cobrar si han transcurrido 
                                                                                veinte días corridos  desde el atraso, según lo dispuesto en el artículo 37 de la Ley de Protección del Consumidor. 
                                                                                En caso de estar en presencia de una operación de crédito de dinero cuyo capital sea igual o inferior a doscientas 
                                                                                unidades de fomento no podrá en caso alguno hacerse exigible la obligación en forma anticipada, sino una vez cumplidos 
                                                                                sesenta días corridos desde que el deudor incurra en mora o simple retardo en el pago.
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
                                
                                
                                <fo:table-row font-size="9pt">
                                    <fo:table-cell> 
                                        <fo:block text-align="left" space-before="5mm">
                                            Infórmese sobre la garantía estatal de los depósitos en su banco o en www.CMFChile.cl
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <xsl:if test="isCodMoneUf = '1'">
                                <fo:table-row font-size="9pt">
                                    <fo:table-cell padding-right="2pt" padding-left="2pt" padding-top="4pt" padding-bottom="2pt">
                                        <fo:block text-align="left">
                                            
                                        </fo:block>                                     
                                        <fo:block text-align="left">
                                            Los valores en pesos señalados en este documento, se han calculado al valor de la UF del día <xsl:value-of select="fechaCotizacion"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                </xsl:if>                                    
                               
                            </fo:table-body>
                        </fo:table>
                    </fo:block>                               
    </xsl:template>
</xsl:stylesheet> 
