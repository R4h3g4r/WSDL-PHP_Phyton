<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_da_apv_form_pago">
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell display-align="before">
							<fo:block font-weight="bold">OTROS ANTECEDENTES</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(38)"/>
					<fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(14)"/>
					<fo:table-column column-width="proportional-column-width(6)"/>
					<fo:table-column column-width="proportional-column-width(27)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="5" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									FORMA DE PAGO
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="5" display-align="before">
								<fo:block>Responsable de Pago</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="4" display-align="before">
								<fo:block>Nombre: <xsl:value-of select="../../../../pago/responsabledelpago/datos/nombre"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="1" display-align="before">
								<fo:block>RUT: <xsl:value-of select="../../../../pago/responsabledelpago/datos/rut"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>Domicilio: <xsl:value-of select="../../../../pago/responsabledelpago/datos/direccion"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
								<fo:block>Comuna: <xsl:value-of select="../../../../pago/responsabledelpago/datos/comuna"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
								<fo:block>Ciudad: <xsl:value-of select="../../../../pago/responsabledelpago/datos/ciudad"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:if test=" ../../../../pago/siguientepago/formadepago != 'Pago por AFP' ">
							<fo:table-row>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
									<fo:block>Día de cargo: <xsl:value-of select="../../../../pago/siguientepago/diapago"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="4" display-align="before">
									<fo:block>Modalidad de pago: <xsl:value-of select="../../../../pago/siguientepago/formadepago"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="5" display-align="before">
									<fo:block>
										<fo:table table-layout="fixed" width="100%">
											<fo:table-column column-width="proportional-column-width(50)"/>
											<fo:table-column column-width="proportional-column-width(50)"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell padding="2pt">
														<fo:block>
															<xsl:value-of select="../../../../pago/siguientepago/tiponocuenta"/>: <xsl:value-of select="../../../../pago/siguientepago/nocuenta"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell padding="2pt">
														<fo:block>
															<xsl:if test=" ../../../../pago/siguientepago/banco != '' ">
															Banco: <xsl:value-of select="../../../../pago/siguientepago/banco"/>
															</xsl:if>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:if>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>
