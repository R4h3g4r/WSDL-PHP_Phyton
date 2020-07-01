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
												<xsl:text>N� Cta. Corriente</xsl:text>
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
												<xsl:text>N� Otras Cuentas</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" number-columns-spanned="3" background-color="{$varTablaColumnaValorColor}" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="cuentaotras"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									-->
									<!-- SECCION COMPA�IA -->
									<fo:table-row>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:if test="( ../identificacion/documento/tipo = 'ENDOSO' )">
													<xsl:text>Endos N�</xsl:text>
												</xsl:if>
												<xsl:if test="( ../identificacion/documento/tipo = 'PROPUESTA' )">
													<xsl:text>Propuesta N�</xsl:text>
												</xsl:if>
												<xsl:if test="( ../identificacion/documento/tipo = 'POLIZA' )">
													<xsl:text>Propuesta N�</xsl:text>
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
												<xsl:text>Compa��a</xsl:text>
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
													<fo:block padding-before="3pt">1.- Por el presente instrumento, solicito y autorizo al banco indicado mas arriba, a pagar con cargo a mi cuenta corriente tambi�n individualizada, incluida mi l�nea de cr�dito personal, sobregiro u otra cuenta si las hubiera, siempre y cuando esta(s) cuente(n) con los fondos necesarios, valor de la(s) prima(s) correspondiente(s) a la(s) p�liza de seguro por mi contratada(s) con Royal &amp; Sun Alliance Seguros (Chile) S.A., y las variaciones que en aquellas haya lugar a consecuencia de incrementos y/o disminuciones acordadas, respecto del(los) monto(s) asegurad(s) u utro(s) aspecto que produzca(n) igual efecto. Asimismo, este instrumento respaldar� cualquier otra suma y/o valor asociado que adeude a�Royal &amp; Sun Alliance Seguros (Chile) s.a. en virtud de la(s) p�liza(s) contratada(s) con ella, como as� tambi�n los impuestos derivados de estas operaciones. </fo:block>
													<fo:block padding-before="3pt">2.- El presente mandato tiene vigencia indefinida, auque podr� ser revocado, por el mandante, por escrito. </fo:block>
													<fo:block padding-before="3pt">3.- El pago y cargo correspondiente se efectuara a favor de Royal &amp; Sun Alliance Seguros (Chile) S.A. tan pronto el banco reciba la informaci�n necesaria del arte de la misma, en las fechas que estipule y a favor de ella. </fo:block>
													<fo:block padding-before="3pt">4.- Se libera al banco de toda responsabilidad si por cualquier motivo Royal &amp; Sun Alliance Seguros (Chile) no entrega en el plazo convenido la informaci�n con la correcta identificaci�n y monto a cargar en cuenta, seg�n lo mandado en este instrumento, y si el mandante no dispone de fondos suficientes o la cuanta ha sido cerrada por cualquier causal. Adem�s, se libera al banco de la obligaci�n de rendir cuenta al mandante de los cargos que efect�e en virtud del presente mandato. </fo:block>
													<fo:block padding-before="3pt">5.- En el evento que se produzca el cierre de�mi cuenta por cualquier motivo, o que Royal &amp; Sun Alliance Seguros (Chile) S.A. cancele la autorizaci�n que he dado al banco para cobrar los montos correspondientes o el banco cancele el convenio con ella, este instrumento dejara de tener efecto , debiendo yo efectuar los pagos directamente en Royal &amp; Sun Alliance Seguros (Chile) S.A. del mismo modo, acepto desde ya la decisi�n que unilateralmente pudiere adoptar el banco, en orden de no proseguir efectuando cargos en mi cuenta corriente por este concepto peses a no cerrarse dicha cuenta,�caso en el cual me obligo a pagar en la compa��a la(s) prima(s) y valores adeudados. </fo:block>
													<fo:block padding-before="3pt">6.- El presente mandato afecta al conjunto de las p�lizas y renovaciones celebradas con la compa��a durante la vigencia de este; y autoriza a que las primas de dichas p�lizas se paguen mediante modalidad de PAC, es decir autorizaci�n de descuento en cuenta corriente bancaria. El monto de la prima, su forma y modalidad de pago se encuentran inscritas en las condiciones particulares de cada p�liza. </fo:block>
													<fo:block padding-before="3pt">7- La renovaci�n de este mandato solo tendr� efecto una vez trascurrido 30 d�as desde que sea informado por escrito al banco. </fo:block>
													<fo:block padding-before="3pt">8.- todos los impuestos y derechos, a que est� afecto el presente mandato ser� de exclusivo cargo del mandante. </fo:block>
												</xsl:when>
												<xsl:when test=" ../identificacion/compania/codigo = '99279000' ">
													<fo:block padding-before="3pt">1.- El presente mandato afecta a la p�liza de seguro arriba indicada y su renovaci�n celebrada con EuroAmerica Seguros de Vida S.A., durante la vigencia de �ste; y autoriza a que la prima de dicha p�liza se pague mediante la modalidad PAC, es decir, Autorizaci�n de Descuento en Cuenta Corriente Bancaria.�El monto de la prima, su forma y modalidad de pago se encuentran insertas en las condiciones particulares de cada p�liza. </fo:block>
													<fo:block padding-before="3pt">2.-�Convengo en que EuroAmerica Seguros de Vida S.A. enviar� al Banco peri�dicamente y de acuerdo a lo contratado en la P�liza de Seguro de Vida, la informaci�n de pago correspondiente. </fo:block>
													<fo:block padding-before="3pt">3.-�Autorizo al Banco a cargar en mi Cuenta Corriente y/o Cuenta Corriente de Cr�dito asociada el d�a 5 de cada mes el monto indicado por EuroAmerica Seguros de Vida S.A., o el d�a h�bil siguiente si �ste corresponde a s�bado, domingo o festivo, y a pagar a la Compa��a dicho monto el d�a se�alado.�Sin perjuicio de lo anterior, si por cualquier motivo el Banco no pudiera efectuar el cargo, lo autorizo para realizarlo hasta el quinto d�a h�bil bancario siguiente. </fo:block>
													<fo:block padding-before="3pt">4.-�El servicio se iniciar� a partir del mes siguiente a la fecha de suscripci�n del presente mandato, fecha que se entender� como vigencia inicial del mandato, siempre que �ste haya sido aceptado por el Banco.�En el caso de ser aceptado, la Compa��a deber� enviarme informe de cargo correspondiente. </fo:block>
													<fo:block padding-before="3pt">5.-�El presente mandato se entender� renovado mes a mes, indefinidamente, a menos que exista t�rmino de la p�liza contratada, cierre de la cuenta corriente indicada, suscripci�n de un nuevo mandato o en caso de caducidad del contrato del Banco con EuroAmerica Seguros de Vida S.A..�En caso de t�rmino de la p�liza o suscripci�n de un nuevo mandato, la autorizaci�n de cargo caducar� transcurridos 40 d�as de ocurrido uno de estos eventos. </fo:block>
													<fo:block padding-before="3pt">6.-�En�consideraci�n a este servicio convengo adem�s, que si cualquiera de las primas no fuere pagada, con o sin causa ya fuera intencional o inadvertidamente, el Banco no tendr� responsabilidad alguna aunque dicho rechazo resulte en la caducidad del seguro.</fo:block>
													
													<fo:block padding-before="9pt" font-weight="bold">
														SOLICITUD DE PLAN SERVICIO BANCARIO
													</fo:block>																	
													<fo:block padding-before="9pt" font-weight="bold">
														A:  COMPA��A EuroAmerica SEGUROS DE VIDA S.A.
													</fo:block>
													<fo:block padding-before="3pt">Mediante la presente les informo que he autorizado, a mi Banco depositario, cargar a mi cuenta personal el monto de la prima correspondiente a mi p�liza de Seguro de Vida detallada en la autorizaci�n.</fo:block>																	
													<fo:block padding-before="9pt" font-weight="bold">
														Queda convenido que:
													</fo:block>																	
													<fo:block padding-before="3pt">1.- Ustedes enviar�n a la fecha aproximada de vencimiento un recordatorio de pago a mi Banco, a fin de que dicho banco efect�e la operaci�n de cargar en mi cuenta corriente el monto de la prima de acuerdo a lo contratado en mi p�liza.</fo:block>																	
													<fo:block padding-before="3pt">2.-  Ustedes me enviar�n por correo, normal o electr�nico, un informe de cargo en cuenta corriente, documento que notificar� el valor enviado a cobrar al Banco y la fecha de cargo en cuenta corriente.</fo:block>																	
													<fo:block padding-before="3pt">3.-  EuroAmerica Seguros de Vida S.A. no asumir� ninguna responsabilidad por reclamos si el cargo no es efectuado por falta de fondos.</fo:block>																	
													<fo:block padding-before="3pt">4.-  El cliente ser� responsable del pago de la prima en forma directa a la Compa��a, mientras no entre en operaci�n y se realice el primer cargo en su Cuenta Corriente y/o Cuenta Corriente de Cr�dito.</fo:block>																	
													<fo:block padding-before="3pt">5.-  Quede claro que el motivo de rechazo de un cargo de prima por falta de fondos, en ning�n caso, dar� origen a un protesto o perjuicio a mis antecedentes bancarios ya que lo solicitado s�lo tiene car�cter de mandato.</fo:block>																	
													<fo:block padding-before="3pt">6.-  Este mandato autoriza a cargar mi Cuenta Corriente y/o mi Cuenta Corriente de Cr�dito asociada si no hubieren fondos disponibles a la Cuenta Corriente.</fo:block>																	
													<fo:block padding-before="3pt">7.-  Asimismo, declaro que las primas no cargadas en mi Cuenta Corriente y/o Cuenta Corriente de Cr�dito deber� cancelarlas directamente en las oficinas de EuroAmerica Seguros de Vida S.A., liberando a la Compa��a de cualquier responsabilidad, si por el no pago se cancela la(s) p�liza(s) contratada(s).</fo:block>
												</xsl:when>
												<xsl:otherwise>
													<fo:block padding-before="3pt">1. Autorizo al Banco antes indicado a pagar, con cargo a mi cuenta corriente, los valores  involucrados en cada una de la(s) p�liza(s) y endoso(s) que BCI Seguros Generales S.A. y/o BCI Seguros Vida S.A., en adelante, BCI Seguros, presente a cobro.</fo:block>
													<fo:block padding-before="3pt">2. BCI Seguros enviar� al Banco peri�dicamente, de acuerdo a lo estipulado con la Compa��a, la informaci�n  para el pago correspondiente.</fo:block>
													<fo:block padding-before="3pt">3. Asumo el compromiso de mantener en mi Cuenta Corriente indicada precedentemente, incluida L�nea de  Cr�dito, si la hubiere, los fondos necesarios para cubrir los cargos que se hagan en virtud del presente instrumento, liberando al Banco de toda responsabilidad si ello no ocurriera.</fo:block>
													<fo:block padding-before="3pt">4. El abono deber� hacerse en favor de BCI Seguros, el d�a establecido en el contrato, con cargo a mi cuenta corriente antes indicada. En la eventualidad que el d�a de cargo corresponda a s�bado, domingo o festivo, el cargo se efectuar� el d�a h�bil bancario anterior  o posterior, seg�n sea el modo de operaci�n del Banco. Este cargo en mi Cuenta Corriente se regir� por las condiciones generales de uso del servicio del Banco, los cuales declaro conocer y aceptar.</fo:block>
													<fo:block padding-before="3pt">5. Si en el d�a establecido para efectuar el cargo en cuenta corriente no hubiere fondos disponibles o �stos no fueren suficientes, el Banco podr� reintentar cargos o cobros posteriores cuantas veces sea necesario. A mayor abundamiento, la presente autorizaci�n de cargo en mi cuenta corriente se entender�, para todos los efectos legales, dada el mismo d�a en que �sta se lleve a efecto.</fo:block>
													<fo:block padding-before="3pt">6. En el evento que se  produzca el cierre de la Cuenta Corriente del mandante, por cualquier motivo que ello ocurra o que  BCI  Seguros cancele el Convenio de Cargo  en  Cuenta  Corriente o, el Banco  cancele dicho Convenio con BCI Seguros, este  instrumento dejar�  de tener efecto y obligar� al mandante a realizar los pagos convenidos directamente en BCI Seguros. Si este mandato es revocado  por  el  mandante,  �ste  deber�  notificar  por  escrito  su  decisi�n a BCI Seguros,  con  copia al Banco, con a lo menos un mes de anticipaci�n a la fecha en que se desee poner t�rmino.</fo:block>
													<fo:block padding-before="3pt">7. El presente mandato dejar� de tener vigencia en forma autom�tica en caso de t�rmino del convenio de   recaudaci�n  entre el Banco con BCI Seguros.</fo:block>
													<fo:block padding-before="3pt">8. Toda referencia del presente mandato a las cuentas corrientes se entender� formulada respecto de otras cuentas que el mandante indique.</fo:block>
													<fo:block padding-before="3pt">9. El presente mandato entrar� en vigor en forma indefinida desde la fecha de recepci�n en BCI Seguros  y hasta que se produzcan las situaciones descritas en el punto 6 anterior.</fo:block>
													<fo:block padding-before="3pt">10. "El presente mandato afecta al conjunto de p�lizas y renovaciones celebradas con la compa��a durante la vigencia de �ste; y autoriza a que las primas  de dichas p�lizas se paguen mediante la modalidad PAC, es decir, Autorizaci�n de Descuento en Cuenta Corriente Bancaria. El monto de  la prima, su forma y modalidad de pago, se encuentran insertas en las condiciones particulares de cada p�liza". (Circular S.V.S. Nro.  1.499 del 15.09.2000)</fo:block>
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
