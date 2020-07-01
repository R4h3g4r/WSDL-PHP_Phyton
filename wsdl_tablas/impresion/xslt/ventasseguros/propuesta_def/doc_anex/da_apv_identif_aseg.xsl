<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_da_apv_identif_aseg">
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="bold">I. IDENTIFICACION DEL ASEGURADO Y LA POLIZA</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="{$varTablaTituloColor}">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									POLIZA QUE SE OFRECE
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(30)"/>
										<fo:table-column column-width="proportional-column-width(70)"/>
										<fo:table-body>
											<fo:table-row display-align="before">
												<fo:table-cell padding="2pt">
													<fo:block>
														<fo:inline font-weight="bold">Nombre con que se encuentra depositada la póliza:</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt">
													<fo:block>Póliza de Seguro de Vida Individual con Ahorro Previsional Voluntario y Capital Asegurado no Superior a UF 3.000.</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(30)"/>
										<fo:table-column column-width="proportional-column-width(70)"/>
										<fo:table-body>
											<fo:table-row display-align="before">
												<fo:table-cell padding="2pt">
													<fo:block>
														<fo:inline font-weight="bold">Nombre fantasía asignado por la compañía:</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt">
													<fo:block>
														<xsl:value-of select="../../../../plan/descripcion"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
								<fo:block>
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(30)"/>
										<fo:table-column column-width="proportional-column-width(70)"/>
										<fo:table-body>
											<fo:table-row display-align="before">
												<fo:table-cell padding="2pt">
													<fo:block>
														<fo:inline font-weight="bold">Nombre con que se encuentra depositada</fo:inline>
														<fo:inline font-weight="bold">las cláusulas adicionales que se ofrecen:</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt">
													<fo:block text-align="justify">
														<xsl:choose>
															<xsl:when test=" count( ../../../../coberturas/cobertura[tipo='ADICIONAL'] ) >0 ">
																<xsl:for-each select="../../../../coberturas/cobertura[tipo='ADICIONAL']">
																	<fo:block padding-after="5pt"><xsl:value-of select="descripcion"/></fo:block>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																No aplica
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
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block text-align="justify">
									"El texto de las Condiciones Generales de la póliza que se propone se encuentra depositada en la Superintendencia de Valores y Seguros bajo el código <xsl:value-of select="../../../../coberturas/cobertura[tipo='BASICA']/codigo"/>
									<xsl:if test=" count( ../../../../coberturas/cobertura[tipo='ADICIONAL'] ) >0 ">
										y el de las cláusulas adicionales, bajo 
										<xsl:choose>
											<xsl:when test=" count( ../../../../coberturas/cobertura[tipo='ADICIONAL'] ) = 0 ">el código </xsl:when>
											<xsl:otherwise>los códigos </xsl:otherwise>
										</xsl:choose>
										<xsl:for-each select="../../../../coberturas/cobertura[tipo='ADICIONAL']">
											<xsl:value-of select="codigo"/> <xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>
										</xsl:for-each>
								  </xsl:if>, todos disponibles en el sitio web de la Superintendencia de Valores y Seguros: www.svs.cl / mercado de seguros / registro y depósito de pólizas/ depósito de pólizas."
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!--
                             DATOS DEL SEGURADO
			-->

			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(35)"/>
					<fo:table-column column-width="proportional-column-width(20)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(20)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="5" display-align="before" background-color="{$varTablaTituloColor}">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									DATOS DEL ASEGURADO
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="4" display-align="before">
								<fo:block>
									Nombre:  <xsl:value-of select="../../informacion-adicional/zona-31/hshDatosAsegurado/strAsegNombre"/>
									<xsl:value-of select="../../informacion-adicional/zona-31/hshDatosAsegurado/strAsegApePat"/>
									<xsl:value-of select="../../informacion-adicional/zona-31/hshDatosAsegurado/strAsegApeMat"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>
									RUT: <xsl:value-of select="../../informacion-adicional/zona-31/hshDatosAsegurado/strAsegRut"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
								<fo:block>
									Fecha Nacimiento: <xsl:value-of select="../../informacion-adicional/zona-31/hshDatosAsegurado/strAsegFecNac"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="3" display-align="before">
								<fo:block>
									Edad Actuarial (años) (1): <xsl:value-of select="../../../../proyeccion/edadactuarial"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="3" display-align="before">
								<fo:block>
									Domicilio: <xsl:value-of select="../../informacion-adicional/zona-31/hshDatosAsegurado/strAsegDomicilio"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
								<fo:block>
									Ciudad: <xsl:value-of select="../../informacion-adicional/zona-31/hshDatosAsegurado/strAsegCiudad"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>
									Región: <xsl:value-of select="../../informacion-adicional/zona-31/hshDatosAsegurado/strAsegRegion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
								<fo:block>
									Profesión: <xsl:value-of select="../../informacion-adicional/zona-31/hshDatosAsegurado/strAsegProfesion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
								<fo:block>
									Declaración de Salud: Según Declaración Especial en formulario RIA
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="5" display-align="before">
								<fo:block>
									(1) Corresponde al cumpleaños más cercano del asegurado, próximo o pasado
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!--
                             DATOS DEL SEGURADO
			-->
			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(50)"/>
					<fo:table-column column-width="proportional-column-width(50)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" background-color="{$varTablaTituloColor}">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									CAPITAL DE LA POLIZA Y CLAUSULAS ADICIONALES
							</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>
									<fo:inline font-weight="bold">Capital Asegurado Póliza </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>
									<fo:inline font-weight="bold">Capital Cláusulas Adicionales</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:choose>
							<xsl:when test=" count( ../../../../coberturas/cobertura[tipo='ADICIONAL'] ) >0 ">
								<xsl:for-each select="../../../../coberturas/cobertura[tipo='ADICIONAL']">
									<xsl:choose>
										<xsl:when test="position() = 1">
											<fo:table-row>
												<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
													<fo:block>
														Fallecimiento: UF <xsl:value-of select="../../plan/monto-asegurado"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
													<fo:block>
														<xsl:value-of select="codigo"/> : UF <xsl:value-of select="../../plan/monto-asegurado"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:when>
										<xsl:otherwise>
											<fo:table-row>
												<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
													<fo:block>
														<xsl:text> </xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
													<fo:block>
														<xsl:value-of select="codigo"/> : UF <xsl:value-of select="../../plan/monto-asegurado"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<fo:table-row>
									<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
										<fo:block>
											Fallecimiento: UF <xsl:value-of select="../../../../plan/monto-asegurado"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
										<fo:block>No aplica</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:otherwise>
						</xsl:choose>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!--
			  PRIMA DE LA POLIZA Y CLAUSULAS ADICIONALES 
			-->

			<xsl:variable name="varPrimaIP" select="../../informacion-adicional/zona-31/hshPrimasAPV/PRIMA_IP"/>
			<xsl:variable name="varPrimaMA" select="../../informacion-adicional/zona-31/hshPrimasAPV/PRIMA_MA"/>
			<xsl:variable name="varPrimaMTE" select="../../informacion-adicional/zona-31/hshPrimasAPV/PRIMA_MTE"/>

			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(50)"/>
					<fo:table-column column-width="proportional-column-width(50)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" background-color="{$varTablaTituloColor}">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
								PRIMA DE LA POLIZA Y CLAUSULAS ADICIONALES
							</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(3)"/>
										<fo:table-column column-width="proportional-column-width(37)"/>
										<fo:table-column column-width="proportional-column-width(21)"/>
										<fo:table-column column-width="proportional-column-width(39)"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell number-columns-spanned="4">
													<fo:block>
														<fo:inline font-weight="bold">Prima Póliza </fo:inline>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell>
													<fo:block>
														<xsl:text> </xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block>Mínima:</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block>UF <xsl:value-of select="../../../../proyeccion/primaminima"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block>bruta mensual</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell>
													<fo:block>
														<xsl:text> </xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block>En Exceso:</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block>UF <xsl:value-of select="../../../../proyeccion/primaexceso"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block>bruta mensual</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(3)"/>
										<fo:table-column column-width="proportional-column-width(37)"/>
										<fo:table-column column-width="proportional-column-width(21)"/>
										<fo:table-column column-width="proportional-column-width(39)"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell number-columns-spanned="4">
													<fo:block>
														<fo:inline font-weight="bold">Prima Cláusulas Adicionales</fo:inline>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<xsl:choose>
												<xsl:when test=" count( ../../../../coberturas/cobertura[tipo='ADICIONAL'] ) >0 ">
													<xsl:for-each select="../../../../coberturas/cobertura[tipo='ADICIONAL']">
														<fo:table-row>
															<fo:table-cell>
																<fo:block><xsl:text> </xsl:text></fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block><xsl:value-of select="codigo"/>  :</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block>
																	UF 
																	<xsl:choose>
																		<xsl:when test=" codigo = 'CAD 2 02 065' "><xsl:value-of select="$varPrimaIP"/></xsl:when>
																		<xsl:when test=" codigo = 'CAD 2 02 066' "><xsl:value-of select="$varPrimaMA"/></xsl:when>
																		<xsl:when test=" codigo = 'POL 2 04 068' "><xsl:value-of select="$varPrimaMTE"/></xsl:when>
																		<xsl:otherwise>0</xsl:otherwise>
																	</xsl:choose>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block>bruta mensual</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:for-each>
												</xsl:when>
												<xsl:otherwise>
													<fo:table-row>
														<fo:table-cell number-columns-spanned="4">
															<fo:block>No aplica</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</xsl:otherwise>
											</xsl:choose>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell>
													<fo:block>
														Periodo de pago de la prima mínima : <xsl:value-of select="../../../../proyeccion/mesespagoprima"/> meses
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell>
													<fo:block>
														Periodo de pago de la prima en exceso: <xsl:value-of select="../../../../proyeccion/mesespagoprima"/> meses
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>
								Forma de pago de la prima mínima: <xsl:value-of select="../../informacion-adicional/zona-31/hshDatosAsegurado/strAsegTipoPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>
