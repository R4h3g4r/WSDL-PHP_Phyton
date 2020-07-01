<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2011/07/18 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <!-- <xsl:param name="IMG_URL"/>-->
    <xsl:template match="impresionCotizacionSimulacionSeguros">
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
												<fo:table-column column-width="100%" column-number="1"/>
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
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell color="rgb(119,169,212)" font-weight="bold" font-size="15pt">
															<fo:block space-before="3mm" text-align="left" border-bottom-style="solid" border-bottom-width="1px">
																Cotización Seguros Seleccionados
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
																<fo:block text-align="center" space-before="5mm"
																		  border-top-style="solid" border-top-width="1px"
																		  border-bottom-style="solid" border-bottom-width="1px"
																		  border-left-style="solid" border-left-width="1px"
																		  border-right-style="solid" border-right-width="1px">
	
																		  
																	<fo:table table-layout="fixed" width="100%" border-collapse="collapse">
																		<fo:table-column column-width="proportional-column-width(55)" column-number="1"/>
																		<fo:table-column column-width="proportional-column-width(45)" column-number="2"/>
																		<fo:table-body>
																			<fo:table-row>
																				<fo:table-cell>
																						<fo:block font-weight="bold" text-align="left" color="rgb(119,169,212)" font-size="13pt">
																							Seguros Seleccionados
																						</fo:block>
																						<fo:table space-before="5mm" space-after="5mm" table-layout="fixed" width="100%" border-collapse="collapse">																	
																							<fo:table-column column-width="proportional-column-width(50)" column-number="1"/>
																							<fo:table-column column-width="proportional-column-width(20)" column-number="2"/>
																							<fo:table-column column-width="proportional-column-width(30)" column-number="3"/>
																							<fo:table-body>
																								<fo:table-row>
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-bottom-style="solid" border-bottom-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left" font-weight="bold">
																											Seguro Adicional
																										</fo:block>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-bottom-style="solid" border-bottom-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="center" font-weight="bold">
																											Escogido
																										</fo:block>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-bottom-style="solid" border-bottom-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="center" font-weight="bold">
																											Valor
																										</fo:block>
																									</fo:table-cell>
																									
																								</fo:table-row>
	
																								<fo:table-row>
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left">
																											Desgravamen D. Directo
																										</fo:block>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										      <xsl:if test="valorSeg1 != '0'">  
																														<fo:block text-align="center">
																															X
																														</fo:block>
																											    </xsl:if>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left"> 
																											$ <xsl:value-of select="valorSeg1"/>
																										</fo:block>
																									</fo:table-cell>
																								</fo:table-row>
																								
																								<fo:table-row>
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left">
																											Desgravamen Aval
																										</fo:block>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										      <xsl:if test="valorSeg2 != '0'">  
																														<fo:block text-align="center">
																															X
																														</fo:block>
																											    </xsl:if>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left"> 
																											$ <xsl:value-of select="valorSeg2"/>
																										</fo:block>
																									</fo:table-cell>
																								</fo:table-row>

																								<fo:table-row>
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left">
																											Renta Hospitalaria
																										</fo:block>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										      <xsl:if test="valorSeg3 != '0'">  
																														<fo:block text-align="center">
																															X
																														</fo:block>
																											    </xsl:if>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left"> 
																											$ <xsl:value-of select="valorSeg3"/>
																										</fo:block>
																									</fo:table-cell>
																								</fo:table-row>

																								<fo:table-row>
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left">
																											Enfermedades Graves
																										</fo:block>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										      <xsl:if test="valorSeg4 != '0'">  
																														<fo:block text-align="center">
																															X
																														</fo:block>
																											    </xsl:if>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left"> 
																											$ <xsl:value-of select="valorSeg4"/>
																										</fo:block>
																									</fo:table-cell>
																								</fo:table-row>

																								<fo:table-row>
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left">
																											Cesantia Involuntaria
																										</fo:block>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										      <xsl:if test="valorSeg5 != '0'">  
																														<fo:block text-align="center">
																															X
																														</fo:block>
																											    </xsl:if>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left"> 
																											$ <xsl:value-of select="valorSeg5"/>
																										</fo:block>
																									</fo:table-cell>
																								</fo:table-row>

																								<fo:table-row>
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left">
																											Doble Capital
																										</fo:block>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										      <xsl:if test="valorSeg6 != 0">  
																														<fo:block text-align="center">
																															X
																														</fo:block>
																											    </xsl:if>
																									</fo:table-cell>
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="left"> 
																											$ <xsl:value-of select="valorSeg6"/>
																										</fo:block>
																									</fo:table-cell>
																								</fo:table-row>																																																
																								
																								<fo:table-row>
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block font-weight="bold" text-align="left">
																											Monto Total: 
																										</fo:block>
																									</fo:table-cell>																									
																									
																									<fo:table-cell border-top-style="solid" border-top-width="1px"
																												  border-left-style="solid" border-left-width="1px"
																												  border-right-style="solid" border-right-width="1px">	
																										<fo:block text-align="center" font-weight="bold"> 
																											$ <xsl:value-of select="totalSeguros"/>
																										</fo:block>
																									</fo:table-cell>
																									<fo:table-cell border-top-style="solid" border-top-width="1px">
																										<fo:block text-align="left"></fo:block>
																									</fo:table-cell>  
																								</fo:table-row>	
																									
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
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
          </fo:block>				
				
					<fo:block margin-left="15px" margin-right="15px" font-size="9pt" font-family="Helvetica" text-align="left">
						<fo:block> </fo:block>
							<fo:inline>Notas Importantes:</fo:inline>                            
						<fo:block> </fo:block>
							<fo:inline>o	La aprobación y condiciones definitivas de un crédito simulado y/o solicitado están sujetas a confirmación de antecedentes financieros y comerciales al momento de la evaluación para el curse definitivo del crédito, el que puede ser aprobado o rechazado.</fo:inline>
						<fo:block> </fo:block>
							<fo:inline>o	Valores aproximados y solo rigen para la fecha en que fue realizada simulación.</fo:inline>
						<fo:block> </fo:block>                            
							<fo:inline>o	Para obtener un crédito de consumo no es necesario tomar seguros ni contratar otros servicios.</fo:inline>                            
						<fo:block> </fo:block>
							<fo:inline>o	Para crédito de consumo solicitado, es de absoluta voluntad del cliente, contratar los seguros seleccionados e indicados en esta cotización, cuyos precios declara conocer y aceptar. Además está en conocimiento, que puede obtener crédito con la misma tasa y demás condiciones que si no adquiere dichos seguros.</fo:inline>                            
						<fo:block> </fo:block>
							<fo:inline>o	Los seguros contratados, son cubiertos por  BCI Seguros Generales S.A y BCI Seguros Vida S.A.</fo:inline>                            
						<fo:block> </fo:block>
					</fo:block>				
                    <fo:block id="theEnd"/>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>