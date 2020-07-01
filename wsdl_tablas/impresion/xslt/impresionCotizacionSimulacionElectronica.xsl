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
                <fo:simple-page-master master-name="cotizacion" page-height="279.4mm" page-width="215.9mm" margin-top="20.000px" margin-bottom="20.000px" margin-right="10.000px" margin-left="10.000px">
                    <fo:region-before region-name="xsl-region-before" display-align="after" extent="20mm" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                    <fo:region-after region-name="xsl-region-after" display-align="before" extent="17.78mm" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                    <fo:region-body margin-top="20mm" margin-bottom="10mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>	
            
            <fo:page-sequence master-reference="cotizacion" font-size="9pt" font-family="Helvetica">
            
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block>
                        <fo:external-graphic vertical-align="middle">
                            <xsl:attribute name="src">
                                <xsl:value-of select="rutaImagen"/>
                            </xsl:attribute>
                        </fo:external-graphic> 
                    </fo:block>
                </fo:static-content>            
                
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
												<fo:table-column column-width="100%" column-number="1"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell>
															<fo:block text-align="left">
                                        
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell color="rgb(119,169,212)" font-weight="bold" font-size="15pt">
															<fo:block space-before="3mm" text-align="left" border-bottom-style="solid" border-bottom-width="1px">
																Condiciones del Crédito de Consumo Solicitado
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
																										RUT :
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left"> 
																										<xsl:value-of select="rutCliente"/>
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
																										Ejecutivo :
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
																							<fo:table-row>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left">
																										N° de Operación :
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left"> 
																										<xsl:value-of select="numeroOperacion"/>
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
																						<fo:table-column column-width="proportional-column-width(50)" column-number="1"/>
																						<fo:table-column column-width="proportional-column-width(50)" column-number="2"/>
																						<fo:table-body>
																							<fo:table-row>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left">
																										Fecha de Curse :
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
																										Monto del crédito a cursar :
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left"> 
																										$ <xsl:value-of select="montoCursado"/>
																									</fo:block>
																								</fo:table-cell>
																							</fo:table-row>	
																							<fo:table-row>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left">
																										Monto Líquido :
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left"> 
																										$ <xsl:value-of select="montoCredito"/>
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
																									<fo:block text-align="left"> 
																										<xsl:value-of select="mesesNoPago"/>
																									</fo:block>
																								</fo:table-cell>
																							</fo:table-row>	
																							<fo:table-row>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left">
																										Forma de Cargo :
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left"> 
																										<xsl:value-of select="formaCargo"/>
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
																										Plazo :
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left"> 
																										<xsl:value-of select="plazoEnMeses"/> meses
																									</fo:block>
																								</fo:table-cell>
																							</fo:table-row>
																							<fo:table-row>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left">
																										Tasa de Interés Mensual :
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left"> 
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
																										Tasa de Interés Anual :
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left"> 
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
																										valor Cuota :
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-top-style="solid" border-top-width="1px"
																											  border-bottom-style="solid" border-bottom-width="1px"
																											  border-left-style="solid" border-left-width="1px"
																											  border-right-style="solid" border-right-width="1px">	
																									<fo:block text-align="left"> 
																										$ <xsl:value-of select="proximaCuotaPagar"/>
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
																					Costo final del Crédito :
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell border-top-style="solid" border-top-width="1px"
																						  border-bottom-style="solid" border-bottom-width="1px"
																						  border-left-style="solid" border-left-width="1px"
																						  border-right-style="solid" border-right-width="1px">	
																				<fo:block text-align="right"> 
																					$ <xsl:value-of select="montoTotalCredito"/>
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
																				<fo:block text-align="right"> 
																					<xsl:value-of select="indicadorCAE"/>%
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
																						Gastos Asociados al Curse de Crédito
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
																									<fo:block text-align="left"> 
																										$ <xsl:value-of select="montoImpuesto"/>
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
																									<fo:block text-align="left"> 
																										$ <xsl:value-of select="gastosNotariales"/>
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
																									<fo:block text-align="left"> 
																										$ <xsl:value-of select="montoTotalSeguros"/>
																									</fo:block>
																								</fo:table-cell>
																							</fo:table-row>

																							<xsl:for-each select="seguros/seguro">
																							<fo:table-row>    
																								<fo:table-cell border-right-style="solid" border-right-width="1px">
																									<fo:block text-align="left">
																										<xsl:value-of select="descripcionSeguro"/>
																									</fo:block>
																								</fo:table-cell>                                                        
																								<fo:table-cell margin-left="2mm" border-right-style="solid" border-right-width="1px">
																									<fo:block text-align="left">
																										$ <xsl:value-of select="montoSeguros"/>
																									</fo:block>
																								</fo:table-cell>                                                        
																							</fo:table-row>                                                        
																							</xsl:for-each>	

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
																				<fo:block text-align="left"> 
																					  
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
										<fo:block text-align="center" >	
							
											<fo:table>
												<fo:table-column/>
												<fo:table-body>
													<fo:table-row display-align="auto" border-left-style="solid" border-left-width="2px" border-right-style="solid" border-right-width="2px" border-top-style="solid" border-top-width="0px" border-bottom-style="solid" border-bottom-width="0px">
														<fo:table-cell text-align="center">
															<fo:block space-before="5mm" space-after="5mm">
																<fo:table width="100%">
																	<fo:table-column column-width="25%" column-number="1"/>
																	<fo:table-column column-width="25%" column-number="2"/>
																	<fo:table-column column-width="25%" column-number="3"/>
																	<fo:table-column column-width="25%" column-number="4"/>
																	<fo:table-header>
																		<fo:table-row text-align="center" border-top-style="solid" border-top-width="2px">
																			<fo:table-cell text-align="left" font-weight="bold"																				   
																						   border-left-style="solid" border-left-width="1px" 
																						   border-right-style="solid" border-right-width="1px" 
																						   border-top-style="solid" border-top-width="1px" 
																						   border-bottom-style="solid" border-bottom-width="1px" 
																						   padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
																				<fo:block>Abonos</fo:block>
																			</fo:table-cell>
																			<fo:table-cell text-align="left" font-weight="bold"
																						   border-left-style="solid" border-left-width="1px" 
																						   border-right-style="solid" border-right-width="1px" 
																						   border-top-style="solid" border-top-width="1px" 
																						   border-bottom-style="solid" border-bottom-width="1px" 
																						   padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
																				<fo:block>Producto</fo:block>
																			</fo:table-cell>
																			<fo:table-cell text-align="left" font-weight="bold"
																						   border-left-style="solid" border-left-width="1px" 
																						   border-right-style="solid" border-right-width="1px" 
																						   border-top-style="solid" border-top-width="1px" 
																						   border-bottom-style="solid" border-bottom-width="1px" 
																						   padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
																				<fo:block>Monto</fo:block>
																			</fo:table-cell>
																			<fo:table-cell text-align="left" font-weight="bold"
																						   border-left-style="solid" border-left-width="1px" 
																						   border-right-style="solid" border-right-width="1px" 
																						   border-top-style="solid" border-top-width="1px" 
																						   border-bottom-style="solid" border-bottom-width="1px" 
																						   padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
																				<fo:block>Forma de Abono</fo:block>
																			</fo:table-cell>
																		</fo:table-row>
																	</fo:table-header>
																	<xsl:for-each select="abonos/abono">
																		<fo:table-body>
																			<fo:table-row border-top-style="solid" border-top-width="2px">
																				<fo:table-cell text-align="left"
																							   border-left-style="solid" border-left-width="1px" 
																							   border-right-style="solid" border-right-width="1px" 
																							   border-top-style="solid" border-top-width="1px" 
																							   border-bottom-style="solid" border-bottom-width="1px" 
																							   padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
																					<fo:block>
																						<fo:inline>
																							<xsl:value-of select="abonos"/>
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell text-align="left"
																							   border-left-style="solid" border-left-width="1px" 
																							   border-right-style="solid" border-right-width="1px" 
																							   border-top-style="solid" border-top-width="1px" 
																							   border-bottom-style="solid" border-bottom-width="1px" 
																							   padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
																					<fo:block>
																						<fo:inline>
																							<xsl:value-of select="producto"/>
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell text-align="left"
																							   border-left-style="solid" border-left-width="1px" 
																							   border-right-style="solid" border-right-width="1px" 
																							   border-top-style="solid" border-top-width="1px" 
																							   border-bottom-style="solid" border-bottom-width="1px" 
																							   padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
																					<fo:block>
																						<fo:inline>
																							$ <xsl:value-of select="montoAbono"/>
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell text-align="left"
																							   border-left-style="solid" border-left-width="1px" 
																							   border-right-style="solid" border-right-width="1px" 
																							   border-top-style="solid" border-top-width="1px" 
																							   border-bottom-style="solid" border-bottom-width="1px" 
																							   padding-top="1px" padding-left="5pt" padding-right="5px" padding-bottom="1px">
																					<fo:block>
																						<fo:inline>
																							<xsl:value-of select="formaDeAbono"/>
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
				
					<fo:block space-after="22mm" margin-left="15px" margin-right="15px" font-size="9pt" font-family="Helvetica" text-align="left">
						<fo:block> </fo:block>
							<fo:inline>Los seguros contratados son cubiertos por  BCI Seguros Generales S.A y BCI Seguros Vida S.A. Para obtener un crédito de consumo no es necesario tomar seguros ni contratar otros servicios. El cliente declara que, además del crédito de consumo que solicita, es su voluntad contratar los seguros voluntarios incluidos en las condiciones del crédito, por el precio que señala, y está en conocimiento de que puede obtener el crédito con la misma tasa y demás condiciones que si no adquiriera tales seguros.</fo:inline>                            
						<fo:block> </fo:block>
							<fo:inline>El Cliente declara bajo juramento que todos los antecedentes presentados son fidedignos y que conoce el texto del artículo 160 de la Ley General de Bancos.</fo:inline>
						<fo:block> </fo:block>
							<fo:inline>Si el Cliente no está satisfecho con su crédito de consumo, tiene hasta 30 días para devolverlo. Infórmese de las condiciones en www.bci.cl.</fo:inline>
						<fo:block> </fo:block>                            
							<fo:inline>El Cliente tiene derecho a recibir este documento en su e-mail o llevarse una copia del documento que firma.</fo:inline>                            
					</fo:block>				
                    
					
					
					<fo:block>
                        <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                                <fo:table-row display-align="auto" border-left-style="solid" border-left-width="2px" border-left-color="rgb(5,7,242)" border-top-left-radius="20px 20px" border-right-style="solid" border-right-width="2px" border-right-color="rgb(5,7,242)" border-bottom-right-radius="20px 20px" border-top-style="solid" border-top-width="0px" border-top-color="rgb(5,7,242)" border-top-right-radius="20px 20px" border-bottom-style="solid" border-bottom-width="0px" border-bottom-color="rgb(5,7,242)" border-bottom-left-radius="20px 20px" background-color="rgb(248,250,246)">
                                    <fo:table-cell text-align="center" padding-top="5pt" padding-left="15pt" padding-right="10pt" padding-bottom="15pt">
                                        <fo:block>								
								
						<fo:table break-before="page" table-layout="fixed" width="100%">
							<fo:table-column column-width="100%" column-number="1"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell color="rgb(119,169,212)" font-weight="bold" font-size="15pt">
										<fo:block text-align="left">
											Condiciones Y Honorarios De Cobranza Extrajudicial Por Empresa Externa
										</fo:block>	
										<fo:block text-align="left" border-bottom-style="solid" border-bottom-width="1px">
											(Banca Personas - Personas Naturales O Jurídicas)
										</fo:block>								
									</fo:table-cell>
								</fo:table-row>  
								<fo:table-row>
									<fo:table-cell>
										<fo:block space-before="5mm" font-weight="bold" text-align="left" font-size="10pt">
											Tabla de Honorarios General
										</fo:block>	
										<fo:block text-align="left">
											Los honorarios por la cobranza extra judicial para todos los productos ascenderán a los porcentajes aplicados sobre el total de la deuda o cuota vencida, según el caso, conforme a la siguiente escala progresiva.
										</fo:block>								
									</fo:table-cell>
								</fo:table-row>   								
							</fo:table-body>
						</fo:table>
						
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="100%" column-number="1"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block space-before="5mm">
  
											<fo:table space-before="5mm" space-after="5mm" table-layout="fixed" width="400pt">																	
												<fo:table-column column-width="proportional-column-width(60)" column-number="1"/>
												<fo:table-column column-width="proportional-column-width(40)" column-number="2"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell border-top-style="solid" border-top-width="1px"
																		  border-bottom-style="solid" border-bottom-width="1px"
																		  border-left-style="solid" border-left-width="1px"
																		  border-right-style="solid" border-right-width="1px">	
																<fo:block text-align="left" font-weight="bold" font-size="10pt">
																	Monto Deuda o Cuota Morosa
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-top-style="solid" border-top-width="1px"
																		  border-bottom-style="solid" border-bottom-width="1px"
																		  border-left-style="solid" border-left-width="1px"
																		  border-right-style="solid" border-right-width="1px">	
																<fo:block text-align="left" font-weight="bold" font-size="10pt"> 
																	% Honorarios
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border-top-style="solid" border-top-width="1px"
																		  border-bottom-style="solid" border-bottom-width="1px"
																		  border-left-style="solid" border-left-width="1px"
																		  border-right-style="solid" border-right-width="1px">	
																<fo:block text-align="left">
																	Obligaciones hasta 10 UF
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-top-style="solid" border-top-width="1px"
																		  border-bottom-style="solid" border-bottom-width="1px"
																		  border-left-style="solid" border-left-width="1px"
																		  border-right-style="solid" border-right-width="1px">	
																<fo:block text-align="left"> 
																	<xsl:value-of select="obligaciones"/>%
																</fo:block>
															</fo:table-cell>
														</fo:table-row>	
														<fo:table-row>
															<fo:table-cell border-top-style="solid" border-top-width="1px"
																		  border-left-style="solid" border-left-width="1px"
																		  border-right-style="solid" border-right-width="1px">	
																<fo:block text-align="left">
																	Por la parte que exceda de 10 UF y hasta 50 UF
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-top-style="solid" border-top-width="1px"
																		  border-left-style="solid" border-left-width="1px"
																		  border-right-style="solid" border-right-width="1px">	
																<fo:block text-align="left"> 
																	<xsl:value-of select="exceda10a50"/>%
																</fo:block>
															</fo:table-cell>
														</fo:table-row>	
														<fo:table-row>
															<fo:table-cell border-top-style="solid" border-top-width="1px"
																		  border-left-style="solid" border-left-width="1px"
																		  border-right-style="solid" border-right-width="1px"
																		  border-bottom-style="solid" border-bottom-width="1px">	
																<fo:block text-align="left">
																	Por la parte que exceda de 50 UF
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-top-style="solid" border-top-width="1px"
																		  border-left-style="solid" border-left-width="1px"
																		  border-right-style="solid" border-right-width="1px"
																		  border-bottom-style="solid" border-bottom-width="1px">	
																<fo:block text-align="left"> 
																	<xsl:value-of select="exceda50"/>%
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


						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="100%" column-number="1"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block space-before="5mm" font-weight="bold" text-align="left" font-size="10pt">
											Plazos de Aplicación de Honorarios
										</fo:block>										
										<fo:block space-before="5mm" font-weight="bold" text-align="left" font-size="10pt">
											Tabla de Honorarios General
										</fo:block>	
										<fo:block text-align="left">
											Después de transcurridos 15 días corridos de atraso (mora), desde el día del vencimiento de la obligación.
										</fo:block>								
									</fo:table-cell>
								</fo:table-row>   								
							</fo:table-body>
						</fo:table>

						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="100%" column-number="1"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell color="rgb(119,169,212)" font-weight="bold" font-size="15pt">
										<fo:block text-align="left" space-before="10mm">
											Declaración Para Márgenes de Crédito Art. 85 Ley General de Bancos
										</fo:block>								
									</fo:table-cell>
								</fo:table-row>  
								<fo:table-row>
									<fo:table-cell>
										<fo:block text-align="left" space-before="5mm">
											Declaro que no soy socio o accionista de sociedades deudoras del Banco de Crédito e Inversiones, y de serlo, el monto de tales endeudamientos, sumados a los míos, no exceden los límites del artículo 84 N°1 de la Ley General de Bancos. 
										</fo:block>
										<fo:block text-align="left">
											Si desea obtener mayor información sobre límites individuales de crédito, le agradeceremos consultar la norma pertinente.
										</fo:block>								
									</fo:table-cell>
								</fo:table-row>   								
							</fo:table-body>
						</fo:table>
						
						
						<fo:table table-layout="fixed" width="100%" space-before="70mm">
							<fo:table-column column-width="100%" column-number="1"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block text-align="left"  space-before="5mm">
											Firma Electrónica Avanzada efectuada y estampada en este documento en conformidad a la Ley N°19.799, correspondiente a don(ña)......................................................................................, Rut. N°................................................, cuyo certificado ha sido emitido por la empresa E-Cert Chile, Rut. N°96,628,180-5, acreditado según R.A. Exenta Nº317, de 14 de agosto de 2003, de la Subsecretaría de Economía, Fomento y Reconstrucción.
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