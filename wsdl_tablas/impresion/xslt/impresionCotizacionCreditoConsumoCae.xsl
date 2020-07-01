<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2011/07/18 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <!-- <xsl:param name="IMG_URL"/>-->
    <xsl:template match="impresionCotizacionCreditoConsumoCae">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
        
            <fo:layout-master-set>
                <fo:simple-page-master master-name="cotizacion" page-height="330mm" page-width="215.9mm" margin-top="10mm" margin-bottom="20mm"  margin-right="10mm" margin-left="10mm">
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
                                    <fo:block text-align="right" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
                                    </fo:block>
                                </fo:table-cell> 
                                <fo:table-cell>
                                    <fo:block text-align="right" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
                                        Firma Cliente: ___________________
                                    </fo:block>
                                </fo:table-cell>                                                              
                            </fo:table-row>  
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                </fo:table-cell>                                                              
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
                                        Copia Banco
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="right" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
                                        <fo:page-number/> / <fo:page-number-citation ref-id="theEndBanco"/>
                                    </fo:block>
                                </fo:table-cell>                                
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
                    <xsl:call-template name="bodyCae"/>
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
                                    <fo:block text-align="right" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
                                    </fo:block>
                                </fo:table-cell> 
                                <fo:table-cell>
                                    <fo:block text-align="right" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
                                        Firma Cliente: ___________________
                                    </fo:block>
                                </fo:table-cell>                                                              
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                </fo:table-cell>                                                              
                            </fo:table-row>
                            <fo:table-row>                          
                                <fo:table-cell>
                                    <fo:block text-align="left" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
                                        Copia Cliente
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="right" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
                                        <fo:page-number/> / <fo:page-number-citation ref-id="theEndCliente"/>
                                    </fo:block>
                                </fo:table-cell>                                
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>                   
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
                    <xsl:call-template name="bodyCae"/>
                    <fo:block id="theEndCliente"/>
                </fo:flow>
            </fo:page-sequence>   
                  
        </fo:root>
    </xsl:template>
    
    <xsl:template name="bodyCae">
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
                                                    <fo:block font-weight="bold" font-size="9pt" font-family="Arial, Helvetica, sans-serif" space-before="2mm" text-align="center" border-bottom-style="solid" border-bottom-width="1px">
                                                        Hoja Resumen Cr�dito de Consumo
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

                                                        <fo:table text-align="center" font-family="Arial, Helvetica, sans-serif" table-layout="fixed" width="100%" border-collapse="collapse">                                                                  
                                                            <fo:table-column column-width="proportional-column-width(60)" column-number="1"/>
                                                            <fo:table-column column-width="proportional-column-width(40)" column-number="2"/>
                                                            <fo:table-body>
                                                                <fo:table-row font-size="28pt" font-weight="bold">
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
                                                                        <fo:block>�
                                                                            CAE: 
                                                                            <xsl:if test="indicadorCae != '0.0'">
                                                                                <xsl:value-of select='format-number(indicadorCae, "###.###.##0,00","decimal")'/>%
                                                                            </xsl:if>
                                                                            <xsl:if test="indicadorCae = '0.0'">
                                                                                -----
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

                                                        <fo:table font-family="Arial, Helvetica, sans-serif" table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                            <fo:table-column column-width="proportional-column-width(60)" column-number="1"/>
                                                            <fo:table-column column-width="proportional-column-width(40)" column-number="2"/>
                                                            <fo:table-body>
                                                                <fo:table-row font-size="9pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Nombre Titular
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="nombreTitular"/> 
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row font-size="9pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Fecha
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="fechaCotizacion"/>
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

                                                        <fo:table font-family="Arial, Helvetica, sans-serif" table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                            <fo:table-column column-width="proportional-column-width(60)" column-number="1"/>
                                                            <fo:table-column column-width="proportional-column-width(40)" column-number="2"/>
                                                            <fo:table-body>
                                                                <fo:table-row font-size="14pt" color="rgb(255,255,255)" background-color="rgb(0,0,120)"
                                                                              border-top-style="solid" border-top-width="1px"
                                                                              border-bottom-style="solid" border-bottom-width="1px"
                                                                              border-left-style="solid" border-left-width="1px"
                                                                              border-right-style="solid" border-right-width="1px">
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="left">
                                                                            I. Producto Principal (Cl�usula Primera y Segunda)
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="right">�
                                                                             
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>                                                                    
                                                                <fo:table-row font-size="14pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Monto L�quido del Cr�dito
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="montoLiquidoCredito"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row font-size="14pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Plazo del Cr�dito
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="plazoCredito"/> meses
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>   
                                                                <fo:table-row font-size="14pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Valor de la Cuota
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="valorCuota"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row> 
                                                                <fo:table-row font-size="14pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Costo total del Cr�dito
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="costoTotalCredito"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>    
                                                                <fo:table-row font-size="14pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            CAE
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:if test="indicadorCae != '0.0'">
                                                                                <xsl:value-of select='format-number(indicadorCae, "###.###.##0,00","decimal")'/>%
                                                                            </xsl:if>
                                                                            <xsl:if test="indicadorCae = '0.0'">
                                                                                -----
                                                                            </xsl:if>                                                                                
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row font-size="14pt">
                                                                  <xsl:if test="garantiasAsociadas != 'SIN GARANTIA'">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Garant�as Vigentes
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            SI
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                  </xsl:if>
                                                                </fo:table-row>                                                                
                                                                <fo:table-row font-size="14pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Garant�as asociadas
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="garantiasAsociadas"/>
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

                                                        <fo:table font-family="Arial, Helvetica, sans-serif" table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                            <fo:table-column column-width="proportional-column-width(60)" column-number="1"/>
                                                            <fo:table-column column-width="proportional-column-width(40)" column-number="2"/>
                                                            <fo:table-body>
                                                                <fo:table-row font-size="9pt" color="rgb(255,255,255)" background-color="rgb(0,0,120)"
                                                                              border-top-style="solid" border-top-width="1px"
                                                                              border-bottom-style="solid" border-bottom-width="1px"
                                                                              border-left-style="solid" border-left-width="1px"
                                                                              border-right-style="solid" border-right-width="1px">
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="left">
                                                                            II. Gastos o Cargos Propios del Cr�dito (Cl�usula D�cima)
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="right">�
                                                                             
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row> 
                                                                <fo:table-row font-size="9pt" color="rgb(255,255,255)" background-color="rgb(51,102,255)"
                                                                              border-top-style="solid" border-top-width="1px"
                                                                              border-bottom-style="solid" border-bottom-width="1px"
                                                                              border-left-style="solid" border-left-width="1px"
                                                                              border-right-style="solid" border-right-width="1px">
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="left">
                                                                            Gastos o Cargos
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="right">�
                                                                             
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>                                                                                                                                           
                                                                <fo:table-row font-size="9pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Impuestos
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="montoImpuesto"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row font-size="9pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Notar�a
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="gastosNotaria"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>   
                                                                <fo:table-row font-size="9pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Monto bruto del cr�dito
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="montoBrutoCredito"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>  
                                                                <xsl:if test="isTipoAuto = 'true'">
                                                                <fo:table-row font-size="9pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Tasaci�n
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="gastoTasacion"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row font-size="9pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Garant�a
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="gastoGarantia"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row font-size="9pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            Alzamiento
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="gastoAlzamiento"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>  
                                                                </xsl:if>                                                                       
                                                                <fo:table-row font-size="9pt" color="rgb(255,255,255)" background-color="rgb(51,102,255)"
                                                                              border-top-style="solid" border-top-width="1px"
                                                                              border-bottom-style="solid" border-bottom-width="1px"
                                                                              border-left-style="solid" border-left-width="1px"
                                                                              border-right-style="solid" border-right-width="1px">
                                                                    <fo:table-cell number-columns-spanned="2">  
                                                                        <fo:block text-align="left">
                                                                            Gastos o Cargos por Producto o Servicio Voluntariamente Contratados (Anexo de productos o servicios asociados)
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
                                                                        <fo:block text-align="center">�
                                                                            
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
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="descripcion"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row> 
                                                                <fo:table-row font-size="9pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            (1) Costo Total
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
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
                                                                        <fo:block text-align="center">�
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
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="cobertura"/>
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

                                                        <fo:table font-family="Arial, Helvetica, sans-serif" table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                            <fo:table-column column-width="proportional-column-width(60)" column-number="1"/>
                                                            <fo:table-column column-width="proportional-column-width(40)" column-number="2"/>
                                                            <fo:table-body>
                                                                <fo:table-row font-size="9pt" color="rgb(255,255,255)" background-color="rgb(0,0,120)"
                                                                              border-top-style="solid" border-top-width="1px"
                                                                              border-bottom-style="solid" border-bottom-width="1px"
                                                                              border-left-style="solid" border-left-width="1px"
                                                                              border-right-style="solid" border-right-width="1px">
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="left">
                                                                            III. Condiciones de prepago
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="right">�
                                                                             
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>                                                                    
                                                                <fo:table-row font-size="9pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            (3) Cargo Prepago (%)                                                                             
                                                                        </fo:block>
                                                                        <fo:block text-align="left">
                                                                            <fo:inline font-weight = "bold">Plazo de Aviso para pago anticipado o Prepago: </fo:inline>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            <xsl:value-of select="condicionesCargoPrepago"/> 
                                                                        </fo:block>
                                                                        <fo:block text-align="center">�
                                                                            3 d�as; refinanciamiento 10 d�as. 
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

                                                        <fo:table font-family="Arial, Helvetica, sans-serif" table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                            <fo:table-column column-width="proportional-column-width(60)" column-number="1"/>
                                                            <fo:table-column column-width="proportional-column-width(40)" column-number="2"/>
                                                            <fo:table-body>
                                                                <fo:table-row font-size="9pt" color="rgb(255,255,255)" background-color="rgb(0,0,120)"
                                                                              border-top-style="solid" border-top-width="1px"
                                                                              border-bottom-style="solid" border-bottom-width="1px"
                                                                              border-left-style="solid" border-left-width="1px"
                                                                              border-right-style="solid" border-right-width="1px">
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="left">
                                                                            IV. Costos por atraso
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="right">�
                                                                             
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>                                                                    
                                                                <fo:table-row font-size="9pt">
                                                                    <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                        <fo:block text-align="left">
                                                                            (4) Inter�s Moratorio (%)
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="center">�
                                                                            Tasa M�xima Convencional
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
                                                                                            <fo:block text-align="center">�
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
                                                                                            <fo:block text-align="center">�
                                                                                                <xsl:value-of select="cobranzaPrimero"/>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                    <fo:table-row font-size="9pt"
                                                                                        border-bottom-style="solid" border-bottom-width="1px">
                                                                                        <fo:table-cell border-bottom-style="solid" border-bottom-width="1px"
                                                                                                border-right-style="solid" border-right-width="1px">  
                                                                                            <fo:block text-align="left">
                                                                                                Sobre 10 UF y hasta 50 UF
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell border-bottom-style="solid" border-bottom-width="1px"
                                                                                                border-left-style="solid" border-left-width="1px"
                                                                                                border-right-style="solid" border-right-width="1px">  
                                                                                            <fo:block text-align="center">�
                                                                                                <xsl:value-of select="cobranzaSegundo"/>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row> 
                                                                                    <fo:table-row font-size="9pt"
                                                                                        border-bottom-style="solid" border-bottom-width="1px">
                                                                                        <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                            <fo:block text-align="left">
                                                                                                Sobre 50 UF
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell border-left-style="solid" border-left-width="1px"
                                                                                                border-right-style="solid" border-right-width="1px">  
                                                                                            <fo:block text-align="center">�
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
                                                  <fo:block text-align="left" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
                                                            <xsl:if test="simboloMoneda = 'UF '">
                                                                Los valores en pesos se�alados en este documento, se han calculado al valor de la UF del d�a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="fechaCotizacion" /></fo:inline>
                                                            </xsl:if>                                                                           
                                                  </fo:block>
                                               </fo:table-cell>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <fo:table-cell>
                                                    <fo:block text-align="center" space-before="5mm"
                                                              border-top-style="solid" border-top-width="1px"
                                                              
                                                              border-left-style="solid" border-left-width="1px"
                                                              border-right-style="solid" border-right-width="1px">

                                                        <fo:table font-family="Arial, Helvetica, sans-serif" table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                            <fo:table-column column-width="proportional-column-width(100)" column-number="1"/>
                                                            <fo:table-body>
                                                                <fo:table-row font-size="9pt" color="rgb(255,255,255)" background-color="rgb(0,0,120)"
                                                                              border-top-style="solid" border-top-width="1px"
                                                                              border-bottom-style="solid" border-bottom-width="1px"
                                                                              border-left-style="solid" border-left-width="1px"
                                                                              border-right-style="solid" border-right-width="1px">
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="left">
                                                                            V. Advertencia
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>                                                                    
                                                                <fo:table-row font-size="9pt">
                                                                    <xsl:if test="isCodMoneUf = '1'">
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="left">
                                                                            El Cr�dito de Consumo de que da cuenta esta Hoja Resumen, requiere del Consumidor contratante 
                                                                            <xsl:value-of select="nombreTitular"/>, patrimonio o ingresos futuros suficientes para pagar su 
                                                                            costo total de <xsl:value-of select="costoTotalCredito"/>, cuya cuota mensual es de 
                                                                            <xsl:value-of select="valorCuota"/>, durante todo el per�odo del cr�dito.
                                                                        </fo:block>
                                                                        <fo:block text-align="left">
                                                                            Los valores en pesos se�alados en este documento, se han calculado al valor de la UF del d�a 
                                                                            <xsl:value-of select="fechaUf"/>.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="3mm">
                                                                            (1) El costo mensual del seguro se encuentra incorporado en el Valor de la Cuota. El valor del 
                                                                            Seguro corresponde a una prima �nica, indicada en el Costo Total, cuyo monto se paga con cargo 
                                                                            al cr�dito otorgado.
                                                                        </fo:block>
                                                                        <fo:block text-align="left">
                                                                            (2) Toda solicitud de aseguramiento asociada al cr�dito contratado por el cliente est� sujeta a la aceptaci�n - previa evaluaci�n - por parte de la compa��a aseguradora.
                                                                        </fo:block>                                                                        
                                                                        <fo:block text-align="left">
                                                                            (3) Cargo Prepago: Corresponde a la comisi�n de prepago que se debe pagar y que se determina al 
                                                                            momento de efectuarse el pago anticipado de la obligaci�n.                                                                         
                                                                            Trat�ndose de operaciones no reajustables, 
                                                                            corresponde valor de un mes de intereses pactados calculados sobre el capital que se prepaga.
                                                                        </fo:block>
                                                                        <fo:block text-align="left">
                                                                            Trat�ndose de operaciones reajustables, corresponde al valor de un mes y medio de intereses pactados 
                                                                            calculados sobre el capital que se prepaga.
                                                                        </fo:block>
                                                                        <fo:block text-align="left">
                                                                            (4) Inter�s Moratorio: Corresponde al inter�s m�ximo convencional que rija durante la mora o simple 
                                                                            retardo, aplicado hasta el pago total del monto atrasado o en mora.
                                                                        </fo:block>                                                                        
                                                                    </fo:table-cell>
                                                                    </xsl:if>
                                                                    <xsl:if test="isCodMoneUf != '1'">
                                                                    <fo:table-cell>  
                                                                        <fo:block text-align="left">
                                                                            El Cr�dito de Consumo de que da cuenta esta Hoja Resumen, requiere del Consumidor contratante 
                                                                            <xsl:value-of select="nombreTitular"/>, patrimonio o ingresos futuros suficientes para pagar su costo total 
                                                                            de <xsl:value-of select="costoTotalCredito"/>, cuya cuota mensual es de <xsl:value-of select="valorCuota"/>, 
                                                                            durante todo el per�odo del cr�dito.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="3mm">
                                                                            (1) El costo mensual del seguro se encuentra incorporado en el Valor de la Cuota. El valor del Seguro corresponde 
                                                                            a una prima �nica, indicada en el Costo Total,  cuyo monto se paga con cargo al cr�dito otorgado.
                                                                        </fo:block>
                                                                        <fo:block text-align="left">
                                                                            (2) Toda solicitud de aseguramiento asociada al cr�dito contratado por el cliente est� sujeta a la aceptaci�n - previa evaluaci�n - por parte de la compa��a aseguradora.
                                                                        </fo:block>                                                                        
                                                                        <fo:block text-align="left">
                                                                            (3) Cargo Prepago: Corresponde a la comisi�n de prepago que se debe pagar y que se determina al momento de 
                                                                            efectuarse el pago anticipado de la obligaci�n.     
                                                                            Trat�ndose de operaciones no reajustables, corresponde valor 
                                                                            de un mes de intereses pactados calculados sobre el capital que se prepaga.
                                                                        </fo:block>
                                                                        <fo:block text-align="left">                                                                            
                                                                            Trat�ndose de operaciones reajustables, corresponde al valor de un mes y medio de intereses pactados calculados 
                                                                            sobre el capital que se prepaga.
                                                                        </fo:block>
                                                                        <fo:block text-align="left">
                                                                            (4) Inter�s Moratorio: Corresponde al inter�s m�ximo convencional que rija durante la mora o simple retardo, 
                                                                            aplicado hasta el pago total del monto atrasado o en mora.
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    </xsl:if>                                                                            
                                                                </fo:table-row>
                                                                <fo:table-row font-size="9pt">
                                                                    <fo:table-cell>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            <fo:inline font-weight = "bold">Carga Anual Equivalente o "CAE": </fo:inline>
                                                                            El Indicador que, expresado en forma de porcentaje, revela el costo de un cr�dito 
                                                                            en un per�odo anual, cualquiera sea el plazo pactado para el pago de la obligaci�n.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            La Carga Anual Equivalente incluye el capital, tasa de inter�s, el plazo del Cr�dito de Consumo, todos los Gastos 
                                                                            o Cargos Propios del Cr�dito y los Gastos o Cargos por Productos o Servicios Voluntariamente Contratados, si los hubiere.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            <fo:inline font-weight = "bold">Monto L�quido del Cr�dito: </fo:inline>
                                                                            El monto total que efectivamente recibe el Consumidor o Cliente para satisfacer el 
                                                                            objeto del contrato en el periodo inicial, personalmente o por un tercero autorizado por el Cliente.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            <fo:inline font-weight = "bold">Plazo del Cr�dito: </fo:inline>
                                                                            El periodo establecido en el contrato para el pago total del Cr�dito de Consumo.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            Si un Cr�dito de Consumo tiene periodo de gracia, postergaci�n de una o m�s cuotas, meses sin pago de una o m�s 
                                                                            cuotas o cualquier otra modalidad que extienda la fecha de extinci�n del cr�dito, el Proveedor o el Banco informar� 
                                                                            al Cliente los eventuales aumentos de costos que est� considerado en la modalidad respectiva. Adem�s, el Plazo del 
                                                                            Cr�dito incluir� los meses adicionales en la que obligaci�n se mantendr� vigente si se verifican todos los eventos 
                                                                            previstos en la modalidad respectiva que extiendan la fecha de extinci�n del cr�dito.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm"> 
                                                                            <fo:inline font-weight = "bold">Valor de la Cuota: </fo:inline>
                                                                            El monto que se obliga a pagar un Cliente al contratar un Cr�dito de Consumo en forma peri�dica, 
                                                                            que considera todos los intereses, amortizaciones, Gastos o Cargos Propios del Cr�dito y Gastos o Cargos por Productos 
                                                                            o Servicios Voluntariamente Contratados.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            <fo:inline font-weight = "bold">Costo Total del Cr�dito: </fo:inline>
                                                                            El monto total que debe asumir el Consumidor, y que corresponde a la suma de todos los pagos 
                                                                            peri�dicos definidos como Valor de la Cuota en funci�n del plazo acordado.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            Para el caso de Cr�ditos de Consumo con tasa variable, se considerar� una tasa de referencia para obtener una cuota 
                                                                            de referencia. La tasa de referencia corresponder� a la tasa vigente al momento de la cotizaci�n o de la suscripci�n 
                                                                            del contrato, seg�n sea el caso.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm"> 
                                                                            <fo:inline font-weight = "bold">Gastos o Cargos Propios del Cr�dito: </fo:inline>
                                                                            Todas aquellas obligaciones en dinero, cualquiera sea su naturaleza o denominaci�n, 
                                                                            derivadas de la contrataci�n de un Cr�dito de Consumo y devengadas a favor del Banco o de un tercero, que no 
                                                                            correspondan a tasa de inter�s ni a capital y que deban pagarse por el Consumidor.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            Tendr�n este car�cter los impuestos y gastos notariales, adem�s de los que sean definidos como tales por una 
                                                                            disposici�n legal o reglamentaria.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm"> 
                                                                            <fo:inline font-weight = "bold">Monto Bruto del Cr�dito: </fo:inline>
                                                                            El monto L�quido del Cr�dito m�s los Gastos o Cargos Propios del Cr�dito y Gastos o 
                                                                            Cargos por Productos o Servicios Voluntariamente Contratados que se efect�an en el periodo inicial o de contrataci�n 
                                                                            del producto.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            <fo:inline font-weight = "bold">Gastos o Cargos por Productos o Servicios Voluntariamente Contratados: </fo:inline>
                                                                            Todas aquellas obligaciones en dinero, 
                                                                            cualquiera sea su naturaleza o denominaci�n, por productos o servicios proporcionados por el Banco o por un tercero 
                                                                            contratado por intermedio del Banco, respecto de las cuales el Cliente puede prescindir al contratar un Cr�dito 
                                                                            de Consumo.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            Podr�n tener este car�cter la p�liza de seguro, individual o colectiva, cuyo objeto asegurado es el saldo insoluto 
                                                                            del Cr�dito de Consumo, si el Cliente los puede contratar libremente en cualquier entidad que la comercialice 
                                                                            en los t�rminos previstos en el art�culo 8� de la Ley N� 20.448.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            <fo:inline font-weight = "bold">Valor de la Cuota B�sica de Referencia: </fo:inline>
                                                                            El monto que se obliga a pagar un Cliente al contratar un Cr�dito de 
                                                                            Consumo en forma peri�dica, que considera s�lo los intereses, amortizaciones y Gastos o Cargos Propios del Cr�dito.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            <fo:inline font-weight = "bold">Comisi�n por Pago Anticipado o Prepago: </fo:inline>
                                                                            El valor extraordinario y voluntario que asume el Consumidor al pagar 
                                                                            en forma anticipada el Cr�dito de Consumo, sea en forma total o parcial, esto es, antes del plazo establecido 
                                                                            para ello. Este cargo se rige por el Art�culo 10 de la Ley N� 18.010.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm"> 
                                                                            <fo:inline font-weight = "bold">Inter�s Moratorio: </fo:inline>
                                                                            La tasa de inter�s que se aplica por no pagar una obligaci�n en la fecha estipulada.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            <fo:inline font-weight = "bold">Gastos de Cobranza: </fo:inline>
                                                                            El monto correspondiente al costo de la cobranza extrajudicial de una obligaci�n vencida 
                                                                            y no pagada en la fecha establecida en el contrato, traspasado por el Banco al Cliente, y que s�lo se puede 
                                                                            cobrar si han transcurrido veinte d�as corridos  desde el atraso, seg�n lo dispuesto en el art�culo 37 de la 
                                                                            Ley de Protecci�n del Consumidor. En caso de estar en presencia de una operaci�n de cr�dito de dinero cuyo 
                                                                            capital sea igual o inferior a doscientas unidades de fomento no podr� en caso alguno hacerse exigible la 
                                                                            obligaci�n en forma anticipada, sino una vez cumplidos sesenta d�as corridos desde que el deudor incurra en 
                                                                            mora o simple retardo en el pago.
                                                                        </fo:block>
                                                                        <fo:block text-align="left" padding-top="5mm">
                                                                            Los cr�ditos con per�odo de gracia o la posibilidad de traslado de cuotas podr�an estar asociados a un costo.
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
    </xsl:template>    

</xsl:stylesheet>