<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:template match="estado">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>

				<fo:simple-page-master master-name="first"
					margin-right="1cm" margin-left="1cm" margin-bottom="1cm"
					margin-top="1cm" page-width="21cm" page-height="29.7cm">
					<fo:region-body margin-top="6.15cm" margin-bottom="7.3cm" />
					<fo:region-before extent="7cm" />
					<fo:region-after extent="7cm" />

				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="first"
				initial-page-number="1">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block line-height="14pt" font-size="8pt"
						text-align="end">
					</fo:block>
					<fo:table border-collapse="collapse"
						table-layout="fixed">
						<fo:table-column column-width="15.00cm" />
						<fo:table-column column-width="3.88cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-color="#000000"
									border-width="1px">
									<fo:block text-align="left"
										font-size="16pt" margin-left="3pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block padding-top="0pt"
										text-align="center">
										<fo:external-graphic
											height="50px">
											<xsl:attribute name="src">
												<xsl:value-of
													select="encabezado/logoBanco/@value" />
											</xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="#000000"
									border-width="1px">
									<fo:block text-align="left"
										font-size="18pt" margin-left="3pt" font-weight="normal"
										font-style="italic">
										Estado de Cuenta Empresa
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block padding-top="0pt"
										text-align="center">
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>

					<fo:block padding-top="8pt"></fo:block>
					<fo:table>
						<fo:table-column column-width="14.88cm" />
						<fo:table-column column-width="4.0cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:table table-layout="fixed">
										<fo:table-column
											column-width="3.72cm" />
										<fo:table-column
											column-width="3.72cm" />
										<fo:table-column
											column-width="3.72cm" />
										<fo:table-column
											column-width="3.72cm" />
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell
													border-color="#000000" border-width="0.5pt"
													border-style="solid">
													<fo:block
														text-align="center" font-size="8pt" margin-left="3pt"
														font-weight="bold" padding-top="2pt"
														padding-right="2pt">
														Código de la
														Empresa
													</fo:block>
												</fo:table-cell>
												<fo:table-cell
													border-color="#000000" border-width="0.5pt"
													border-style="solid">
													<fo:block
														text-align="center" font-size="8pt" margin-left="3pt"
														font-weight="bold" padding-top="2pt"
														padding-right="2pt">
														RUT
													</fo:block>
												</fo:table-cell>
												<fo:table-cell
													border-color="#000000" border-width="0.5pt"
													border-style="solid">
													<fo:block
														text-align="center" font-size="8pt" margin-left="3pt"
														font-weight="bold" padding-top="2pt"
														padding-right="2pt">
														Fecha
														Vencimiento
													</fo:block>
												</fo:table-cell>
												<fo:table-cell
													border-color="#000000" border-width="0.5pt"
													border-style="solid">
													<fo:block
														text-align="center" font-size="8pt" margin-left="3pt"
														font-weight="bold" padding-top="2pt"
														padding-right="2pt">
														Cupo Empresa
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell
													border-color="#000000" border-width="0.5pt"
													border-style="solid">
													<fo:block
														text-align="center" font-size="8pt" margin-left="3pt"
														padding-top="2pt" padding-right="2pt">
														<xsl:value-of
															select="//encabezado/cuenta/@value" />
													</fo:block>
												</fo:table-cell>
												<fo:table-cell
													border-color="#000000" border-width="0.5pt"
													border-style="solid">
													<fo:block
														text-align="center" font-size="8pt" margin-left="3pt"
														padding-top="2pt" padding-right="2pt">
														<xsl:value-of
															select="//encabezado/rut/@value" />
													</fo:block>
												</fo:table-cell>
												<fo:table-cell
													border-color="#000000" border-width="0.5pt"
													border-style="solid">
													<fo:block
														text-align="center" font-size="8pt" margin-left="3pt"
														padding-top="2pt" padding-right="2pt">
														<xsl:value-of
															select="//encabezado/fecha/@value" />
													</fo:block>
												</fo:table-cell>
												<fo:table-cell
													border-color="#000000" border-width="0.5pt"
													border-style="solid">
													<fo:block
														text-align="right" font-size="8pt" margin-left="3pt"
														padding-top="2pt" padding-right="2pt">
														US $
														<xsl:value-of
															select="//encabezado/cupoTotal/@value" />
														&#160;
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
									<fo:block padding-top="8pt"></fo:block>
									<fo:table table-layout="fixed">
										<fo:table-column
											column-width="14.88cm" />
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell>
													<fo:block
														text-align="left" font-size="8pt" margin-left="3pt"
														padding-top="2pt">
														CONSIDERAMOS
														APROBADO ESTE
														ESTADO DE
														CUENTA, SI
														DENTRO DE 60
														DÍAS, NO HEMOS
														RECIBIDO AVISO
														POR ESCRITO EN
														CONTRARIO.
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell
													border-color="#000000" border-width="0.0pt">
													<fo:block
														padding-top="8pt">
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:table-cell>
								<fo:table-cell>
									<fo:table>
										<fo:table-column
											column-width="4cm" />
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell>
													<fo:block
														padding-top="0pt" text-align="right" margin-top="0pt">
														<fo:external-graphic
															height="50px">
															<xsl:attribute
																name="src">
																<xsl:value-of
																	select="encabezado/logoTarjeta/@value" />
															</xsl:attribute>
														</fo:external-graphic>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
	<fo:table table-layout="fixed">
						<fo:table-column column-width="18.88cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="center"
										font-size="10pt" margin-left="3pt" font-weight="bold"
										padding-top="2pt">
										Movimientos del Periodo en Dólares
										(US $)
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<fo:table table-layout="fixed">
						<fo:table-column column-width="3.88cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="2.3cm" />
						<fo:table-column column-width="2.3cm" />
						<fo:table-column column-width="2.3cm" />
						<fo:table-column column-width="2.3cm" />
						<fo:table-column column-width="2.3cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="center"
										font-size="8pt" margin-left="3pt" font-weight="bold"
										padding-top="2pt">
										Número de Cuenta
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="center"
										font-size="8pt" margin-left="3pt" font-weight="bold"
										padding-top="2pt">
										Nombre
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="center"
										font-size="8pt" margin-left="3pt" font-weight="bold"
										padding-right="2pt" padding-top="2pt">
										Cupo Asignado
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="center"
										font-size="8pt" margin-left="3pt" font-weight="bold"
										padding-right="2pt" padding-top="2pt">
										Pago Mínimo
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="center"
										font-size="8pt" margin-left="3pt" font-weight="bold"
										padding-right="2pt" padding-top="2pt">
										Deuda Total
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="center"
										font-size="8pt" margin-left="3pt" font-weight="bold"
										padding-right="2pt" padding-top="2pt">
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="center"
										font-size="8pt" margin-left="3pt" font-weight="bold"
										padding-right="2pt" padding-top="2pt">
									
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							</fo:table-body>
					</fo:table>
				</fo:static-content>

				<fo:static-content flow-name="xsl-region-after">
