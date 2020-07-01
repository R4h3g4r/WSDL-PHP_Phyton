<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1">
    <xsl:decimal-format name="european" decimal-separator="," grouping-separator="." />


    <xsl:template match="raiz">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master margin-right="2.5cm" master-name="Letter" page-height="29.7cm" page-width="21.0cm" margin="0.8cm">
                    <fo:region-body />
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="Letter">
                <fo:flow flow-name="xsl-region-body">
                    <xsl:choose>
                        <xsl:when test="/raiz/idguia">

							<fo:block text-align="center" font-size="18pt" space-before="3mm" >  Contenido Guía de despacho  </fo:block> 

							<fo:table space-before="6mm">
								<fo:table-column/>
								<fo:table-body>
									<fo:table-row>
                                        <fo:table-cell>
                                            <fo:block   text-align="center" font-size="12pt">  ID Guía:  <xsl:value-of select="idguia"/></fo:block>  
											<fo:block   text-align="center" font-size="12pt">ID Valija:  <xsl:value-of select="idvalija"/></fo:block>                                                                                
                                        </fo:table-cell>
                                    </fo:table-row>	
								</fo:table-body>
							</fo:table>			

							<fo:table space-before="6mm"  border-style="solid" border-width="0.5pt" table-layout="fixed" width="100%" >
								<fo:table-column column-width="proportional-column-width(1)"/>
								<fo:table-column column-width="proportional-column-width(1)"/>
								<fo:table-column column-width="proportional-column-width(1)"/>
								<fo:table-column column-width="proportional-column-width(1)"/>
								<fo:table-header>
											<fo:table-row>
												<fo:table-cell  border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Número de Sobre</fo:block>
												</fo:table-cell>
												<fo:table-cell  border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block  font-weight="bold" text-align="center">Emitido Por</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Fecha Emisión</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block  font-weight="bold" text-align="center">Destino</fo:block>
												</fo:table-cell>
											</fo:table-row>
								</fo:table-header>
								<xsl:choose>
									<xsl:when test="movimientoGuia/movimiento/numSobre">
										<xsl:for-each select="movimientoGuia/movimiento">
											<fo:table-body>																				
													<fo:table-row>
														<fo:table-cell border-style="solid" border-width="0.1pt">
															<fo:block   text-align="center" font-size="8pt"><xsl:value-of select="numSobre"/></fo:block>                                           
														</fo:table-cell>
														<fo:table-cell border-style="solid" border-width="0.1pt">
															<fo:block   text-align="center" font-size="6pt"><xsl:value-of select="emisor"/></fo:block>                                             
														</fo:table-cell>
														<fo:table-cell border-style="solid" border-width="0.1pt">
																 <xsl:variable name="datestr">
																	 <xsl:value-of select="substring-before(fecha,' ')" />
																 </xsl:variable>													 
																 <xsl:variable name="mm">
																	 <xsl:value-of select="substring($datestr,6,2)" />
																 </xsl:variable>													 
																 <xsl:variable name="dd">
																	<xsl:value-of select="substring($datestr,9,2)" />
																 </xsl:variable>													 
																 <xsl:variable name="yyyy">
																	<xsl:value-of select="substring($datestr,1,4)" />
																 </xsl:variable>													 
																 <xsl:variable name="horastr">
																	 <xsl:value-of select="substring-after(fecha,' ')" />
																 </xsl:variable>
																 <xsl:variable name="hh">
																	 <xsl:value-of select="substring($horastr,1,2)" />
																 </xsl:variable>													 
																 <xsl:variable name="MM">
																	<xsl:value-of select="substring($horastr,4,2)" />
																 </xsl:variable> 
															<fo:block   text-align="center" font-size="8pt"><xsl:value-of select="concat($dd,'/', $mm, '/', $yyyy )" /> <xsl:value-of select="concat(' ', $hh,':', $MM)" /> </fo:block>                                             
														</fo:table-cell>
														<fo:table-cell border-style="solid" border-width="0.1pt">
															<fo:block   text-align="center" font-size="8pt"><xsl:value-of select="destino"/></fo:block>                                            
														</fo:table-cell>
													</fo:table-row>																												
											</fo:table-body>
										</xsl:for-each>	
									</xsl:when>
									<xsl:otherwise>
										<fo:table-body>												
											<fo:table-row>
												<fo:table-cell border-style="solid" border-width="0.1pt">												                                          
												</fo:table-cell>											
											</fo:table-row>											
										</fo:table-body>
									</xsl:otherwise>
								</xsl:choose>
							</fo:table>
							<xsl:if test="mensajeVacio">
								<fo:table   border-style="solid" border-width="0.1pt" table-layout="fixed" width="100%" >
									<fo:table-column column-width="proportional-column-width(1)"/>
									<fo:table-body>
											<fo:table-row>
												<fo:table-cell border-style="solid" border-width="0.1pt">
													<fo:block   text-align="center" font-size="8pt"><xsl:value-of select="mensajeVacio"/></fo:block>                                           
												</fo:table-cell>											
											</fo:table-row>
										</fo:table-body>
									</fo:table>
							</xsl:if>




						<xsl:for-each select="guiasAsociadas/guia">
							<fo:block space-before="6mm" text-align="center" font-size="12pt">  ID Guía Anexa:  <xsl:value-of select="idguia"/></fo:block>  

							<fo:table space-before="6mm"  border-style="solid" border-width="0.5pt" table-layout="fixed" width="100%" >
								<fo:table-column column-width="proportional-column-width(1)"/>
								<fo:table-column column-width="proportional-column-width(1)"/>
								<fo:table-column column-width="proportional-column-width(1)"/>
								<fo:table-column column-width="proportional-column-width(1)"/>
								<fo:table-header>
											<fo:table-row>
												<fo:table-cell  border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Número de Sobre</fo:block>
												</fo:table-cell>
												<fo:table-cell  border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block  font-weight="bold" text-align="center">Emitido Por</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Fecha Emisión</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block  font-weight="bold" text-align="center">Destino</fo:block>
												</fo:table-cell>
											</fo:table-row>
								</fo:table-header>
								<xsl:choose>
									<xsl:when test="movimientoGuia/numSobre">
										<xsl:for-each select="movimientoGuia">
											<fo:table-body>																				
													<fo:table-row>
														<fo:table-cell border-style="solid" border-width="0.1pt">
															<fo:block   text-align="center" font-size="8pt"><xsl:value-of select="numSobre"/></fo:block>                                           
														</fo:table-cell>
														<fo:table-cell border-style="solid" border-width="0.1pt">
															<fo:block   text-align="center" font-size="6pt"><xsl:value-of select="emisor"/></fo:block>                                             
														</fo:table-cell>
														<fo:table-cell border-style="solid" border-width="0.1pt">
																 <xsl:variable name="datestr">
																	 <xsl:value-of select="substring-before(fecha,' ')" />
																 </xsl:variable>													 
																 <xsl:variable name="mm">
																	 <xsl:value-of select="substring($datestr,6,2)" />
																 </xsl:variable>													 
																 <xsl:variable name="dd">
																	<xsl:value-of select="substring($datestr,9,2)" />
																 </xsl:variable>													 
																 <xsl:variable name="yyyy">
																	<xsl:value-of select="substring($datestr,1,4)" />
																 </xsl:variable>													 
																 <xsl:variable name="horastr">
																	 <xsl:value-of select="substring-after(fecha,' ')" />
																 </xsl:variable>
																 <xsl:variable name="hh">
																	 <xsl:value-of select="substring($horastr,1,2)" />
																 </xsl:variable>													 
																 <xsl:variable name="MM">
																	<xsl:value-of select="substring($horastr,4,2)" />
																 </xsl:variable> 
															<fo:block   text-align="center" font-size="8pt"><xsl:value-of select="concat($dd,'/', $mm, '/', $yyyy )" /> <xsl:value-of select="concat(' ', $hh,':', $MM)" /> </fo:block>                                             
														</fo:table-cell>
														<fo:table-cell border-style="solid" border-width="0.5pt">
															<fo:block   text-align="center" font-size="8pt"><xsl:value-of select="destino"/></fo:block>                                            
														</fo:table-cell>
													</fo:table-row>																												
											</fo:table-body>
										</xsl:for-each>	
									</xsl:when>
									<xsl:otherwise>
										<fo:table-body>												
											<fo:table-row>
												<fo:table-cell border-style="solid" border-width="0.1pt">												                                          
												</fo:table-cell>											
											</fo:table-row>											
										</fo:table-body>
									</xsl:otherwise>
								</xsl:choose>
							</fo:table>
							<xsl:if test="mensajeVacio">
								<fo:table   border-style="solid" border-width="0.1pt" table-layout="fixed" width="100%" >
									<fo:table-column column-width="proportional-column-width(1)"/>
									<fo:table-body>
											<fo:table-row>
												<fo:table-cell border-style="solid" border-width="0.1pt">
													<fo:block   text-align="center" font-size="10pt"><xsl:value-of select="mensajeVacio"/></fo:block>                                           
												</fo:table-cell>											
											</fo:table-row>
										</fo:table-body>
									</fo:table>
							</xsl:if>
						</xsl:for-each>



                        </xsl:when>
                        <xsl:otherwise>
                            <fo:block text-align="center" border-style="solid" border-after-color="BLACK" padding="0.5mm">
                                <fo:inline font-weight="bold" font-size="8pt">
                                    <xsl:value-of select="mensajeError" />
                                </fo:inline>
                            </fo:block>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
