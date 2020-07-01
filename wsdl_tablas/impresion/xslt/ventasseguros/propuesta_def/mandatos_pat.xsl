<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_mandatos_pat">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000">
						<fo:block>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#336699">
											<fo:block text-align="center" font-size="12pt" font-weight="bold" color="#ffffff">AUTORIZACION DE DESCUENTO EN TARJETAS DE CRÉDITO (PAT)</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="10pt">
							</fo:block>
							<fo:table table-layout="fixed" width="{$varTablaAncho}" border-style="solid" border-width="1.0pt" border-color="#000000">
								<fo:table-column column-width="proportional-column-width(18)" background-color="{$varTablaColumnaLabelColor}"/>
								<fo:table-column column-width="proportional-column-width(20)" background-color="{$varTablaColumnaValorColor}"/>
								<fo:table-column column-width="proportional-column-width(21)" background-color="{$varTablaColumnaLabelColor}"/>
								<fo:table-column column-width="proportional-column-width(41)" background-color="{$varTablaColumnaValorColor}"/>
								<fo:table-body>
									<!-- SECCION IDENTIFICACION DEL CLIENTE -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
												<fo:inline>IDENTIFICACION DEL TITULAR TARJETA DE CRÉDITO</fo:inline>
												<fo:inline font-style="italic">(Responsable de Pago)</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Nombre</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" number-columns-spanned="3" background-color="{$varTablaColumnaValorColor}" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="cliente/nombres"/>
												<xsl:text> </xsl:text>
												<xsl:value-of disable-output-escaping="no" select="cliente/apepaterno"/>
												<xsl:text> </xsl:text>
												<xsl:value-of disable-output-escaping="no" select="cliente/apematerno"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>RUT</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="cliente/rut"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Tipo Tarjeta</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="tipotarjeta"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Nº Tarjeta</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="cuentanumero"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Fecha Vencimiento</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="fechavencimiento"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<!-- SECCION COMPAÑIA -->
									<fo:table-row>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:if test="( ../identificacion/documento/tipo = 'ENDOSO' )">
													<xsl:text>Endos N°</xsl:text>
												</xsl:if>
												<xsl:if test="( ../identificacion/documento/tipo = 'PROPUESTA' )">
													<xsl:text>Propuesta N°</xsl:text>
												</xsl:if>
												<xsl:if test="( ../identificacion/documento/tipo = 'POLIZA' )">
													<xsl:text>Propuesta N°</xsl:text>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="../identificacion/documento/numeroseguro"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Compañía</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="../identificacion/compania/nombrecompania"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<!-- SECCION TEXTO DEL MANDATO -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
												<fo:inline>MANDATO</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" text-align="justify" background-color="{$varTablaColumnaValorColor}" padding-left="5pt" padding-right="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:choose>
												<xsl:when test=" ../identificacion/compania/codigo = '99017000' ">
													<fo:block padding-before="3pt">1.-Por el presente instrumento autorizo a Transbank S.A. a cargar en mi tarjeta de crédito arriba individualizada el valor de la(s) prima(s) correspondiente(s) a la(s) póliza de seguro por mi contratada(s) con Royal &amp; Sun Alliance Seguros (Chile) S.A., y las variaciones que en aquellas haya lugar a consecuencia de incrementos y/o disminuciones acordadas, respecto del(los) monto(s) asegurad(s) u otro(s) aspecto que produzca(n) igual efecto. Asimismo, este instrumento respaldará cualquier otra suma y/o valor asociado que adeude a Royal &amp; Sun Alliance Seguros (Chile) S.A. en virtud de la(s) póliza(s) contratada(s) con ella, como así también los impuestos derivados de estas operaciones. </fo:block>
													<fo:block padding-before="3pt">2.- El presente mandato tiene vigencia indefinida, auque podrá ser revocado, por el mandante, por escrito. </fo:block>
													<fo:block padding-before="3pt">3.- Convengo en que Royal &amp; Sun Alliance Seguros (Chile) S.A. enviará a Transbank S.A. periódicamente la información de cobro correspondiente, liberando de toda responsabilidad a Transbank S.A. si ello no ocurriera. El pago deberá hacerse en las fechas en que Royal &amp; Sun Alliance Seguros (Chile) S.A. estipule y a favor de ella. Sin perjuicio de lo anterior, si por cualquier causa, Transbank s.a. no pudiera efectuar el cargo, lo autorizo para realizar dicho cargo después de la fecha indicada. </fo:block>
													<fo:block padding-before="3pt">4.- El servicio entregado por Royal &amp; Sun Alliance Seguros (Chile) S.A., será de su única y exclusiva responsabilidad, liberando a Transbank S.A. de cualquier obligación al respecto. </fo:block>
													<fo:block padding-before="3pt">5.- La presente autorización se entenderá, para todos los efectos legales, dada el mismo día en que se lleve a efecto el cargo en mi tarjeta de crédito. Asimismo, para las autorizaciones que se han otorgado en forma indefinida, se entenderán renovadas mes a mes, en tanto no se revoque por escrito. </fo:block>
													<fo:block padding-before="3pt">6.- El presente mandato expirara automáticamente en el caso de termino de contrato de transbank s.a. con Royal &amp; Sun Alliance Seguros (Chile) S.A. </fo:block>
													<fo:block padding-before="3pt">7.- En consideración a este servicio convengo, además que si cualquiera de las cuotas mensuales no fuese pagada por cualquier causa, Transbank S.A. no tendrá responsabilidad alguna, aunque dicho no pago pueda resultar algún perjuicio para la tarjeta habiente o para Royal &amp; Sun Alliance Seguros (Chile) S.A. </fo:block>
													<fo:block padding-before="3pt">8.- Royal &amp; Sun Alliance Seguros (Chile) S.A. podrá cobrar por otros medios, con los respectivos recargos por gastos de cobranza e intereses por mora, en caso de que el cargo no se realice por cualquier motivo que no competa a Royal &amp; Sun Alliance Seguros (Chile) S.A. (bloqueo, renovación de convenio, etc) sobre la tarjeta arriba individualizada. </fo:block>
													<fo:block padding-before="3pt">9.- El presente mandato afecta al conjunto de las pólizas y renovaciones celebradas con la compañía durante la vigencia de este; y autoriza a que las primas de dichas pólizas se paguen mediante modalidad de PAT, es decir autorización de descuento en tarjeta de crédito. El monto de la prima, su forma y modalidad de pago se encuentran inscritas en las condiciones particulares de cada póliza. </fo:block>
												</xsl:when>
												<xsl:when test=" ../identificacion/compania/codigo = '99279000' ">
													<fo:block padding-before="3pt">
														1.- Por el presente mandato, vengo en autorizar a EuroAmerica Seguros de Vida S.A., en adelante "La Compañía" para que proceda al cobro de las primas correspondientes a seguros contratados con esta compañía, durante toda la vigencia de estos, incluyendo las modificaciones que pueden sufrir en su vigencia, en especial cambios en las primas. Para este efecto, autorizo a que las primas de dichas pólizas se paguen mediante la modalidad PAT, es decir, Autorización de Descuento de Tarjeta de Crédito. El monto de la prima, su forma y modalidad de pago, se encuentran insertas en las condiciones particulares de cada póliza, y en sus correspondientes endosos o modificaciones. 
														En consideración de lo anterior, y con el objeto que la Compañía proceda a ejecutar el presente mandato, por el presente instrumento autorizo expresamente a la Compañía para que por intermedio de Transbank S.A. cargue en mi Tarjeta de Crédito arriba individualizada, o cualquiera otra que la sustituya o reemplace, las cantidades ya indicadas (u otras que pacte con la Compañía) a contar de la fecha y por el periodo señalado, para que sean pagadas a la Compañía asumiendo yo el compromiso de mantener mi tarjeta vigente y con el crédito suficiente para cubrir los cargos. En caso de sustitución, revocación, vencimiento o reemplazo de la tarjeta de credito, me obligo a informar por escrito a la Compañía de dicha situación, no obstante lo cual autorizo a Transbank S.A. o al Emisor de la tarjeta a informar a la Compañía la nueva fecha de vencimiento, el nuevo número y/o tarjeta asignada y que los cargos respectivos se efectúen en ella. A su vez, en caso de no detectarse una tarjeta que reemplace o sustituya a la arriba indicada, autorizo a Transbank S.A. a cargar las cantidades señaladas en cualquier otra tarjeta de crédito emitida a mi nombre y operada por tal empresa y a informar dicha tarjeta a la Compañía. 
													</fo:block>
													<fo:block padding-before="3pt">2.- Convengo que la Compañía enviará a Transbank S.A. periódicamente y de acuerdo a lo contratado la información de cobro correspondiente, la relación contractual entre la Compañía y el suscrito, es exclusiva entre ambas partes, por lo que libero a Transbank S.A. de cualquier obligación al respecto. En el evento que Transbank S.A. por cualquier circunstancia, no efectuará algún cargo en mi Tarjeta de Crédito, la Compañía deberá procurarse el pago directamente. </fo:block>
													<fo:block padding-before="3pt">3.- El presente mandato continuará vigente hasta que yo lo revoque expresamente por escrito, enviando tal comunicación por carta certificada o certificación de recepción, la cual sólo se hará efectiva a los treinta días corridos siguientes a haber sido recepcionada por esta última, no obstante, la presente autorización expirará automáticamente en caso de término de contrato entre la Compañía y Transbank S.A. </fo:block>
													<fo:block padding-before="3pt">4.- Una vez obtenida la aceptación por parte de Transbank S.A., el presente mandato comenzará a operar en el mes subsiguiente al mes de suscripción, y se cargarán las primas correspondientes al mes de cargo y al mes anterior si es que no hubiese sido pagada directamente en la Compañía. </fo:block>
													<fo:block padding-before="3pt">5.- En consideración a este servicio convengo, además, si cualquiera de las primas no fuese pagada, con o sin causa, intencional o inadvertidamente, autorizo que el periodo siguiente se carguen dos o más cuotas impagas, y así sucesivamente, descontándose las que hubiese cancelado directamente en las oficinas de la Compañía. </fo:block>
													<fo:block padding-before="3pt">6.- Por el presente acto, declaro que no obstante la presenta autorización y mandato, la obligación de pago a la Compañía es y será siempre responsabilidad del suscrito, asumiendo la responsabilidad por los eventuales no pagos que se produzcan. La Compañía dispondrá de la información de cargo en su portal de Internet o le enviará periódicamente al domicilio del Contratante si así lo solicita por escrito.</fo:block>
												</xsl:when>
												<xsl:otherwise>
													<fo:block padding-before="4pt">1. Por medio del presente instrumento autorizo expresamente a Transbank S.A. a cargar en mi tarjeta   de crédito arriba individualizada, el valor correspondiente por los servicios prestados por BCI   Seguros Generales S.A. y/o BCI Seguros Vida S.A., en adelante, BCI Seguros. Este cargo se efectuará en forma mensual, por un período de meses o indefinidamente.</fo:block>
													<fo:block padding-before="4pt">2. Convengo en que BCI Seguros enviará a Transbank periódicamente, de acuerdo al contrato establecido, la información para el cobro correspondiente, liberando de toda responsabilidad a Transbank si ello no ocurriera.</fo:block>
													<fo:block padding-before="4pt">3. El cargo se hará efectivo a partir de la fecha en que esta autorización sea aceptada por Transbank.  En caso que la autorización no sea aceptada, esta situación le será comunicada al titular de la tarjeta de crédito por BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">4. El servicio prestado por BCI Seguros, será responsabilidad única y exclusiva de BCI Seguros liberando a Transbank de cualquier obligación. </fo:block>
													<fo:block padding-before="4pt">5. En el evento que Transbank no pudiese por cualquier circunstancia efectuar el cargo correspondiente, comunicará esta situación a BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">6. La presente autorización se entenderá, para todos los efectos legales, dada el mismo día en que se lleve a efecto el cargo en la tarjeta de crédito. Asimismo, se entenderá renovada mes a mes, en tanto no se revoque por escrito.</fo:block>
													<fo:block padding-before="4pt">7. La presente autorización de cargo en mi tarjeta de crédito continuará vigente hasta que yo la revoque por escrito a BCI Seguros, en la forma indicada en el número precedente.</fo:block>
													<fo:block padding-before="4pt">8. El presente mandato expirará automáticamente en el caso de término de contrato de Transbank con BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">9. En consideración a este servicio convengo, además, que si cualquiera de las cuotas mensuales, no fuese pagada por cualquier causa, Transbank no tendrá responsabilidad alguna, aunque de dicho pago   pueda resultar algún perjuicio para el tarjetahabiente o para BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">10. El presente mandato entrará en vigor en forma indefinida desde la fecha de recepción en BCI Seguros y hasta que se produzcan las situaciones descritas en los punto 7 y 8 anteriores.</fo:block>
													<fo:block padding-before="4pt">11. El límite de pago será igual al monto disponible en la tarjeta de crédito anteriormente individualizada, a la fecha de cargo.</fo:block>
													<fo:block padding-before="4pt">12. El presente mandato afecta al conjunto de pólizas y renovaciones celebradas con la compañía durante la vigencia de éste; y autoriza a que las primas de dichas pólizas se paguen mediante la modalidad PAT, es decir, Autorización de Descuento en Tarjeta de Crédito. El monto de la prima, su forma y  modalidad de pago, se encuentran insertas en las condiciones particulares de cada póliza.(Circular S.V.S. Nro. 1.499 del 15.09.2000).</fo:block>
												</xsl:otherwise>
											</xsl:choose>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="20pt" text-align="center">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(1)"/>
									<fo:table-column column-width="8cm"/>
									<fo:table-column column-width="proportional-column-width(1)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell height="25pt" column-number="2" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#000000">
												<fo:block>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt">
												<fo:block>Firma del Titular de la Cuenta Corriente</fo:block>
												<fo:block>
													En <xsl:value-of disable-output-escaping="no" select="../identificacion/documento/firma/ciudad"/>
													 a <xsl:value-of disable-output-escaping="no" select="../identificacion/documento/firma/dia"/>
													 de <xsl:value-of disable-output-escaping="no" select="../identificacion/documento/firma/mes"/> 
													 de <xsl:value-of disable-output-escaping="no" select="../identificacion/documento/firma/anio"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
</xsl:stylesheet>
