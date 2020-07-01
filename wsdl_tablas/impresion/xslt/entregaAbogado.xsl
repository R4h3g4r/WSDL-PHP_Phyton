<?xml version="1.0" encoding="iso-8859-1"?>

<!-- Copyright(c) BEE Consultorias y Sistemas - All Rights Reserved -->

<!-- <== version: 2007/01/09 11:20 ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
	
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
	
	<xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
	
	<xsl:decimal-format name="rut" grouping-separator='.' />
	
	<xsl:param name="IMG_URL"/>
	
	<xsl:template match="entregaAbo">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="entregaAbo" page-width="215.9mm" page-height="279.4mm" margin-top="10mm" margin-bottom="10mm" margin-left="12.5mm" margin-right="12.5mm">
					<fo:region-body></fo:region-body>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="entregaAbo">
				<fo:flow flow-name="xsl-region-body">
          				<fo:block font-family="Times" text-align="right" font-size="10pt">
          					<fo:table table-layout="fixed" width="190.9mm">
          						<fo:table-column/>
							<fo:table-column/>
							<fo:table-body>
								<fo:table-row font-weight="bold">
									<fo:table-cell border="0.0pt solid black" padding-left="1mm">
										<fo:block text-align="left">
											<fo:external-graphic src="url({$IMG_URL}/img_webcorp_normaliza.gif)"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="0.0pt solid black" padding-left="1mm">
										<fo:block text-align="right">
											<fo:external-graphic src="url({$IMG_URL}/img_webcorp_logotrans.gif)"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
                    			</fo:block>
					<fo:block font-family="Times" font-size="8pt" line-height="4mm">
						<fo:table table-layout="fixed" width="190.9mm">
							<fo:table-column/>
							<fo:table-body>
								<fo:table-row height="4mm">
									<fo:table-cell border="0.5pt solid black">
										<fo:block text-align="center" font-weight="bold" font-size="10pt">
											Detalle Entrega Cartera Abogado :  <xsl:value-of select="nombreAbogado" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row height="4mm">
									<fo:table-cell  border="0.5pt solid black">
										<fo:block text-align="left">
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row height="4mm">
									<fo:table-cell>
										<fo:block text-align="left">
											<fo:table table-layout="fixed"  width="190.9mm">
												<fo:table-column/>
												<fo:table-column/>
												<fo:table-column/>
												<fo:table-column/>
												<fo:table-column/>
												<fo:table-column/>
												<fo:table-column/>
												<fo:table-column/>
												<fo:table-body>
													<fo:table-row font-weight="bold">
														<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block>
																Id. Liquidaci�n
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block>
																Nombre Cliente
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block>
																Rut Cliente
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block>
																Fecha Asignaci�n
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block>
																N�mero Solicitudes
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block>
																
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block>
																
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block>
																
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<xsl:for-each select="entregaLiquidaciones/entregaLiquidacion">
														<fo:table-row height="4mm">
															<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															  <fo:block>
																<xsl:value-of select="idLiquidacion" />
															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															  <fo:block>
																<xsl:value-of select="nombreCliente" />
															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															  <fo:block>
																<xsl:value-of select='format-number(idPClienterut,"###.###.###","rut")' /> - <xsl:value-of select="idPClientedv" />
															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black" padding-right="1mm">
															  <fo:block text-align="right">
																<xsl:value-of select="fechaGeneracion" />
															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															  <fo:block text-align="right">
																<xsl:value-of select="numeroLiquidacionOperaciones" />
															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black"  padding-right="1mm">
															  <fo:block text-align="right">
																<fo:inline font-weight="bold">Operaci�n Ppal.</fo:inline> 
															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black"  padding-right="1mm">
															  <fo:block text-align="right">
																<fo:inline font-weight="bold">Producto</fo:inline> 
															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black"  padding-right="1mm">
															  <fo:block text-align="right">
																<fo:inline font-weight="bold">Montos</fo:inline> 
															  </fo:block>
															</fo:table-cell>
														</fo:table-row>
														<xsl:for-each select="liquidacionOperaciones/liquidacionOperacion">
															<fo:table-row height="4mm">
																<fo:table-cell border="0.5pt solid black" padding-left="1mm">
																  <fo:block>
																	
																  </fo:block>
																</fo:table-cell>
																<fo:table-cell border="0.5pt solid black" padding-left="1mm">
																  <fo:block>
																	
																  </fo:block>
																</fo:table-cell>
																<fo:table-cell border="0.5pt solid black" padding-left="1mm">
																  <fo:block>
																	
																  </fo:block>
																</fo:table-cell>
																<fo:table-cell border="0.5pt solid black" padding-right="1mm">
																  <fo:block text-align="right">
																	
																  </fo:block>
																</fo:table-cell>
																<fo:table-cell border="0.5pt solid black" padding-left="1mm">
																  <fo:block>
																	
																  </fo:block>
																</fo:table-cell>

																<fo:table-cell border="0.5pt solid black"  padding-right="1mm">
																  <fo:block text-align="right">
																	<xsl:value-of select="operacion" />
																  </fo:block>
																</fo:table-cell>
																<fo:table-cell border="0.5pt solid black"  padding-right="1mm">
																  <fo:block text-align="right">
																	<xsl:value-of select="producto" />
																  </fo:block>
																</fo:table-cell>
																<fo:table-cell border="0.5pt solid black"  padding-right="1mm">
																  <fo:block text-align="right">
																	<xsl:value-of select='format-number(montoCobranza,"###.###.###","decimal")' />
																  </fo:block>
																</fo:table-cell>														
															</fo:table-row>
														</xsl:for-each>
														<fo:table-row height="4mm">
															<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															  <fo:block>

															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															  <fo:block>

															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															  <fo:block>

															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black" padding-right="1mm">
															  <fo:block text-align="right">

															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black" padding-left="1mm">
															  <fo:block>

															  </fo:block>
															</fo:table-cell>

															<fo:table-cell border="0.5pt solid black"  padding-right="1mm">
															  <fo:block text-align="right">
																
															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black"  padding-right="1mm">
															  <fo:block text-align="right">
																<fo:inline font-weight="bold">TOTAL : </fo:inline> 
															  </fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid black"  padding-right="1mm">
															  <fo:block text-align="right">
															  	<fo:inline font-weight="bold"><xsl:value-of select='format-number(montoTotal,"###.###.###","decimal")' /></fo:inline> 
															  </fo:block>
															</fo:table-cell>														
														</fo:table-row>
														<fo:table-row height="4mm">
															<fo:table-cell border="0.5pt solid black" padding-right="1mm" number-columns-spanned="8">
																<fo:block text-align="left"></fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:for-each>
													
													  <fo:table-row>
													    <fo:table-cell>
													      <fo:block text-align="left">
														<fo:table table-layout="fixed" width="190.9mm">
														  <fo:table-column column-width="95.45mm"/>
														  <fo:table-column column-width="95.45mm"/>

														  <fo:table-body>
														    <fo:table-row height="24mm">
														      <fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block text-align="left">

															</fo:block>
														      </fo:table-cell>
														      <fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block text-align="left">

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
													      <fo:block text-align="left">
														<fo:table table-layout="fixed" width="190.9mm">
														  <fo:table-column column-width="95.45mm"/>
														  <fo:table-column column-width="95.45mm"/>

														  <fo:table-body>
														    <fo:table-row>
														      <fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block text-align="left">
															  UNIDAD DE APOYO AL PROCESO COBRANZA
															</fo:block>
														      </fo:table-cell>
														      <fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block text-align="left">
															  ABOGADO: <xsl:value-of select="nombreAbogado" />
															</fo:block>
														      </fo:table-cell>
														    </fo:table-row>
														    <fo:table-row>
														      <fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block text-align="left">
															  FIRMA / TIMBRE 
															</fo:block>
														      </fo:table-cell>
														      <fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block text-align="left">
															  FIRMA / TIMBRE
															</fo:block>
														      </fo:table-cell>
														    </fo:table-row>
														    <fo:table-row>
														      <fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block text-align="left">

															</fo:block>
														      </fo:table-cell>
														      <fo:table-cell border="0.5pt solid black" padding-left="1mm">
															<fo:block text-align="left">
															  FECHA DE RECEPCI�N <xsl:value-of select="fecha" />
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
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
