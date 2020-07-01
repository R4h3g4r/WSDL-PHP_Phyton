<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
	
  <xsl:param name="logoBci"/>
  <xsl:param name="firma"/> 
  
	<xsl:template match="raiz">
	<fo:root>
		<fo:layout-master-set>
			<fo:simple-page-master master-name="Letter" page-height="29.7cm" page-width="21.0cm" margin="2cm">
				<fo:region-body/>
			</fo:simple-page-master>
		</fo:layout-master-set>		
		
		<fo:page-sequence master-reference="Letter">			
			<fo:flow flow-name="xsl-region-body">
				<fo:block>
					<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
						<fo:table-column />
						<fo:table-column />
						<fo:table-column />
						<fo:table-body>
							<fo:table-row>
						
								<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
									<fo:block text-align="left" font-family="serif" padding="2mm" font-size="13pt">
										<fo:inline font-weight="bold">
											<xsl:value-of select="glosaComprobante"/>
										</fo:inline>
									</fo:block>
									<fo:block text-align="left" font-size="8pt">
										Empresa: 
										<fo:inline font-weight="bold" > 
											<xsl:value-of select="empresa"/><xsl:text> </xsl:text>
										</fo:inline>
									</fo:block>
									<fo:block text-align="left" font-size="8pt">
										Rut: 
										<fo:inline font-weight="bold" >
											<xsl:value-of select="rutEmpresa"/>
										</fo:inline>
									</fo:block>
									<fo:block text-align="left" font-size="8pt">
									Nombre Solicitante: 
										<fo:inline font-weight="bold" >
											<xsl:value-of select="nombreSolicitante"/>
										</fo:inline>
									</fo:block>

									<fo:block font-size="7pt" border-width="0.060mm" border-style="solid" border-color="#FFCC01"  background-color="#FFF9D8" padding="2mm" space-before="4mm" font-family="serif"> 
										<xsl:if test="tipoCtaDestino = 'Cuenta Corriente'">
											Transferencia ingresada y lista para ser firmada.
										</xsl:if>
										<xsl:if test="tipoCtaDestino = 'Cuenta Prima'">
											Transferencia ingresada y lista para ser firmada.
										</xsl:if>
										<xsl:if test="tipoCtaDestino = 'Línea de Sobregiro'">
											El pago se ha realizado con éxito.
											<fo:block >
												<fo:leader leader-pattern="space" />
											</fo:block>
											Se ha enviado una copia de este comprobante a su correo electrónico registrado.
										</xsl:if>	
										<xsl:if test="tipoCtaDestino = 'cuenta Num.'">
											<xsl:if test="pendiente = 'ppr'">
												Transferencia realizada exitosamente.
											</xsl:if>
											<xsl:if test="pendiente = 'firma'">
											Transferencia firmada exitosamente.
										</xsl:if>
										</xsl:if>
									</fo:block>
							
									<fo:block font-weight="bold" font-size="10pt" color=" black" line-height="30pt" space-before="0.2mm" text-align="left" font-family="serif">
										Resumen de Transferencia
									</fo:block>
									
									<fo:block font-size="7pt" border-width="0.060mm" border-style="solid" border-color="#E2F0F8"  background-color="#E2F0F8" padding="1mm" space-before="2mm" font-family="serif">
										<fo:table table-layout="fixed">
										<fo:table-column column-width="7cm" />
										<fo:table-column column-width="6.7cm" />
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell>
												<xsl:if test="tipoCtaDestino = 'Cuenta Corriente'">
													<fo:block font-weight="bold"  color=" black">
													Resumen N°: 
														<xsl:value-of select="numeroComprobante"/>
													</fo:block>
												</xsl:if>
												<xsl:if test="tipoCtaDestino = 'Cuenta Prima'">
													<fo:block font-weight="bold"  color=" black">
													Resumen N°: 
														<xsl:value-of select="numeroComprobante"/>
													</fo:block>
												</xsl:if>
												<xsl:if test="tipoCtaDestino = 'cuenta Num.'">
													<fo:block font-weight="bold"  color=" black">
													Resumen N°: 
														<xsl:value-of select="numeroComprobante"/>
													</fo:block>
												</xsl:if>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block font-weight="bold"  number-rows-spanned="2" color=" black" text-align="right">
														Fecha:
														<xsl:value-of select="fecha"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>   
										</fo:table-body>
										</fo:table>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

							<fo:table-row >
							
								<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" number-rows-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="end">
									<fo:block >
										
										<fo:inline font-weight="bold">Nombre de Transferencia:</fo:inline>
											<fo:block>
												<fo:leader leader-pattern="space" />
											</fo:block>
										
										<fo:inline font-weight="bold"><xsl:value-of select="glosaMonto"/>($):</fo:inline>
											<fo:block>
												<fo:leader leader-pattern="space" />
											</fo:block>

										<fo:inline font-weight="bold">Cuenta de Origen: </fo:inline>
											<fo:block >
												<fo:leader leader-pattern="space" />
											</fo:block>
                                            
										<fo:inline font-weight="bold">Cuenta de Destino:</fo:inline>
											<fo:block>
												<fo:leader leader-pattern="space" />
											</fo:block>
									</fo:block>
                                </fo:table-cell>

                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" number-rows-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
									<fo:block>
										
										<fo:block >
											<xsl:value-of select="nombreTransferencia"/>
										</fo:block>
										
										<fo:block >
											<fo:leader leader-pattern="space" />
										</fo:block>
										
										<fo:block >
											<xsl:value-of select="montoTransferir"/>
										</fo:block>
										
                                        <fo:block >
											<fo:leader leader-pattern="space" />
										</fo:block>
										
                                        <fo:block >
												<xsl:value-of select="tipoCtaOrigen"/><fo:leader leader-pattern="space"/><xsl:value-of select="numeroOrigen"/>
										</fo:block>  
												
										<fo:block >
											<fo:leader leader-pattern="space" />
										</fo:block>
												
										<fo:block >
											<xsl:value-of select="tipoCtaDestino"/><fo:leader leader-pattern="space"/><xsl:value-of select="numeroDestino"/>
										</fo:block> 
												
										<fo:block >
											<fo:leader leader-pattern="space" />
										</fo:block>
																	  
									</fo:block>
                                </fo:table-cell>
								
								<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" height="47pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="end">
									<fo:block>
										<fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt" height="20mm" width="20mm">
											<xsl:attribute name="src">
												<xsl:if test="pendiente = 'true'">
													url(   '<xsl:value-of select="rutaLogo" /><xsl:text disable-output-escaping="yes">selloPendiente.gif</xsl:text>'   )
												</xsl:if>
												<xsl:if test="pendiente = 'false'">
													url(   '<xsl:value-of select="rutaLogo" /><xsl:text disable-output-escaping="yes">sello_pagado.gif</xsl:text>'   )
												</xsl:if>
												<xsl:if test="pendiente = 'firma'">
													url(   '<xsl:value-of select="rutaLogo" /><xsl:text disable-output-escaping="yes">sello_firmado.gif</xsl:text>'   )
												</xsl:if>
												<xsl:if test="pendiente = 'ppr'">
													url(   '<xsl:value-of select="rutaLogo" /><xsl:text disable-output-escaping="yes">sello_pagado.gif</xsl:text>'   )
												</xsl:if>
											</xsl:attribute>
										</fo:external-graphic>
                                    </fo:block>
								</fo:table-cell>
										
								
                            </fo:table-row>
								
							<fo:table-row>
								<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" height="17pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
									<fo:block />
								</fo:table-cell>
							</fo:table-row>
								
							<fo:table-row>
								<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" height="2pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
									<fo:block />
								</fo:table-cell>
							</fo:table-row>
								
							<fo:table-row>
								<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
									<fo:block />
								</fo:table-cell>
							</fo:table-row>
                                
							<fo:table-row>
								<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
									<fo:block />
								</fo:table-cell>
							</fo:table-row>
								
							<fo:table-row>
								<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
									<fo:block />
								</fo:table-cell>
							</fo:table-row>
								
							<fo:table-row>
								<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
									<fo:block />
								</fo:table-cell>
							</fo:table-row>
								
							<fo:table-row>
								<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
									<fo:block />
								</fo:table-cell>
							</fo:table-row>
								
							<fo:table-row>
								<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
									<fo:block />
								</fo:table-cell>
							</fo:table-row>
					
						</fo:table-body>
					</fo:table>
						<fo:block>
							<fo:leader leader-pattern="space" />
						</fo:block>
						<fo:block>
							<fo:leader leader-pattern="space" />
						</fo:block>
						<fo:block>
							<xsl:text>&#xA;</xsl:text>
						</fo:block>
				</fo:block>
			</fo:flow>
		</fo:page-sequence>
	</fo:root>
	</xsl:template>
</xsl:stylesheet>
