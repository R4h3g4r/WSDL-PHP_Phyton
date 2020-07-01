<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">    
	<xsl:param name="img1"/>
	<xsl:param name="estadoCertificado"/>
	<xsl:decimal-format name="european" decimal-separator=',' grouping-separator='.' />
	<xsl:template match="comprobanteXml">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			
			<fo:layout-master-set>
				<fo:simple-page-master master-name="all" page-height="11in" page-width="8.5in"
					margin-top="0.0cm" margin-bottom="0.0cm" margin-left="0.8cm" margin-right="1.3cm"
					border="thick solid red">
					<fo:region-body margin-top="0.5cm" margin-bottom="0.5cm" />
					<fo:region-before extent="4cm" />
					<fo:region-after extent="2cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>

			<fo:page-sequence master-reference="all" format="i">
			
				<fo:static-content flow-name="xsl-region-before">
				</fo:static-content>
				 
				<fo:static-content flow-name="xsl-region-after">
					<fo:block text-align="start" font-size="10pt" font-family="serif" line-height="1em + 2pt">
					</fo:block>
				</fo:static-content>
				 
				<fo:flow flow-name="xsl-region-body">

					<fo:table font-family="serif" padding="2pt">
						<fo:table-column></fo:table-column>
						<fo:table-body>
							<fo:table-row>
							
								<fo:table-cell>
								<xsl:if test="estadoCertificado = &quot;AUT&quot;">
									<fo:block>
										<fo:table padding-before="10pt">
											<fo:table-column></fo:table-column>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell border-style="solid" border-color="#FFF755" background-color="#FFFEE8">
														<fo:block>
															<fo:table padding-before="10pt">
																<fo:table-column column-width="proportional-column-width(20)"></fo:table-column>
																<fo:table-column column-width="proportional-column-width(50)"></fo:table-column>
																<fo:table-column column-width="proportional-column-width(2)"></fo:table-column>
																<fo:table-column column-width="proportional-column-width(27)"></fo:table-column>
																<fo:table-body>
																	<fo:table-row>
																		
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		
																		<fo:table-cell background-color="#FFFEE8">
																			<fo:block font-size="10pt" font-weight="bold" line-height="2em" text-align="center" padding-before="10pt">
																				Comprobante
																			</fo:block>
																			<fo:block font-size="8pt" text-align="justify" line-height="12pt">
																				Estimado cliente, el <fo:inline font-weight="bold">Certificado de Vigencia</fo:inline> 	solicitado ha sido generado exitosamente y se encuentra disponible para guardar y/o imprimir
																			</fo:block>
																			
																		</fo:table-cell>
																		
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		
																		<fo:table-cell>
																			<fo:block padding-left="10pt">
																				<xsl:element name="fo:external-graphic">
																					<xsl:attribute name="src">
																						url('<xsl:value-of select="$img1"/>')
																					</xsl:attribute>
																					<xsl:attribute name="height">2.5cm</xsl:attribute>
																					<xsl:attribute name="width">2.5cm</xsl:attribute>
																				</xsl:element>
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
									</xsl:if>
									
									<xsl:if test="estadoCertificado != &quot;AUT&quot;">
										<fo:block>
											<fo:table padding-before="20pt">
												<fo:table-column column-width="proportional-column-width(10)"></fo:table-column>
												<fo:table-column column-width="proportional-column-width(80)"></fo:table-column>
												<fo:table-column column-width="proportional-column-width(10)"></fo:table-column>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell><fo:block></fo:block></fo:table-cell>
														<fo:table-cell background-color="#FFFEE8" border-color="#FBD743" border-style="solid">
															<fo:block font-size="10pt" font-weight="bold" text-align="center" padding-before="16pt" padding-after="12pt">
																Pendiente
															</fo:block>
															<fo:block font-size="8pt" text-align="center" padding-after="16pt">
																Estimado cliente, su certificado ya se encuentra solicitado y queda pendiente por falta de firmas.
															</fo:block>
														</fo:table-cell>
														<fo:table-cell><fo:block></fo:block></fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										</fo:block>
									</xsl:if>
									
									<fo:block padding-before="20pt">
										<fo:table width="80%">
											<fo:table-column column-width="proportional-column-width(4)"></fo:table-column>
											<fo:table-column column-width="proportional-column-width(92)"></fo:table-column>
											<fo:table-column column-width="proportional-column-width(4)"></fo:table-column>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell><fo:block></fo:block></fo:table-cell>
													
													<fo:table-cell>
														<fo:block>
															<fo:table>
																<fo:table-column column-width="proportional-column-width(1)"></fo:table-column>
																<fo:table-column column-width="proportional-column-width(7)"></fo:table-column>
																<fo:table-column column-width="proportional-column-width(92)"></fo:table-column>
																<fo:table-body>
																	<fo:table-row>
																		<fo:table-cell>
																			<fo:block>
																				<fo:table>
																					<fo:table-column></fo:table-column>
																					<fo:table-body>
																						<fo:table-row height="4pt"><fo:table-cell border-bottom-style="solid"><fo:block></fo:block></fo:table-cell></fo:table-row>
																						<fo:table-row height="8pt"><fo:table-cell border-left-style="solid"><fo:block></fo:block></fo:table-cell></fo:table-row>
																					</fo:table-body>
																				</fo:table>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell text-align="center">
																			<fo:block font-weight="bold" font-size="10pt">
																				Datos:
																			</fo:block>
																		</fo:table-cell>
																		
																		<fo:table-cell>
																			<fo:block>
																				<fo:table>
																					<fo:table-column></fo:table-column>
																					<fo:table-body>
																						<fo:table-row height="4pt"><fo:table-cell border-bottom-style="solid"><fo:block></fo:block></fo:table-cell></fo:table-row>
																						<fo:table-row height="8pt"><fo:table-cell border-right-style="solid"><fo:block></fo:block></fo:table-cell></fo:table-row>
																					</fo:table-body>
																				</fo:table>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row>
																	</fo:table-row>
																</fo:table-body>
															</fo:table>
														</fo:block>
													</fo:table-cell>
													
													<fo:table-cell><fo:block></fo:block></fo:table-cell>
												</fo:table-row>
												
												<fo:table-row>
													<fo:table-cell>
														<fo:block>
															<fo:table><fo:table-column></fo:table-column>
																<fo:table-body><fo:table-row><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
																</fo:table-body>
															</fo:table>	
														</fo:block>
													</fo:table-cell>
													
													<fo:table-cell border-bottom-style="solid" border-left-style="solid" border-right-style="solid" font-size="8pt">
														<fo:block>
															<fo:table padding-before="10pt" padding-after="10pt">
																<fo:table-column column-width="proportional-column-width(4)"></fo:table-column>
																<fo:table-column column-width="proportional-column-width(45.75)"></fo:table-column>
																<fo:table-column column-width="proportional-column-width(0.5)"></fo:table-column>
																<fo:table-column column-width="proportional-column-width(45.75)"></fo:table-column>
																<fo:table-column column-width="proportional-column-width(4)"></fo:table-column>
																<fo:table-body>
																
																	<fo:table-row line-height="16pt">
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		<fo:table-cell background-color="#DDDDDD" text-align="right"><fo:block>Tipo Certificado: </fo:block></fo:table-cell>
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		<fo:table-cell background-color="#DDDDDD" text-align="left" font-weight="bold">
																			<fo:block>
																				<xsl:text>&#160;</xsl:text>
																				<xsl:apply-templates select="tipoCertificado"/>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																	</fo:table-row>
																	
																	<fo:table-row line-height="16pt">
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		<fo:table-cell text-align="right"><fo:block>Número: </fo:block></fo:table-cell>
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		<fo:table-cell text-align="left" font-weight="bold">
																			<fo:block>
																				<xsl:text>&#160;</xsl:text>
																				<xsl:apply-templates select="numero"/>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																	</fo:table-row>
																	
																	<fo:table-row line-height="16pt">
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		<fo:table-cell background-color="#DDDDDD" text-align="right"><fo:block>Fecha: </fo:block></fo:table-cell>
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		<fo:table-cell background-color="#DDDDDD" text-align="left" font-weight="bold">
																			<fo:block>
																				<xsl:text>&#160;</xsl:text>
																				<xsl:apply-templates select="fecha"/>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																	</fo:table-row>
																	
																	<fo:table-row line-height="16pt">
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		<fo:table-cell text-align="right"><fo:block>Autorizado por: </fo:block></fo:table-cell>
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		<fo:table-cell text-align="left" font-weight="bold">
																			<fo:block>
																				<xsl:text>&#160;</xsl:text>
																				<xsl:apply-templates select="nombreAutoriza"/>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																	</fo:table-row>
																	
																	<fo:table-row line-height="16pt">
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		<fo:table-cell background-color="#DDDDDD" text-align="right"><fo:block>Cuenta Cargo: </fo:block></fo:table-cell>
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		<fo:table-cell background-color="#DDDDDD" text-align="left" font-weight="bold">
																			<fo:block>
																				<xsl:text>&#160;</xsl:text>
																				<xsl:apply-templates select="cuentaCargo"/>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																	</fo:table-row>
																	
																	<fo:table-row line-height="16pt">
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		<fo:table-cell text-align="right"><fo:block>Costo Certificado: </fo:block></fo:table-cell>
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																		<fo:table-cell text-align="left" font-weight="bold">
																			<fo:block>
																				<xsl:text>&#160;</xsl:text>$<xsl:text>&#160;</xsl:text>
																				<xsl:apply-templates select="costoCertificado"/>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell><fo:block></fo:block></fo:table-cell>
																	</fo:table-row>
																	
																</fo:table-body>
															</fo:table>
														</fo:block>
													</fo:table-cell>
																
													<fo:table-cell>
														<fo:block>
															<fo:table>
																<fo:table-column></fo:table-column>
																<fo:table-body>
																	<fo:table-row><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
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
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

</xsl:stylesheet>