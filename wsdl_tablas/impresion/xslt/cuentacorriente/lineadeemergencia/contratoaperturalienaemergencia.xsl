<?xml version="1.0" encoding="ISO-8859-1"?>
 <xsl:stylesheet version="1.0" 
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:variable name="fo:layout-master-set">
	
		<fo:layout-master-set>
			<fo:simple-page-master master-name="default-page" page-height="34cm" page-width="21.59cm" margin-left="2cm" margin-right="2cm">
				<fo:region-body margin-top="0.81in" margin-bottom="0.81in"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
	</xsl:variable>
	<xsl:output version="1.0" encoding="ISO-8859-1" indent="no" omit-xml-declaration="no" media-type="text/html" />
	<xsl:template match="/">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
			<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
				<fo:flow flow-name="xsl-region-body">
					<fo:block font-size="8pt">
					 	<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:external-graphic>
													<xsl:attribute name="src">
														<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
													</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="17cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block font-size="12pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline  font-weight="bold"  start-indent="2pt">
													CONTRATO DE APERTURA DE LINEA DE CREDITO EMERGENCIA
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
						<fo:block font-size="8pt">
							<fo:table text-align="justify" table-layout="fixed">
									<fo:table-column column-width="17cm"/>
							<fo:table-body>
								<fo:table-row>
									 <fo:table-cell>
										<fo:block font-size="16pt" color="white">
											<fo:inline  font-weight="bold"  start-indent="4pt">.</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											        <fo:inline font-size="11pt">                
																	          En _________, a &#0160; <xsl:value-of select="lineaEmergencia/fechaPresente"/> , entre el Banco de Crédito e Inversiones, RUT. N° 97.006.000-6, domiciliado en Santiago,
																	     Avenida El Golf N° 125, Comuna de Las Condes, en adelante "el Banco" por una parte; y don(ña): &#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/>, 
																	     Cédula de Identidad N° &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>, domiciliado en __________________________, Comuna de ______________ en adelante "el 
																	     Cliente" se ha acordado celebrar el presente Contrato de apertura de Línea de Crédito de Emergencia, también llamada a efectos de este 
																	     contrato como "LCE".
											         </fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  1. La Línea de Crédito de Emergencia o LCE, tiene  por objeto incrementar la capacidad de pago del Cliente ante eventos que superen su saldo 
																	  disponible en Cuenta Corriente o la disponibilidad de crédito en otras líneas de financiamiento, entre éstas, la Línea de Sobregiro que el Cliente 
																	  hubiere contratado. Para estos efectos, el Banco abre a petición del Cliente una LCE por un monto máximo de &#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/> pesos. La Cuenta 
																	   Corriente  que el Cliente define para operar con la LCE corresponde a la  N° &#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/>.  
													 </fo:inline>
                                       </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  2. La LCE operará de manera automática, mediante cargos a la misma y hasta su importe total, a beneficio de la Cuenta Corriente, de manera 
																	  que cada vez que el Cliente disponga un pago, ya sea a través del giro de un cheque,  o  se verifique un cargo de cualquier naturaleza y no 
																	  hubiere fondos disponibles suficientes en la Cuenta Corriente ni disponibilidad en la Línea de Sobregiro, en su caso, con cargo a la LCE  se 
																	  cubrirán tales eventos.
													 </fo:inline>
										</fo:block>			 
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            		<fo:inline font-size="11pt">
																	  3. Con cargo a la LCE, y no habiendo saldos disponibles en la Cuenta Corriente u otras Líneas, se cubrirán (i) los cargos que disponga el 
																	  Cliente, ya sea a través  del giro de un cheque,  de un Pago Automático de Cuentas -PAC- o  mediante cualquier otro medio, y (ii)  los cargos 
																	  que efectúe el Banco. Cada vez que existan fondos o cupo disponibles en la Cuenta Corriente  o en la Línea de Sobregiro, si la hubiere, y la 
																	  LCE registrare saldos deudores, el Banco podrá, pero no estará obligado, a abonar total o parcialmente y de manera automática la citada LCE, 
																	  con cargo a las señaladas disponibilidades.
													 </fo:inline>
                                       </fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   4. Produciéndose una situación de sobregiro por cualesquiera de las causas singularizadas en el numeral 3 precedente, el Banco 
																	   procederá a cargar la LCE en el orden en que se produzcan y registren tales eventos. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	     5. Sin perjuicio del abono automático que se contempla en el numeral 3 precedente, para el evento de que no haya saldos a dicho propósito 
																	     en la cuenta corriente ni en la Línea de Sobregiro, el Cliente se obliga a efectuar abonos a la LCE, con la frecuencia y por los importes que el 
																	     Banco le informe en la respectiva cartola. Con todo, la LCE ha de hallarse íntegramente pagada, tanto en capital,  cuanto en intereses y 
																	     comisión, a más tardar al cumplirse un semestre contado desde  la fecha de su contratación o renovación, según corresponda.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    6. La LCE se pacta por un período de 6 meses, a contar de la fecha de su contratación. Al término del mismo, se entenderá renovada 
																	    automáticamente, salvo que el Banco, después de efectuada la correspondiente evaluación, decida no hacerlo, caso en el cual no necesitará 
																	    expresar causa. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    7. El Banco en cualquier momento podrá evaluar, de acuerdo a sus políticas especialmente implementadas para este producto, el incremento o 
																	    la disminución del monto de la LCE, lo que le será informado al Cliente con arreglo al procedimiento que se contempla al final del presente 
																	    contrato. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    8. En los casos en que el Cliente durante la vigencia de la LCE incurriere en cualquier incumplimiento para con el Banco, originado en esta 
																	    Línea o en otro crédito, sea de la naturaleza que fuere, u observare protestos de cheques, letras de cambio, o pagarés, el Banco podrá sin 
																	    más trámite poner término o bloquear la presente Línea y hacer exigible el pago en forma inmediata del saldo total adeudado a la fecha de 
																	    término, pudiendo al efecto cargar la cuenta corriente, si tuviere fondos disponibles. Asimismo, el Banco podrá bloquear o suspender 
																	    temporalmente la vigencia de la LCE y exigir el pago inmediato y anticipado de todos los saldos adeudados de la misma, si el cliente presenta, a 
																	    juicio del Banco, evidentes deterioros en su situación comercial, tales como, pero no limitados a, protestos y simples moras en otros bancos 
																	    y/o casas comerciales. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    9. La LCE devenga intereses a la tasa máxima convencional vigente para operaciones no reajustables a más de 90 días, intereses que se 
																	    pagarán de la manera y en la oportunidad que se prevé en el numeral 5 de este Contrato. 
															</fo:inline>
										</fo:block>

										<fo:block text-align="left" break-after="page"></fo:block>
										<fo:table text-align="center" table-layout="fixed">
											<fo:table-column column-width="3cm"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell >
															<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																<fo:external-graphic>
																	<xsl:attribute name="src">
																		<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
																	</xsl:attribute>
																</fo:external-graphic>
															</fo:block>
													    </fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    10. El Cliente otorga mandato mercantil, irrevocable y gratuito al Banco, para que éste, actuando en su nombre y representación, 
																	    autocontratando, suscriba y complete uno o más pagarés, a fin de documentar eficazmente los créditos que se cursen con cargo a la LCE. 
																	    En el ejercicio de este mandato, el Banco podrá renunciar a la obligación de protesto, facultar para hacer autorizar la firma de sus 
																	    apoderados que suscriban el pagaré, ante Notario y para fijar en el pagaré, el domicilio que a su juicio más convenga a la ejecución, pudiendo
																	     prorrogar competencia para ante sus Tribunales Ordinarios de Justicia de manera que el pagaré tenga mérito ejecutivo para su respectiva 
																	     cobranza judicial. 
											 </fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 	
																	     El cliente reconoce que el presente mandato se otorga en interés del Banco por lo que no podrá revocarlo y subsistirá aún después del 
																	     término de la presente Línea. El Cliente faculta 
																	    expresa e irrevocablemente al Banco para delegar el presente mandato en los mismos términos, en la sociedad Servicios de Normalización y 
																	    Cobranza - Normaliza S.A., filial del Banco, o en aquella  otra persona natural o jurídica que el Banco determine.
																	    
																	    Con todo, en el caso que el Cliente hubiere contratado la Línea de Sobregiro, complementaria a la Cuenta Corriente de que sea titular, el 
																	    mandato e instrucciones para completar el pagaré que con motivo de la contratación de dicha Línea hubiere otorgado e impartido al Banco, se 
																	    entienden complementadas por este acto, en el sentido de considerar para los efectos del llenado del citado pagaré, las obligaciones 
																	    derivadas de la utilización de la LCE objeto de este contrato. 

											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    11. Todos los gastos, derechos e impuestos que se generen o a los que   pudiera estar  afecto este contrato o su ejecución y operación 
																	    serán de cargo  exclusivo del Cliente, facultándose al Banco para cargarlos en la respectiva cuenta corriente o tarjeta de crédito de que sea 
																	    titular en el Banco.
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    12. El Cliente declara conocer que la LCE está afecta a comisiones, las que el Banco podrá calcular y determinar sobre la base de 
																	    parámetros objetivos de segmentación y de acuerdo a su política de créditos, tarifas que se señalan al final de este documento. Las 
																	    modificaciones que el Banco decida implantar al régimen de comisiones, ciñéndose al procedimiento anteriormente citado, y que impliquen 
																	    aumento de costos, serán comunicadas anticipadamente al Cliente dentro del plazo que al efecto indiquen las normas de la Superintendencia 
																	    de Bancos e Instituciones Financieras. Aquellas modificaciones que impliquen disminución o eliminación de comisiones vigentes se aplicarán 
																	    sin comunicación previa. Con todo, cualquiera sea la modalidad o periodicidad de pago de las referidas comisiones, en caso de cierre o 
																	    término de uno o más de los productos contratados, el Banco siempre tendrá el derecho de cobrar el total de las comisiones devengadas del 
																	    respectivo período, independientemente del plazo estipulado para hacerlo, encontrándose facultado el Banco de manera irrevocable para 
																	    cargar tales comisiones en la respectiva cuenta corriente, cuenta vista, línea de crédito o en cualquier tarjeta de crédito de que el Cliente sea
																	     titular y  mantenga vigente en el Banco. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    13. Todos los avisos y comunicaciones que, conforme a este instrumento, el Banco deba enviar al Cliente se efectuarán a la dirección de 
																	    correo electrónico que el cliente indica al final de este contrato. En su defecto, se remitirán   por escrito al último domicilio que tenga 
																	    registrado en el Banco, ya sea por carta o en los estados de cuenta o cartolas o por Internet. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    14. El Cliente declara haber recibido el volante que contiene la información atingente a las empresas que prestan
																	    los servicios de cobranza externa y a los honorarios correspondientes, en el evento de incurrir en mora en el
																	    pago de estas obligaciones. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    Declaración del cliente: Es mi voluntad que toda comunicación o aviso a que el Banco se encuentre obligado con
																	    motivo de lo establecido en este contrato, sea remitido a mi siguiente dirección de correo
																	    electrónico:&#0160; <xsl:value-of select="lineaEmergencia/correo"/>  
											</fo:inline>
										</fo:block>
										

									    <fo:block space-before="1.3cm" space-after="0.5cm" font-size="11pt">
									    	<fo:table table-layout="center">
									    		<fo:table-column column-width="8cm"/>
									    		<fo:table-column column-width="8cm"/>
									    		<fo:table-body>
									    			<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center" >__________________________</fo:block>
									    				</fo:table-cell>
									    				<fo:table-cell>
									    					<fo:block text-align="center">__________________________</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row height="2cm">
									    				<fo:table-cell>
									    					<fo:block text-align="center" >Firma Titular 1</fo:block>
									    				</fo:table-cell>
									    				<fo:table-cell>
									    					<fo:block text-align="center">Firma Titular 2</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center">Rut: &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/></fo:block>
									    				</fo:table-cell>
									    				<fo:table-cell>
									    					<fo:block text-align="center">Rut: __________________</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				
									    				<fo:table-cell number-columns-spanned="2">
									    					<fo:block space-before="2cm" text-align="center">__________________________</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				<fo:table-cell number-columns-spanned="2">
									    					<fo:block text-align="center">Firma Banco</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    		</fo:table-body>
									    	</fo:table>
									    </fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
													Este documento consta de 2 hoja
											</fo:inline>
										</fo:block>
										<fo:block  >
											<fo:inline font-size="11pt">                
													Copia Banco
											</fo:inline>
										</fo:block>
								 </fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				 </fo:block>
			</fo:flow>
		</fo:page-sequence>	 
	<!-- COMIENZA LA COPIA DEL CLINTE -->
	
		<fo:page-sequence master-reference="default-page" initial-page-number="0" format="1">
			<fo:flow flow-name="xsl-region-body">
				 <fo:block font-size="8pt">
					 	<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:external-graphic>
													<xsl:attribute name="src">
														<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
													</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table text-align="center" table-layout="fixed">
							
							<fo:table-column column-width="17cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block font-size="12pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline  font-weight="bold"  start-indent="2pt">
													CONTRATO DE APERTURA DE LINEA DE CREDITO EMERGENCIA
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
						<fo:block font-size="8pt">
							<fo:table text-align="justify" table-layout="fixed">
									<fo:table-column column-width="17cm"/>
							<fo:table-body>
								<fo:table-row>
									 <fo:table-cell>
										<fo:block font-size="16pt" color="white">
											<fo:inline  font-weight="bold"  start-indent="4pt">.</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											        <fo:inline font-size="11pt">                
																	          En _________, a  &#0160; <xsl:value-of select="lineaEmergencia/fechaPresente"/>, entre el Banco de Crédito e Inversiones, RUT. N° 97.006.000-6, domiciliado en Santiago,
																	     Avenida El Golf N° 125, Comuna de Las Condes, en adelante "el Banco" por una parte; y don(ña): &#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/>, 
																	     Cédula de Identidad N° &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>, domiciliado en __________________________, Comuna de ______________ en adelante "el 
																	     Cliente" se ha acordado celebrar el presente Contrato de apertura de Línea de Crédito de Emergencia, también llamada a efectos de este 
																	     contrato como "LCE".
											         </fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  1. La Línea de Crédito de Emergencia o LCE, tiene  por objeto incrementar la capacidad de pago del Cliente ante eventos que superen su saldo 
																	  disponible en Cuenta Corriente o la disponibilidad de crédito en otras líneas de financiamiento, entre éstas, la Línea de Sobregiro que el Cliente 
																	  hubiere contratado. Para estos efectos, el Banco abre a petición del Cliente una LCE por un monto máximo de &#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/> pesos. La Cuenta 
																	   Corriente  que el Cliente define para operar con la LCE corresponde a la  N° &#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/>.  
													 </fo:inline>
                                       </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  2. La LCE operará de manera automática, mediante cargos a la misma y hasta su importe total, a beneficio de la Cuenta Corriente, de manera 
																	  que cada vez que el Cliente disponga un pago, ya sea a través del giro de un cheque,  o  se verifique un cargo de cualquier naturaleza y no 
																	  hubiere fondos disponibles suficientes en la Cuenta Corriente ni disponibilidad en la Línea de Sobregiro, en su caso, con cargo a la LCE  se 
																	  cubrirán tales eventos.
													 </fo:inline>
										</fo:block>			 
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            		<fo:inline font-size="11pt">
																	  3. Con cargo a la LCE, y no habiendo saldos disponibles en la Cuenta Corriente u otras Líneas, se cubrirán (i) los cargos que disponga el 
																	  Cliente, ya sea a través  del giro de un cheque,  de un Pago Automático de Cuentas -PAC- o  mediante cualquier otro medio, y (ii)  los cargos 
																	  que efectúe el Banco. Cada vez que existan fondos o cupo disponibles en la Cuenta Corriente  o en la Línea de Sobregiro, si la hubiere, y la 
																	  LCE registrare saldos deudores, el Banco podrá, pero no estará obligado, a abonar total o parcialmente y de manera automática la citada LCE, 
																	  con cargo a las señaladas disponibilidades.
													 </fo:inline>
                                       </fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   4. Produciéndose una situación de sobregiro por cualesquiera de las causas singularizadas en el numeral 3 precedente, el Banco 
																	   procederá a cargar la LCE en el orden en que se produzcan y registren tales eventos. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	     5. Sin perjuicio del abono automático que se contempla en el numeral 3 precedente, para el evento de que no haya saldos a dicho propósito 
																	     en la cuenta corriente ni en la Línea de Sobregiro, el Cliente se obliga a efectuar abonos a la LCE, con la frecuencia y por los importes que el 
																	     Banco le informe en la respectiva cartola. Con todo, la LCE ha de hallarse íntegramente pagada, tanto en capital,  cuanto en intereses y 
																	     comisión, a más tardar al cumplirse un semestre contado desde  la fecha de su contratación o renovación, según corresponda.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    6. La LCE se pacta por un período de 6 meses, a contar de la fecha de su contratación. Al término del mismo, se entenderá renovada 
																	    automáticamente, salvo que el Banco, después de efectuada la correspondiente evaluación, decida no hacerlo, caso en el cual no necesitará 
																	    expresar causa. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    7. El Banco en cualquier momento podrá evaluar, de acuerdo a sus políticas especialmente implementadas para este producto, el incremento o 
																	    la disminución del monto de la LCE, lo que le será informado al Cliente con arreglo al procedimiento que se contempla al final del presente 
																	    contrato. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    8. En los casos en que el Cliente durante la vigencia de la LCE incurriere en cualquier incumplimiento para con el Banco, originado en esta 
																	    Línea o en otro crédito, sea de la naturaleza que fuere, u observare protestos de cheques, letras de cambio, o pagarés, el Banco podrá sin 
																	    más trámite poner término o bloquear la presente Línea y hacer exigible el pago en forma inmediata del saldo total adeudado a la fecha de 
																	    término, pudiendo al efecto cargar la cuenta corriente, si tuviere fondos disponibles. Asimismo, el Banco podrá bloquear o suspender 
																	    temporalmente la vigencia de la LCE y exigir el pago inmediato y anticipado de todos los saldos adeudados de la misma, si el cliente presenta, a 
																	    juicio del Banco, evidentes deterioros en su situación comercial, tales como, pero no limitados a, protestos y simples moras en otros bancos 
																	    y/o casas comerciales. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    9. La LCE devenga intereses a la tasa máxima convencional vigente para operaciones no reajustables a más de 90 días, intereses que se 
																	    pagarán de la manera y en la oportunidad que se prevé en el numeral 5 de este Contrato. 
															</fo:inline>
										</fo:block>
										<fo:block text-align="left" break-after="page"></fo:block>
										<fo:table text-align="center" table-layout="fixed">
											<fo:table-column column-width="3cm"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell >
															<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																<fo:external-graphic>
																	<xsl:attribute name="src">
																		<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
																	</xsl:attribute>
																</fo:external-graphic>
															</fo:block>
													    </fo:table-cell>
													</fo:table-row>
												</fo:table-body>
										</fo:table>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    10. El Cliente otorga mandato mercantil, irrevocable y gratuito al Banco, para que éste, actuando en su nombre y representación, 
																	    autocontratando, suscriba y complete uno o más pagarés, a fin de documentar eficazmente los créditos que se cursen con cargo a la LCE. 
																	    En el ejercicio de este mandato, el Banco podrá renunciar a la obligación de protesto, facultar para hacer autorizar la firma de sus 
																	    apoderados que suscriban el pagaré, ante Notario y para fijar en el pagaré, el domicilio que a su juicio más convenga a la ejecución, pudiendo
																	     prorrogar competencia para ante sus Tribunales Ordinarios de Justicia de manera que el pagaré tenga mérito ejecutivo para su respectiva 
																	     cobranza judicial. 
											 </fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
																	     El cliente reconoce que el presente mandato se otorga en interés del Banco por lo que no podrá revocarlo y subsistirá aún después del 
																	     término de la presente Línea. El Cliente faculta 
																	    expresa e irrevocablemente al Banco para delegar el presente mandato en los mismos términos, en la sociedad Servicios de Normalización y 
																	    Cobranza - Normaliza S.A., filial del Banco, o en aquella  otra persona natural o jurídica que el Banco determine.
																	    
																	    Con todo, en el caso que el Cliente hubiere contratado la Línea de Sobregiro, complementaria a la Cuenta Corriente de que sea titular, el 
																	    mandato e instrucciones para completar el pagaré que con motivo de la contratación de dicha Línea hubiere otorgado e impartido al Banco, se 
																	    entienden complementadas por este acto, en el sentido de considerar para los efectos del llenado del citado pagaré, las obligaciones 
																	    derivadas de la utilización de la LCE objeto de este contrato. 

											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    11. Todos los gastos, derechos e impuestos que se generen o a los que   pudiera estar  afecto este contrato o su ejecución y operación 
																	    serán de cargo  exclusivo del Cliente, facultándose al Banco para cargarlos en la respectiva cuenta corriente o tarjeta de crédito de que sea 
																	    titular en el Banco.
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    12. El Cliente declara conocer que la LCE está afecta a comisiones, las que el Banco podrá calcular y determinar sobre la base de 
																	    parámetros objetivos de segmentación y de acuerdo a su política de créditos, tarifas que se señalan al final de este documento. Las 
																	    modificaciones que el Banco decida implantar al régimen de comisiones, ciñéndose al procedimiento anteriormente citado, y que impliquen 
																	    aumento de costos, serán comunicadas anticipadamente al Cliente dentro del plazo que al efecto indiquen las normas de la Superintendencia 
																	    de Bancos e Instituciones Financieras. Aquellas modificaciones que impliquen disminución o eliminación de comisiones vigentes se aplicarán 
																	    sin comunicación previa. Con todo, cualquiera sea la modalidad o periodicidad de pago de las referidas comisiones, en caso de cierre o 
																	    término de uno o más de los productos contratados, el Banco siempre tendrá el derecho de cobrar el total de las comisiones devengadas del 
																	    respectivo período, independientemente del plazo estipulado para hacerlo, encontrándose facultado el Banco de manera irrevocable para 
																	    cargar tales comisiones en la respectiva cuenta corriente, cuenta vista, línea de crédito o en cualquier tarjeta de crédito de que el Cliente sea
																	     titular y  mantenga vigente en el Banco. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    13. Todos los avisos y comunicaciones que, conforme a este instrumento, el Banco deba enviar al Cliente se efectuarán a la dirección de 
																	    correo electrónico que el cliente indica al final de este contrato. En su defecto, se remitirán   por escrito al último domicilio que tenga 
																	    registrado en el Banco, ya sea por carta o en los estados de cuenta o cartolas o por Internet. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    14. El Cliente declara haber recibido el volante que contiene la información atingente a las empresas que prestan
																	    los servicios de cobranza externa y a los honorarios correspondientes, en el evento de incurrir en mora en el
																	    pago de estas obligaciones. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    Declaración del cliente: Es mi voluntad que toda comunicación o aviso a que el Banco se encuentre obligado con
																	    motivo de lo establecido en este contrato, sea remitido a mi siguiente dirección de correo
																	    electrónico:&#0160; <xsl:value-of select="lineaEmergencia/correo"/> 
											</fo:inline>
										</fo:block>
										

									    <fo:block space-before="1.3cm" space-after="0.5cm" font-size="11pt">
									    	<fo:table table-layout="center">
									    		<fo:table-column column-width="8cm"/>
									    		<fo:table-column column-width="8cm"/>
									    		<fo:table-body>
									    			<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center" >__________________________</fo:block>
									    				</fo:table-cell>
									    				<fo:table-cell>
									    					<fo:block text-align="center">__________________________</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row height="2cm">
									    				<fo:table-cell>
									    					<fo:block text-align="center" >Firma Titular 1</fo:block>
									    				</fo:table-cell>
									    				<fo:table-cell>
									    					<fo:block text-align="center">Firma Titular 2</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center">Rut: &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/></fo:block>
									    				</fo:table-cell>
									    				<fo:table-cell>
									    					<fo:block text-align="center">Rut: __________________</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				<fo:table-cell number-columns-spanned="2">
									    					<fo:block space-before="2cm" text-align="center">__________________________</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				<fo:table-cell number-columns-spanned="2">
									    					<fo:block text-align="center">Firma Banco</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    		</fo:table-body>
									    	</fo:table>
									    </fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
													Este documento consta de 2 hoja
											</fo:inline>
										</fo:block>
										<fo:block >
											<fo:inline font-size="11pt">                
													Copia Cliente
											</fo:inline>
										</fo:block>
								 </fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				 </fo:block>
			</fo:flow>
		</fo:page-sequence>
		<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">000000</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">11pt</xsl:variable>
	<!-- Variables -->
	<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
				<fo:flow flow-name="xsl-region-body">
					<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="13cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:table text-align="center" table-layout="fixed">
										<fo:table-column column-width="3cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
															<fo:external-graphic>
																<xsl:attribute name="src">
																	 <xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
																</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
												    </fo:table-cell>
												</fo:table-row>
											</fo:table-body>
									</fo:table>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="left">
											<fo:inline font-size="11pt" font-weight="bold" >                
													SOLICITUD DE CREDITO
											</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					<fo:table table-layout="fixed">
					<fo:table-column column-width="8.5cm" />
					<fo:table-column column-width="8.5cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="0.5cm"></fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									N° OPERACIÓN: ___________________
								</fo:block>
								<fo:block space-after="0.2cm"></fo:block>
								<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									OFICINA: &#0160; <xsl:value-of select="lineaEmergencia/oficinaEjecutivo"/>  							
								</fo:block>
								<fo:block space-after="0.2cm"></fo:block>
								<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									FECHA: &#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/>
								</fo:block>
								<fo:block space-after="0.2cm"></fo:block>
								<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
									EJECUTIVO: &#0160; <xsl:value-of select="lineaEmergencia/userEjecutivo"/>  							
								</fo:block>
								</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="0.5cm"></fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block space-after="0.5cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>	
								
									
					<fo:table table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" font-weight="bold" >
										DATOS DEL SOLICITANTE
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell> 
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/> 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Nombre o razon social del cliente
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	

					<fo:block space-after="0,5cm"></fo:block>
					<!-- tabla 1 -->
					<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Domicilio
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Comuna
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Ciudad
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Fono
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					<!-- Fin tabla 1-->
					<!-- tabla 2-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/fechaNacimiento"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										RUT
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Cédula Nacional de Identidad
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Fecha de Nacimiento
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Cta. Cte. Nº
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 2 -->
					<fo:block space-after="0.5cm"></fo:block>
					<!-- Inicio Tabla 3 -->
					<fo:table table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" border-start-width="0.25pt" border-end-width="0.25pt" font-weight="bold" >
										ANTECEDENTES DEL CREDITO
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell> 
									<fo:block space-after="0.3cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
					    </fo:table-body>
					</fo:table>
				<!-- Fin Tabla 3 -->	
				<!-- tabla 4-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="6cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="6cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Línea de Emergencia
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Fecha Curce
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Tipo Crédito
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Monto Solicitado
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 4 -->	
					<!-- tabla 5-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="8cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="8cm" />

						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Forma de Pago
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Garantía Ofrecida
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 5 -->	
					<!-- tabla 6-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="11cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="5cm" />

						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Objetivo del Crédito
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 6 -->	
					<!-- tabla 6-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="2.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="2.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="2.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="2cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="1.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="1.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="1.5cm" />

						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Fecha 1er. Vencto.
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Vencimiento (1 solo vcto.)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Día de Pago (Créd. Cuotas)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Número Cuotas
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Tasa Spread
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Tasa Total (inicial)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										DL.3475
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 6 -->
					<fo:block space-after="0.5cm"></fo:block>	
					<!-- Tabla 7 -->	
					<fo:table table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" border-start-width="0.25pt" border-end-width="0.25pt" font-weight="bold" >
										DATOS DEL AVAL
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell> 
									<fo:block space-after="0.3cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" border-start-width="0.25pt" border-end-width="0.25pt">
										Nombre completo del Aval
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					    </fo:table-body>
					</fo:table>
					<!-- Fin Tabla 7 -->	
					
					<!-- Tabla 8 -->
					<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Domicilio
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Comuna
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Ciudad
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Fono
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					<!-- Fin tabla 8-->
					<!-- Tabla 9-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										RUT
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Cédula Nacional de Identidad
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Fecha de Nacimiento
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Cta. Cte. Nº
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 9 -->

					<fo:table text-align="justify" table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row >
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" >
									<fo:inline font-size="11pt"> 
										Declaro bajo juramento que mientras mantenga deudas pendientes a favor del Banco de Crédito e Inversiones,
										me comprometo a conservar incólume el patrimonio declarado en el o los estados de situación y me obligo a
										comunicarles por escrito y con la debida anticipación, todo hecho, acto o contrato que pueda disminuir o
										extinguir mis cauciones o el valor declarado de mi patrimonio.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row >
							
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt"> 
										Faculto expresamente al BANCO DE CREDITO E INVERSIONES para cargar en cualquiera de mi(s) cuenta(s)
										corriente(s) las sumas adeudadas provenientes del préstamo solicitado incluyendo capital, intereses y gastos,
										como así también, en el caso de no ser cancelado oportunamente o no existir fondos disponibles en la(s)
										cuenta(s) corriente(s), aplicar a su pago cualquier otro crédito a mi favor que exista en el BANCO, ya sean
										saldos en cuenta vista, depósitos a la vista, depósitos a plazo, valores en custodia, fondos mutuos en BCI
										Administradora de Fondos Mutuos S.A. etc.. Asimismo declaro bajo juramento que todos los antecedentes
										presentados son fidedignos y que conozco el texto del artículo 160 de la Ley General de Bancos.
										Autorizo al Banco de Crédito e Inversiones para pedir para su uso exclusivo, en los términos del artículo 4° de la
										ley 19.628, a la Administradora de Fondos de Pensiones donde efectúo mis cotizaciones previsionales, y autorizo
										asimismo a ésta, para entregar directamente al Banco o a través de Previred S.A., información sobre las aludidas
										cotizaciones de los últimos 12 meses precedentes a cualquiera solicitud de cualquier tipo de crédito o de otro
										servicio bancario para los que tal información y la que derive de aquella, pueda ser de utilidad para evaluar el
										otorgamiento del préstamo o servicio, sea de la naturaleza que fuere.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="2cm"></fo:block>
							</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										1 - 4
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
			<!-- Fin 1º Pagina de Contrato-->
			<fo:block text-align="left" break-after="page">
			</fo:block>
			<fo:table text-align="center" table-layout="fixed">
				<fo:table-column column-width="3cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell >
								<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
									<fo:external-graphic>
										<xsl:attribute name="src">
											<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
										</xsl:attribute>
									</fo:external-graphic>
								</fo:block>
						    </fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				 <fo:block font-size="8pt">
					<fo:table text-align="justify" table-layout="fixed">
						<fo:table-column column-width="17cm" />
							<fo:table-body>
								<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											En este acto otorgamos mandato mercantil especial, irrevocable y gratuito al Banco de Crédito e Inversiones para
											que en su nombre y representación, incluso con facultades expresas para autocontratar y obrando a través de
											cualquiera de sus apoderados o en quien el Banco delegue, suscriba y/o complete uno o más pagarés, y
											reconozca deudas en beneficio y a la orden del Banco de Crédito e Inversiones, todo ello con el propósito de
											documentar en esta forma el o los saldos deudores, por los montos de capital, intereses, costas y comisiones,
											que se originen con motivo del cobro de boletas de garantía tomadas por el suscrito y emitidas por el Banco, al
											amparo de la Línea de Crédito vigente. El o los pagarés que se suscriban en virtud de este mandato podrán
											extenderse a la vista o a plazo y en caso de no pago devengarán la tasa de interés máxima convencional para
											operaciones de crédito de dinero en moneda nacional. Asimismo, por el presente instrumento facultamos al
											Banco de Crédito e Inversiones, de manera irrevocable, para que, en conformidad a lo previsto en el Artículo 11 y
											107 de la Ley 18092 del año 1982 sobre Letra de Cambio y Pagaré, incorpore en el o los instrumentos mercantiles
											que documenten los créditos otorgados en virtud de esta solicitud de crédito o el Contrato de Apertura de Línea
											de Crédito destinada a cubrir eventuales pagos de boletas de garantía, la totalidad de las menciones exigidas por
											la Ley, como por ejemplo, su fecha de emisión, de vencimiento, la cantidad adeudada, la tasa de interés u otras,
											determinando en él nuestra obligación de pagar la cantidad de dinero solicitada en este acto o aquella que en
											definitiva apruebe el Banco al dorso de esta solicitud, si dicha cantidad fuere diferente. Liberamos al Banco de
											Crédito e Inversiones de la obligación de rendir cuenta de su gestión.
											
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Faculto (facultamos) irrevocablemente al Banco para aceptar instrucciones o solicitudes que yo imparta a través
											medios remotos, especialmente vía red internet u otros, vía electrónica, satelital o telefónica, que estén
											disponibles, y reconozco (reconocemos) que tales instrucciones realizadas por dichos medios constituye
											manifestación expresa de mi (nuestra) voluntad, de aceptar las condiciones y modalidades bajo las cuales se
											presta el servicio, como también de las responsabilidades que asumo (asumimos) al hacer uso de tales canales y
											de la información contenida en ellos. Asimismo, autorizo (autorizamos) al Banco para que me (nos) provea en
											forma remota, de todos aquellos servicios en que normalmente se requiere mi (nuestra) presencia física,
											asimilando como medio válido de autorización cuando así lo requiera, a la firma electrónica, mi clave secreta que
											es confidencial, personal e intransferible.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Reconozco(reconocemos) haber recibido por parte del Banco de Crédito e Inversiones información detallada de
											las comisiones que el Banco cobra por concepto de otorgamiento de crédito y procesos asociados a éste, como
											en el caso de reprogramación, prórroga y reestructuración entre otros.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Declaro (Declaramos) haber recibido información detallada y aceptar que existen recargos en caso de mora o
											simple retardo en el pago de la obligación de crédito de dinero de que da cuenta la presente solicitud y además
											por concepto de la cobranza extrajudicial de créditos impagos, incluyendo honorarios, a partir de la fecha que se
											indica más adelante, los cuales serán cobrados por la empresa &#x201C;Servicios de Normalización y Cobranza
											-Normaliza S.A.&#x201D; o por aquella que el BANCO designare en su oportunidad la que actuará en nombre y en
											representación e interés del BANCO en las gestiones de cobranza extrajudicial.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											La cobranza extrajudicial se efectuará en horario de 8:00 a 20:00 horas.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Declaro (Declaramos) conocer, y desde luego acepto (aceptamos), que para la empresa designada al efecto
											pueda realizar la cobranza extrajudicial es imprescindible que el BANCO suministre a dicha empresa,
											antecedentes tanto respecto de los créditos morosos de sus deudores y otros que no estando en dicha condición
											estén asociados a éstos, como de los antecedentes comerciales de los deudores, tales como, nombres y
											apellidos, cédula nacional de identidad, rol único tributario, domicilios, direcciones y teléfonos, etcétera.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Los honorarios y gastos por las gestiones de cobranza ascenderán a los porcentajes que seguidamente se
											indican, aplicados sobre el total de la deuda, o la cuota vencida según el caso, conforme a la siguiente escala
											progresiva: Obligaciones hasta 10 unidades de fomento 9%; por la parte que exceda las 10 unidades de fomento
											y hasta 50 unidades de fomento, 6% y por la parte que exceda las 50 unidades de fomento, 3%. Los porcentajes
											indicados se aplicarán como sigue: Créditos de Consumo/Tarjetas de Crédito &#x2013; Persona Naturales: Después de
											transcurridos 15 días corridos de atraso (mora) desde el día del vencimiento de la obligación. Créditos
											Comerciales &#x2013; General/Tarjetas De Crédito &#x2013; Personas Jurídicas: Después de transcurridos 5 días corridos de
											atraso (mora) desde el día del vencimiento de la obligación.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="3cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										2 - 4
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
			<!-- Otra Pagina-->
			<fo:block text-align="left" break-after="page">
			</fo:block>
			<fo:table text-align="center" table-layout="fixed">
				<fo:table-column column-width="3cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell >
								<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
									<fo:external-graphic>
										<xsl:attribute name="src">
											<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
										</xsl:attribute>
									</fo:external-graphic>
								</fo:block>
						    </fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				 <fo:block font-size="8pt">
					<fo:table text-align="justify" table-layout="fixed">
						<fo:table-column column-width="17cm" />
							<fo:table-body>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Las tarifas anteriores podrán ser modificadas anualmente en caso de operaciones de consumo cuyo plazo de
											pago exceda de un año, siempre que tales cambios se avisen con una anticipación mínima de dos períodos de
											pago. Formalizo (Formalizamos) el presente instrumento considerando que las tarifas indicadas se basan en la
											fiel interpretación de la reglamentación legal vigente y en cumplimiento a lo dispuesto en la Ley 19.659 y
											además normativa aplicable. Tanto los recargos en caso de mora o simple retardo como los gastos por
											concepto de la cobranza extrajudicial de los créditos impagos, incluyendo honorarios y costas podrán ser
											cobrados con cargo directo en alguna de la (s) cuenta(s) corriente(s) o cuenta(s) vistas(s) vigente(s)
											mantenida(s) por mí (nosotros) en el Banco, en la oportunidad que se cancele o regularice el vencimiento u
											obligación morosa o impaga.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:block space-before="5cm" space-after="2cm" font-size="11pt">
				    	<fo:table table-layout="center">
				    		<fo:table-column column-width="7cm"/>
				    		<fo:table-column column-width="10cm"/>
				    		<fo:table-body>
				    			<fo:table-row>
				    				<fo:table-cell>
				    					<fo:block text-align="center" >__________________________</fo:block>
				    				</fo:table-cell>
				    				<fo:table-cell>
				    					<fo:block text-align="center">__________________________________________</fo:block>
				    				</fo:table-cell>
				    			</fo:table-row>
				    			<fo:table-row height="5mm">
				    				<fo:table-cell>
				    					<fo:block text-align="center" >Nombre y Firma Aval</fo:block>
				    				</fo:table-cell>
				    				<fo:table-cell>
				    					<fo:block text-align="center">Nombre y Firma(s) Solicitante o Representante Legal</fo:block>
				    				</fo:table-cell>
				    			</fo:table-row>
				    		</fo:table-body>
						</fo:table>
						<fo:table table-layout="fixed">
							<fo:table-column column-width="17cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block space-after="10cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block space-after="5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell> 
										<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
											3 - 4
										</fo:block>
									</fo:table-cell>
									
								</fo:table-row>
							</fo:table-body>
						</fo:table>	


				    </fo:block>
				</fo:block>
				<!-- Separador para Saltar a otra Pagina-->
			<fo:block text-align="left" break-after="page">
			</fo:block>
				<fo:block>
					<fo:table table-layout="fixed">
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="17cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:table text-align="center" table-layout="fixed">
									<fo:table-column column-width="3cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
														<fo:external-graphic>
															<xsl:attribute name="src">
																<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
															</xsl:attribute>
														</fo:external-graphic>
													</fo:block>
											    </fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:table-cell>
								<fo:table-cell>
											<fo:table table-layout="fixed">
												<fo:table-column column-width="3.5cm" />
												<fo:table-column column-width="13.5cm"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell>
															<fo:block space-after="1cm"></fo:block>
														</fo:table-cell>
														<fo:table-cell>
															<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																N° OPERACIÓN: __________________
															</fo:block>
															<fo:block space-after="0.1cm"></fo:block>
															<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																Fecha de Suscripcion: &#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/> 							
															</fo:block>
															<fo:block space-after="0.1cm"></fo:block>
															<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																Monto: &#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/> 	
															</fo:block>
															<fo:block space-after="0.1cm"></fo:block>
															<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
																Deudor:     &#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/>  							
															</fo:block>
															<fo:block space-after="0.1cm"></fo:block>
															<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
																RUT	:  &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>  							
															</fo:block>
						 								</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell>
															<fo:block space-after="1cm"></fo:block>
														</fo:table-cell>
														<fo:table-cell>
															<fo:block space-after="1cm"></fo:block>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>	
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>	
					<fo:table table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell> 
									<fo:block space-after="0.3cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										VISACION CLIENTE
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="17cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					<fo:table table-layout="fixed">
						<fo:table-column column-width="6	cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="4.5cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										Resolución / Recomendación:
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
									&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										Monto Aprobado 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/> 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>

								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>

								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>

								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>
							</fo:table-row>

						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed">
						<fo:table-column column-width="16cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									_______________________________________________________________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									_______________________________________________________________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									_______________________________________________________________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									_______________________________________________________________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									_______________________________________________________________________________							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
							<fo:table-cell>
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<!-- Tabla 1-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="5cm" />

						<fo:table-body>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										Ej. Comercial
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										Jefe Oficina
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
											&#0160; <xsl:value-of select="lineaEmergencia/userEjecutivo"/> 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 1 -->
					<!-- Tabla 2-->
					<fo:table table-layout="fixed">
					<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										V° B° Fecha
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="2cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										4 - 4
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 9 -->
				 </fo:block>

