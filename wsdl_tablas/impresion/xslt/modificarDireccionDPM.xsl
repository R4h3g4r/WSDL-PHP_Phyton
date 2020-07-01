<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 16/10/2009 rhicil ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
	<xsl:template match="modificarDireccionDPM">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" font-size="11pt">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="dof" page-width="215.9mm" page-height="279.4mm" margin-top="10mm" margin-bottom="5mm" margin-left="18mm" margin-right="18mm">
					<fo:region-body margin-top="20mm" margin-bottom="35mm"/>
					<fo:region-before extent="60mm"/>
					<fo:region-after extent="10mm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="dof">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm">
						<!--INICIO Imagen, Titulo y datos banco-->
						<!--<fo:block space-before="5mm"> -->
						<fo:block space-before="2mm">
							
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(70)"/>
								<fo:table-column column-width="proportional-column-width(30)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>									
												<xsl:variable name="filename">
													<xsl:value-of disable-output-escaping="no" select="imagenPath"/>
												</xsl:variable>
												<fo:external-graphic src="{$filename}/logo_bci2.jpg" height="14mm" width="28mm"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="right">
											</fo:block>
										</fo:table-cell>
									</fo:table-row>

								</fo:table-body>
							</fo:table>
						</fo:block>
						<!--FIN Imagen, Titulo y datos banco-->
						
					</fo:block>
				</fo:static-content>
				
				<fo:flow flow-name="xsl-region-body" text-align="left" font-size="11pt">
						<fo:block>
						<!--INICIO Cuadro Texto Informativo, cliente y firma-->
						<fo:block>
						
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(60)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block padding-top="2mm" padding-bottom="0mm" text-align="center" font-weight="bold" font-size="18pt" color="#000000">Comprobante de modificación de dirección</fo:block>
											<fo:block padding-top="0mm" padding-bottom="5mm" text-align="center" font-weight="bold" font-size="18pt" color="#000000">de depósito a plazo</fo:block>											
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>						

							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>					
									 <fo:table-row>			
										<fo:table-cell height="0.5cm">
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>								
						
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>					
									 <fo:table-row>			
										<fo:table-cell>
											<fo:table table-layout="fixed" width="100%">
												<fo:table-column column-width="proportional-column-width(30)"/>
												<fo:table-column column-width="proportional-column-width(70)"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt" font-family="Helvetica">Nombre :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="nombre"/></fo:block>
														</fo:table-cell>										
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Rut :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="rut"/></fo:block>
														</fo:table-cell>
													</fo:table-row>													
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">N° Serie :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/numeroSerie"/></fo:block>
														</fo:table-cell>										
													</fo:table-row>			
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">N° Operación :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/numeroOperacion"/></fo:block>
														</fo:table-cell>								
													</fo:table-row>	
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Moneda :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/glosaMoneda"/></fo:block>
														</fo:table-cell>										
													</fo:table-row>	
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Tipo de Depósito :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/glosaTipoOperacion"/></fo:block>
														</fo:table-cell>									
													</fo:table-row>	
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Fecha Captación :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/fechaHoraInversion"/></fo:block>
														</fo:table-cell>											
													</fo:table-row>																					
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Plazo Original :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/glosaPeriodo"/><xsl:value-of select="DetalleDapGeneralTO/tipoPeriodo"/></fo:block>
														</fo:table-cell>									
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Fecha Vencimiento :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/fechaHoraVencimiento"/></fo:block>
														</fo:table-cell>									
													</fo:table-row>																					
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Tasa Base :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/tasaInteres"/>% <xsl:value-of select="DetalleDapGeneralTO/glosaTasaInteres"/></fo:block>
														</fo:table-cell>									
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Tasa del Período :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/tasaPeriodo"/>% <xsl:value-of select="DetalleDapGeneralTO/glosaTasaPeriodo"/></fo:block>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>					

											<fo:table table-layout="fixed" width="100%">
												<fo:table-column column-width="proportional-column-width(30)"/>
												<fo:table-column column-width="proportional-column-width(40)"/>
												<fo:table-column column-width="proportional-column-width(30)"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell  text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Capital Inicial :</fo:block>
														</fo:table-cell>
														<fo:table-cell  text-align="right" padding-top="1mm" padding-left="2mm" padding-right="2mm"  border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/montoInversion"/></fo:block>
														</fo:table-cell>				
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/glosaMoneda"/></fo:block>
														</fo:table-cell>																			
													</fo:table-row>
										
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Interés a Pagar :</fo:block>
														</fo:table-cell>
														<fo:table-cell  text-align="right"  padding-top="1mm" padding-left="2mm" padding-right="2mm"  border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt">
															<xsl:if test="not(contains(DetalleDap/montoInteres,'-'))"><xsl:value-of select="DetalleDapGeneralTO/montoInteres"/></xsl:if></fo:block>
														</fo:table-cell>				
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:if test="not(contains(DetalleDap/montoInteres,'-'))"><xsl:value-of select="DetalleDapGeneralTO/glosaMoneda"/></xsl:if></fo:block>
														</fo:table-cell>										
														<fo:table-cell>
															<fo:block></fo:block>
														</fo:table-cell> 
													</fo:table-row>		
																			
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Capital Final :</fo:block>
														</fo:table-cell>
														<fo:table-cell  text-align="right"  padding-top="1mm" padding-left="2mm" padding-right="2mm"  border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:if test="not(contains(DetalleDap/montoInteres,'-'))"><xsl:value-of select="DetalleDapGeneralTO/montoVencimiento"/></xsl:if></fo:block>
														</fo:table-cell>				
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:if test="not(contains(DetalleDap/montoInteres,'-'))"><xsl:value-of select="DetalleDapGeneralTO/glosaMoneda"/></xsl:if></fo:block>
														</fo:table-cell>										
														<fo:table-cell>
															<fo:block></fo:block>
														</fo:table-cell> 
													</fo:table-row>																																	
												</fo:table-body>
											</fo:table>	

																			
											<fo:table table-layout="fixed" width="100%">
												<fo:table-column column-width="proportional-column-width(30)"/>
												<fo:table-column column-width="proportional-column-width(70)"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Custodia Electrónica :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/custodia"/></fo:block>
														</fo:table-cell>								
													</fo:table-row>																													
												</fo:table-body>
											</fo:table>																									
										</fo:table-cell>
										
										
									</fo:table-row>								
								</fo:table-body>
							</fo:table>																							
											
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>					
									 <fo:table-row>			
										<fo:table-cell height="0.5cm">
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>												
	
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>								
									 <fo:table-row>															
										<fo:table-cell padding-top="2mm">
					<fo:table table-layout="fixed" width="100%">
												<fo:table-column column-width="proportional-column-width(30)"/>
												<fo:table-column column-width="proportional-column-width(70)"/>
												<fo:table-body>					
													<fo:table-row>
														<fo:table-cell text-align="left" padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid" background-color="white">
															<fo:block font-size="11pt">Nueva Dirección :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="1mm" padding-left="2mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
															<fo:block font-size="11pt"><xsl:value-of select="DetalleDapGeneralTO/direccionDespacho"/></fo:block>
														</fo:table-cell>										
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm" padding-left="2mm" border-left="0.25pt solid" border-top="0.25pt solid" border-bottom="0.25pt solid"  border-right="0.25pt solid">
															<fo:block>Fecha Solicitud :</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-top="0.5mm"  padding-left="2mm" padding-bottom="0.5mm" padding-right="3mm" border-top="0.25pt solid" border-bottom="0.25pt solid" border-right="0.25pt solid" text-align="left">
															<fo:block font-size="11pt">
																<xsl:value-of select="fecha"/>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>													
												</fo:table-body>
											</fo:table>													
										</fo:table-cell>	
									</fo:table-row>			
								</fo:table-body>
							</fo:table>		
																
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(2)"/>
								<fo:table-column column-width="proportional-column-width(98)"/>
								<fo:table-body>												
									<fo:table-row>				
										<fo:table-cell padding-top="3mm"  padding-left="1mm" border-top="0.25pt solid" text-align="left">
											<fo:block  font-size="11pt">*</fo:block>
										</fo:table-cell>												 									
										<fo:table-cell padding-top="2mm"  padding-left="2mm" border-top="0.25pt solid" text-align="left">
											<fo:block  font-size="11pt">Para depósitos renovables, el cambio de dirección comenzará a regir en el próximo aviso de renovación del Depósito a Plazo que se genere.</fo:block>
										</fo:table-cell>
									</fo:table-row>
									 <fo:table-row>						
										<fo:table-cell padding-top="2.5mm"  padding-left="1mm" text-align="left">
											<fo:block  font-size="11pt">*</fo:block>
										</fo:table-cell>											 									
										<fo:table-cell padding-top="2mm"  padding-left="2mm" text-align="left">
											<fo:block font-size="11pt">Infórmese sobre la garantía estatal de los depósitos en su banco o en www.CMFChile.cl</fo:block>
										</fo:table-cell>
									</fo:table-row>									
								</fo:table-body>
							</fo:table>					
										

							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>					
									 <fo:table-row>			
										<fo:table-cell height="1cm">
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>																													

								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(50)"/>
									<fo:table-column column-width="proportional-column-width(50)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell  text-align="center" padding-top="2cm" padding-left="3mm"
											>
												<fo:block>________________________________</fo:block>
											</fo:table-cell>
											<fo:table-cell  text-align="center" padding-top="2cm" padding-left="3mm"
											>
												<fo:block>________________________________</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell  text-align="center" padding-top="2mm" padding-left="3mm" 
											>
												<fo:block>Firma y Timbre Ejecutivo</fo:block>
											</fo:table-cell>
											<fo:table-cell  text-align="center" padding-top="2mm" padding-left="3mm" 
											>
												<fo:block>Firma Titular</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
																																			
						</fo:block>
						<!--FIN Cuadro Texto Informativo, cliente y firma-->
					</fo:block>
				</fo:flow>
							
			</fo:page-sequence>			
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