<fo:block padding-top="15pt"></fo:block>

					<fo:table border-collapse="collapse"
						table-layout="fixed">
						<fo:table-column column-width="18.88cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="left"
										font-size="8pt" font-weight="bold">
										Información General
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block padding-top="30pt">
										&#160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>

					<fo:block padding-top="15pt"></fo:block>

					<fo:table border-collapse="collapse"
						table-layout="fixed">
						<fo:table-column column-width="10.44cm" />
						<fo:table-column column-width="8.44cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt">
									&#160;
								</fo:table-cell>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt">
									<fo:block text-align="left"
										font-size="10pt" font-weight="bold">
										<xsl:value-of
											select="//encabezado/nombre/@value" />
									</fo:block>
									<fo:block text-align="left"
										font-size="10pt" font-weight="bold">
										<xsl:value-of
											select="//encabezado/direccion/@value" />
									</fo:block>
									<fo:block padding-top="20pt">
										&#160;
									</fo:block>
									<fo:block text-align="left"
										font-size="10pt" font-weight="bold">
										<xsl:value-of
											select="//encabezado/comuna/@value" />
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:static-content>

				<fo:flow flow-name="xsl-region-body">

					

					

					

					<fo:table table-layout="fixed">
						<fo:table-column column-width="3.88cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="2.3cm" />
						<fo:table-column column-width="2.3cm" />
						<fo:table-column column-width="2.3cm" />
						<fo:table-column column-width="2.3cm" />
						<fo:table-column column-width="2.3cm" />
						<fo:table-body>
														<xsl:for-each select="//detalles/detalle">
								<fo:table-row>
									<fo:table-cell
										border-color="#000000" border-width="0.5pt"
										border-style="solid">
										<fo:block text-align="center"
											font-size="8pt" margin-left="3pt" margin-top="3pt"
											margin-bottom="1pt" padding-top="2pt" padding-right="2pt">
											<xsl:value-of
												select="@cuenta" />
											&#160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-color="#000000" border-width="0.5pt"
										border-style="solid">
										<fo:block text-align="left"
											font-size="8pt" margin-left="3pt" margin-top="3pt"
											margin-bottom="1pt" padding-top="2pt" padding-right="2pt">
											<xsl:value-of
												select="@nombre" />
											&#160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-color="#000000" border-width="0.5pt"
										border-style="solid">
										<fo:block text-align="right"
											font-size="8pt" margin-left="3pt" margin-top="3pt"
											margin-bottom="1pt" padding-top="2pt" padding-right="2pt">
											<xsl:value-of
												select="@cupo" />
											&#160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-color="#000000" border-width="0.5pt"
										border-style="solid">
										<fo:block text-align="right"
											font-size="8pt" margin-left="3pt" margin-top="3pt"
											margin-bottom="1pt" padding-top="2pt" padding-right="2pt">
											<xsl:value-of
												select="@minimo" />
											&#160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-color="#000000" border-width="0.5pt"
										border-style="solid">
										<fo:block text-align="right"
											font-size="8pt" margin-left="3pt" margin-top="3pt"
											margin-bottom="1pt" padding-top="2pt" padding-right="2pt">
											<xsl:value-of
												select="@deuda" />
											&#160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-color="#000000" border-width="0.5pt"
										border-style="solid">
										<fo:block text-align="right"
											font-size="8pt" margin-left="3pt" margin-top="3pt"
											margin-bottom="1pt" padding-top="2pt" padding-right="2pt">
										
											&#160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border-color="#000000" border-width="0.5pt"
										border-style="solid">
										<fo:block text-align="right"
											font-size="8pt" margin-left="3pt" margin-top="3pt"
											margin-bottom="1pt" padding-top="2pt" padding-right="2pt">
											
											&#160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:for-each>

							<fo:table-row>
								<fo:table-cell>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left"
										font-size="8pt" margin-left="3pt" padding-top="2pt">
										TOTAL
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="right"
										font-size="8pt" margin-left="3pt" padding-top="2pt"
										padding-right="2pt">
										<xsl:value-of
											select="//encabezado/cupoTotalAsignado/@value" />
										&#160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="right"
										font-size="8pt" margin-left="3pt" padding-top="2pt"
										padding-right="2pt">
										<xsl:value-of
											select="//encabezado/pagoMinimo/@value" />
										&#160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="right"
										font-size="8pt" margin-left="3pt" padding-top="2pt"
										padding-right="2pt">
										<xsl:value-of
											select="//encabezado/deudaTotal/@value" />
										&#160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="right"
										font-size="8pt" margin-left="3pt" padding-top="2pt"
										padding-right="2pt">
										
										&#160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="#000000"
									border-width="0.5pt" border-style="solid">
									<fo:block text-align="right"
										font-size="8pt" margin-left="3pt" padding-top="2pt"
										padding-right="2pt">
										
										&#160;
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
