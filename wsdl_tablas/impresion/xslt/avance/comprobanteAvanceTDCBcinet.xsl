<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:decimal-format name="european" decimal-separator=',' grouping-separator='.' />
	<xsl:template match="info">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:fox="http://xml.apache.org/fop/extensions">
			<fo:layout-master-set>
				<fo:simple-page-master margin-right="2.0cm" margin-left="2.0cm" margin-bottom="1.0cm" margin-top="1.0cm" page-width="21cm" page-height="29.7cm" master-name="first">
					<fo:region-body margin-bottom="1.5cm" margin-top="1.5cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="first" language="en" hyphenate="true">
				
				<fo:flow flow-name="xsl-region-body">

					<fo:table text-align="left" table-layout="fixed">
						<fo:table-column column-width="16.30cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="12pt" color="#ababab"
										font-size="11px" space-before.optimum="1.5pt"
										space-after.optimum="1.5pt" keep-together="always" text-align="center">
										<fo:inline white-space-collapse="false">
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<!-- Top -->
									<fo:table text-align="left" table-layout="fixed">
										<fo:table-column column-width="16.30cm" />
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell>
													
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell>

													<fo:table text-align="left" table-layout="fixed">
														<fo:table-column column-width="13.30cm" />
														<fo:table-column column-width="3cm" />
														<fo:table-body>
															<fo:table-row>
																<fo:table-cell>
																	<!-- Logotipo Banco -->
																	<fo:table text-align="right" table-layout="fixed">
																		<fo:table-column column-width="13.30cm" />
																		
																		<fo:table-body>
																			<fo:table-row>
																				<fo:table-cell>
																					<fo:block line-height="12pt" font-size="22.5pt"
																						space-before.optimum="1.5pt" space-after.optimum="1.5pt"
																						keep-together="always" text-align="start">
																						Avance Tarjeta de Crédito
																						<fo:inline white-space-collapse="false">
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																			<fo:table-row>
																				<fo:table-cell>
																					<fo:block line-height="12pt" font-size="20pt"
																						space-before.optimum="1.5pt" space-after.optimum="1.5pt"
																						keep-together="always" text-align="start">
																						
																						<fo:inline white-space-collapse="false">
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																			<fo:table-row>
																				<fo:table-cell>
																					<fo:block line-height="12pt" font-size="15pt"
																						space-before.optimum="1.5pt" space-after.optimum="1.5pt"
																						keep-together="always" text-align="start">
																						Comprobante 
																						<fo:inline white-space-collapse="false">
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																			<fo:table-row>
																				<fo:table-cell>
																					<fo:block line-height="10pt" space-before.optimum="10pt" space-after.optimum="1pt"> </fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																		</fo:table-body>
																	</fo:table>
																	<!-- FIN - Logotipo Banco -->
																</fo:table-cell>
																<fo:table-cell >
																	<fo:external-graphic alignment-adjust="right">
																		<xsl:attribute name="src">
																			<xsl:value-of select="rutaImagen"/>02-logo-bci.gif
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:table-cell>
															</fo:table-row>
														</fo:table-body>
													</fo:table>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell></fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell>
													<fo:external-graphic>
														<xsl:attribute name="src">
															<xsl:value-of select="rutaImagen"/>cuenta_corriente_01.jpg
														</xsl:attribute>
													</fo:external-graphic>
													
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >
													<fo:block line-height="12pt" space-before.optimum="12pt"
													space-after.optimum="6pt"> </fo:block>
												</fo:table-cell>
											</fo:table-row>
											
											<fo:table-row>
												<fo:table-cell></fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
									<fo:table text-align="left" table-layout="fixed">
										<fo:table-column column-width="16.30cm" />
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell></fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
									<!-- Fin Top -->


									<!-- Contenedor de Titulo y Bajada -->
									<fo:table text-align="left" table-layout="fixed">
										<fo:table-column column-width="16.30cm" />
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell>
													<fo:block line-height="12pt" font-size="10pt"
														space-before.optimum="1.5pt" space-after.optimum="1.5pt"
														keep-together="always" text-align="end">
														<fo:inline white-space-collapse="false">
														</fo:inline>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell>
													<fo:table text-align="left" table-layout="fixed">
														<fo:table-column column-width="16.30cm" />
														<fo:table-body>
															<fo:table-row>
																<fo:table-cell>

																	<fo:table text-align="left" table-layout="fixed">
																		<fo:table-column column-width="16.30cm" />
																		<fo:table-body>
																			<fo:table-row>
																				<fo:table-cell>
																					<fo:block line-height="12pt"
																						space-before.optimum="1.5pt" space-after.optimum="1.5pt"
																						keep-together="always" text-align="start">
																						<fo:inline font-size="11.5pt">Nombre 
																							Cliente: <fo:inline  ><xsl:value-of select="nombreCliente"/></fo:inline>
																						</fo:inline>
																						<fo:inline font-size="10pt">
																							<fo:inline white-space-collapse="false">
																							</fo:inline>
																						</fo:inline>
																						<fo:table text-align="left" table-layout="fixed">
																							<fo:table-column column-width="1.15cm" />
																							<fo:table-column column-width="15.15cm" />
																							<fo:table-body>
																								<fo:table-row>
																									<fo:table-cell
																										number-columns-spanned="2">
																										<fo:block line-height="12pt"
																											space-before.optimum="1.5pt"
																											space-after.optimum="1.5pt" keep-together="always"
																											text-align="start">
																											<fo:inline font-size="10pt">Fecha del Avance: </fo:inline>
																											<fo:inline font-size="10pt"  >
																												<fo:inline white-space-collapse="false">
																												</fo:inline>
																												<xsl:value-of select="fecha"/>
																												<fo:inline white-space-collapse="false">
																												</fo:inline>
																											</fo:inline>
																											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"> </fo:block>
																											<fo:block line-height="12pt" space-before.optimum="3pt" space-after.optimum="3pt"> </fo:block>
																										</fo:block>
																									</fo:table-cell>
																								</fo:table-row>
																									<fo:table-row>
																										<fo:table-cell >
																											<fo:block line-height="12pt" space-before.optimum="3pt"
																											space-after.optimum="3pt"> </fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																									<fo:table-row>
																										<fo:table-cell >
																											<fo:block line-height="12pt" space-before.optimum="1.5pt"
																											space-after.optimum="1.5pt"> </fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																								<fo:table-row>
																									<fo:table-cell>
																										<fo:table text-align="left"
																											table-layout="fixed">
																											<fo:table-column
																												column-width="6.30cm" />
																											<fo:table-column
																												column-width="10cm" />
																											<fo:table-body>
																												<fo:table-row>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"  keep-together="always" text-align="start">Tarjeta de Crédito</fo:block>
																													</fo:table-cell>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always" text-align="start"><xsl:value-of select="nombreTDC"/></fo:block>
																													</fo:table-cell>
																												</fo:table-row>
																												<fo:table-row>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always"  text-align="start">Cuenta de destino</fo:block>
																													</fo:table-cell>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always" text-align="start"><xsl:value-of select="cuenta"/></fo:block>
																													</fo:table-cell>
																												</fo:table-row>
																												<fo:table-row>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always"  text-align="start">Monto del Avance</fo:block>
																													</fo:table-cell>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always" text-align="start">
																															$
																															<fo:inline
																																white-space-collapse="false">
																															</fo:inline>
																															<xsl:value-of select="monto"/>
																														</fo:block>
																													</fo:table-cell>
																												</fo:table-row>
																												<fo:table-row>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always"  text-align="start">Número y Monto de Cuotas
																														</fo:block>
																													</fo:table-cell>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always" text-align="start"><xsl:value-of select="numCuota"/> cuotas de $<xsl:value-of select="cuota"/> cada una. 
																														</fo:block>
																													</fo:table-cell>
																												</fo:table-row>
																												<fo:table-row>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always"  text-align="start">Comisión
																														</fo:block>
																													</fo:table-cell>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always" text-align="start">
																															$
																															<fo:inline
																																white-space-collapse="false">
																															</fo:inline>
																															<xsl:value-of select="comision"/>
																														</fo:block>
																													</fo:table-cell>
																												</fo:table-row>
																												<fo:table-row>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always"  text-align="start">Tasa de Interés Mensual</fo:block>
																													</fo:table-cell>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always" text-align="start">
																															<xsl:value-of select="tasa"/>
																															<fo:inline
																																white-space-collapse="false">
																															</fo:inline>
																															%
																														</fo:block>
																													</fo:table-cell>
																												</fo:table-row>
																												<fo:table-row>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always"  text-align="start">Carga Anual Equivalente (CAE)</fo:block>
																													</fo:table-cell>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always" text-align="start">
																															<xsl:value-of select="cae"/>
																															<fo:inline
																																white-space-collapse="false">
																															</fo:inline>
																															%
																														</fo:block>
																													</fo:table-cell>
																												</fo:table-row>
																												<fo:table-row>
																													<fo:table-cell>
																														<fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"  keep-together="always" text-align="start">Costo Total del Crédito (CTC)</fo:block>
																													</fo:table-cell>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always" text-align="start">
																															$
																															<fo:inline white-space-collapse="false">
																															</fo:inline>
																															<xsl:value-of select="ctc"/>
																														</fo:block>
																													</fo:table-cell>
																												</fo:table-row>
																												<fo:table-row>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="6.5pt"
																															space-after.optimum="6.5pt"
																															keep-together="always" text-align="start">
																															<fo:inline
																																white-space-collapse="false">
																															</fo:inline>
																														</fo:block>
																													</fo:table-cell>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="4.5pt"
																															space-after.optimum="4.5pt"
																															keep-together="always" text-align="start">
																															<fo:inline
																																white-space-collapse="false">
																															</fo:inline>
																														</fo:block>
																													</fo:table-cell>
																													<fo:table-cell></fo:table-cell>
																												</fo:table-row>
																												<fo:table-row>
																													<fo:table-cell>
																														<fo:block line-height="12pt"
																															font-size="10pt" space-before.optimum="1.5pt"
																															space-after.optimum="1.5pt"
																															keep-together="always"  text-align="start">Recibí conforme.</fo:block>
																														
																													</fo:table-cell>
																													<fo:table-cell></fo:table-cell>
																												</fo:table-row>

																											</fo:table-body>
																										</fo:table>
																									</fo:table-cell>
																								</fo:table-row>

																							</fo:table-body>
																						</fo:table>
																						<fo:table text-align="left" table-layout="fixed">
																							<fo:table-column column-width="16.30cm" />
																							<fo:table-body>
																								<fo:table-row>
																									<fo:table-cell>
																											<fo:block line-height="12pt"
																												font-size="10pt" space-before.optimum="34.5pt"
																												space-after.optimum="34.5pt"
																												keep-together="always" text-align="start">
																												<fo:inline
																													white-space-collapse="false">
																												</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																								</fo:table-row>
																								<fo:table-row>
																									<fo:table-cell></fo:table-cell>
																								</fo:table-row>
																								<fo:table-row>
																									<fo:table-cell></fo:table-cell>
																								</fo:table-row>
																								<fo:table-row>
																									<fo:table-cell>
																										<fo:block line-height="12pt"
																											font-size="10pt" space-before.optimum="1.5pt"
																											space-after.optimum="1.5pt" keep-together="always"
																											text-align="left">________________</fo:block>
																									</fo:table-cell>
																								</fo:table-row>
																								<fo:table-row>
																									<fo:table-cell>
																										<fo:block line-height="12pt"
																											font-size="10pt" space-before.optimum="1.5pt"
																											space-after.optimum="1.5pt" keep-together="always"
																											text-align="left">Firma Cliente</fo:block>
																									</fo:table-cell>
																								</fo:table-row>

																							</fo:table-body>
																						</fo:table>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																		</fo:table-body>
																	</fo:table>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell></fo:table-cell>
															</fo:table-row>
														</fo:table-body>
													</fo:table>
												</fo:table-cell>
											</fo:table-row>


										</fo:table-body>
									</fo:table>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell></fo:table-cell>
							</fo:table-row>

						</fo:table-body>
					</fo:table>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>