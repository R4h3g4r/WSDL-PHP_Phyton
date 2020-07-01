<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_mandatos_pac">
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
											<fo:block text-align="center" font-size="12pt" font-weight="bold" color="#ffffff">AUTORIZACION DE DESCUENTO CUENTA CORRIENTE (PAC)</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="10pt">
							</fo:block>
							<fo:table table-layout="fixed" width="{$varTablaAncho}" border-style="solid" border-width="1.0pt" border-color="#000000">
								<fo:table-column column-width="proportional-column-width(22)" background-color="{$varTablaColumnaLabelColor}"/>
								<fo:table-column column-width="proportional-column-width(22)" background-color="{$varTablaColumnaValorColor}"/>
								<fo:table-column column-width="proportional-column-width(15)" background-color="{$varTablaColumnaLabelColor}"/>
								<fo:table-column column-width="proportional-column-width(41)" background-color="{$varTablaColumnaValorColor}"/>
								<fo:table-body>
									<!-- SECCION IDENTIFICACION DEL CLIENTE -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
												<fo:inline>IDENTIFICACION DEL TITULAR CUENTA CORRIENTE</fo:inline>
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
												<xsl:text>Banco</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="banco"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Nº Cta. Corriente</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="cuentanumero"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Sucursal</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="bancosucursal"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<!-->
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Nº Otras Cuentas</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" number-columns-spanned="3" background-color="{$varTablaColumnaValorColor}" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="cuentaotras"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									-->
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
													<fo:block padding-before="3pt">1.- Por el presente instrumento, solicito y autorizo al banco indicado mas arriba, a pagar con cargo a mi cuenta corriente también individualizada, incluida mi línea de crédito personal, sobregiro u otra cuenta si las hubiera, siempre y cuando esta(s) cuente(n) con los fondos necesarios, valor de la(s) prima(s) correspondiente(s) a la(s) póliza de seguro por mi contratada(s) con Royal &amp; Sun Alliance Seguros (Chile) S.A., y las variaciones que en aquellas haya lugar a consecuencia de incrementos y/o disminuciones acordadas, respecto del(los) monto(s) asegurad(s) u utro(s) aspecto que produzca(n) igual efecto. Asimismo, este instrumento respaldará cualquier otra suma y/o valor asociado que adeude a Royal &amp; Sun Alliance Seguros (Chile) s.a. en virtud de la(s) póliza(s) contratada(s) con ella, como así también los impuestos derivados de estas operaciones. </fo:block>
													<fo:block padding-before="3pt">2.- El presente mandato tiene vigencia indefinida, auque podrá ser revocado, por el mandante, por escrito. </fo:block>
													<fo:block padding-before="3pt">3.- El pago y cargo correspondiente se efectuara a favor de Royal &amp; Sun Alliance Seguros (Chile) S.A. tan pronto el banco reciba la información necesaria del arte de la misma, en las fechas que estipule y a favor de ella. </fo:block>
													<fo:block padding-before="3pt">4.- Se libera al banco de toda responsabilidad si por cualquier motivo Royal &amp; Sun Alliance Seguros (Chile) no entrega en el plazo convenido la información con la correcta identificación y monto a cargar en cuenta, según lo mandado en este instrumento, y si el mandante no dispone de fondos suficientes o la cuanta ha sido cerrada por cualquier causal. Además, se libera al banco de la obligación de rendir cuenta al mandante de los cargos que efectúe en virtud del presente mandato. </fo:block>
													<fo:block padding-before="3pt">5.- En el evento que se produzca el cierre de mi cuenta por cualquier motivo, o que Royal &amp; Sun Alliance Seguros (Chile) S.A. cancele la autorización que he dado al banco para cobrar los montos correspondientes o el banco cancele el convenio con ella, este instrumento dejara de tener efecto , debiendo yo efectuar los pagos directamente en Royal &amp; Sun Alliance Seguros (Chile) S.A. del mismo modo, acepto desde ya la decisión que unilateralmente pudiere adoptar el banco, en orden de no proseguir efectuando cargos en mi cuenta corriente por este concepto peses a no cerrarse dicha cuenta, caso en el cual me obligo a pagar en la compañía la(s) prima(s) y valores adeudados. </fo:block>
													<fo:block padding-before="3pt">6.- El presente mandato afecta al conjunto de las pólizas y renovaciones celebradas con la compañía durante la vigencia de este; y autoriza a que las primas de dichas pólizas se paguen mediante modalidad de PAC, es decir autorización de descuento en cuenta corriente bancaria. El monto de la prima, su forma y modalidad de pago se encuentran inscritas en las condiciones particulares de cada póliza. </fo:block>
													<fo:block padding-before="3pt">7- La renovación de este mandato solo tendrá efecto una vez trascurrido 30 días desde que sea informado por escrito al banco. </fo:block>
													<fo:block padding-before="3pt">8.- todos los impuestos y derechos, a que esté afecto el presente mandato será de exclusivo cargo del mandante. </fo:block>
												</xsl:when>
												<xsl:when test=" ../identificacion/compania/codigo = '99279000' ">
													<fo:block padding-before="3pt">1.- El presente mandato afecta a la póliza de seguro arriba indicada y su renovación celebrada con EuroAmerica Seguros de Vida S.A., durante la vigencia de éste; y autoriza a que la prima de dicha póliza se pague mediante la modalidad PAC, es decir, Autorización de Descuento en Cuenta Corriente Bancaria. El monto de la prima, su forma y modalidad de pago se encuentran insertas en las condiciones particulares de cada póliza. </fo:block>
													<fo:block padding-before="3pt">2.- Convengo en que EuroAmerica Seguros de Vida S.A. enviará al Banco periódicamente y de acuerdo a lo contratado en la Póliza de Seguro de Vida, la información de pago correspondiente. </fo:block>
													<fo:block padding-before="3pt">3.- Autorizo al Banco a cargar en mi Cuenta Corriente y/o Cuenta Corriente de Crédito asociada el día 5 de cada mes el monto indicado por EuroAmerica Seguros de Vida S.A., o el día hábil siguiente si éste corresponde a sábado, domingo o festivo, y a pagar a la Compañía dicho monto el día señalado. Sin perjuicio de lo anterior, si por cualquier motivo el Banco no pudiera efectuar el cargo, lo autorizo para realizarlo hasta el quinto día hábil bancario siguiente. </fo:block>
													<fo:block padding-before="3pt">4.- El servicio se iniciará a partir del mes siguiente a la fecha de suscripción del presente mandato, fecha que se entenderá como vigencia inicial del mandato, siempre que éste haya sido aceptado por el Banco. En el caso de ser aceptado, la Compañía deberá enviarme informe de cargo correspondiente. </fo:block>
													<fo:block padding-before="3pt">5.- El presente mandato se entenderá renovado mes a mes, indefinidamente, a menos que exista término de la póliza contratada, cierre de la cuenta corriente indicada, suscripción de un nuevo mandato o en caso de caducidad del contrato del Banco con EuroAmerica Seguros de Vida S.A.. En caso de término de la póliza o suscripción de un nuevo mandato, la autorización de cargo caducará transcurridos 40 días de ocurrido uno de estos eventos. </fo:block>
													<fo:block padding-before="3pt">6.- En consideración a este servicio convengo además, que si cualquiera de las primas no fuere pagada, con o sin causa ya fuera intencional o inadvertidamente, el Banco no tendrá responsabilidad alguna aunque dicho rechazo resulte en la caducidad del seguro.</fo:block>
													
													<fo:block padding-before="9pt" font-weight="bold">
														SOLICITUD DE PLAN SERVICIO BANCARIO
													</fo:block>																	
													<fo:block padding-before="9pt" font-weight="bold">
														A:  COMPAÑÍA EuroAmerica SEGUROS DE VIDA S.A.
													</fo:block>
													<fo:block padding-before="3pt">Mediante la presente les informo que he autorizado, a mi Banco depositario, cargar a mi cuenta personal el monto de la prima correspondiente a mi póliza de Seguro de Vida detallada en la autorización.</fo:block>																	
													<fo:block padding-before="9pt" font-weight="bold">
														Queda convenido que:
													</fo:block>																	
													<fo:block padding-before="3pt">1.- Ustedes enviarán a la fecha aproximada de vencimiento un recordatorio de pago a mi Banco, a fin de que dicho banco efectúe la operación de cargar en mi cuenta corriente el monto de la prima de acuerdo a lo contratado en mi póliza.</fo:block>																	
													<fo:block padding-before="3pt">2.-  Ustedes me enviarán por correo, normal o electrónico, un informe de cargo en cuenta corriente, documento que notificará el valor enviado a cobrar al Banco y la fecha de cargo en cuenta corriente.</fo:block>																	
													<fo:block padding-before="3pt">3.-  EuroAmerica Seguros de Vida S.A. no asumirá ninguna responsabilidad por reclamos si el cargo no es efectuado por falta de fondos.</fo:block>																	
													<fo:block padding-before="3pt">4.-  El cliente será responsable del pago de la prima en forma directa a la Compañía, mientras no entre en operación y se realice el primer cargo en su Cuenta Corriente y/o Cuenta Corriente de Crédito.</fo:block>																	
													<fo:block padding-before="3pt">5.-  Quede claro que el motivo de rechazo de un cargo de prima por falta de fondos, en ningún caso, dará origen a un protesto o perjuicio a mis antecedentes bancarios ya que lo solicitado sólo tiene carácter de mandato.</fo:block>																	
													<fo:block padding-before="3pt">6.-  Este mandato autoriza a cargar mi Cuenta Corriente y/o mi Cuenta Corriente de Crédito asociada si no hubieren fondos disponibles a la Cuenta Corriente.</fo:block>																	
													<fo:block padding-before="3pt">7.-  Asimismo, declaro que las primas no cargadas en mi Cuenta Corriente y/o Cuenta Corriente de Crédito deberé cancelarlas directamente en las oficinas de EuroAmerica Seguros de Vida S.A., liberando a la Compañía de cualquier responsabilidad, si por el no pago se cancela la(s) póliza(s) contratada(s).</fo:block>
												</xsl:when>
												<xsl:otherwise>
													<fo:block padding-before="3pt">1. Autorizo al Banco antes indicado a pagar, con cargo a mi cuenta corriente, los valores  involucrados en cada una de la(s) póliza(s) y endoso(s) que BCI Seguros Generales S.A. y/o BCI Seguros Vida S.A., en adelante, BCI Seguros, presente a cobro.</fo:block>
													<fo:block padding-before="3pt">2. BCI Seguros enviará al Banco periódicamente, de acuerdo a lo estipulado con la Compañía, la información  para el pago correspondiente.</fo:block>
													<fo:block padding-before="3pt">3. Asumo el compromiso de mantener en mi Cuenta Corriente indicada precedentemente, incluida Línea de  Crédito, si la hubiere, los fondos necesarios para cubrir los cargos que se hagan en virtud del presente instrumento, liberando al Banco de toda responsabilidad si ello no ocurriera.</fo:block>
													<fo:block padding-before="3pt">4. El abono deberá hacerse en favor de BCI Seguros, el día establecido en el contrato, con cargo a mi cuenta corriente antes indicada. En la eventualidad que el día de cargo corresponda a sábado, domingo o festivo, el cargo se efectuará el día hábil bancario anterior  o posterior, según sea el modo de operación del Banco. Este cargo en mi Cuenta Corriente se regirá por las condiciones generales de uso del servicio del Banco, los cuales declaro conocer y aceptar.</fo:block>
													<fo:block padding-before="3pt">5. Si en el día establecido para efectuar el cargo en cuenta corriente no hubiere fondos disponibles o éstos no fueren suficientes, el Banco podrá reintentar cargos o cobros posteriores cuantas veces sea necesario. A mayor abundamiento, la presente autorización de cargo en mi cuenta corriente se entenderá, para todos los efectos legales, dada el mismo día en que ésta se lleve a efecto.</fo:block>
													<fo:block padding-before="3pt">6. En el evento que se  produzca el cierre de la Cuenta Corriente del mandante, por cualquier motivo que ello ocurra o que  BCI  Seguros cancele el Convenio de Cargo  en  Cuenta  Corriente o, el Banco  cancele dicho Convenio con BCI Seguros, este  instrumento dejará  de tener efecto y obligará al mandante a realizar los pagos convenidos directamente en BCI Seguros. Si este mandato es revocado  por  el  mandante,  éste  deberá  notificar  por  escrito  su  decisión a BCI Seguros,  con  copia al Banco, con a lo menos un mes de anticipación a la fecha en que se desee poner término.</fo:block>
													<fo:block padding-before="3pt">7. El presente mandato dejará de tener vigencia en forma automática en caso de término del convenio de   recaudación  entre el Banco con BCI Seguros.</fo:block>
													<fo:block padding-before="3pt">8. Toda referencia del presente mandato a las cuentas corrientes se entenderá formulada respecto de otras cuentas que el mandante indique.</fo:block>
													<fo:block padding-before="3pt">9. El presente mandato entrará en vigor en forma indefinida desde la fecha de recepción en BCI Seguros  y hasta que se produzcan las situaciones descritas en el punto 6 anterior.</fo:block>
													<fo:block padding-before="3pt">10. "El presente mandato afecta al conjunto de pólizas y renovaciones celebradas con la compañía durante la vigencia de éste; y autoriza a que las primas  de dichas pólizas se paguen mediante la modalidad PAC, es decir, Autorización de Descuento en Cuenta Corriente Bancaria. El monto de  la prima, su forma y modalidad de pago, se encuentran insertas en las condiciones particulares de cada póliza". (Circular S.V.S. Nro.  1.499 del 15.09.2000)</fo:block>
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
