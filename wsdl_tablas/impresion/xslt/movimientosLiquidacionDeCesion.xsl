<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format"> 
<xsl:decimal-format name="european" decimal-separator=',' grouping-separator='.' />
  <xsl:param name="logoBci"/>
  <xsl:param name="firma"/> 
  
	<xsl:template match="raiz">
	<fo:root>
		<fo:layout-master-set>
			<fo:simple-page-master master-name="Letter" page-height="21.0cm" page-width="29.7cm" margin="1.5cm">
				<fo:region-body/>
			</fo:simple-page-master>
		</fo:layout-master-set>		
		
		<fo:page-sequence master-reference="Letter">			
			<fo:flow flow-name="xsl-region-body">
<xsl:choose>
	<xsl:when test="//movimientos">				
			<fo:block>
				<fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt" height="10mm" width="30mm">
					<xsl:attribute name="src">												
						url(   '<xsl:value-of select="rutaLogo" /><xsl:text disable-output-escaping="yes">logoFactoring.jpg</xsl:text>'   )																							
					</xsl:attribute>
				</fo:external-graphic>
            </fo:block>
			
		<fo:table>	
			<fo:table-column column-width="202mm"/>
			<fo:table-body>
				<fo:table-row >
					<fo:table-cell padding-start="20pt">
						<fo:block text-align="center" space-before="3mm">
								<fo:inline font-weight="bold" font-size="8pt">
									<xsl:value-of select="titulo"/>
								</fo:inline>
						</fo:block>	
						<fo:block text-align="center" space-before="3mm">
							<fo:table>
													<fo:table-column column-width="52mm"/>
													<fo:table-column column-width="40mm"/>
													<fo:table-column column-width="40mm"/>
													<fo:table-column column-width="52mm"/>
											
										<fo:table-body>
												<fo:table-row >
													<fo:table-cell padding-start="0pt" padding-end="3pt">
														<fo:block text-align="center" space-before="1mm" border-style="solid" border-after-color="BLACK" border-width="0.1pt">
															<fo:table>
																<fo:table-column column-width="18mm"/>
																<fo:table-column column-width="2mm"/>
																<fo:table-column column-width="30mm"/>							
																	<fo:table-body>
																		<fo:table-row >
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						Nombre Proveedor																						
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						:																						
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt">
																						<xsl:value-of select="rasonSocial"/> <xsl:value-of select="apellidoPaterno"/> <xsl:value-of select="apellidoMaterno"/>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row >
																		<fo:table-row >
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						Rut Proveedor
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						:
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt">
																						<xsl:value-of select="format-number(rutProveedor, '#.##0,#', 'european')"/>-<xsl:value-of select="dvproveedor"/>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row >
																		<fo:table-row >
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						Fecha Operación
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						:
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt">
																						<xsl:value-of select="fechaOperacion"/>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row >
																		<fo:table-row >
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						Nº Otorgamiento
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						:
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt">
																						<xsl:value-of select="format-number(numeroOtorgamiento, '#.##0', 'european')"/>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row >
																	</fo:table-body>
															</fo:table>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell padding-start="3pt" padding-end="3pt">
														<fo:block text-align="center" space-before="1mm" border-style="solid" border-after-color="BLACK" border-width="0.1pt">
															<fo:table>
																<fo:table-column column-width="17mm"/>
																<fo:table-column column-width="20mm"/>							
																	<fo:table-body>
																		<fo:table-row >
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						Monto Operación:
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="rigth" space-before="1mm" font-size="5pt">																			
																						<xsl:value-of select="format-number(montoOperacion, '#.##0', 'european')"/>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row >
																		<fo:table-row>
																			<fo:table-cell height="25.5pt">
																				<fo:block />
																			</fo:table-cell>
																		</fo:table-row>
																	</fo:table-body>
															</fo:table>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell padding-start="3pt" padding-end="3pt">
														<fo:block text-align="center" space-before="1mm" border-style="solid" border-after-color="BLACK" border-width="0.1pt">
															<fo:table>
																<fo:table-column column-width="21mm"/>
																<fo:table-column column-width="2mm"/>
																<fo:table-column column-width="15mm"/>							
																	<fo:table-body>
																		<fo:table-row >
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						Diferencia Precio
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						:
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="right" space-before="1mm" font-size="5pt">																			
																						<xsl:value-of select="format-number(diferenciaPrecio, '#.##0', 'european')"/>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row >
																		<fo:table-row >
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						Comisión + IVA
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						:
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="right" space-before="1mm" font-size="5pt">																			
																						<xsl:value-of select="format-number(ivaMasComision, '#.##0', 'european')"/>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row >
																		<fo:table-row >
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						Servicio Adm Depósito
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						:
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="right" space-before="1mm" font-size="5pt">																			
																						<xsl:value-of select="format-number(servicioAdmDeposito, '#.##0', 'european')"/>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row >
																		<fo:table-row>
																			<fo:table-cell height="8.5pt">
																				<fo:block />
																			</fo:table-cell>
																		</fo:table-row>
																	</fo:table-body>
															</fo:table>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell padding-start="3pt" padding-end="3pt">
														<fo:block text-align="center" space-before="1mm" border-style="solid" border-after-color="BLACK" border-width="0.1pt">
															<fo:table>
																<fo:table-column column-width="20mm"/>
																<fo:table-column column-width="2mm"/>
																<fo:table-column column-width="30mm"/>							
																	<fo:table-body>
																		<fo:table-row >
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						Forma Pago
																				</fo:block>
																			</fo:table-cell>																																						<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						:
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt">
																						<xsl:value-of select="formaPago"/>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row >
																		<fo:table-row >
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						Banco
																				</fo:block>
																			</fo:table-cell>																																						<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						:
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt">
																						<xsl:value-of select="banco"/>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row >
																		<fo:table-row >
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						Líquido a Pagar
																				</fo:block>
																			</fo:table-cell>																																						<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt" >
																						:
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell padding-start="3pt" padding-end="3pt">
																				<fo:block text-align="left" space-before="1mm" font-size="5pt">
																						<xsl:value-of select="format-number(liquidoPagar, '#.##0', 'european')"/>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row >
																		<fo:table-row>
																			<fo:table-cell height="9pt">
																				<fo:block />
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
							<xsl:choose>
							<xsl:when test="//movimientos">					
								<fo:block text-align="left" space-before="3mm" font-size="5pt">									
									<fo:table  border-style="solid" border-width="0.5pt">							
										<fo:table-column column-width="42mm"/>
										<fo:table-column column-width="17mm"/>
										<fo:table-column column-width="17mm"/>							
										<fo:table-column column-width="17mm"/>
										<fo:table-column column-width="25mm"/>
										<fo:table-column column-width="12mm"/>
										<fo:table-column column-width="20mm"/>
										<fo:table-column column-width="18mm"/>
										<fo:table-column column-width="17mm"/>
										<fo:table-column column-width="14mm"/>
										<fo:table-column column-width="18mm"/>
										<fo:table-column column-width="18mm"/>
										<xsl:if test="movimientos/movimiento/tasaNegocio">">
											<fo:table-column column-width="17mm"/>
										</xsl:if>
										<fo:table-header>
											<fo:table-row>
												<fo:table-cell border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Nombre Pagador</fo:block>
												</fo:table-cell>
												<fo:table-cell  border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block  font-weight="bold" text-align="center">Rut Pagador</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Fecha Nómina</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block  font-weight="bold" text-align="center">Número Grupo</fo:block>
												</fo:table-cell>
												<fo:table-cell  border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Fecha pago</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Plazo</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Monto</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Anticipo</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Líquido a Pagar</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Saldo</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Diferencia Precio</fo:block>
												</fo:table-cell>
												<fo:table-cell   border-style="solid" border-width="0.5pt" space-before="1mm">
													<fo:block font-weight="bold" text-align="center">Comisión</fo:block>
												</fo:table-cell>
												<xsl:if test="movimientos/movimiento/tasaNegocio">
													<fo:table-cell  border-style="solid" border-width="0.5pt" space-before="1mm">
														<fo:block  font-weight="bold" text-align="center">Tasa de negocio</fo:block>
													</fo:table-cell>
												</xsl:if>
											</fo:table-row>
										</fo:table-header>
										<xsl:for-each select="//movimientos/movimiento">
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell border-style="solid" border-width="0.5pt">
														<fo:block text-align="left" space-before="1mm">
															<xsl:value-of select="rasonsocial"/> <xsl:value-of select="apellidoPaterno"/> <xsl:value-of select="apellidoMaterno"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">											
															<xsl:value-of select="format-number(rutPagador, '#.##0,#', 'european')"/>-<xsl:value-of select="dvPagador"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="center" space-before="1mm">
															<xsl:value-of select="fechaNomina"/>									
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">												
															<xsl:value-of select="format-number(numeroGrupo, '#.##0', 'european')"/>												
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="center" space-before="1mm">
															<xsl:value-of select="fechaPago"/>							
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="center" space-before="1mm">												
															<xsl:value-of select="format-number(plazo, '#.##0', 'european')"/>	
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">												
															<xsl:value-of select="format-number(monto, '#.##0', 'european')"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">												
															<xsl:value-of select="format-number(anticipo, '#.##0', 'european')"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">												
															<xsl:value-of select="format-number(liquidoPagar, '#.##0', 'european')"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">												
															<xsl:value-of select="format-number(saldo, '#.##0', 'european')"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">												
															<xsl:value-of select="format-number(diferenciaPrecio, '#.##0', 'european')"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">												
															<xsl:value-of select="format-number(comision, '#.##0', 'european')"/>
														</fo:block>
													</fo:table-cell>
													<xsl:if test="tasaNegocio">
														<fo:table-cell  border-style="solid" border-width="0.5pt">
															<fo:block text-align="right" space-before="1mm">													
																<xsl:value-of select="format-number(tasaNegocio, '#.##0,00', 'european')"/>%													
															</fo:block>
														</fo:table-cell>										
													</xsl:if>
												</fo:table-row>
											</fo:table-body>
										</xsl:for-each>							
									</fo:table>
								<fo:table>
										<fo:table-column column-width="217mm"/>
										
										<fo:table-column column-width="18mm"/>
											<fo:table-body>
												<fo:table-row >
													<fo:table-cell >
														<fo:block text-align="left" space-before="1mm">											
														</fo:block>
													</fo:table-cell>												
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">															
															IVA : <xsl:value-of select="format-number(iva, '#.##0', 'european')"/>	
														</fo:block>
													</fo:table-cell>										
												</fo:table-row>
											</fo:table-body>						
									</fo:table>
										<fo:block space-before="5mm">			
										</fo:block>	
									<fo:table>
										<fo:table-column column-width="130mm"/>							
										<fo:table-column column-width="20mm"/>
										<fo:table-column column-width="18mm"/>
										<fo:table-column column-width="17mm"/>
										<fo:table-column column-width="14mm"/>
										<fo:table-column column-width="18mm"/>
										<fo:table-column column-width="18mm"/>
											<fo:table-body>
												<fo:table-row >										
													<fo:table-cell border-style="solid" border-width="0.5pt">
														<fo:block text-align="left" space-before="1mm">
															TOTALES
														</fo:block>
													</fo:table-cell>
													<fo:table-cell border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">												
															<xsl:value-of select="format-number(totalMonto, '#.##0', 'european')"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">												
															<xsl:value-of select="format-number(totalAnticipo, '#.##0', 'european')"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">												
															<xsl:value-of select="format-number(totalLiquido, '#.##0', 'european')"/>												
														</fo:block>
													</fo:table-cell>
													<fo:table-cell border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">												
															<xsl:value-of select="format-number(totalSaldo, '#.##0', 'european')"/>												
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">
															<xsl:value-of select="format-number(totalDiferenciaPrecio, '#.##0', 'european')"/>												
														</fo:block>
													</fo:table-cell>
													<fo:table-cell  border-style="solid" border-width="0.5pt">
														<fo:block text-align="right" space-before="1mm">
															<xsl:value-of select="format-number(totalComision, '#.##0', 'european')"/>
														</fo:block>
													</fo:table-cell>										
												</fo:table-row>
											</fo:table-body>						
									</fo:table>
								</fo:block>
								
							</xsl:when>				
							<xsl:otherwise>							
								<fo:block text-align="center" border-style="solid" border-after-color="BLACK" padding="0.5mm">
									No existen movimientos
								</fo:block>				
							</xsl:otherwise>				
						</xsl:choose>
						<fo:block space-before="5mm">						
						</fo:block>							
							<fo:table> 
								<fo:table-column column-width="200mm" />
								<fo:table-body>
									<fo:table-row >
										<fo:table-cell padding-start="0pt" text-align="left">
										<fo:block font-weight="bold" text-align="left" padding="0.5mm" font-size="5pt">	
										<xsl:value-of select="mensajepie"/>												
										</fo:block>	
										</fo:table-cell>
									</fo:table-row >
								</fo:table-body>
							</fo:table> 															
					</fo:table-cell>
				</fo:table-row >
			</fo:table-body>
		</fo:table> 	
	</xsl:when>			
	<xsl:otherwise>							
			<fo:block text-align="center" border-style="solid" border-after-color="BLACK" padding="0.5mm">
								<fo:inline font-weight="bold" font-size="8pt">
									<xsl:value-of select="mensajeError"/>
								</fo:inline>
			</fo:block>				
	</xsl:otherwise>
</xsl:choose>	
			</fo:flow>			
		</fo:page-sequence>
	</fo:root>
	</xsl:template>
</xsl:stylesheet>
