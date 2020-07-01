<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_da_apv_gastos_poliza">
		<fo:block break-before="page">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2pt">
							<fo:block font-weight="bold">II. GASTOS DE LA POLIZA</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row height="10pt">
						<fo:table-cell/>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block>
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(50)"/>
									<fo:table-column column-width="proportional-column-width(25)"/>
									<fo:table-column column-width="proportional-column-width(25)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="{$varTablaTituloColor}">
												<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
													<xsl:text>CONCEPTO</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="{$varTablaTituloColor}">
												<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
													<xsl:text>MONTO FIJO MENSUAL</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="{$varTablaTituloColor}">
												<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
													<xsl:text>PORCENTAJE MENSUAL</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
												<fo:block text-align="justify">
													<fo:inline font-weight="bold">1.- Cargo sobre las primas: </fo:inline>corresponde al monto o porcentaje que se calcula sobre la prima
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
												<xsl:text> </xsl:text>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
												<xsl:text> </xsl:text>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
												<fo:block>
													<xsl:text>i.Prima Básica o Mínima (1)</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
												<fo:block>
													<xsl:text>Mes 1 al 12 = 50% Mes 13 en adelante = 12%</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
												<fo:block>
													<xsl:text>ii. Prima en Exceso de la Prima Mínima (2)</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
												<fo:block>
													<xsl:text>iii.Otras</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
												<fo:block text-align="justify">
													<fo:inline font-weight="bold">2.- Cargo sobre el Valor Póliza (3): </fo:inline>corresponde al monto o porcentaje que se rebaja del valor póliza acumulado por el asegurado
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
												<fo:block text-align="justify">
													<fo:inline font-weight="bold">3.- Cargo por rentabilidad: </fo:inline>corresponde a los cobros efectuados por el asegurador en relación a la rentabilidad obtenida por las inversiones del valor póliza.
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
												<fo:block text-align="justify">
													<fo:inline font-weight="bold">4.- Cargo por reasignación de inversiones: </fo:inline>corresponde a aquellos gastos relacionados directamente con una modificación de la cartera de inversión, solicitada por el asegurado.
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
												<fo:block>
													<fo:inline font-weight="bold">5.- Cargo fijo:</fo:inline> corresponde a un monto fijo que, por concepto de gastos de administración, se rebaja mensualmente del Valor Póliza acumulado por el asegurado.
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
												<fo:block text-align="justify">
													<fo:inline font-weight="bold">6.- Gastos que se cobrarán en caso de retiro de fondos: </fo:inline>(sólo se pueden aplicar en caso de retiro antes de los 5 años desde el inicio de vigencia de la póliza, con un tope dado por los beneficios financieros o utilidad por la inversión de los fondos acumulados)
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
												<fo:block>
													<fo:block>
														<fo:inline text-decoration="underline">Rescates Parciales:</fo:inline>
													</fo:block>
													<fo:block>Año 1 al 4: El mínimo valor entre UF 0.2 y los beneficios financieros remanentes de los fondos acumulados.</fo:block>
													<fo:block>Año 5 en adelante: UF 0</fo:block>
													<fo:block>
														<fo:inline text-decoration="underline">Rescates Totales:</fo:inline>
													</fo:block>
													<fo:block>Año 1: el 100% de los beneficios financieros de los fondos acumulados</fo:block>
													<fo:block>Año 2: el 100% de los beneficios financieros de los fondos acumulados</fo:block>
													<fo:block>Año 3: el 75% de los beneficios financieros de los fondos acumulados</fo:block>
													<fo:block>Año 4: el 60% de los beneficios financieros de los fondos acumulados</fo:block>
													<fo:block>Año 5 en adelante: UF 0</fo:block>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center">
												<fo:block>
													<xsl:text>No aplica</xsl:text>
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
							<fo:block>
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(3)"/>
									<fo:table-column column-width="proportional-column-width(97)"/>
									<fo:table-body>
										<fo:table-row keep-with-next="always" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
											<fo:table-cell padding="2pt" text-align="center">
												<fo:block>
													<fo:inline font-weight="bold">(1)</fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt">
												<fo:block text-align="justify">
													<fo:inline font-weight="bold">PRIMA BASICA o MINIMA:</fo:inline> Es aquel monto mínimo por el que se puede contratar esta póliza. El monto y su periodicidad de pago se especifican en las condiciones particulares de la póliza.</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row keep-with-next="always" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
											<fo:table-cell padding="2pt" text-align="center">
												<fo:block>
													<fo:inline font-weight="bold">(2)</fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt">
												<fo:block text-align="justify">
													<fo:inline font-weight="bold">PRIMA EN EXCESO DE LA PRIMA MINIMA:</fo:inline> Es el monto adicional a la prima básica o mínima, que el asegurado decide pagar al asegurador durante al vigencia del seguro o por un período determinado, con el propósito de incrementar el Valor Póliza. Bajo este concepto se entenderán comprendidas todas aquellas primas, ya sean ocasionales o periódicas, pagadas por el asegurado adicionalmente a la prima básica o mínima.
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row keep-with-next="always" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
											<fo:table-cell padding="2pt" text-align="center">
												<fo:block>
													<fo:inline font-weight="bold">(3)</fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding="2pt">
												<fo:block text-align="justify">
													<fo:inline font-weight="bold">VALOR POLIZA:</fo:inline> El Valor Póliza lo constituye el saldo de una cuenta que representa la obligación del asegurador con el asegurado o con el o los beneficiarios, tal como se determina de acuerdo al artículo 5 del Condicionado General. El Valor Póliza pertenece al asegurado, quien puede ejercer su derecho a él, a través de un Retiro o Traspaso, Total o Parcial, según se señala en los artículos 7 y 8 del Condicionado General respectivamente.
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
	</xsl:template>
</xsl:stylesheet>
