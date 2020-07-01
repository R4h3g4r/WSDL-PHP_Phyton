<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_da_apv_acep_prop">
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding="2pt">
							<fo:block>
								<fo:block font-weight="bold">ACEPTACIÓN DE LA PROPUESTA</fo:block>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row height="15pt">
						<fo:table-cell padding="2pt">
							<fo:block><xsl:text> </xsl:text></fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell padding="2pt">
							<fo:block text-align="justify">
								<fo:block>El seguro ofrecido es intermediado por BCI Corredores de Seguros S.A. y la compañía que cubre el riesgo es BCI Seguros Vida S.A.</fo:block>
								<fo:block padding-before="5pt">El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre elección del intermediario y compañía aseguradora.</fo:block>
								<fo:block padding-before="5pt">"Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea aceptada por el asegurador y se inicie la vigencia de la póliza." (Circular Nº 1.390 S.V.S.)</fo:block>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row  height="15pt">
						<fo:table-cell padding="2pt">
							<fo:block><xsl:text> </xsl:text></fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
							<fo:block>

								<fo:table table-layout="fixed" width="100%">
									<fo:table-column/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell padding="2pt">
												<fo:block>
												El asegurado individualizado en el anverso de esta propuesta declara haber tenido a la vista la información contenida en esta propuesta.
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell padding="2pt">
												<fo:block>
													Esta propuesta se firma en la ciudad de 
													<xsl:value-of disable-output-escaping="no" select="../../../../identificacion/documento/firma/ciudad"/>,
													a <xsl:value-of disable-output-escaping="no" select="../../../../identificacion/documento/firma/dia"/>
													de <xsl:value-of disable-output-escaping="no" select="../../../../identificacion/documento/firma/mes"/> 
													de <xsl:value-of disable-output-escaping="no" select="../../../../identificacion/documento/firma/anio"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell padding="2pt">
												<fo:block>
													<fo:table table-layout="fixed" width="90%">
														<fo:table-column column-width="proportional-column-width(35)"/>
														<fo:table-column column-width="proportional-column-width(30)"/>
														<fo:table-column column-width="proportional-column-width(35)"/>
														<fo:table-body>
															<fo:table-row keep-with-next="always" height="45pt">
																<fo:table-cell column-number="2" text-align="center" display-align="center">
																	<fo:block>
																		<xsl:text> </xsl:text>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell column-number="2" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
																	<fo:block>
																		<xsl:text>Firma Asegurado</xsl:text>
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
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
</xsl:stylesheet>
