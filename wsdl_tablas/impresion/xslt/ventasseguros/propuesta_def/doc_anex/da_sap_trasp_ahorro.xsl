<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_da_sap_trasp_ahorro">
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(50)"/>
				<fo:table-column column-width="proportional-column-width(50)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before" background-color="{$varTablaTituloColor}" padding-left="5pt">
							<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
								<fo:inline font-weight="bold">TRASPASO AHORRO PREVISIONAL VOLUNTARIO (Orden irrevocable de traspaso de fondos de ahorro previsional) </fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" width="50%" display-align="before">
							<fo:block>
								<fo:inline font-weight="bold">DESDE:</fo:inline>
								<xsl:value-of select="../../informacion-adicional/zona-36-37/TRASPASO_FONDOS_DESDE_ORIGEN"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" width="50%" display-align="before">
							<fo:block>
								<fo:inline font-weight="bold">A: BCI SEGUROS VIDA S.A. </fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell padding="5pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="center" text-align="center">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(50)"/>
								<fo:table-column column-width="proportional-column-width(50)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" width="50%" text-align="left">
											<fo:block>Origen del ahorro a traspasar</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" width="50%" text-align="left">
											<fo:block>Tipo de traspaso</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" text-align="left">
											<fo:block>
												<fo:inline font-weight="bold">
													<xsl:value-of select="../../informacion-adicional/zona-36-37/ORIGEN_AHORRO"/>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" text-align="left">
											<fo:block>
												<fo:inline font-weight="bold">
													<xsl:value-of select="../../informacion-adicional/zona-36-37/TRASPASAR_SALDO"/>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" text-align="left">
											<fo:block>
												<xsl:if test=" ../../informacion-adicional/zona-36-37/TIPO_PAGO = 'DIRECTA' ">Monto o porcentaje del traspaso parcial</xsl:if>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" text-align="left">
											<fo:block>Alternativa de ahorro previsional del destino del traspaso</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" text-align="left">
											<fo:block>
												<xsl:if test=" ../../informacion-adicional/zona-36-37/TIPO_PAGO = 'DIRECTA' ">
													<fo:inline font-weight="bold">
														<xsl:value-of select="../../informacion-adicional/zona-36-37/MONTO_TRASPASAR"/>
													</fo:inline>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" text-align="left">
											<fo:block>
												<fo:inline font-weight="bold">
													<xsl:value-of select="../../informacion-adicional/zona-36-37/ALTERNATIVA_AHORRO"/>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>