<!-- Fin 1º Pagina de Contrato-->
<!-- TARIFARIO COPIA BANCO-->
			<fo:block text-align="left" break-after="page">
			</fo:block>
			<fo:block>
			<fo:table table-layout="fixed">
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="10cm"/>
						<fo:table-column column-width="3.5cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<fo:table text-align="center" table-layout="fixed">
									<fo:table-column column-width="3cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
														<fo:external-graphic>
															<xsl:attribute name="src">
																<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
															</xsl:attribute>
														</fo:external-graphic>
													</fo:block>
											    </fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:table-cell>
								<fo:table-cell >
									<fo:block font-size="11pt" text-align="center" color="{$txt}" font-weight="bold">
										TARIFARIO LÍNEA DE CREDITO DE EMERGENCIA
									</fo:block>
								</fo:table-cell>
								<fo:table-cell >
									<fo:block></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
							<fo:table-cell >
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
										
									</fo:block>
							</fo:table-cell >
							<fo:table-cell >
									<fo:block  ></fo:block>
							</fo:table-cell>
							<fo:table-cell >
									<fo:block  ></fo:block>
							</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
				<fo:block space-after="1cm"></fo:block>
				<fo:table table-layout="fixed">
						<fo:table-column column-width="9cm" />
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<fo:block ></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="right" color="{$txt}" >
										Fecha
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid">
									<fo:block font-size="11pt" text-align="center" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/> 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					<fo:block space-after="0.5cm"></fo:block>
					<!-- Tabla de datos Basicos -->

					<fo:table table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-size="11pt" text-align="left" color="{$txt}" font-weight="bold">
										Datos Básicos del Cliente
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid">	

								<!-- Tabla 1 Dat Basicos -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="15cm"/>
										<fo:table-column column-width="1cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Nombres
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/soloNombre"/> 
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 1 Dat Basicos -->
									
									<!-- Tabla 2 Dat Basicos -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="7cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="7cm"/>
										<fo:table-column column-width="1cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Apellido Paterno
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell font-size="11pt" text-align="left" color="{$txt}" >												
														<fo:block>
															Apellido Materno
														</fo:block>
													</fo:table-cell>
													<fo:table-cell>
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160;
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/soloApP"/> 
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block>&#0160;</fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid" >												
														<fo:block font-size="11pt" text-align="left" color="{$txt}">
															&#0160; <xsl:value-of select="lineaEmergencia/soloApM"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell>
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160;
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 2 Dat Basicos -->
									
									<!-- Tabla 3 Dat Basicos -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="5cm"/>
										<fo:table-column column-width="11cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Cedula de Identidad
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="center" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 3 Dat Basicos -->

									<!-- Tabla 4 Dat Basicos -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="15cm"/>
										<fo:table-column column-width="1cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Dirección particular
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160;
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 4 Dat Basicos -->
									
									<!-- Tabla 5 Dat Basicos -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="7cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="7cm"/>
										<fo:table-column column-width="1cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Comuna
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell font-size="11pt" text-align="left" color="{$txt}" >												
														<fo:block>
															Ciudad
														</fo:block>
													</fo:table-cell>
													<fo:table-cell>
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160;
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160;
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block>&#0160;</fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid" >												
														<fo:block>
															&#0160;
														</fo:block>
													</fo:table-cell>
													<fo:table-cell>
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160;
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									<!-- FIN Tabla 5 Dat Basicos -->
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<!-- FIN Tabla Datos Basicos -->


					<fo:block space-after="0.5cm"></fo:block>


					<!-- Resumen Linea de Credito -->

					<fo:table table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-size="11pt" text-align="left" color="{$txt}" font-weight="bold">
										Resumen Línea de Crédito de Emergencia
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid">	
								<fo:block space-after="0.3cm"></fo:block>
								<!-- Tabla 1 Linea de Credito -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="7cm"/>
										<fo:table-column column-width="9cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															N° de Cuenta Corriente Relacionada
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 1 Linea de Credito -->
									<fo:block space-after="0.3cm"></fo:block>
									<!-- Tabla 2 Linea de Credito -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="10cm"/>
										<fo:table-column column-width="6cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Monto asignado de Línea de Crédito de Emergencia
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														  &#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 2 Linea de credito -->
									<fo:block space-after="0.3cm"></fo:block>
									<!-- Tabla 3 Linea de credito -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="9cm"/>
										<fo:table-column column-width="5cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Comisión de Administración Semestral Cobrada Mensualmente
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/comisionMensual"/> 
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 3 Linea de credito -->
									<fo:block space-after="0.5cm"></fo:block>
									<!-- Tabla 4 DLinea de Credito -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="15cm"/>
										<fo:table-column column-width="1cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Nota: Esta comisión será descontada mensualmente si usted no utiliza la línea de emergencia.
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 4 Linea de Credito -->
									<fo:block space-after="0.5cm"></fo:block>
									<!-- Tabla 5 Linea de Credito -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="7cm"/>
										<fo:table-column column-width="10cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Tarifa de Renovación Semestral
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/comisionSemestral"/> 
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									<!-- FIN Tabla 5 Linea de Credito -->
									<fo:block space-after="0.3cm"></fo:block>
									<!-- Tabla 6 Linea de Credito -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="15cm"/>
										<fo:table-column column-width="1cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Observación
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block space-after="2cm" >
															&#0160;
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									<!-- FIN Tabla 5 Linea de Credito -->
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<!-- FIN Tabla Linea de Credito -->
					<fo:block space-after="2cm"></fo:block>
					<!-- tabla Para firma de cliente -->
					<fo:table table-layout="fixed">
						<fo:table-column column-width="16cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="center" color="{$txt}" >
									_________________________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="center" color="{$txt}" >
									Firma Cliente  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="4.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									Copia: Banco  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>

					<!-- Fin tabla Para firma de cliente -->
			<!-- FIN TARIFARIO COPIA BANCO -->
			<!-- TARIFARIO COPIA CLIENTE -->
			<fo:block text-align="left" break-after="page"></fo:block>
			</fo:block>
			<fo:block>
			<fo:table table-layout="fixed">
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="10cm"/>
						<fo:table-column column-width="3.5cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<fo:table text-align="center" table-layout="fixed">
									<fo:table-column column-width="3cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
														<fo:external-graphic>
															<xsl:attribute name="src">
																<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
															</xsl:attribute>
														</fo:external-graphic>
													</fo:block>
											    </fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:table-cell>
								<fo:table-cell >
									<fo:block font-size="11pt" text-align="center" color="{$txt}" font-weight="bold">
										TARIFARIO LÍNEA DE CREDITO DE EMERGENCIA
									</fo:block>
								</fo:table-cell>
								<fo:table-cell >
									<fo:block></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
							<fo:table-cell >
									<fo:block></fo:block>
							</fo:table-cell >
							<fo:table-cell >
									<fo:block></fo:block>
							</fo:table-cell>
							<fo:table-cell >
									<fo:block></fo:block>
							</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
				<fo:block space-after="1cm"></fo:block>
				<fo:table table-layout="fixed">
						<fo:table-column column-width="9cm" />
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<fo:block ></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="right" color="{$txt}" >
										Fecha
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid">
									<fo:block font-size="11pt" text-align="center" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					<fo:block space-after="0.5cm"></fo:block>
					<!-- Tabla de datos Basicos -->

					<fo:table table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
										Datos Básicos del Cliente
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid">	

								<!-- Tabla 1 Dat Basicos -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="15cm"/>
										<fo:table-column column-width="1cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Nombres
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/soloNombre"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 1 Dat Basicos -->
									
									<!-- Tabla 2 Dat Basicos -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="7cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="7cm"/>
										<fo:table-column column-width="1cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Apellido Paterno
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell font-size="11pt" text-align="left" color="{$txt}" >												
														<fo:block>
															Apellido Materno
														</fo:block>
													</fo:table-cell>
													<fo:table-cell>
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160;
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/soloApP"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block>&#0160;</fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid" >												
														<fo:block font-size="11pt" text-align="left" color="{$txt}">
															&#0160; <xsl:value-of select="lineaEmergencia/soloApM"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell>
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160;
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 2 Dat Basicos -->
									
									<!-- Tabla 3 Dat Basicos -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="5cm"/>
										<fo:table-column column-width="11cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Cedula de Identidad
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="center" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 3 Dat Basicos -->

									<!-- Tabla 4 Dat Basicos -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="15cm"/>
										<fo:table-column column-width="1cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Dirección particular
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160;
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 4 Dat Basicos -->
									
									<!-- Tabla 5 Dat Basicos -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="7cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="7cm"/>
										<fo:table-column column-width="1cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Comuna
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell font-size="11pt" text-align="left" color="{$txt}" >												
														<fo:block>
															Ciudad
														</fo:block>
													</fo:table-cell>
													<fo:table-cell>
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160;
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160;
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block>&#0160;</fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid" >												
														<fo:block>
															&#0160;
														</fo:block>
													</fo:table-cell>
													<fo:table-cell>
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160;
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									<!-- FIN Tabla 5 Dat Basicos -->
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<!-- FIN Tabla Datos Basicos -->


					<fo:block space-after="0.5cm"></fo:block>


					<!-- Resumen Linea de Credito -->

					<fo:table table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
										Resumen Línea de Crédito de Emergencia
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid">	
								<fo:block space-after="0.3cm"></fo:block>
								<!-- Tabla 1 Linea de Credito -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="7cm"/>
										<fo:table-column column-width="9cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															N° de Cuenta Corriente Relacionada
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 1 Linea de Credito -->
									<fo:block space-after="0.3cm"></fo:block>
									<!-- Tabla 2 Linea de Credito -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="10cm"/>
										<fo:table-column column-width="6cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Monto asignado de Línea de Crédito de Emergencia
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 2 Linea de credito -->
									<fo:block space-after="0.3cm"></fo:block>
									<!-- Tabla 3 Linea de credito -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="9cm"/>
										<fo:table-column column-width="5cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Comisión de Administración Semestral Cobrada Mensualmente
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/comisionMensual"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 3 Linea de credito -->
									<fo:block space-after="0.5cm"></fo:block>
									<!-- Tabla 4 DLinea de Credito -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="15cm"/>
										<fo:table-column column-width="1cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Nota: Esta comisión será descontada mensualmente si usted no utiliza la línea de emergencia.
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												</fo:table-body>
										</fo:table>

									<!-- FIN Tabla 4 Linea de Credito -->
									<fo:block space-after="0.5cm"></fo:block>
									<!-- Tabla 5 Linea de Credito -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="7cm"/>
										<fo:table-column column-width="10cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Tarifa de Renovación Semestral
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																&#0160; <xsl:value-of select="lineaEmergencia/comisionSemestral"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									<!-- FIN Tabla 5 Linea de Credito -->
									<fo:block space-after="0.3cm"></fo:block>
									<!-- Tabla 6 Linea de Credito -->
									<fo:table table-layout="fixed" >			
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="15cm"/>
										<fo:table-column column-width="1cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell >
														<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															Observación
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell >												
														<fo:block></fo:block>
													</fo:table-cell>
													<fo:table-cell border-color="black" border-style="solid">
														<fo:block space-after="3cm" >
															&#0160;
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >																								
														<fo:block></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									<!-- FIN Tabla 5 Linea de Credito -->
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<!-- FIN Tabla Linea de Credito -->
					<fo:block space-after="1cm"></fo:block>
					<!-- tabla Para firma de cliente -->
					<fo:table table-layout="fixed">
						<fo:table-column column-width="16cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="center" color="{$txt}" >
									_________________________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="center" color="{$txt}" >
									Firma Cliente  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="4.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									Copia: Cliente  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:block text-align="left" break-after="page"></fo:block>
					<!-- Fin tabla Para firma de cliente -->
					<!-- FIN TARIFARIO COPIA Cliente -->
					<!-- PAGINA de Condiciones CLIENTE-->
					<!-- Tabla de Condiciones-->
					<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:external-graphic>
													<xsl:attribute name="src">
														<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
													</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>

					<fo:table table-layout="fixed" >
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block text-align="center" color="{$txt}" font-size="11pt" font-weight="bold" >
										CONDICIONES Y HONORARIOS DE COBRANZA EXTRAJUDICIAL POR EMPRESA EXTERNA
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block space-after="0.3cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block   text-align="center" color="{$txt}" font-size="11pt" >
										(BANCA PERSONAS - PERSONAS NATURALES Y JURÍDICAS)
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block space-after="0.3cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
						</fo:table>
						<!-- Fin Tabla-->
						<fo:table text-align="justify"  table-layout="fixed" >
							<fo:table-column column-width="17cm" />
								<fo:table-body>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													En base a lo establecido en la Ley de Protección de los Derechos de los Consumidores y en la normativa de la
													Comisión para el Mercado Financiero, se informa al suscrito que existen recargos por
													concepto de cobranza extrajudicial de créditos o cuotas impagas, incluyendo honorarios a cargo del deudor
													según los plazos y productos que se indican más adelante, los cuales serán cobrados por la empresa &#x201C;Servicios
													de Normalización y Cobranzas - Normaliza S.A.&#x201D; en su caso, la que actuará en nombre y en representación e
													interés del Banco de Crédito e Inversiones en las gestiones de cobranza extrajudicial.
												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block space-after="0.5cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Dicha cobranza extrajudicial que efectuará la empresa Servicios de Normalización y Cobranzas - Normaliza S.A
													será realizada conforme a la Ley, en días hábiles y en horario de 8:00 a 20:00 horas.

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block space-after="0.5cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Declaro conocer y desde luego acepto, que según lo establecido en la Ley Nº 19.628 sobre Protección de Datos
													de Carácter Personal, para que la empresa Servicios de Normalización y Cobranzas - Normaliza S.A pueda
													realizar la cobranza extrajudicial, el Banco de Crédito e Inversiones suministrará a dicha empresa antecedentes,
													tanto respecto de los créditos morosos de sus deudores y otros que no estando en dicha condición estén
													asociados a éstos, como de los antecedentes comerciales de los deudores, tales como nombres y apellidos,
													cédula nacional de identidad, rol único tributario, domicilios, direcciones y teléfonos, etc.

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block space-after="0.5cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Declaro haber recibido, en forma previa al otorgamiento del crédito, la información sobre el cálculo de honorarios
													que generan la cobranza extrajudicial de los créditos impagos, así como copia fiel de este formulario cuyo original
													suscribo.

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block space-after="0.5cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Las tarifas de honorarios que se expresan a continuación podrán ser modificadas y en tal caso serán informadas
													a los clientes por carta al domicilio registrado en el Banco, contemplando las condiciones previstas en la
													legislación vigente.

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block space-after="0.5cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
					<!-- Tabla de Condiciones-->
					<fo:table table-layout="fixed" >
						<fo:table-column column-width="7cm" />
						<fo:table-column column-width="10cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block text-align="center" color="{$txt}" font-size="11pt" >
										TABLA DE HONORARIOS GENERAL.-
									</fo:block>
								</fo:table-cell>
								<fo:table-cell > 
									<fo:block ></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block >
									</fo:block>
								</fo:table-cell>
								<fo:table-cell > 
									<fo:block></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
						</fo:table>
						<!-- Fin Tabla-->
						<fo:block space-after="0.5cm"></fo:block>
						<fo:table text-align="justify" table-layout="fixed">
							<fo:table-column column-width="17cm" />
								<fo:table-body>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Los honorarios por la cobranza extrajudicial para todos los productos ascenderán a los porcentajes aplicados
													sobre el total de la deuda o la cuota vencida, según el caso, conforme a la siguiente escala progresiva:
												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row>
									<!-- Tabla valores -->
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block space-after="0.3cm"></fo:block>
												<!-- Tabla 6 Linea de Credito -->
												<fo:table table-layout="fixed" >			
													<fo:table-column column-width="1cm"/>
													<fo:table-column column-width="8cm"/>
													<fo:table-column column-width="1cm"/>
													<fo:table-column column-width="4cm"/>
													<fo:table-column column-width="1cm"/>
														<fo:table-body>
															<fo:table-row>
																<fo:table-cell >
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																		MONTO DEUDA O CUOTA MOROSA
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block font-size="11pt" text-align="left" color="{$txt}">% HONORARIOS</fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block ></fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell >
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell border-color="black" border-style="solid">
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell border-color="black" border-style="solid">												
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block ></fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
															 	<fo:table-cell number-columns-spanned="2">
																 	<fo:block space-after="0.3cm"></fo:block>
																 </fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell >
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																		Obligaciones hasta 10 Unidades de Fomento
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block font-size="11pt" text-align="left" color="{$txt}">9%</fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block ></fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell >
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																		Por la parte que exceda de 10 UF y hasta 50 UF
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block font-size="11pt" text-align="left" color="{$txt}">6%</fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block ></fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell >
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																		Por la parte que exceda de 50 UF
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block font-size="11pt" text-align="left" color="{$txt}">3%</fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block ></fo:block>
																</fo:table-cell>
															</fo:table-row>

														</fo:table-body>
													</fo:table>
													<fo:block space-after="0.3cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block space-after="0.3cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													PLAZOS DE APLICACIÓN DE HONORARIOS.-

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row>
									 	<fo:table-cell number-columns-spanned="2">
										 	<fo:block space-after="0.3cm"></fo:block>
										 </fo:table-cell>
									</fo:table-row>
									<fo:table-row >
										<fo:table-cell > 

												<!-- Tabla 6 Linea de Credito -->
													<fo:table table-layout="fixed" >			
														<fo:table-column column-width="0.5cm"/>
														<fo:table-column column-width="16.5cm"/>
															<fo:table-body>
																<fo:table-row>
																	<fo:table-cell>
																		<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																			 <fo:inline font-size="11pt"> 
																				1.-
																			 </fo:inline>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell>
																		<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																				 <fo:inline font-size="11pt"> 
																					CRÉDITOS DE CONSUMO / TARJETAS DE CRÉDITO - PERSONAS NATURALES.-
																					-Después de transcurridos 15 días corridos de atraso (mora) desde el día del vencimiento de la obligación.
																				 </fo:inline>
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
																<fo:table-row>
																	<fo:table-cell>
																		<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																			 <fo:inline font-size="11pt"> 
																				2.-
																			 </fo:inline>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell>
																	    <fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																			 <fo:inline font-size="11pt"> 
																				CRÉDITOS COMERCIALES-GENERAL / TARJETAS DE CREDITO-PERSONAS JURIDICAS
																				-Después de transcurridos 5 días corridos de atraso (mora) desde el día del vencimiento de la obligación.
																			 </fo:inline>
																		 </fo:block>
																	</fo:table-cell>
																</fo:table-row>
																<fo:table-row>
																	<fo:table-cell>
																		<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																			 <fo:inline font-size="11pt"> 
																				3.-
																			 </fo:inline>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell>
																	    <fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																			 <fo:inline font-size="11pt"> 
																				CRÉDITOS HIPOTECARIOS - GENERAL.-
																				&#x2212; Después de transcurridos 5 días corridos de atraso (mora) desde el día del vencimiento del
																				dividendo.
																			 </fo:inline>
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
													</fo:table-body>
												</fo:table>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block space-after="1.5cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="left">
												 <fo:inline font-size="11pt"> 
													Copia Cliente

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
								</fo:table-body>
							</fo:table>
						<!-- PAGINA de Condiciones CLIENTE-->
					<!-- PAGINA de Condiciones CLIENTE-->
					<!-- Tabla de Condiciones-->
					<fo:block text-align="left" break-after="page"> </fo:block>
					<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:external-graphic>
													<xsl:attribute name="src">
														<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
													</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
					<fo:table table-layout="fixed" >
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block text-align="center" color="{$txt}" font-size="11pt" font-weight="bold">
										CONDICIONES Y HONORARIOS DE COBRANZA EXTRAJUDICIAL POR EMPRESA EXTERNA
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block space-after="0.2cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block   text-align="center" color="{$txt}" font-size="11pt" >
										(BANCA PERSONAS - PERSONAS NATURALES Y JURÍDICAS)
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block space-after="0.3cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
						</fo:table>
						<!-- Fin Tabla-->
						<fo:table text-align="justify" table-layout="fixed">
							<fo:table-column column-width="17cm" />
								<fo:table-body>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													En base a lo establecido en la Ley de Protección de los Derechos de los Consumidores y en la normativa de la
													Comisión para el Mercado Financiero, se informa al suscrito que existen recargos por
													concepto de cobranza extrajudicial de créditos o cuotas impagas, incluyendo honorarios a cargo del deudor
													según los plazos y productos que se indican más adelante, los cuales serán cobrados por la empresa &#x201C;Servicios
													de Normalización y Cobranzas - Normaliza S.A.&#x201D; en su caso, la que actuará en nombre y en representación e
													interés del Banco de Crédito e Inversiones en las gestiones de cobranza extrajudicial.
												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Dicha cobranza extrajudicial que efectuará la empresa Servicios de Normalización y Cobranzas - Normaliza S.A
													será realizada conforme a la Ley, en días hábiles y en horario de 8:00 a 20:00 horas.

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Declaro conocer y desde luego acepto, que según lo establecido en la Ley Nº 19.628 sobre Protección de Datos
													de Carácter Personal, para que la empresa Servicios de Normalización y Cobranzas - Normaliza S.A pueda
													realizar la cobranza extrajudicial, el Banco de Crédito e Inversiones suministrará a dicha empresa antecedentes,
													tanto respecto de los créditos morosos de sus deudores y otros que no estando en dicha condición estén
													asociados a éstos, como de los antecedentes comerciales de los deudores, tales como nombres y apellidos,
													cédula nacional de identidad, rol único tributario, domicilios, direcciones y teléfonos, etc.

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Declaro haber recibido, en forma previa al otorgamiento del crédito, la información sobre el cálculo de honorarios
													que generan la cobranza extrajudicial de los créditos impagos, así como copia fiel de este formulario cuyo original
													suscribo.

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Las tarifas de honorarios que se expresan a continuación podrán ser modificadas y en tal caso serán informadas
													a los clientes por carta al domicilio registrado en el Banco, contemplando las condiciones previstas en la
													legislación vigente.

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block space-after="0.3cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
					<!-- Tabla de Condiciones-->
					<fo:table table-layout="fixed" >
						<fo:table-column column-width="7cm" />
						<fo:table-column column-width="10cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block text-align="center" color="{$txt}" font-size="11pt" >
										TABLA DE HONORARIOS GENERAL.-
									</fo:block>
								</fo:table-cell>
								<fo:table-cell > 
									<fo:block ></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block ></fo:block>
								</fo:table-cell>
								<fo:table-cell > 
									<fo:block ></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
						</fo:table>
						<!-- Fin Tabla-->
						<fo:block space-after="0.2cm"></fo:block>
						<fo:table text-align="justify" table-layout="fixed">
							<fo:table-column column-width="17cm" />
								<fo:table-body>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Los honorarios por la cobranza extrajudicial para todos los productos ascenderán a los porcentajes aplicados
													sobre el total de la deuda o la cuota vencida, según el caso, conforme a la siguiente escala progresiva:
												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row>
									<!-- Tabla valores -->
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block space-after="0.2cm"></fo:block>
												<!-- Tabla 6 Linea de Credito -->
												<fo:table table-layout="fixed" >			
													<fo:table-column column-width="1cm"/>
													<fo:table-column column-width="8cm"/>
													<fo:table-column column-width="1cm"/>
													<fo:table-column column-width="4cm"/>
													<fo:table-column column-width="1cm"/>
														<fo:table-body>
															<fo:table-row>
																<fo:table-cell >
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																		MONTO DEUDA O CUOTA MOROSA
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block font-size="11pt" text-align="left" color="{$txt}">% HONORARIOS</fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block ></fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell >
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell border-color="black" border-style="solid">
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell border-color="black" border-style="solid">												
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block ></fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
															 	<fo:table-cell number-columns-spanned="2">
																 	<fo:block space-after="0.3cm"></fo:block>
																 </fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell >
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																		Obligaciones hasta 10 Unidades de Fomento
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block font-size="11pt" text-align="left" color="{$txt}">9%</fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block ></fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell >
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																		Por la parte que exceda de 10 UF y hasta 50 UF
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block font-size="11pt" text-align="left" color="{$txt}">6%</fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block ></fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell >
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																		Por la parte que exceda de 50 UF
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block></fo:block>
																</fo:table-cell>
																<fo:table-cell >												
																	<fo:block font-size="11pt" text-align="left" color="{$txt}">3%</fo:block>
																</fo:table-cell>
																<fo:table-cell >
																	<fo:block ></fo:block>
																</fo:table-cell>
															</fo:table-row>

														</fo:table-body>
													</fo:table>
													<fo:block space-after="0.2cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block space-after="0.2cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													PLAZOS DE APLICACIÓN DE HONORARIOS.-

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row>
									 	<fo:table-cell number-columns-spanned="2">
										 	<fo:block space-after="0.3cm"></fo:block>
										 </fo:table-cell>
									</fo:table-row>
									<fo:table-row >
										<fo:table-cell > 
													<!-- Tabla 6 Linea de Credito -->
													<fo:table table-layout="fixed" >			
														<fo:table-column column-width="0.5cm"/>
														<fo:table-column column-width="16.5cm"/>
															<fo:table-body>
																<fo:table-row>
																	<fo:table-cell>
																		<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																			 <fo:inline font-size="11pt"> 
																				1.-
																			 </fo:inline>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell>
																		<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																				 <fo:inline font-size="11pt"> 
																					CRÉDITOS DE CONSUMO / TARJETAS DE CRÉDITO - PERSONAS NATURALES.-
																					-Después de transcurridos 15 días corridos de atraso (mora) desde el día del vencimiento de la obligación.
																				 </fo:inline>
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
																<fo:table-row>
																	<fo:table-cell>
																		<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																			 <fo:inline font-size="11pt"> 
																				2.-
																			 </fo:inline>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell>
																	    <fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																			 <fo:inline font-size="11pt"> 
																				CRÉDITOS COMERCIALES-GENERAL / TARJETAS DE CREDITO-PERSONAS JURIDICAS
																				-Después de transcurridos 5 días corridos de atraso (mora) desde el día del vencimiento de la obligación.
																			 </fo:inline>
																		 </fo:block>
																	</fo:table-cell>
																</fo:table-row>
																<fo:table-row>
																	<fo:table-cell>
																		<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																			 <fo:inline font-size="11pt"> 
																				3.-
																			 </fo:inline>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell>
																	    <fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																			 <fo:inline font-size="11pt"> 
																				CRÉDITOS HIPOTECARIOS - GENERAL.-
																				&#x2212; Después de transcurridos 5 días corridos de atraso (mora) desde el día del vencimiento del
																				dividendo.
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
						<!-- PAGINA de Condiciones CLIENTE-->
						<fo:block space-after="0.2cm"></fo:block>
						<fo:table table-layout="center">
				    		<fo:table-column column-width="12cm"/>
				    		<fo:table-column column-width="0.5cm"/>
							<fo:table-column column-width="5cm"/>
							
				    		<fo:table-body>
				    			<fo:table-row>
				    				<fo:table-cell>
				    					<fo:block text-align="left" >
											 <fo:inline font-size="11pt" font-weight="bold"> 
												NOMBRE O RAZON SOCIAL: &#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/>
											 </fo:inline>
										</fo:block>
				    				</fo:table-cell>
									<fo:table-cell>
				    					<fo:block ></fo:block>
				    				</fo:table-cell>
				    				<fo:table-cell>
									 
				    					<fo:block text-align="left">
										 <fo:inline font-size="11pt" font-weight="bold"> 
											RUT: &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
										</fo:inline>
										</fo:block>
				    				</fo:table-cell>
				    			</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:block space-after="0.1cm"></fo:block>
						<fo:table table-layout="center">
				    		<fo:table-column column-width="17cm"/>
				    		<fo:table-body>
				    			<fo:table-row>
				    				<fo:table-cell>
				    					<fo:block text-align="left" >
											 <fo:inline font-size="11pt" font-weight="bold"> 
												REPRESENTANTE LEGAL
											 </fo:inline>
										</fo:block>
				    				</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
				    				<fo:table-cell>
				    					<fo:block text-align="left" >
											 <fo:inline font-size="11pt" font-weight="bold"> 
												____________________________________RUT__________________
											 </fo:inline>
										</fo:block>
				    				</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
				    				<fo:table-cell>
				    					<fo:block text-align="left" >
											 <fo:inline font-size="11pt" font-weight="bold"> 
												REPRESENTANTE LEGAL
											 </fo:inline>
										</fo:block>
				    				</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
				    				<fo:table-cell>
				    					<fo:block text-align="left" >
											 <fo:inline font-size="11pt" font-weight="bold"> 
												____________________________________RUT__________________
											 </fo:inline>
										</fo:block>
				    				</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
				    				<fo:table-cell>
				    					<fo:block space-after="0.3cm"></fo:block>
				    				</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
				    				<fo:table-cell>
				    					<fo:block text-align="left" >
				    						<fo:table table-layout="center">
								    		<fo:table-column column-width="2cm"/>
								    		<fo:table-column column-width="4cm"/>
								    		<fo:table-column column-width="3cm"/>
								    		<fo:table-column column-width="8cm"/>
								    		<fo:table-body>
								    			<fo:table-row >
									    			<fo:table-cell >
														<fo:block text-align="left" >
							    								 <fo:inline font-size="11pt" font-weight="bold"> 
																	Fecha 
																 </fo:inline>
														</fo:block>
													</fo:table-cell>
								    				<fo:table-cell >
														<fo:block text-align="left" >
						    								 <fo:inline font-size="11pt" > 
																&#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/>
															 </fo:inline>
														</fo:block>
													 </fo:table-cell>
													 <fo:table-cell>
														 <fo:block text-align="left" >
						    								 <fo:inline font-size="11pt" font-weight="bold"> 
																Crédito/Operación
															 </fo:inline>
															</fo:block>
													 </fo:table-cell>
													  <fo:table-cell>
														<fo:block text-align="center" >
						    								 <fo:inline font-size="11pt" > 
																________________________________
															 </fo:inline>
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
				    					<fo:block space-after="0.6cm"></fo:block>
				    				</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
				    				<fo:table-cell>
				    					<fo:block text-align="center" >
											 <fo:inline font-size="11pt"> 
												___________________________________
											 </fo:inline> 
										</fo:block>
				    				</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
				    				<fo:table-cell>
				    					<fo:block text-align="center" >
											 <fo:inline font-size="11pt" font-weight="bold"> 
												Firma Cliente
											 </fo:inline> 
										</fo:block>
				    				</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
				    				<fo:table-cell>
				    					<fo:block text-align="left" >
											 <fo:inline font-size="11pt"> 
												Copia Banco
											 </fo:inline> 
										</fo:block>
				    				</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>

					<!-- PAGINA de Condiciones CLIENTE-->
					<!-- Tabla de MANDATO-->
					<fo:block text-align="left" break-after="page"> </fo:block>
					<fo:table text-align="center" table-layout="fixed">
					<fo:table-column column-width="3cm"/>
					<fo:table-column column-width="14cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<fo:table text-align="center" table-layout="fixed">
										<fo:table-column column-width="3cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
															<fo:external-graphic>
																<xsl:attribute name="src">
																	<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
																</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
												    </fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
								</fo:table-cell>
								<fo:table-cell >
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline  font-weight="bold"  start-indent="2pt">
													SOLICITUD DE INCORPORACIÓN, MANDATO Y DECLARACION
													PERSONAL DE SALUD PARA SEGURO DE DESGRAVAMEN
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="17cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt">
													(Uso exclusivo en Plan Bci)
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="right"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt">
													FOLIO N°______________________
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>
					<fo:block space-after="0.2cm"></fo:block>	
					<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="10cm"/>
							<fo:table-column column-width="3.5cm"/>
							<fo:table-column column-width="3.5cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													1. DATOS ENTIDAD CONTRATANTE (MANDATARIO)
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt">
													Sucursal
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt">
													&#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>

					<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="2cm"/>
							<fo:table-column column-width="3.5cm"/>
							<fo:table-column column-width="4.5cm"/>
							<fo:table-column column-width="3.5cm"/>
							<fo:table-column column-width="3.5cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt">
													Oficina
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt">
													&#0160; <xsl:value-of select="lineaEmergencia/oficinaEjecutivo"/>
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt">
													Ejecutivo : &#0160; <xsl:value-of select="lineaEmergencia/userEjecutivo"/>
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt">
													Jefe de Oficina
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												<fo:inline >
													&#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>
					<fo:block space-after="0.4mm"></fo:block>	
					<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
						<fo:inline start-indent="2pt">
							Indique con una X el tipo de producto y complete los siguientes datos de la operación que está cursando:
						</fo:inline>
					</fo:block>
					<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="4.6cm"/>
							<fo:table-column column-width="2cm"/>
							<fo:table-column column-width="1.8cm"/>
							<fo:table-column column-width="1.8cm"/>
							<fo:table-column column-width="2.4cm"/>
							<fo:table-column column-width="2.2cm"/>
							<fo:table-column column-width="2.2cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Tipo de Operación
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Monto Crédito
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Moneda
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Prima
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Nro. Operación
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Vigencia Inicial Operación
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center" >
												<fo:inline start-indent="2pt" font-weight="bold">
													Vigencia final Operación
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid" >
											<fo:block >

												<fo:table text-align="center" table-layout="fixed" space-before="1mm" space-after="1mm">
												<fo:table-column column-width="0.1cm"/>
												<fo:table-column column-width="0.3cm"/>
												<fo:table-column column-width="4.2cm"/>
													<fo:table-body>
														<fo:table-row>
														<fo:table-cell >
																<fo:block>
																	<fo:inline  >
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-color="black" border-style="solid">
																<fo:block font-size="11pt"  text-align="center" >
																	<fo:inline  >
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block font-size="11pt"  text-align="center" >
																	<fo:inline font-size="11pt" >
																		Línea de Sobregiro
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160;  
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
											<fo:table text-align="center" table-layout="fixed" space-before="1mm" space-after="1mm">
												<fo:table-column column-width="0.1cm"/>
												<fo:table-column column-width="0.3cm"/>
												<fo:table-column column-width="4.2cm"/>
													<fo:table-body>
														<fo:table-row>
														<fo:table-cell >
																<fo:block>
																	<fo:inline  >
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-color="black" border-style="solid">
																<fo:block font-size="11pt"  text-align="center"  >
																	<fo:inline  >
																		X
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block font-size="11pt"  text-align="center"  >
																	<fo:inline font-size="11pt" >
																	Línea de Emergencia
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												<fo:inline font-size="11pt" >
													&#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/>
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
											<fo:inline font-size="11pt" >
												Pesos
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
											<fo:table text-align="center" table-layout="fixed" space-before="1mm" space-after="1mm">
												<fo:table-column column-width="0.1cm"/>
												<fo:table-column column-width="0.3cm"/>
												<fo:table-column column-width="4.2cm"/>
													<fo:table-body>
														<fo:table-row>
														<fo:table-cell >
																<fo:block>
																	<fo:inline  >
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-color="black" border-style="solid">
																<fo:block font-size="11pt"  text-align="center" >
																	<fo:inline  >
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block font-size="11pt"  text-align="center" >
																	<fo:inline font-size="11pt" >
																	Avance Bci Multicrédito
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												&#0160; 
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>
					<fo:table  table-layout="fixed" text-align="justify" >
							<fo:table-column column-width="17cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid" >
											<fo:block line-height="11pt">
												<fo:inline font-size="11pt" >
													La prima y/o tasa puede variar en función a la evaluación del riesgo por parte de BCI Seguros Vida S.A.
												</fo:inline>
											</fo:block>
											<fo:block line-height="11pt" >
												<fo:inline font-size="11pt">
													Capital Asegurado: saldo insoluto de la operación crediticia individualizada a la fecha de siniestro.
												</fo:inline>
											</fo:block>
											<fo:block line-height="11pt" >
												<fo:inline font-size="11pt">
													Comisión de Intermediación: 25% de la prima neta para Línea Sobregiro/Avance Bci Multicrédito y 30% de la prima
													neta para Línea de Emergencia. Comisión de Recaudación (Receptor Banco BCI): UF 0,03 + IVA por recaudación.
													Valija documentos (Receptor Banco BCI): $ 400 + IVA por seguro.
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block space-after="0.2cm"></fo:block>	
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt" font-weight="bold">
													2. DATOS DEL DEUDOR DIRECTO:
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>
					<fo:block space-after="0.1cm"></fo:block>	

					<fo:table  table-layout="fixed" text-align="justify" >
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="8.5cm"/>
							<fo:table-column column-width="1.5cm"/>
							<fo:table-column column-width="3cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid" >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
												 &#0160; Nombre Completo:  
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid" >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
												 &#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid" >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
												&#0160;RUT: 
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid" >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
												 &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block space-after="0.2cm"></fo:block>
							<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="8cm"/>
							<fo:table-column column-width="0.5cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-column column-width="0.5cm"/>
							<fo:table-column column-width="4cm"/>

								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													3. DATOS DEL ASEGURABLE: &#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												<fo:inline>
													&#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" >
													&#0160; DEUDOR DIRECTO
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
												<fo:inline>
													&#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" >
													&#0160; Aval
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						<fo:block space-after="0.1cm"></fo:block>
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="6.5cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-column column-width="5.5cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													&#0160; Nombre Completo:
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													&#0160; RUT:
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" >
													&#0160; Fecha Nacimiento:

												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="12cm"/>
							<fo:table-column column-width="5cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													&#0160; Domicilio:
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													&#0160; Comuna:
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-column column-width="4cm"/>
							<fo:table-body>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													&#0160; Ciudad:
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt">
													&#0160; Teléfono:
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block >
													<fo:table text-align="center" table-layout="fixed">
														<fo:table-column column-width="1.5cm"/>
														<fo:table-column column-width="3.5cm"/>
															<fo:table-body>
																<fo:table-row>
																	<fo:table-cell >
																		<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																			<fo:inline start-indent="2pt" font-weight="bold">
																				&#0160;Sexo:
																			</fo:inline>
																		</fo:block>
																    </fo:table-cell>
																	<fo:table-cell >
																		<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																			<fo:inline start-indent="2pt" font-weight="bold">
																				&#0160; Masculino:
																			</fo:inline>
																		</fo:block>
																    </fo:table-cell>
																</fo:table-row>
																<fo:table-row>
																	<fo:table-cell >
																		<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																			<fo:inline start-indent="2pt" font-weight="bold">
																				&#0160;
																			</fo:inline>
																		</fo:block>
																    </fo:table-cell>
																	<fo:table-cell >
																		<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																			<fo:inline start-indent="2pt" font-weight="bold">
																				&#0160; Femenino:
																			</fo:inline>
																		</fo:block>
																    </fo:table-cell>
																</fo:table-row>
															</fo:table-body>
														</fo:table>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt">
													&#0160;Estado Civil:
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" >
													&#0160; Aval
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table  table-layout="fixed" text-align="justify" >
							<fo:table-column column-width="17cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													Por el presente instrumento, solicito como deudor la incorporación del asegurable detallado en el punto 3,a la(s)
													póliza(s) de Desgravamen N°s 
													</fo:inline>
													<fo:inline font-size="11pt" font-weight="bold">
													222925, 222924, 283457, 
													</fo:inline>
													<fo:inline font-size="11pt">
													según producto(s) identificado(s) en punto 1.Con este objeto:
													</fo:inline>
												</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block space-after="0.2cm"></fo:block>	
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table  table-layout="fixed" text-align="justify" >
							<fo:table-column column-width="0.5cm"/>
							<fo:table-column column-width="16.5cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
													<fo:inline font-size="11pt" font-weight="bold">
													A. 
													</fo:inline>
												</fo:block>
									    </fo:table-cell>
										<fo:table-cell>
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													Otorgo mandato irrevocable al Banco de Crédito e Inversiones, en adelante &#x201C;el Mandatario&#x201D;, para que contrate y/o
													renueve con BCI Seguros de Vida S.A. , uno o más Seguros de Desgravamen para el asegurable, intermediados
													por Bci Corredores de Seguros S.A., en virtud del o de los cuales, al ocurrir el fallecimiento de este último, queden
													saldadas, hasta el importe de cobertura de dicho(s) seguro(s), las deudas vigentes, contraídas con ocasión del(de
													los) Crédito(s) individualizados en punto 1, otorgado(s) por el Banco de Crédito e Inversiones. Desde ya, acepto
													como deudor directo, todas las condiciones de la contratación del o de los seguro(s), entre éstas, su vigencia, la
													cobertura del o de los mismos y el cargo de la(s) prima(s) y de cualesquiera otros gastos generados con ocasión
													del o de los mismos, en cualquiera de mis Cuentas Corrientes, o la rebaja correspondiente del o de los créditos
													que se me concediere(n), de la(s) prima(s), impuestos, comisiones y otros gastos derivados de su contratación y
													renovación en su caso, en las oportunidades y con la frecuencia que corresponde a los respectivos vencimientos.
													Será suficiente aviso de tal contratación, si se hiciere, o de su renovación en su caso, y también suficiente
													rendición de cuenta de esta gestión, el o los cargo(s) correspondiente(s) en la Cuenta Corriente, Línea de Crédito
													o en cualquiera otros valores que tenga depositados en el Banco. Así también, acepto las condiciones de
													procedencia o improcedencia del pago del o de los seguros pactados en la Compañía de Seguros y el monto de
													cobertura sin que al Banco corresponda responsabilidad alguna, para el evento que el(los) seguro(s) no fuese(n)
													pagado(s), no fuere(n) contratado(s) no fuese(n) renovado(s), o no cumplan los requisitos de asegurabilidad
													exigidos.
												</fo:inline>
											</fo:block>	
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
													<fo:inline font-size="11pt" font-weight="bold">
													B. 
													</fo:inline>
												</fo:block>
									    </fo:table-cell>
										<fo:table-cell>
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													Declaro como asegurable: 
												</fo:inline>
												<fo:inline font-size="11pt" font-weight="bold">
													1) 
												</fo:inline>
												<fo:inline font-size="11pt" >
													Que esta solicitud de incorporación, no otorga cobertura hasta haber sido aceptada
													por Bci Seguros Vida S.A.; 
												</fo:inline>
												<fo:inline font-size="11pt" font-weight="bold">
													2) 
												</fo:inline>
												<fo:inline font-size="11pt">
													Que la presente Solicitud de Incorporación a estos seguros se hace a petición del
													suscrito y en ningún caso ha sido considerada como condición para el otorgamiento del (de los) crédito(s)
													ofrecido(s) o solicitado(s). 
												</fo:inline>
												<fo:inline font-size="11pt" font-weight="bold">
													3) 
												</fo:inline>
												<fo:inline font-size="11pt" >
													estar en conocimiento del derecho a decidir sobre la contratación de los seguros y a
													la libre elección del intermediario y compañía aseguradora. 
												</fo:inline>
												<fo:inline font-size="11pt" font-weight="bold">
													4) 
												</fo:inline>
												<fo:inline font-size="11pt" >
													La(s) cobertura(s) comenzará(n) a regir únicamente
													a partir del momento en que este documento sea aceptado por la Compañía Aseguradora y se inicie la vigencia
													del o de los seguros y hasta el día en que se produzca cualquiera de las dos circunstancias siguientes: a) que se
													cumpla la edad tope de cada cobertura, b) que se extinga el o los crédito(s) individualizado(s) en el punto 1.
												</fo:inline>
											</fo:block>	
									    </fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
										<fo:block text-align="left" break-after="page"></fo:block>
								<fo:table  table-layout="fixed" text-align="justify" >
									<fo:table-column column-width="0.5cm"/>
									<fo:table-column column-width="16.5cm"/>
									   <fo:table-body>		
										<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
													<fo:inline font-size="11pt" font-weight="bold">
													C. 
													</fo:inline>
												</fo:block>
									    </fo:table-cell>
										<fo:table-cell>
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													Autorizo irrevocablemente al Banco, para remitir a BCI Seguros de Vida S.A. y/o BCI Corredores de Seguros S.A.
													que intervengan, con las que se contrate y/o intermedie el(los) seguro(s) y sus renovaciones, la información
													pertinente a los montos de los créditos; sus condiciones, estados de servicios de las deudas, montos o saldos
													insolutos adeudados y demás que fuere menester para dichas operaciones, según lo solicitaren dichas
													compañías.
												</fo:inline>
											</fo:block>	
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
													<fo:inline font-size="11pt" font-weight="bold">
													D. 
													</fo:inline>
												</fo:block>
									    </fo:table-cell>
										<fo:table-cell>
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													Las coberturas del o de los Seguro(s) de Desgravamen se rigen por la póliza depositada en el registro de la
													S.V.S. bajo el código POL 2 05 040, y la CAD 2 08 074 y, de acuerdo al (los) producto(s) contratado(s).
												</fo:inline>
											</fo:block>	
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="5cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4">
											<fo:block space-after="4cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													&#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/>
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													 _________________
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													_________________
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													_________________
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Fecha
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Firma Cliente
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Firma Aval
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Firma Corredor
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>
					<!-- PAGINA de Condiciones CLIENTE-->
					<!-- Tabla de Condiciones-->
					<fo:block text-align="left" break-after="page"> </fo:block>
					<fo:table text-align="center" table-layout="fixed">
					<fo:table-column column-width="3cm"/>
					<fo:table-column column-width="14cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<fo:table text-align="center" table-layout="fixed">
										<fo:table-column column-width="3cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell >
														<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
															<fo:external-graphic>
																<xsl:attribute name="src">
																	<xsl:value-of select="lineaEmergencia/imagen"/>logo-bci-somos-diferentes.gif
																</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
												    </fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
								</fo:table-cell>
								<fo:table-cell >
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline  font-weight="bold"  start-indent="2pt">
													SOLICITUD DE INCORPORACIÓN, MANDATO Y DECLARACION
													PERSONAL DE SALUD PARA SEGURO DE DESGRAVAMEN
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="17cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block font-size="9.5pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt">
													(Uso exclusivo en Plan Bci)
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>
					<fo:block space-after="0.3cm"></fo:block>
					<fo:table  table-layout="fixed" text-align="justify" >
							<fo:table-column column-width="17cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													En caso de extinción o disminución de deuda por prepago o renegociación del crédito, BCI Seguros solo para Avance
													Multicrédito devolverá al deudor asegurado la prima que no se hubiere devengado por la extinción de los riesgos, si
													ello se hubiera producido dentro de los 45 días siguientes al inicio de la cobertura o dentro de un término
													correspondiente a la décima parte del período de cobertura efectiva del seguro, si ello fuera superior (Circular 1762 de
													la Superintendencia de valores y seguros).
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>
					<fo:table  table-layout="fixed" text-align="justify" >
							<fo:table-column column-width="0.3cm"/>
							<fo:table-column column-width="16.7cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt" font-weight="bold">
													E.
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													Exclusiones: Las exclusiones del seguro se encuentran contenidas en la póliza depositada en el registro de la
													S.V.S. bajo el código POL 2 05 040 y la CAD 2 08 074. Entre las principales se cuenta:
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>
					<fo:table  table-layout="fixed" text-align="justify" >
							<fo:table-column column-width="17cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt" font-weight="bold">
													1) 
												</fo:inline>
												<fo:inline font-size="11pt" >
													Automutilación, o autolesión,
												</fo:inline>
												<fo:inline font-size="11pt" font-weight="bold">
													 2) 
												 </fo:inline>
												 <fo:inline font-size="11pt" >
													 Acto delictivo cometido, en calidad de autor o cómplice, por quien pudiere verse
													 beneficiado por el pago de la cantidad asegurada 
												 </fo:inline>
												 <fo:inline font-size="11pt" font-weight="bold">
													 3) 
												 </fo:inline>
												 <fo:inline font-size="11pt" >
													 Realización o participación en una actividad o deporte riesgoso,
													 considerándose como tales aquellos que objetivamente constituyan una flagrante agravación del riesgo y/o se
													 requiera de medidas de protección y/o seguridad para realizarlos. A vía de ejemplo y sin que la enumeración sea
													 taxativa o restrictiva sino que meramente enunciativa, se considera actividad o deporte riesgoso el manejo de
													 explosivos, minería subterránea, trabajos en altura o líneas de alta tensión, inmersión submarina, piloto civil,
													 paracaidismo, montañismo, alas delta, benji, parapente, carreras de auto y moto, entre otros. 
												 </fo:inline>
												 <fo:inline font-size="11pt" font-weight="bold">
													 4)
												 </fo:inline>
												 <fo:inline font-size="11pt" >
													 Enfermedades preexistentes, entendiéndose por tales las definidas en el artículo 2° las Condiciones Generales 
												 </fo:inline>
												 <fo:inline font-size="11pt" font-weight="bold">
													 5)
												 </fo:inline>
												 <fo:inline font-size="11pt" >
													 Una infección oportunista o neoplasma maligno causado o que resulte como consecuencia que el Asegurado estuviere afecto o
													 fuere portador del Síndrome de Inmunodeficiencia Adquirida, cualquiera fuese el momento en que el Asegurado se
													 haya infectado o contraído dicho síndrome. 
												 </fo:inline>
												 <fo:inline font-size="11pt" font-weight="bold">
													 6) 
												 </fo:inline>
												 <fo:inline font-size="11pt" >
													 todas las exclusiones indicadas en el condicionado general.
													 F. Esta solicitud sólo presenta un resumen de las coberturas. El Detalle de las características, exclusiones y
													 condiciones se encuentran en las pólizas respectivas.
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt" font-weight="bold">
													DECLARACIÓN
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table  table-layout="fixed" text-align="justify" >
							<fo:table-column column-width="11cm"/>
							<fo:table-column column-width="2cm"/>
							<fo:table-column column-width="1cm"/>
							<fo:table-column column-width="2cm"/>
							<fo:table-column column-width="1cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"  text-align="left" >
												<fo:inline font-size="11pt" >
													&#0160; La edad del asegurado al momento de su ingreso, sumado el plazo de la
													&#0160; deuda excede los 74 y 364 días.
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"  text-align="center" >
												<fo:inline font-size="11pt">
													SI
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													 &#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"  text-align="center" >
												<fo:inline font-size="11pt">
													 NO
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													 &#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"  text-align="left" >
												<fo:inline font-size="11pt" >
													&#0160; El asegurable tiene más de 65 años.
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"  text-align="center" >
												<fo:inline font-size="11pt">
													SI
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													 &#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"  text-align="center" >
												<fo:inline font-size="11pt">
													 NO
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													 &#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"  text-align="left" >
												<fo:inline font-size="11pt" >
													&#0160; El asegurable declara preexistencia o el desarrollo de sus actividades y/o
													&#0160; deportes riesgosos en las secciones especiales para este punto
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"  text-align="center" >
												<fo:inline font-size="11pt">
													SI
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													 &#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"  text-align="center" >
												<fo:inline font-size="11pt">
													 NO
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													 &#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"  text-align="left" >
												<fo:inline font-size="11pt" >
													&#0160; El monto de la presente operación es superior a UF 2.000.-
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"  text-align="center" >
												<fo:inline font-size="11pt">
													SI
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													 &#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt"  text-align="center" >
												<fo:inline font-size="11pt">
													 NO
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													 &#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table  table-layout="fixed" text-align="justify" >
							<fo:table-column column-width="0.4cm"/>
							<fo:table-column column-width="16.6cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt" >
													a)
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													En caso de que todos los puntos anteriores hayan sido respondidos negativamente, la presente solicitud de
													incorporación tendrá aceptación inmediata y pasará a ser Certificado de Cobertura. Si cualquiera de las preguntas
													precedentes queda sin responder, la compañía entenderá que ésta ha sido contestada positivamente.
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt" >
													b)
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													En caso de duda o contradicción entre la información proporcionada en este u otro formulario y cualquiera de las
													respuestas anteriores prevalecerán estas últimas declaraciones.
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt" >
													c)
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													Declaro estar dispuesto a someterme a pruebas médicas por cuenta de la Compañía, asimismo autorizo a los
													médicos, hospital, clínica u otra institución o persona que tenga mis registros personales para que entregue oproporcione la información solicitada por BCI Seguros Vida S.A. A su vez faculto a esta última para que solicite o retire
													copia de tales antecedentes patológicos, incluso en caso de muerte, conforme a lo dispuesto en la ley número 19.628,
													artículo 127 del Código Sanitario.
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>
					<fo:block space-after="0.3cm"></fo:block>
					<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="5cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													&#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/>
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													_________________
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													_________________
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													_________________
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Fecha
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Firma Cliente
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Firma Aval
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Firma Corredor
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>
					<fo:block space-after="0.3cm"></fo:block>
					<fo:table  table-layout="fixed" text-align="justify" >
							<fo:table-column column-width="17cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid" background-color="rgb(223, 223, 223)"> >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
												<fo:inline font-size="11pt" font-weight="bold">
													INFORMACION ARTICULOS 57 Y 58 DEL DL Nº 251
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													Bci Corredores de Seguros S.A. , Rut 78.951.950-1 , en mi calidad de Corredor de seguros y en cumplimiento a la ley
													, informo que durante el año calendario anterior intermedié contratos de seguros con las siguientes Compañías de
													seguros .
												</fo:inline>
											</fo:block>
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													En Seguros Generales: El 79,28 % en BCI Seguros Generales S.A., el 7,40 % con la Compañía de Seguros
													Generales Cardif S.A., el 3,28 % con Aseguradora Magallanes S.A., el 3,24 % con Liberty Compañía de Seguros
													Generales S.A., el 2,45 % con Royal Sun alliance Seguros S.A., el 1,83 % con Mapfre Seguros Generales SA.,
													el 1,10 % con C.S.G. Penta Security S.A. , el 0,75 % con Consorcio Nacional de Seguros Generales S.A. y otras
													1,42 % . En Seguros de Vida: El 65,69 % con Bci Seguros de Vida S.A., el 24,71 % con la Compañía de Seguros
													de Vida Cardif S.A , el 5,66 % con Chilena Consolidada Seguros de Vida S.A., el 2,02 % en la Interamericana
													Compañía de Seguros de Vida S.A. , el 1,03 % con Euroamerica Vida S.A, el 0,42 % con Consorcio Nacional Vida y
													otras 0,47 % . En Renta Vitalicia: El 25,62 % con Principal Compañía de Seguros de Vida Chile S.A., el 23,50 %
													con Met Life Chile Seguros de Vida S.A., el 11,25% con Compañía de Seguros de Vida Corp S.A. , el 8,25% con ING
													Vida S.A., el 6,92 % con Cruz del Sur Vida S.A.,. el 6,57% con Penta Vida Compañía de Seguros de Vida S.A., el
													5,78 % con C.S.V Consorcio Nacional de Seguros S.A , el 4,08 % con Bci Seguros Vida S.A. , el 2,54 % con RentaVida S.A. , el 2,07% con Euroamerica Seguros de Vida S.A. y otras 3,43 %.
													Para responder del correcto y cabal cumplimiento de todas mis obligaciones emanadas de la actividad de Corredor de
													Seguros y en especial de los perjuicios que pueda ocasionar a los asegurados que contraten seguros por mi
													intermedio se ha emitido Póliza de Responsabilidad Civil N° 4282810 y Póliza de Garantía N° 10009577 en
													Consorcio Nacional de Seguros S.A.													
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>
				<!-- FIN PAgina-->
				
				<!-- Pagina de Informativo de seguro-->
				<fo:block text-align="left" break-after="page"></fo:block>
				<fo:table  table-layout="fixed"  >
				<fo:table-column column-width="17cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell >
								<fo:block ont-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
									<fo:inline font-size="11pt" font-weight="bold">
									INFORMATIVO SOBRE SEGURO DE DESGRAVAMEN PARA DEUDORES LINEA DE SOBREGIRO Y
									LINEA DE EMERGENCIA DEL BANCO BCI
									</fo:inline>
								</fo:block>
						    </fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="11pt"  padding-top="5pt" padding-left="1pt" text-align="center">
									<fo:inline font-size="11pt" font-weight="bold">
									(Circulares 3331 Superintendencia de Bancos y 1759 Superintendencia de Valores y Seguros)
									</fo:inline>
								</fo:block>
					   		</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell number-columns-spanned="2" >
								<fo:block space-after="0.5cm"></fo:block>
						    </fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="11pt"  padding-top="11pt" padding-left="3pt" text-align="left">
									<fo:inline font-size="11pt" font-weight="bold">
										Compañía Aseguradora: 
									</fo:inline>
									<fo:inline font-size="11pt" >
										BCI Seguros Vida S.A.
									</fo:inline>
								</fo:block>
					   		</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="11pt"  padding-top="11pt" padding-left="1pt" text-align="left">
									<fo:inline font-size="11pt" font-weight="bold">
										Clasificación de riesgo: AA- 
									</fo:inline>
									<fo:inline font-size="11pt" >
										 según Feller and Rate y 
									</fo:inline>
									<fo:inline font-size="11pt" font-weight="bold">
										AA- 
									</fo:inline>
									<fo:inline font-size="11pt" >
										Según Fitch Ratings
									</fo:inline>
								</fo:block>
					   		</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="11pt"  padding-top="11pt" padding-left="1pt" text-align="left">
									<fo:inline font-size="11pt" font-weight="bold">
										Intermediario:  
									</fo:inline>
									<fo:inline font-size="11pt" >
										BCI Corredores de Seguros S.A.
									</fo:inline>
								</fo:block>
					   		</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="11pt"  padding-top="11pt" padding-left="1pt" text-align="left">
									<fo:inline font-size="11pt" font-weight="bold">
										Coberturas:  
									</fo:inline>
								</fo:block>
					   		</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="11pt"  padding-top="11pt" padding-left="1pt" text-align="left">
									<fo:inline font-size="15pt" font-weight="bold">
										.   
									</fo:inline>
									<fo:inline font-size="11pt" >
										Muerte: Desgravamen (POL 2 05 040 )
									</fo:inline>
								</fo:block>
					   		</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="11pt"  padding-top="11pt" padding-left="1pt" text-align="left">
									<fo:inline font-size="15pt" font-weight="bold">
									.
									</fo:inline>
									<fo:inline font-size="11pt" font-weight="bold">
									Requisitos de Asegurabilidad
									</fo:inline>
								</fo:block>
					   		</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
					<fo:table  table-layout="fixed" text-align="justify" >
					<fo:table-column column-width="4cm"/>
					<fo:table-column column-width="3cm"/>
					<fo:table-column column-width="2cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell  > 
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" font-weight="bold">
											 &#0160;
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell number-columns-spanned="2" border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" font-weight="bold">
											Edad
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  border-color="black" border-style="solid" > 
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" font-weight="bold">
											 Monto Asegurado
											 vigente en la Cía.
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" font-weight="bold">
											Hasta 54 años
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" font-weight="bold">
											55 a 75 años
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  border-color="black" border-style="solid" > 
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="left">
										<fo:inline font-size="11pt" >
											UF0,1 a UF2.000 
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  number-columns-spanned="2"  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" >
											Solicitud de Incorporación
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  border-color="black" border-style="solid" > 
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="left">
										<fo:inline font-size="11pt" >
											 UF2.001 a UF5.000
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" >
											A
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" >
											B
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  border-color="black" border-style="solid" > 
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="left">
										<fo:inline font-size="11pt" >
											 UF5.001 a UF6.000
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" >
											A
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" >
											B
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  border-color="black" border-style="solid" > 
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="left">
										<fo:inline font-size="11pt" >
											 UF6.001 a UF9.000
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" >
											C
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" >
											C
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
							</fo:table-row>

							<fo:table-row>
								<fo:table-cell  border-color="black" border-style="solid" > 
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="left">
										<fo:inline font-size="11pt" >
											 UF9.001 a UF15.000
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" >
											D
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" >
											D
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  border-color="black" border-style="solid" > 
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="left">
										<fo:inline font-size="11pt" >
											 Mayor a UF 15.000
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  number-columns-spanned="2" order-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" >
											Siempre sujeto a evaluación a compañía
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:block space-after="0.5cm"></fo:block>

					<fo:table  table-layout="fixed" text-align="justify" >
					<fo:table-column column-width="0.5cm"/>
					<fo:table-column column-width="16.5cm"/>
					
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell  number-columns-spanned="2" >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Donde:
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											A:
										</fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Solicitud de Incorporación+Declaración Personal de Salud
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											B:
										</fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Solicitud de Incorporación+Declaración Personal de Salud + Exámen Médico + Electrocardiograma
											de reposo + Orina completa.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											C:
										</fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Solicitud de Incorporación+Declaración Personal de Salud + Exámen Médico + Electrocardiograma
											de reposo + Orina completa + HIV + Radiografía de Tórax.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											D:
										</fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Solicitud de Incorporación+Declaración Personal de Salud + Exámen Médico + Electrocardiograma
											de reposo + Orina completa + HIV + Radiografía de Tórax + Hemograma + Glicemia + Pérfil Lipídico.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:block space-after="0.5cm"></fo:block>
					<fo:table  table-layout="fixed" text-align="justify" >
					<fo:table-column column-width="17cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											La Compañía de Seguros se reserva el derecho de solicitar mayores antecedentes En aquellos casos
											que lo estime necesario y/o conveniente para la aceptación del asegurable.
										</fo:inline>
									</fo:block>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Este seguro no cubre preexistencias, salvo que el cliente tenga conocimiento y/o diagnóstico y/o
											sintomatología de alguna enfermedad que él requiera expresamente que sea evaluada por la compañía.
											Para ello, deberá completar una declaración personal de salud, la que será evaluada por la compañía e
											informará las condiciones de asegurabilidad del cliente a la entidad contratante.											
										</fo:inline>
									</fo:block>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											La muerte que sobrevenga durante actividades y/o deportes riesgosos no tendrá cobertura
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block space-after="0.4cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											La edad del asegurado al momento de su ingreso, sumado al plazo de la deuda, no deben exceder los
											75 años.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block space-after="0.4cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Para las personas cuyo monto total del cupo autorizado en la línea de crédito o línea de emergencia sea
											inferior o igual a UF 2.000, este seguro no cubre preexistencias, salvo que el cliente tenga conocimiento
											y/o diagnóstico y/o sintomatología de alguna enfermedad que él requiera expresamente que sea
											evaluada por la compañía. Para ello, deberá completar una declaración personal de salud, la que será
											evaluada por la compañía y se informará el resultado a la entidad contratante.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block space-after="0.4cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row>
										<fo:table-cell >
											<fo:block space-after="4cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block line-height="7pt" text-align="right" keep-together="always">
										<fo:inline font-size="7pt" >                
											Pag. 1 / 2
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

						</fo:table-body>
					</fo:table>
				<!-- Fin 1º Informativo Contrato-->

				<!-- Pagina de Informativo de seguro-->
				<fo:block text-align="left" break-after="page"></fo:block>
				<fo:table  table-layout="fixed" text-align="justify" >
					<fo:table-column column-width="17cm"/>
						<fo:table-body>
						<fo:table-row>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt" font-weight="bold">                
											La práctica de actividades y/o deportes riesgosos no tendrán cobertura.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											El Asegurador se reserva el derecho de solicitar mayores antecedentes en aquellos casos que estime
											necesario y conveniente para la aceptación del asegurable.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.4cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt" font-weight="bold">                
											Asegurados
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Deudores del Banco Bci Línea de sobregiro y Línea de Emergencia que sean personas naturales
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.4cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt" font-weight="bold">                
											Monto Asegurado y Condiciones de Liquidación
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Cupo utilizado de la línea de crédito de sobregiro o la línea de emergencia o ambas con un tope
											máximo, correspondiente al cupo autorizado por la entidad contratante; al día inmediatamente anterior a
											la fecha de fallecimiento del deudor, más los intereses devengados al cierre del mes anterior a la fecha
											de fallecimiento, sobre la base de un servicio regular de la deuda, con un tope máximo, correspondiente
											al cupo autorizado por la entidad contratante.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.4cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt" font-weight="bold">                
											Plazo de Vigencia: 
										</fo:inline>	
										<fo:inline font-size="11pt"> 
											La cobertura regirá desde la fecha en que el banco otorga efectivamente la línea de
											crédito de sobregiro o la línea de emergencia y la Compañía Aseguradora acepta asumir el riesgo, hasta
											el día en que se produzca una cualquiera de las dos circunstancias siguientes:1) que se cumpla la edad
											tope de cada cobertura, 2) que se extinga el crédito que dio origen al seguro.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.4cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt" font-weight="bold">                
											Prima: 
										</fo:inline>	
										<fo:inline font-size="11pt"> 
											La prima total corresponde a la tasa indicada a continuación, dependiendo de la vigencia del
										    crédito, aplicada sobre el monto asegurado inicial.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.4cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt" font-weight="bold">                
											Para la línea de crédito de sobregiro,
										</fo:inline>	
										<fo:inline font-size="11pt"> 
											la tasa es de 4.0 %o (por mil) anual sobre el saldo inicial con
											un mínimo de UF 0.3 y un máximo de UF 6.0.
										</fo:inline>
									</fo:block>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt"> 
											La tasa se aplica sobre el cupo total otorgado a la línea de crédito.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.4cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt" font-weight="bold">                
											Para la línea de emergencia,
										</fo:inline>	
										<fo:inline font-size="11pt"> 
											la tasa es de 2.33 %o (por mil) por semestre con una prima mínima de
											UF 0.17 y prima máxima de UF 3 (primas brutas).
										</fo:inline>
									</fo:block>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt"> 
											La tasa se aplica sobre el cupo total otorgado a la línea de emergencia.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.4cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt"> 
											Las primas indicadas son referenciales. En caso que la aseguradora decida evaluar el riesgo específico,
											ello podría generar un cambio de las condiciones de aseguramiento y el aumento de la prima, sin
											perjuicio de su derecho a no otorgar en definitiva la cobertura solicitada.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.4cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt" font-weight="bold">                
											Exclusiones generales
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Las exclusiones se encuentran contenidas en la póliza depositada en el registro de la S.V.S. bajo el
											código POL 2 05 040
										</fo:inline>
									</fo:block>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Entre las principales se excluyen las preexistencias de las patologías cubiertas, las enfermedades
											cubiertas o intervenciones que resulten o sean consecuencia de adicciòn a las drogas o al alcohol,
											enfermedades en conexión con infección por HIV, suicido frustrado, su tentativa y cualquier autolesión
											intencionada.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.4cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt" font-weight="bold">                
											Consultas, Reclamos y Siniestros:
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											En caso de consultas, reclamos y denuncias de siniestro, el asegurado se deberá comunicar con BCI Corredores de
											Seguros al teléfono (02) 5404953 o al e-mail: siniestrosbci@bci.cl., al teléfono del CRI de la Compañía de Seguros
											6006000292 &#x2013; desde celular 02 &#x2013; 6799700 o en cualquiera de las oficinas de BCI Seguros Vida S.A.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<!-- Firmas de cliente-->
					<fo:block space-after="4cm"></fo:block>
					<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="12cm"/>
							<fo:table-column column-width="5cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block font-size="12pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline  font-size="11pt" font-weight="bold">
													&#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/>
													&#0160; &#0160; &#0160; &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													______________________
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="2" >
											<fo:block space-after="0.3cm"></fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline  font-size="11pt" font-weight="bold">
													Nombre completo y Nro de Cédula de Identidad del Cliente
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="8pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline font-weight="bold">
													Firma
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="2">
											<fo:block space-after="3cm"></fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="2" >
											<fo:block font-size="7pt"  text-align="right"  padding-top="2pt" padding-left="1pt">
												<fo:inline  font-size="7pt" font-weight="bold">
													Pag. 2 / 2
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table>
					

				<!-- FIN TODO-->
			</fo:block>
	    </fo:flow>
    </fo:page-sequence>

	</fo:root>
 </xsl:template>
</xsl:stylesheet>