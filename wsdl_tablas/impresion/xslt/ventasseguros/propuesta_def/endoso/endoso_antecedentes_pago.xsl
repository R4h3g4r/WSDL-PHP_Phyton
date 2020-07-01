<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_endoso_antecedentes_pago">
		<xsl:for-each select="universo/pago">
			<xsl:if test=" (count( responsabledelpago/atributos ) > 0) or (formadepago != '') or (diapagoanterior != '') ">
				<fo:block padding-before="{$varEspacioExtreSecciones}">
					<fo:table table-layout="fixed" width="{$varTablaAncho}">
						<fo:table-column/>
						<fo:table-header>
							<fo:table-row keep-with-next="always">
								<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
									<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
										<xsl:text>ANTECEDENTES DEL PAGO</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-header>
						<fo:table-body>
							<!-- *********** RESPONSABLE DE PAGO (INI) *********** -->
							<xsl:if test=" count( responsabledelpago/atributos ) > 0 ">
								<xsl:for-each select="responsabledelpago">
									<fo:table-row keep-with-next="always">
										<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
											<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
												<xsl:text>RESPONSABLE DE PAGO</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
											<fo:table table-layout="fixed" width="{$varTablaAncho}">
												<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
												<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
												<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
												<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
												<fo:table-body>
													<xsl:for-each select="atributos">
														<fo:table-row keep-with-next="always">
															<fo:table-cell padding-left="5pt">
																<fo:block>
																	<xsl:value-of disable-output-escaping="no" select="parametroleft"/>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding-left="5pt">
																<fo:block>
																	<xsl:value-of disable-output-escaping="no" select="valorleft"/>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding-left="5pt">
																<fo:block>
																	<xsl:value-of disable-output-escaping="no" select="parametroright"/>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding-left="5pt">
																<fo:block>
																	<xsl:value-of disable-output-escaping="no" select="valorright"/>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:for-each>
												</fo:table-body>
											</fo:table>
										</fo:table-cell>
									</fo:table-row>
								</xsl:for-each>
							</xsl:if>
							<!-- *********** RESPONSABLE DE PAGO (FIN) *********** -->
							<xsl:for-each select="siguientepago">
								<xsl:if test=" formadepago != '' ">
									<fo:table-row>
										<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
											<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
												<xsl:text>Cambiar forma de pago a:</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-previous="always">
										<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
											<fo:table table-layout="fixed" width="{$varTablaAncho}">
												<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
												<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
												<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
												<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
												<fo:table-body>
													<fo:table-row keep-with-next="always">
														<fo:table-cell padding-left="5pt">
															<fo:block>
																<xsl:text>Forma pago:</xsl:text>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="5pt">
															<fo:block>
																<xsl:value-of disable-output-escaping="no" select="formadepago"/>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="5pt">
															<fo:block>
																<!--<xsl:text>Fecha primer venc.:</xsl:text>-->
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="5pt">
															<fo:block>
																<!--<xsl:value-of disable-output-escaping="no" select="fechaprimervenc"/>-->
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<xsl:if test=" nocuenta != '' ">
														<xsl:if test=" banco != '' ">
															<fo:table-row keep-with-next="always">
																<fo:table-cell padding-left="5pt">
																	<fo:block>
																		<xsl:text>Banco:</xsl:text>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell padding-left="5pt">
																	<fo:block>
																		<xsl:value-of disable-output-escaping="no" select="banco"/>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell padding-left="5pt">
																	<fo:block>
																		<xsl:value-of disable-output-escaping="no" select="tiponocuenta"/>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell padding-left="5pt">
																	<fo:block>
																		<xsl:value-of disable-output-escaping="no" select="nocuenta"/>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:if>
														<xsl:if test=" banco = '' ">
															<fo:table-row keep-with-next="always">
																<fo:table-cell padding-left="5pt">
																	<fo:block>
																		<xsl:value-of disable-output-escaping="no" select="tiponocuenta"/>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell padding-left="5pt">
																	<fo:block>
																		<xsl:value-of disable-output-escaping="no" select="nocuenta"/>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell padding-left="5pt">
																	<fo:block/>
																</fo:table-cell>
																<fo:table-cell padding-left="5pt">
																	<fo:block/>
																</fo:table-cell>
															</fo:table-row>
														</xsl:if>
													</xsl:if>
												</fo:table-body>
											</fo:table>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test=" diapagoanterior != '' ">
									<fo:table-row>
										<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
											<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
												<xsl:text>Cambiar día de pago:</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-previous="always">
										<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
											<fo:table table-layout="fixed" width="{$varTablaAncho}">
												<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
												<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
												<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
												<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
												<fo:table-body>
													<fo:table-row keep-with-next="always">
														<fo:table-cell padding-left="5pt">
															<fo:block>
																<xsl:text>Día de pago anterior:</xsl:text>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="5pt">
															<fo:block>
																<xsl:value-of disable-output-escaping="no" select="diapagoanterior"/>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="5pt">
															<fo:block>
																<xsl:text>Día de pago:</xsl:text>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="5pt">
															<fo:block>
																<xsl:value-of disable-output-escaping="no" select="diapago"/>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
							</xsl:for-each>
							
							<xsl:for-each select="factura">
								<fo:table-row keep-with-next="always">
									<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
										<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
											<xsl:text>Factura (sólo si es contribuyente de I.V.A):</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
										<fo:table table-layout="fixed" width="{$varTablaAncho}">
											<fo:table-column column-width="{$varTablaColumnaLabelAncho}"/>
											<fo:table-column column-width="{$varTablaColumnaValorAncho}"/>
											<fo:table-column column-width="{$varTablaColumnaLabelAncho}"/>
											<fo:table-column column-width="{$varTablaColumnaValorAncho}"/>
											<fo:table-body>
												<fo:table-row  keep-with-next="always">
													<fo:table-cell padding-left="5pt" background-color="{$varTablaColumnaLabelColor}">
														<fo:block><xsl:text>Envío de factura:</xsl:text></fo:block>
													</fo:table-cell>
													<fo:table-cell padding-left="5pt" number-columns-spanned="3" background-color="{$varTablaColumnaValorColor}">
														<fo:block><xsl:value-of select="envio"/></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row  keep-with-next="always">
													<fo:table-cell padding-left="5pt" background-color="{$varTablaColumnaLabelColor}">
														<fo:block><xsl:text>Dirección:</xsl:text></fo:block>
													</fo:table-cell>
													<fo:table-cell padding-left="5pt" number-columns-spanned="3" background-color="{$varTablaColumnaValorColor}">
														<fo:block><xsl:value-of select="direccion"/></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row  keep-with-next="always" background-color="{$varTablaColumnaValorColor}">
													<fo:table-cell padding-left="5pt" number-columns-spanned="4">
														<fo:block>
															<xsl:text>En caso afirmativo, el responsable del pago identificado anteriormente declara ser contribuyente de IVA.</xsl:text>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</fo:table-cell>
								</fo:table-row>
							</xsl:for-each>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
