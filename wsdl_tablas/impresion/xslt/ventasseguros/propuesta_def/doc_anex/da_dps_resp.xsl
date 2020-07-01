<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_da_dps_resp">
		<fo:block  padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="{$varTablaAncho}">
				<fo:table-column/>
				<fo:table-body>
		
					<xsl:if test=" cabecera != '' and cabecera != ' ' ">
						<fo:table-row keep-with-next="always">
							<fo:table-cell>
								<fo:block>
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column />
										<fo:table-body>
											<fo:table-row keep-with-next="always">
												<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
													<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
														<xsl:value-of select="cabecera"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>

					<xsl:for-each select="da-sub-zonas/da-zona">
						<xsl:if test=" cabecera != '' and cabecera != ' ' ">
							<fo:table-row keep-with-next="always">
								<fo:table-cell>
									<fo:block  padding-before="{$varEspacioExtreSecciones}"  keep-with-next="always">
										<fo:table table-layout="fixed" width="{$varTablaAncho}">
											<fo:table-column />
											<fo:table-body>
												<fo:table-row keep-with-next="always">
													<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
														<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
															<xsl:value-of select="cabecera"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:if>
												
						<xsl:for-each select="da-atributos/da-atributos-grupo/da-atributo">
							<fo:table-row>
								<fo:table-cell>
									<fo:block  padding-before="{$varEspacioExtreSecciones}">
										<fo:table table-layout="fixed" width="{$varTablaAncho}">
											<fo:table-column />
											<fo:table-body>
												<fo:table-row keep-with-next="always">
													<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
														<fo:block>
															<fo:table table-layout="fixed" width="100%">
																<fo:table-column/>
																<fo:table-body>
																	<fo:table-row keep-with-next="always">
																		<fo:table-cell background-color="{$varTablaColumnaLabelColor}"  padding="2pt">
																			<fo:block>
																				<xsl:value-of select="glosa" disable-output-escaping="no"/>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row keep-with-next="always">
																		<fo:table-cell background-color="{$varTablaColumnaValorColor}" padding="2pt">
																			<fo:block>
																				<xsl:choose>
																					<xsl:when test="count(da-dominio/da-dom-valor)>0">
																						<fo:table table-layout="fixed" width="100%">																	
																							<fo:table-column column-width="16pt"/>
																							<fo:table-column/>
																							<fo:table-body>
																								<xsl:for-each select="da-dominio/da-dom-valor">
																									<fo:table-row>
																										<fo:table-cell padding="1pt" display-align="center" text-align="center">
																											<fo:block>
																												<fo:table table-layout="fixed" width="10pt">
																													<fo:table-column/>
																													<fo:table-body>
																														<fo:table-row>
																															<fo:table-cell height="10pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
																																<fo:block>
																																	<xsl:choose>
																																		<xsl:when test="../../respuesta = valor"><xsl:text>X</xsl:text></xsl:when>
																																		<xsl:otherwise><xsl:text> </xsl:text></xsl:otherwise>
																																	</xsl:choose>
																																</fo:block>
																															</fo:table-cell>
																														</fo:table-row>
																													</fo:table-body>
																												</fo:table>
																											</fo:block>
																										</fo:table-cell>
																										<fo:table-cell padding="2pt" display-align="center">
																											<fo:block><xsl:value-of select="valor"/></fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																								</xsl:for-each>
																							</fo:table-body>
																						</fo:table>																				
																					</xsl:when>
																					<xsl:otherwise>
																						<fo:table table-layout="fixed" width="100%">																	
																							<fo:table-column/>
																							<fo:table-body>
																								<fo:table-row>
																									<fo:table-cell height="10pt" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="000000">
																										<fo:block><xsl:text> </xsl:text><xsl:value-of select="respuesta" disable-output-escaping="no"/></fo:block>
																									</fo:table-cell>
																								</fo:table-row>
																							</fo:table-body>
																						</fo:table>
																					</xsl:otherwise>
																				</xsl:choose>
																				
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
						</xsl:for-each>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
</xsl:stylesheet>
