<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2011/07/18 12:00 ==>-->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <!-- <xsl:param name="IMG_URL"/>-->
    <xsl:template match="impresionComportamientoPago">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
        
            <fo:layout-master-set>
                <fo:simple-page-master master-name="cartola" page-height="279.4mm" page-width="215.9mm" margin-top="20.000px" margin-bottom="20.000px" margin-right="60.000px" margin-left="60.000px">
                    <fo:region-before region-name="xsl-region-before" display-align="after" extent="20mm" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                    <fo:region-after region-name="xsl-region-after" display-align="before" extent="17.78mm" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                    <fo:region-body margin-top="20mm" margin-bottom="10mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>	          
            
            <fo:page-sequence master-reference="cartola" font-size="9pt" font-family="Arial, Helvetica, sans-serif">
            
                <fo:static-content flow-name="xsl-region-before"></fo:static-content>            
                
                <fo:static-content flow-name="xsl-region-after" ></fo:static-content>
                
                <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Arial, Helvetica, sans-serif">

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
															<fo:block font-weight="bold" font-size="14pt" font-family="Arial, Helvetica, sans-serif" space-before="2mm" text-align="left" >
																Comportamiento de Pago
															</fo:block>
														</fo:table-cell>
													</fo:table-row>   
													 <fo:table-row font-size="12pt" border-top-style="solid" border-top-width="1px"
                                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-left-style="solid" border-left-width="1px"
                                                                                      border-right-style="solid" border-right-width="1px">
                                                         <fo:table-cell number-columns-spanned="8">  
                                                                <fo:block text-align="left">
                                                                    &#x00A0;          
                                                                </fo:block>
                                                        </fo:table-cell>
                                                   </fo:table-row>       
													<fo:table-row font-size="12pt" color="rgb(255,255,255)" background-color="rgb(51,102,255)"
                                                                                      border-top-style="solid" border-top-width="1px"
                                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-left-style="solid" border-left-width="1px"
                                                                                      border-right-style="solid" border-right-width="1px">
                                                         <fo:table-cell number-columns-spanned="8">  
                                                                <fo:block text-align="left">
                                                                  Detalle Consulta       
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
																	<fo:table-column column-width="proportional-column-width(70)" column-number="1"/>
																	<fo:table-column column-width="proportional-column-width(30)" column-number="2"/>
																	<fo:table-body>
																		<fo:table-row font-size="9pt" font-weight="bold">
																			<fo:table-cell border-top-style="solid" border-top-width="0px"
																						  border-bottom-style="solid" border-bottom-width="0px"
																						  border-left-style="solid" border-left-width="0px"
																						  border-right-style="solid" border-right-width="0px">	
																				<fo:block>
																					
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell >	
																				<fo:block text-align="right"> 
																					Num Op.: 
																					 <xsl:value-of select="numeroOperacion"/> 
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
                                                            <fo:block text-align="center" 
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px"
                                                                      font-size="10pt">

                                                                <fo:table font-family="Arial, Helvetica, sans-serif" table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="proportional-column-width(25)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(75)" column-number="2"/>
                                                                    <fo:table-body>
                                                                       <fo:table-row  >
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px" border-bottom-style="solid" border-bottom-width="1px">  
                                                                                <fo:block text-align="left" space-before="1mm"  margin-left="1mm" >
                                                                                    Rut Cliente
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-bottom-style="solid" border-bottom-width="1px">  
                                                                                <fo:block text-align="left" space-before="1mm"  > 
                                                                                    <xsl:value-of select="rutCliente"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row >
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left"   space-before="1mm" margin-left="1mm" >
                                                                                     Nombre Titular
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="left"  space-before="1mm">
                                                                                       <xsl:value-of select="nombreCliente"/> 
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
                                                            <fo:block text-align="center" 
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">

                                                                <fo:table font-family="Arial, Helvetica, sans-serif" table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="proportional-column-width(25)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(25)" column-number="2"/>
                                                                    <fo:table-column column-width="proportional-column-width(25)" column-number="3"/>
                                                                    <fo:table-column column-width="proportional-column-width(25)" column-number="4"/>
                                                                    <fo:table-body>
                                                                       <fo:table-row font-size="10pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left" space-before="1mm" margin-left="1mm"  >
                                                                                    Nro Operacion
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="center" space-before="1mm" > 
                                                                                     <xsl:value-of select="numeroOperacion"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left" space-before="1mm" margin-left="1mm">
                                                                                    Moneda Origen
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center" space-before="1mm" > 
                                                                                     <xsl:value-of select="moneda"/> 
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
                                                            <fo:block text-align="center" 
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">

                                                                <fo:table font-family="Arial, Helvetica, sans-serif" table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="proportional-column-width(25)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(75)" column-number="2"/>
                                                                    <fo:table-body>
                                                                       <fo:table-row font-size="10pt" >
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="left" space-before="1mm" margin-left="1mm" >
                                                                                    Tipo de Crédito
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="center" space-before="1mm" > 
                                                                                    <xsl:value-of select="tipoOperacion"/> 
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
                                                            <fo:block text-align="center" 
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">

                                                                <fo:table font-family="Arial, Helvetica, sans-serif" table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="proportional-column-width(25)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(25)" column-number="2"/>
                                                                    <fo:table-column column-width="proportional-column-width(25)" column-number="3"/>
                                                                    <fo:table-column column-width="proportional-column-width(25)" column-number="4"/>
                                                                    <fo:table-body>
                                                                       <fo:table-row font-size="10pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px" 
                                                                                    border-bottom-style="solid" border-bottom-width="1px">  
                                                                                <fo:block text-align="left" space-before="1mm" margin-left="1mm">
                                                                                    Monto Crédito
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px"
                                                                             border-bottom-style="solid" border-bottom-width="1px">  
                                                                                <fo:block text-align="right" space-before="1mm" margin-right="1mm" > 
                                                                                     <xsl:value-of select="montoCredito"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px"
                                                                             border-bottom-style="solid" border-bottom-width="1px">  
                                                                                <fo:block text-align="left" space-before="1mm" margin-left="1mm"  >
                                                                                    Fecha Desembolso
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-bottom-style="solid" border-bottom-width="1px" >  
                                                                                <fo:block text-align="right" space-before="1mm" margin-left="1mm" margin-right="1mm"   > 
                                                                                     <xsl:value-of select="fechaCurse"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                         <fo:table-row font-size="10pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px" 
                                                                             border-bottom-style="solid" border-bottom-width="1px" >    
                                                                                <fo:block text-align="left"  space-before="1mm" margin-left="1mm" >
                                                                                    Comisiones
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px"
                                                                                border-bottom-style="solid" border-bottom-width="1px">  
                                                                                <fo:block text-align="right"  space-before="1mm"  margin-right="1mm"  > 
                                                                                     <xsl:value-of select="comision"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px"
                                                                                border-bottom-style="solid" border-bottom-width="1px">  
                                                                                <fo:block text-align="left" space-before="1mm" margin-left="1mm" >
                                                                                    Interes
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-bottom-style="solid" border-bottom-width="1px" >  
                                                                                <fo:block text-align="right" space-before="1mm" margin-right="1mm" > 
                                                                                      <xsl:value-of select="montoIntereses"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row font-size="10pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px"
                                                                             border-bottom-style="solid" border-bottom-width="1px">    
                                                                                <fo:block text-align="left" space-before="1mm" margin-left="1mm" >
                                                                                    Gastos
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px"
                                                                            border-bottom-style="solid" border-bottom-width="1px">  
                                                                                <fo:block text-align="right" space-before="1mm"  margin-right="1mm" > 
                                                                                     <xsl:value-of select="valorGasto"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px"
                                                                            border-bottom-style="solid" border-bottom-width="1px">  
                                                                                <fo:block text-align="left" space-before="1mm" margin-left="1mm"    >
                                                                                    Seguros
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-bottom-style="solid" border-bottom-width="1px">  
                                                                                <fo:block text-align="right" space-before="1mm" margin-right="1mm" > 
                                                                                     <xsl:value-of select="seguros"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row font-size="10pt">
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">
                                                                            
                                                                                <fo:block text-align="left" space-before="1mm" margin-left="1mm" >
                                                                                    Valor Neto
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">
                                                                             
                                                                                <fo:block text-align="right" space-before="1mm" margin-right="1mm" > 
                                                                                     <xsl:value-of select="valorNeto"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">
                                                                              
                                                                                <fo:block text-align="left" space-before="1mm" margin-left="1mm"  >
                                                                                   Impuestos
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell>  
                                                                                <fo:block text-align="right" space-before="1mm" margin-right="1mm" >
                                                                                      <xsl:value-of select="impuestos"/> 
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
                                                            <fo:block text-align="center" 
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px"
                                                                      border-bottom-style="solid" border-bottom-width="1px">  
                                                                 <fo:table font-family="Arial, Helvetica, sans-serif" table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="proportional-column-width(25)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(25)" column-number="2"/>
                                                                    <fo:table-column column-width="proportional-column-width(50)" column-number="3"/>
                                                                    <fo:table-body>
                                                                       <fo:table-row font-size="10pt"  >
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px"
                                                                             border-bottom-style="solid" border-bottom-width="1px">
                                                                                 <fo:block text-align="left" space-before="1mm" margin-left="1mm" >
                                                                                    Tasa
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px" 
                                                                             border-bottom-style="solid" border-bottom-width="1px">
                                                                                 <fo:block text-align="right" space-before="1mm" > 
                                                                                    <xsl:value-of select="tasaInteres"/>% 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell  border-bottom-style="solid" border-bottom-width="1px">  
                                                                                <fo:block text-align="center" space-before="1mm" > 
                                                                                    <xsl:value-of select="tipoTasaInteres"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row font-size="10pt" >
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px"
																			border-bottom-style="solid" border-bottom-width="1px">
                                                                                <fo:block text-align="left" space-before="1mm" margin-left="1mm" >
                                                                                    Valor Cuota (Pesos/UF)
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-bottom-style="solid" border-bottom-width="1px" border-right-style="solid" border-right-width="1px">
                                                                               <fo:block text-align="right" space-before="1mm" margin-right="1mm"  > 
                                                                                    <xsl:value-of select="montoProximoVencimiento"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-bottom-style="solid" border-bottom-width="1px">  
                                                                                <fo:block text-align="center" space-before="1mm" > 
                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
																		 <fo:table-row font-size="10pt" >
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">
                                                                                <fo:block text-align="left" space-before="1mm" margin-left="1mm" >
                                                                                    Condición Garantía
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">
                                                                               <fo:block text-align="right" space-before="1mm" margin-right="1mm"  > 
                                                                                    <xsl:value-of select="condicionGarantia"/> 
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell >  
                                                                                <fo:block text-align="center" space-before="1mm" > 
                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                     </fo:table-body>
                                                                </fo:table> 
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>   
                                                   <fo:table-row font-size="12pt" border-top-style="solid" border-top-width="1px"
                                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-left-style="solid" border-left-width="1px"
                                                                                      border-right-style="solid" border-right-width="1px">
                                                                            <fo:table-cell number-columns-spanned="8">  
                                                                                <fo:block text-align="left">
                                                                                    &#x00A0;
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                   </fo:table-row> 
                                                   <fo:table-row font-size="12pt" color="rgb(255,255,255)" background-color="rgb(51,102,255)"
                                                                                      border-top-style="solid" border-top-width="1px"
                                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                                      border-left-style="solid" border-left-width="1px"
                                                                                      border-right-style="solid" border-right-width="1px">
                                                                            <fo:table-cell number-columns-spanned="8">  
                                                                                <fo:block text-align="left">
                                                                                    Detalle de Pago
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                   </fo:table-row>     
                                                    <fo:table-row>
                                                        <fo:table-cell text-align="center">
                                                            <fo:block space-before="5mm" space-after="5mm"
                                                            border-bottom-style="solid" border-bottom-width="1px">
                                                                <fo:table width="100%">
                                                                    <fo:table-column column-width="proportional-column-width(10)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(8)" column-number="2"/>
                                                                    <fo:table-column column-width="proportional-column-width(15)" column-number="3"/>
                                                                    <fo:table-column column-width="proportional-column-width(15)" column-number="4"/>
                                                                    <fo:table-column column-width="proportional-column-width(15)" column-number="5"/>
                                                                    <fo:table-column column-width="proportional-column-width(15)" column-number="6"/>
                                                                    <fo:table-column column-width="proportional-column-width(11)" column-number="7"/>
                                                                    <fo:table-column column-width="proportional-column-width(11)" column-number="8"/>
                                                                    <fo:table-header>
                                                                          <fo:table-row font-size="8pt" font-weight="bold" border-top-style="solid" border-top-width="2px" >
                                                                            <fo:table-cell text-align="left" font-weight="bold"	
                                                                                           background-color="rgb(205,200,177)"																			   
																						   border-top-style="solid" border-top-width="1px" 
																						   border-bottom-style="solid" border-bottom-width="1px" 
																						   padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
																		       <fo:block text-align="center"  >
                                                                                    NºVencim.
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                             <fo:table-cell text-align="left" font-weight="bold"	
                                                                                          background-color="rgb(205,200,177)"																			   
																						   border-left-style="solid" border-left-width="1px" 
																						   border-top-style="solid" border-top-width="1px" 
																						   border-bottom-style="solid" border-bottom-width="1px" 
																						    border-right-style="solid" border-right-width="1px" 
																						   padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
																		     <fo:block text-align="center"     > 
                                                                                     Nºde Pagos
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                             <fo:table-cell text-align="left" font-weight="bold"
                                                                                           background-color="rgb(205,200,177)"																				   
																							   border-right-style="solid" border-right-width="1px" 
																						  border-left-style="solid" border-left-width="1px" 
																						   border-top-style="solid" border-top-width="1px" 
																						   border-bottom-style="solid" border-bottom-width="1px" 
																						   padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
																		     <fo:block text-align="center"   >
                                                                                     Capital
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                           <fo:table-cell text-align="left" font-weight="bold"	
                                                                                           background-color="rgb(205,200,177)"																			   
																						   border-left-style="solid" border-left-width="1px" 
																						  border-top-style="solid" border-top-width="1px" 
																						   border-bottom-style="solid" border-bottom-width="1px" 
																						   padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
																		       <fo:block text-align="center"    > 
                                                                                     Interés
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell text-align="left" font-weight="bold"		
                                                                                          background-color="rgb(205,200,177)"																		   
																						   border-left-style="solid" border-left-width="1px" 
																						   border-top-style="solid" border-top-width="1px" 
																						   border-bottom-style="solid" border-bottom-width="1px" 
																						   padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
																		     <fo:block text-align="center"   >
                                                                                   Interés Moratorio
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                          <fo:table-cell text-align="left" font-weight="bold"		
                                                                                           background-color="rgb(205,200,177)"																		   
																						   border-left-style="solid" border-left-width="1px" 
																						   border-top-style="solid" border-top-width="1px" 
																						   border-bottom-style="solid" border-bottom-width="1px" 
																						   padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
																		       <fo:block text-align="center"  > 
                                                                                     Monto Pagado  (en pesos)
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                         <fo:table-cell text-align="left" font-weight="bold"	
                                                                                          background-color="rgb(205,200,177)"																			   
																						   border-left-style="solid" border-left-width="1px" 
																						   border-top-style="solid" border-top-width="1px" 
																						   border-bottom-style="solid" border-bottom-width="1px" 
																						   padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
																		       <fo:block text-align="center"  >
                                                                                    Fecha de Pago
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                          <fo:table-cell text-align="left" font-weight="bold"	
                                                                                          background-color="rgb(205,200,177)"																			   
																						   border-left-style="solid" border-left-width="1px" 
																						   border-top-style="solid" border-top-width="1px" 
																						   border-bottom-style="solid" border-bottom-width="1px" 
																						   padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
																		       <fo:block text-align="center"> 
                                                                                    Fecha de Vencimiento
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>  
                                                                    </fo:table-header>    
                                                                    <xsl:for-each select="listaPagos/pago"> 
                                                                    <fo:table-body>
                                                                     <fo:table-row font-size="8pt" border-top-style="solid" border-top-width="2px" >
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">
                                                                                <fo:block text-align="center" space-before="5mm" >
                                                                                    <xsl:value-of select="numVenci"/>
                                                                                </fo:block>
                                                                            </fo:table-cell >
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="center" space-before="5mm" > 
                                                                                     <xsl:value-of select="numpago"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                             <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="center" space-before="5mm" >
                                                                                     <xsl:value-of select="capital"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="center" space-before="5mm" > 
                                                                                    <xsl:value-of select="interes"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                             <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="center" space-before="5mm" >
                                                                                   <xsl:value-of select="mora"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="center" space-before="5mm" > 
                                                                                     <xsl:value-of select="montopag"/>
                                                                                </fo:block>
                                                                            </fo:table-cell >
                                                                             <fo:table-cell border-right-style="solid" border-right-width="1px">  
                                                                                <fo:block text-align="center" space-before="5mm" >
                                                                                   <xsl:value-of select="fechaCancela"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell >  
                                                                                <fo:block text-align="center" space-before="5mm" > 
                                                                                    <xsl:value-of select="fechaVece"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                       </fo:table-body>
                                                                    </xsl:for-each>
                                                                 </fo:table> 
                                                              </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>                                                    
                                                    <fo:table-row font-size="8pt" >
												       <fo:table-cell border-top-style="solid" border-top-width="0px"
													                  border-bottom-style="solid" border-bottom-width="0px"
													                  border-left-style="solid" border-left-width="0px"
																      border-right-style="solid" border-right-width="0px">	
                                                           <fo:block text-align="left"  > 
																(*): Vencimiento registra pagos morosos. 
														</fo:block>																      
													   </fo:table-cell>
														<fo:table-cell >	
															<fo:block> 
																
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
  					<fo:block id="theEnd"/>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>