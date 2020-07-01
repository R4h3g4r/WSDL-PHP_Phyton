<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:java="http://xml.apache.org/xslt/java" exclude-result-prefixes="java">
	
<xsl:template match="/" name="inicio">
	<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="default-page" 
				page-height="11in" 
				page-width="8.5in" 
				margin-left="0.6in" 
				margin-right="0.6in">
				<fo:region-body margin-top="0.8in" margin-bottom="0.79in" />
			</fo:simple-page-master>
		</fo:layout-master-set>
		<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
		
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
					
					
							<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                <fo:table-column column-width="proportional-column-width(50)" />
                                <fo:table-column column-width="proportional-column-width(50)" />
                                <fo:table-body>
                                    <fo:table-row>
										<fo:table-cell>
											<fo:block>
											
												<fo:external-graphic width="100px" height="42px">
													<xsl:attribute name="src">
														<xsl:value-of select="VentasXML/logo"/>
													</xsl:attribute>
												</fo:external-graphic>
											
											</fo:block>
										</fo:table-cell>

										<fo:table-cell>
											<fo:block>
												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
													<fo:table-column column-width="proportional-column-width(30)" />
													<fo:table-column column-width="proportional-column-width(70)" />

													<fo:table-body>
														<fo:table-row>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																<fo:block>
																		<fo:inline color="#444444" font-size="8px">
																			<fo:inline font-size="8px" font-weight="bold">Cliente</fo:inline>
																		</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																<fo:block>													
																	<xsl:for-each select="VentasXML/razSocial">
																		<fo:inline color="#444444" font-size="8px">
																			<xsl:apply-templates />
																		</fo:inline>
																	</xsl:for-each>													
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																<fo:block>
																		<fo:inline color="#444444" font-size="8px">
																			<fo:inline font-size="8px" font-weight="bold">RUT</fo:inline>
																		</fo:inline>
																</fo:block>
															</fo:table-cell>
														 <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																<fo:block>
																	<xsl:for-each select="VentasXML/rut">
																		<fo:inline color="#444444" font-size="8px">
																			<xsl:apply-templates />
																		</fo:inline>
																	</xsl:for-each>		
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													 <fo:table-row>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																<fo:block>
																		<fo:inline color="#444444" font-size="8px">
																			<fo:inline font-size="8px" font-weight="bold">Banca</fo:inline>
																		</fo:inline>
																</fo:block>
															</fo:table-cell>
														 <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
															<fo:block>											
																<xsl:for-each select="VentasXML/banca">
																		<fo:inline color="#444444" font-size="8px">
																			<xsl:apply-templates />
																		</fo:inline>
																	</xsl:for-each>		
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													 <fo:table-row>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																<fo:block>
																		<fo:inline color="#444444" font-size="8px">
																			<fo:inline font-size="8px" font-weight="bold">Ejecutivo</fo:inline>
																		</fo:inline>
																</fo:block>
															</fo:table-cell>
														 <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
															<fo:block>											
																<xsl:for-each select="VentasXML/ejecutivo">
																		<fo:inline color="#444444" font-size="8px">
																			<xsl:apply-templates />
																		</fo:inline>
																	</xsl:for-each>		
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
							
							
							
							
							<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
								<fo:table-column column-width="proportional-column-width(100)" />
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:inline color="#444444" font-size="8px">
													<fo:inline font-size="8px">&#160;</fo:inline>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							
							
						<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
								<fo:table-column column-width="proportional-column-width(49)" />
								<fo:table-column column-width="proportional-column-width(2)" />
								<fo:table-column column-width="proportional-column-width(49)" />
								<fo:table-body>
								
									<fo:table-row>
										<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="center" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
											<fo:block>												
													<fo:inline color="#444444" font-size="8px">
														<fo:inline font-size="8px" font-weight="bold">VENTAS </fo:inline>
													</fo:inline>												
											</fo:block>
										</fo:table-cell>										
										<fo:table-cell>
											<fo:block>												
												<fo:inline color="#444444" font-size="8px">
													<fo:inline font-size="8px">&#160;</fo:inline>
												</fo:inline>												
											</fo:block>
										</fo:table-cell>										
										<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="center" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
											<fo:block>												
													<fo:inline color="#444444" font-size="8px">
														<fo:inline font-size="8px" font-weight="bold">VARIACION  </fo:inline>
													</fo:inline>												
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:inline color="#444444" font-size="8px">
													<fo:inline font-size="8px">&#160;</fo:inline>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									
									<fo:table-row>
										<fo:table-cell>
											<fo:block>											
											
													<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
														<fo:table-column column-width="proportional-column-width(40)" />
														<fo:table-column column-width="proportional-column-width(20)" />
														<fo:table-column column-width="proportional-column-width(20)" />
														<fo:table-column column-width="proportional-column-width(20)" />
														<fo:table-body>
															<fo:table-row>
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<fo:inline color="#444444" font-size="8px">
																				<fo:inline font-size="8px">&#160;</fo:inline>
																			</fo:inline>
																		</fo:block>
																	</fo:table-cell>	
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<xsl:for-each select="VentasXML/periodos/periodo1">
																				<fo:inline color="#444444" font-size="8px" font-weight="bold">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<xsl:for-each select="VentasXML/periodos/periodo2">
																				<fo:inline color="#444444" font-size="8px" font-weight="bold">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<xsl:for-each select="VentasXML/periodos/periodo3">
																				<fo:inline color="#444444" font-size="8px" font-weight="bold">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>																	
															</fo:table-row>
															
															<xsl:for-each select="VentasXML/Ventas/VentasDetalle">
																<fo:table-row>															
																		<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="44%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																			<fo:block>
																					<fo:inline color="#444444" font-size="8px">
																						<xsl:value-of select='periodo' />
																					</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																			<fo:block>
																					<fo:inline color="#444444" font-size="8px">
																						<xsl:value-of select='ventaPeriodo1' />
																					</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																			<fo:block>
																					<fo:inline color="#444444" font-size="8px">
																						<xsl:value-of select='ventaPeriodo2' />
																					</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																			<fo:block>
																					<fo:inline color="#444444" font-size="8px">
																						<xsl:value-of select='ventaPeriodo3' />
																					</fo:inline>
																			</fo:block>
																		</fo:table-cell>																	
																</fo:table-row>
															</xsl:for-each>
														</fo:table-body>
													</fo:table>
													
													
													<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
														<fo:table-column column-width="proportional-column-width(40)" />
														<fo:table-column column-width="proportional-column-width(20)" />
														<fo:table-column column-width="proportional-column-width(20)" />
														<fo:table-column column-width="proportional-column-width(20)" />
														<fo:table-body>
															<fo:table-row>
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="44%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																		<fo:block>
																			<fo:inline color="#444444" font-size="8px">
																				<fo:inline font-size="8px">TOTAL VENTAS</fo:inline>
																			</fo:inline>
																		</fo:block>
																	</fo:table-cell>	
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<xsl:for-each select="VentasXML/totalesPromedios/totVenta1">
																				<fo:inline color="#444444" font-size="8px">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<xsl:for-each select="VentasXML/totalesPromedios/totVenta2">
																				<fo:inline color="#444444" font-size="8px">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<xsl:for-each select="VentasXML/totalesPromedios/totVenta3">
																				<fo:inline color="#444444" font-size="8px">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>																	
															</fo:table-row>
															<fo:table-row>
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="44%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																		<fo:block>
																			<fo:inline color="#444444" font-size="8px">
																				<fo:inline font-size="8px">PROMEDIO</fo:inline>
																			</fo:inline>
																		</fo:block>
																	</fo:table-cell>	
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<xsl:for-each select="VentasXML/totalesPromedios/totPromVenta1">
																				<fo:inline color="#444444" font-size="8px">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<xsl:for-each select="VentasXML/totalesPromedios/totPromVenta2">
																				<fo:inline color="#444444" font-size="8px">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<xsl:for-each select="VentasXML/totalesPromedios/totPromVenta3">
																				<fo:inline color="#444444" font-size="8px">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>																	
															</fo:table-row>
															<fo:table-row>
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="44%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																		<fo:block>
																			<fo:inline color="#444444" font-size="8px">
																				<fo:inline font-size="8px">VARIACION (t-1)</fo:inline>
																			</fo:inline>
																		</fo:block>
																	</fo:table-cell>	
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<fo:inline color="#444444" font-size="8px">
																				<fo:inline font-size="8px">&#160;</fo:inline>
																			</fo:inline>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<xsl:for-each select="VentasXML/totalesPromedios/totVarVenta1">
																				<fo:inline color="#444444" font-size="8px">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																		<fo:block>
																			<xsl:for-each select="VentasXML/totalesPromedios/totVarVenta2">
																				<fo:inline color="#444444" font-size="8px">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>																	
															</fo:table-row>
															</fo:table-body>
													</fo:table>											
													
													
											</fo:block>
										</fo:table-cell>
										
										<fo:table-cell>
											<fo:block>
												<fo:inline color="#444444" font-size="8px">
													<fo:inline font-size="8px">&#160;</fo:inline>
												</fo:inline>
											</fo:block>
										</fo:table-cell>	
										
										<fo:table-cell>
											<fo:block>
											
											
												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
													<fo:table-column column-width="proportional-column-width(60)" />
													<fo:table-column column-width="proportional-column-width(20)" />
													<fo:table-column column-width="proportional-column-width(20)" />
													<fo:table-body>
													
													<fo:table-row>															
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																<fo:block>
																	<fo:inline color="#444444" font-size="8px">
																		<fo:inline font-size="8px" font-weight="bold">&#160;</fo:inline>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																<fo:block>
																	<xsl:for-each select="VentasXML/periodos">
																		<fo:inline color="#444444" font-size="8px" font-weight="bold">
																			<xsl:value-of select='periodo1' /> - <xsl:value-of select='periodo2' />
																		</fo:inline>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																<fo:block>
																	<xsl:for-each select="VentasXML/periodos">
																		<fo:inline color="#444444" font-size="8px" font-weight="bold">
																			<xsl:value-of select='periodo2' /> - <xsl:value-of select='periodo3' />																			
																		</fo:inline>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>																	
													</fo:table-row>
													
													<xsl:for-each select="VentasXML/Variacion/VariacionDetalle">
														<fo:table-row>														
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="44%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																	<fo:block>
																			<fo:inline color="#444444" font-size="8px">
																				<xsl:value-of select='periodo' />
																			</fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																	<fo:block>
																			<fo:inline color="#444444" font-size="8px">
																				<xsl:value-of select='variacion1' />
																			</fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																	<fo:block>
																			<fo:inline color="#444444" font-size="8px">
																				<xsl:value-of select='variacion2' />
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
								
							

							<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
								<fo:table-column column-width="proportional-column-width(100)" />
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:inline color="#444444" font-size="8px">
													<fo:inline font-size="8px">&#160;</fo:inline>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
		

							<fo:external-graphic width="700px" height="350px">
								<xsl:attribute name="src">
									<xsl:value-of select="VentasXML/grafico"/>
								</xsl:attribute>
							</fo:external-graphic>

												
		
		
					
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>