<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">

	<xsl:template match="templateDap">

		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

			<fo:layout-master-set>
				<fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
					<fo:region-body />
				</fo:simple-page-master>
			</fo:layout-master-set>

			<fo:page-sequence master-reference="miCarta">
				<fo:flow flow-name="xsl-region-body">
					<fo:block padding-top="4pt" font-family="Helvetica,sans-serif" text-align="center">

						<fo:block space-after="10mm" space-before="10mm">
							<fo:table>
								<fo:table-column column-width="140mm" />
								<fo:table-column column-width="50mm" />
								<fo:table-body>
									<fo:table-row height="20mm">
										<fo:table-cell display-align="center" padding-left="10mm" padding-right="2mm" background-color="#4E5054">
											<fo:block border-right-width="0.5pt" text-align="left" font-size="12pt">
												<fo:inline color="#ffffff">Estimado(a) <xsl:value-of select="nombre" /></fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell display-align="center" padding-left="2mm" padding-right="2mm" background-color="#4E5054">
											<fo:block border-right-width="0.5pt" text-align="left">
												<fo:external-graphic vertical-align="middle">
													<xsl:attribute name="src">
					                                <xsl:value-of select="urlImagenLogoPreferencial" />
					                            </xsl:attribute>
												</fo:external-graphic>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="2">
											<fo:block border-right-width="0.5pt" text-align="left" vertical-align="middle" font-size="9pt">
												<fo:external-graphic>
													<xsl:attribute name="src">
					                                <xsl:value-of select="urlImagenLineaColor" />
					                            </xsl:attribute>
												</fo:external-graphic>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>

						<fo:table width="190mm" table-layout="fixed" border="0pt solid" display-align="center">
							<fo:table-column column-width="10mm" />
							<fo:table-column column-width="170mm" />
							<fo:table-column column-width="10mm" />
							<fo:table-body>

								<fo:table-row>
									<fo:table-cell>
										<fo:block>

										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:table width="170mm" table-layout="fixed" border="0pt solid" display-align="center">
												<fo:table-column />
												<fo:table-body>
													<fo:table-row font-size="12pt" text-align="justify">
														<fo:table-cell>
															<fo:block line-height="2">
																En Bci estamos siempre comprometidos con informarlo de manera oportuna, ágil y segura. Es por eso que le confirmamos que con fecha
																<xsl:value-of select="fechaContratacion" />
																se ha realizado exitosamente la contratación de su Depósito a Plazo, por Internet, de acuerdo a las condiciones:
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>

										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell>
										<fo:block>

										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block space-after="10mm" space-before="10mm">
											<fo:table width="170mm" table-layout="fixed" border="0.5pt solid" display-align="center">
												<fo:table-column column-width="50mm" />
												<fo:table-column column-width="15mm" />
												<fo:table-column column-width="105mm" />
												<fo:table-body>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																N° Transacción
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																:
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="numeroTransaccion" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																Fecha y Hora
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																:
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="fecha" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																N° del Depósito
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																:
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="numeroDeposito" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																Tipo de Documento
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																:
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="tipoDocumento" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																Moneda
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																:
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="moneda" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																Dirección e-mail
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																:
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="direccionEmail" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																Cuenta de Cargo
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																:
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="cuentaCargo" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																Fecha de Captación
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																:
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="fechaCaptacion" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																Fecha de Vencimiento
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																:
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="fechaVencimiento" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																Monto Inversión
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="simboloMoneda" />
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="montoInversion" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																Plazo (Período en días)
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																:
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="plazo" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																Tasa del periodo
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																:
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="tasaPeriodo" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																Ganancia
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="simboloMoneda" />
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray">
															<fo:block text-align="left">
																<xsl:value-of select="ganancia" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

													<fo:table-row height="10mm">
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray" font-weight="bold">
															<fo:block text-align="left">
																Valor Final
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray" font-weight="bold">
															<fo:block text-align="left">
																<xsl:value-of select="simboloMoneda" />
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding-left="2mm" padding-right="2mm" border="solid 1pt gray" font-weight="bold">
															<fo:block text-align="left">
																<xsl:value-of select="valorFinal" />
															</fo:block>
														</fo:table-cell>
													</fo:table-row>

												</fo:table-body>
											</fo:table>

										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>

										</fo:block>
									</fo:table-cell>
								</fo:table-row>


								<fo:table-row>
									<fo:table-cell>
										<fo:block>

										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:table width="170mm" border="0pt solid" display-align="center" table-layout="fixed">
												<fo:table-column />
												<fo:table-body>
													<fo:table-row font-size="12pt" text-align="justify">
														<fo:table-cell>
															<fo:block line-height="2" space-after="5mm" font-weight="bold">
																Notas Importantes:
															</fo:block>

															<fo:block>
																<fo:table width="170mm" border="0pt solid" display-align="center">
																	<fo:table-column column-width="10mm" />
																	<fo:table-column column-width="160mm" />
																	<fo:table-body>

																		<fo:table-row text-align="justify">
																			<fo:table-cell display-align="before">
																				<fo:block text-align="center">
																					•
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell>
																				<fo:block>
																					Banco Bci sólo pagará depósitos a plazo en su fecha de vencimiento.
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row>

																		<fo:table-row text-align="justify">
																			<fo:table-cell display-align="before">
																				<fo:block text-align="center">
																					•
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell>
																				<fo:block>
																					Cuando el Depósito es Fijo, su inversión generará intereses durante el plazo acordado.
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row>
																		<fo:table-row text-align="justify">
																			<fo:table-cell display-align="before">
																				<fo:block text-align="center">
																					•
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell>
																				<fo:block>
																					Cuando el Depósito es Renovable, su depósito se renueva automáticamente por el mismo plazo inicial, con la posibilidad de liquidarse en la fecha de vencimiento o dentro de los tres días hábiles siguientes a dicha fecha.
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row>
																		<fo:table-row text-align="justify">
																			<fo:table-cell display-align="before">
																				<fo:block text-align="center">
																					•
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell>
																				<fo:block>
																					Infórmese sobre la garantía estatal de los Depósitos en su banco o en www.CMFChile.cl.
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row>
																		<fo:table-row text-align="justify">
																			<fo:table-cell display-align="before">
																				<fo:block text-align="center">
																					•
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell>
																				<fo:block>
																					Las tildes han sido omitidos intencionalmente.
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
									<fo:table-cell>
										<fo:block>
											&#160; </fo:block>
									</fo:table-cell>
								</fo:table-row>


								<fo:table-row>
									<fo:table-cell>
										<fo:block>

										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block space-before="10mm">
											<fo:table width="170mm" border="0pt solid" display-align="center" table-layout="fixed">
												<fo:table-column />
												<fo:table-body>
													<fo:table-row font-size="12pt" text-align="justify">
														<fo:table-cell>
															<fo:block>
																Lo invitamos a seguir confiando en Bci e invirtiendo en Depósitos a Plazo u otros instrumentos de inversión cuyos detalles puede revisar visitando nuestra Red de Sucursales Bci o en Bci.cl. Para consultas, comuníquese con su Ejecutivo de Inversiones, llame al 600 824 24 24, opción 7 ó escriba a
																<fo:inline font-weight="bold">equipoinversiones@bci.cl</fo:inline>
															</fo:block>
															<fo:block space-before="10mm">
																<fo:inline font-weight="bold">Atentamente,</fo:inline>
															</fo:block>
															<fo:block>
																<fo:inline font-weight="bold">Banco de Crédito E Inversiones</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>

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
