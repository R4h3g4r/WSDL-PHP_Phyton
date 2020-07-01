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
																	          En ________________________, a _____ de ___________________ de ________  , entre el Banco de Cr�dito e Inversiones, RUT. N� 97.006.000-6, 
																	     domiciliado en Santiago, Avenida El Golf N� 125, Comuna de Las Condes, en adelante "el Banco" por una parte; y &#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/>, 
																	     R.U.T. N� &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>, representada por don(�a)____________________________, C�dula de Identidad 
																	     N� ___________________, y por don(�a) ____________________________ C�dula de Identidad N� ___________________, todos domiciliados en 
																	     _____________________________, Comuna de ________________ en adelante "el Cliente" se ha acordado celebrar el presente Contrato de apertura 
																	     de L�nea de Cr�dito de Emergencia, tambi�n llamada a efectos de este contrato como "LCE".
											         </fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  1. La L�nea de Cr�dito de Emergencia o LCE, tiene  por objeto incrementar la capacidad de pago del Cliente ante eventos que superen su saldo 
																	  disponible en Cuenta Corriente o la disponibilidad de cr�dito en otras l�neas de financiamiento, entre �stas, la L�nea de Sobregiro que el Cliente 
																	  hubiere contratado. Para estos efectos, el Banco abre a petici�n del Cliente una LCE por un monto m�ximo de &#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/> pesos. La Cuenta 
																	   Corriente que el Cliente define para operar la LCE corresponde a la N� &#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/>.  
													 </fo:inline>
                                       </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  2. La LCE operar� de manera autom�tica, mediante cargos a la misma y hasta su importe total, a beneficio de la Cuenta Corriente, de manera 
																	  que cada vez que el Cliente disponga un pago, ya sea a trav�s del giro de un cheque,  o  se verifique un cargo de cualquier naturaleza y no 
																	  hubiere fondos disponibles suficientes en la Cuenta Corriente ni disponibilidad en la L�nea de Sobregiro, en su caso, con cargo a la LCE  se 
																	  cubrir�n tales eventos.
													 </fo:inline>
										</fo:block>			 
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            		<fo:inline font-size="11pt">
																	  3. Con cargo a la LCE, y no habiendo saldos disponibles en la Cuenta Corriente u otras L�neas, se cubrir�n (i) los cargos que disponga el 
																	  Cliente, ya sea a trav�s  del giro de un cheque,  de un Pago Autom�tico de Cuentas -PAC- o  mediante cualquier otro medio, y (ii)  los cargos 
																	  que efect�e el Banco. Cada vez que existan fondos o cupo disponibles en la Cuenta Corriente  o en la L�nea de Sobregiro, si la hubiere, y la 
																	  LCE registrare saldos deudores, el Banco abonar� total o parcialmente y de manera autom�tica la citada LCE, con cargo a las se�aladas disponibilidades.
													 </fo:inline>
                                       </fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   4. Produci�ndose una situaci�n de sobregiro por cualesquiera de las causas singularizadas en el numeral 3 precedente, el Banco 
																	   proceder� a cargar la LCE en el orden en que se produzcan y registren tales eventos. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	     5. Sin perjuicio del abono autom�tico que se contempla en el numeral 3 precedente, para el evento de que no haya saldos a dicho prop�sito 
																	     en la cuenta corriente ni en la L�nea de Sobregiro, el Cliente se obliga a efectuar abonos a la LCE, con la frecuencia y por los importes que el 
																	     Banco le informe en la respectiva cartola. Con todo, la LCE ha de hallarse �ntegramente pagada, tanto en capital,  cuanto en intereses y 
																	     comisi�n, a m�s tardar al cumplirse un semestre contado desde  la fecha de su contrataci�n o renovaci�n, seg�n corresponda.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    6. La LCE se pacta por un per�odo de 6 meses, a contar de la fecha de su contrataci�n. Al t�rmino del mismo, se entender� renovada 
																	    autom�ticamente, salvo que el Banco, despu�s de efectuada la correspondiente evaluaci�n, decida no hacerlo, caso en el cual no necesitar� 
																	    expresar causa. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    7. El Banco en cualquier momento podr� evaluar, de acuerdo a sus pol�ticas especialmente implementadas para este producto, el incremento o 
																	    la disminuci�n del monto de la LCE, lo que le ser� informado al Cliente con arreglo al procedimiento que se contempla al final del presente 
																	    contrato. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    8. En los casos en que el Cliente durante la vigencia de la LCE incurriere en cualquier incumplimiento para con el Banco, originado en esta 
																	    L�nea o en otro cr�dito, sea de la naturaleza que fuere, u observare protestos de cheques, letras de cambio, o pagar�s, el Banco podr� sin 
																	    m�s tr�mite poner t�rmino o bloquear la presente L�nea y hacer exigible el pago en forma inmediata del saldo total adeudado a la fecha de 
																	    t�rmino, pudiendo al efecto cargar la cuenta corriente, si tuviere fondos disponibles. Asimismo, el Banco podr� bloquear o suspender 
																	    temporalmente la vigencia de la LCE y exigir el pago inmediato y anticipado de todos los saldos adeudados de la misma, si el cliente presenta, a 
																	    juicio del Banco, evidentes deterioros en su situaci�n comercial, tales como, pero no limitados a, protestos y simples moras en otros bancos 
																	    y/o casas comerciales. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    9. La LCE devenga intereses a la tasa m�xima convencional vigente para operaciones no reajustables a m�s de 90 d�as, intereses que se 
																	    pagar�n de la manera y en la oportunidad que se prev� en el numeral 5 de este Contrato. 
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
																	    10. El Cliente otorga mandato al Banco, para que �ste, actuando en su nombre y representaci�n, 
																	    autocontratando, suscriba y complete uno o m�s pagar�s, a fin de documentar eficazmente los cr�ditos que se cursen con cargo a la LCE. 
																	    En el ejercicio de este mandato, el Banco podr� renunciar a la obligaci�n de protesto, facultar para hacer autorizar la firma de sus 
																	    apoderados que suscriban el pagar�, ante Notario y para fijar en el pagar�, el domicilio que a su juicio m�s convenga a la ejecuci�n, pudiendo
																	     prorrogar competencia para ante sus Tribunales Ordinarios de Justicia de manera que el pagar� tenga m�rito ejecutivo para su respectiva 
																	     cobranza judicial. 
											 </fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 	
																	     El cliente reconoce que el presente mandato se otorga en inter�s del Banco y subsistir� a�n despu�s del 
																	     t�rmino de la presente L�nea. El Cliente faculta al Banco para delegar el presente mandato en los mismos 
																	     t�rminos, en la sociedad Servicios de Normalizaci�n y Cobranza - Normaliza S.A., filial del Banco, o en aquella  otra persona natural 
																	     o jur�dica que el Banco determine.
																	    
																	    Con todo, en el caso que el Cliente hubiere contratado la L�nea de Sobregiro, complementaria a la Cuenta Corriente de que sea titular, el 
																	    mandato e instrucciones para completar el pagar� que con motivo de la contrataci�n de dicha L�nea hubiere otorgado e impartido al Banco, se 
																	    entienden complementadas por este acto, en el sentido de considerar para los efectos del llenado del citado pagar�, las obligaciones 
																	    derivadas de la utilizaci�n de la LCE objeto de este contrato. 

											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    11. Todos los gastos, derechos e impuestos que se generen o a los que pudiera estar afecto este contrato o su ejecuci�n y operaci�n 
																	    ser�n de cargo  exclusivo del Cliente, facult�ndose al Banco para cargarlos en la respectiva cuenta corriente o tarjeta de cr�dito de que sea 
																	    titular en el Banco.
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    12. El Cliente declara conocer que la LCE est� afecta a comisiones, las que el Banco podr� calcular y determinar
																		sobre la base de par�metros objetivos de segmentaci�n y de acuerdo a su pol�tica de cr�ditos, tarifas que se
																		contienen en el documento que en este mismo acto se le proporciona, declarando recibirlo a su entera
																		satisfacci�n. Las modificaciones que el Banco decida implantar al r�gimen de comisiones, ci��ndose al
																		procedimiento anteriormente citado, y que impliquen aumento de costos, ser�n comunicadas anticipadamente al
																		Cliente dentro del plazo que al efecto indiquen las normas de la Superintendencia de Bancos e Instituciones
																		Financieras. Aquellas modificaciones que impliquen disminuci�n o eliminaci�n de comisiones vigentes se
																		aplicar�n sin comunicaci�n previa. Con todo, cualquiera sea la modalidad o periodicidad de pago de las referidas
																		comisiones, en caso de cierre o t�rmino de uno o m�s de los productos contratados, el Banco siempre tendr� el
																		derecho de cobrar el total de las comisiones devengadas del respectivo per�odo, independientemente del plazo
																		estipulado para hacerlo, encontr�ndose facultado el Banco para cargar tales comisiones
																		en la respectiva cuenta corriente, cuenta vista, l�nea de cr�dito o en cualquier tarjeta de cr�dito de que el Cliente
																		sea titular y mantenga vigente en el Banco.
																	     
																	     
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    13. Todos los avisos y comunicaciones que, conforme a este instrumento, el Banco deba enviar al Cliente se
																		efectuar�n a la direcci�n de correo electr�nico que el cliente indica al final de este contrato. En su defecto, se
																		remitir�n por escrito al �ltimo domicilio que tenga registrado en el Banco, ya sea por carta o en los estados de
																		cuenta o cartolas o por Internet. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    14. El Cliente declara haber recibido el volante que contiene la informaci�n atingente a las empresas que prestan
																		los servicios de cobranza externa y a los honorarios correspondientes, en el evento de incurrir en mora en el
																		pago de estas obligaciones. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    Declaraci�n del cliente: Es voluntad del Cliente que toda comunicaci�n o aviso a que el Banco se encuentre obligado con
																	    motivo de lo establecido en este contrato, le sea remitido a la direcci�n de correo electr�nico registrada en el Banco.
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
									    					<fo:block text-align="center" >Firma Cliente o Representante</fo:block>
									    				</fo:table-cell>
									    				<fo:table-cell>
									    					<fo:block text-align="center">Firma Cliente o Representante</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center">Rut: __________________</fo:block>
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
									    					<fo:block text-align="center">Banco Cr�dito Inversiones</fo:block>
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
													Copia Banco   <xsl:value-of select="lineaEmergencia/horaActual"/>
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
																	          En ________________________, a _____ de ___________________ de ________  , entre el Banco de Cr�dito e Inversiones, RUT. N� 97.006.000-6, 
																	     domiciliado en Santiago, Avenida El Golf N� 125, Comuna de Las Condes, en adelante "el Banco" por una parte; y &#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/>, 
																	     R.U.T. N� &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>, representada por don(�a)____________________________, C�dula de Identidad 
																	     N� ___________________, y por don(�a) ____________________________ C�dula de Identidad N� ___________________, todos domiciliados en 
																	     _____________________________, Comuna de ________________ en adelante "el Cliente" se ha acordado celebrar el presente Contrato de apertura 
																	     de L�nea de Cr�dito de Emergencia, tambi�n llamada a efectos de este contrato como "LCE".
											         </fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  1. La L�nea de Cr�dito de Emergencia o LCE, tiene  por objeto incrementar la capacidad de pago del Cliente ante eventos que superen su saldo 
																	  disponible en Cuenta Corriente o la disponibilidad de cr�dito en otras l�neas de financiamiento, entre �stas, la L�nea de Sobregiro que el Cliente 
																	  hubiere contratado. Para estos efectos, el Banco abre a petici�n del Cliente una LCE por un monto m�ximo de &#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/> pesos. La Cuenta 
																	   Corriente que el Cliente define para operar la LCE corresponde a la N� &#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/>.  
													 </fo:inline>
                                       </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  2. La LCE operar� de manera autom�tica, mediante cargos a la misma y hasta su importe total, a beneficio de la Cuenta Corriente, de manera 
																	  que cada vez que el Cliente disponga un pago, ya sea a trav�s del giro de un cheque,  o  se verifique un cargo de cualquier naturaleza y no 
																	  hubiere fondos disponibles suficientes en la Cuenta Corriente ni disponibilidad en la L�nea de Sobregiro, en su caso, con cargo a la LCE  se 
																	  cubrir�n tales eventos.
													 </fo:inline>
										</fo:block>			 
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            		<fo:inline font-size="11pt">
																	  3. Con cargo a la LCE, y no habiendo saldos disponibles en la Cuenta Corriente u otras L�neas, se cubrir�n (i) los cargos que disponga el 
																	  Cliente, ya sea a trav�s  del giro de un cheque,  de un Pago Autom�tico de Cuentas -PAC- o  mediante cualquier otro medio, y (ii)  los cargos 
																	  que efect�e el Banco. Cada vez que existan fondos o cupo disponibles en la Cuenta Corriente  o en la L�nea de Sobregiro, si la hubiere, y la 
																	  LCE registrare saldos deudores, el Banco abonar� total o parcialmente y de manera autom�tica la citada LCE, con cargo a las se�aladas disponibilidades.
													 </fo:inline>
                                       </fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   4. Produci�ndose una situaci�n de sobregiro por cualesquiera de las causas singularizadas en el numeral 3 precedente, el Banco 
																	   proceder� a cargar la LCE en el orden en que se produzcan y registren tales eventos. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	     5. Sin perjuicio del abono autom�tico que se contempla en el numeral 3 precedente, para el evento de que no haya saldos a dicho prop�sito 
																	     en la cuenta corriente ni en la L�nea de Sobregiro, el Cliente se obliga a efectuar abonos a la LCE, con la frecuencia y por los importes que el 
																	     Banco le informe en la respectiva cartola. Con todo, la LCE ha de hallarse �ntegramente pagada, tanto en capital,  cuanto en intereses y 
																	     comisi�n, a m�s tardar al cumplirse un semestre contado desde  la fecha de su contrataci�n o renovaci�n, seg�n corresponda.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    6. La LCE se pacta por un per�odo de 6 meses, a contar de la fecha de su contrataci�n. Al t�rmino del mismo, se entender� renovada 
																	    autom�ticamente, salvo que el Banco, despu�s de efectuada la correspondiente evaluaci�n, decida no hacerlo, caso en el cual no necesitar� 
																	    expresar causa. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    7. El Banco en cualquier momento podr� evaluar, de acuerdo a sus pol�ticas especialmente implementadas para este producto, el incremento o 
																	    la disminuci�n del monto de la LCE, lo que le ser� informado al Cliente con arreglo al procedimiento que se contempla al final del presente 
																	    contrato. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    8. En los casos en que el Cliente durante la vigencia de la LCE incurriere en cualquier incumplimiento para con el Banco, originado en esta 
																	    L�nea o en otro cr�dito, sea de la naturaleza que fuere, u observare protestos de cheques, letras de cambio, o pagar�s, el Banco podr� sin 
																	    m�s tr�mite poner t�rmino o bloquear la presente L�nea y hacer exigible el pago en forma inmediata del saldo total adeudado a la fecha de 
																	    t�rmino, pudiendo al efecto cargar la cuenta corriente, si tuviere fondos disponibles. Asimismo, el Banco podr� bloquear o suspender 
																	    temporalmente la vigencia de la LCE y exigir el pago inmediato y anticipado de todos los saldos adeudados de la misma, si el cliente presenta, a 
																	    juicio del Banco, evidentes deterioros en su situaci�n comercial, tales como, pero no limitados a, protestos y simples moras en otros bancos 
																	    y/o casas comerciales. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    9. La LCE devenga intereses a la tasa m�xima convencional vigente para operaciones no reajustables a m�s de 90 d�as, intereses que se 
																	    pagar�n de la manera y en la oportunidad que se prev� en el numeral 5 de este Contrato. 
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
																	    10. El Cliente otorga mandato al Banco, para que �ste, actuando en su nombre y representaci�n, 
																	    autocontratando, suscriba y complete uno o m�s pagar�s, a fin de documentar eficazmente los cr�ditos que se cursen con cargo a la LCE. 
																	    En el ejercicio de este mandato, el Banco podr� renunciar a la obligaci�n de protesto, facultar para hacer autorizar la firma de sus 
																	    apoderados que suscriban el pagar�, ante Notario y para fijar en el pagar�, el domicilio que a su juicio m�s convenga a la ejecuci�n, pudiendo
																	     prorrogar competencia para ante sus Tribunales Ordinarios de Justicia de manera que el pagar� tenga m�rito ejecutivo para su respectiva 
																	     cobranza judicial.  
											 </fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
																	     El cliente reconoce que el presente mandato se otorga en inter�s del Banco y subsistir� a�n despu�s del 
																	     t�rmino de la presente L�nea. El Cliente faculta al Banco para delegar el presente mandato en los mismos 
																	     t�rminos, en la sociedad Servicios de Normalizaci�n y Cobranza - Normaliza S.A., filial del Banco, o en aquella  otra persona natural 
																	     o jur�dica que el Banco determine.
																	    
																	    Con todo, en el caso que el Cliente hubiere contratado la L�nea de Sobregiro, complementaria a la Cuenta Corriente de que sea titular, el 
																	    mandato e instrucciones para completar el pagar� que con motivo de la contrataci�n de dicha L�nea hubiere otorgado e impartido al Banco, se 
																	    entienden complementadas por este acto, en el sentido de considerar para los efectos del llenado del citado pagar�, las obligaciones 
																	    derivadas de la utilizaci�n de la LCE objeto de este contrato.  

											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    11. Todos los gastos, derechos e impuestos que se generen o a los que pudiera estar afecto este contrato o su ejecuci�n y operaci�n 
																	    ser�n de cargo  exclusivo del Cliente, facult�ndose al Banco para cargarlos en la respectiva cuenta corriente o tarjeta de cr�dito de que sea 
																	    titular en el Banco.
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    12. El Cliente declara conocer que la LCE est� afecta a comisiones, las que el Banco podr� calcular y determinar
																		sobre la base de par�metros objetivos de segmentaci�n y de acuerdo a su pol�tica de cr�ditos, tarifas que se
																		contienen en el documento que en este mismo acto se le proporciona, declarando recibirlo a su entera
																		satisfacci�n. Las modificaciones que el Banco decida implantar al r�gimen de comisiones, ci��ndose al
																		procedimiento anteriormente citado, y que impliquen aumento de costos, ser�n comunicadas anticipadamente al
																		Cliente dentro del plazo que al efecto indiquen las normas de la Superintendencia de Bancos e Instituciones
																		Financieras. Aquellas modificaciones que impliquen disminuci�n o eliminaci�n de comisiones vigentes se
																		aplicar�n sin comunicaci�n previa. Con todo, cualquiera sea la modalidad o periodicidad de pago de las referidas
																		comisiones, en caso de cierre o t�rmino de uno o m�s de los productos contratados, el Banco siempre tendr� el
																		derecho de cobrar el total de las comisiones devengadas del respectivo per�odo, independientemente del plazo
																		estipulado para hacerlo, encontr�ndose facultado el Banco para cargar tales comisiones
																		en la respectiva cuenta corriente, cuenta vista, l�nea de cr�dito o en cualquier tarjeta de cr�dito de que el Cliente
																		sea titular y mantenga vigente en el Banco. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    13. Todos los avisos y comunicaciones que, conforme a este instrumento, el Banco deba enviar al Cliente se
																		efectuar�n a la direcci�n de correo electr�nico que el cliente indica al final de este contrato. En su defecto, se
																		remitir�n por escrito al �ltimo domicilio que tenga registrado en el Banco, ya sea por carta o en los estados de
																		cuenta o cartolas o por Internet. 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    14. El Cliente declara haber recibido el volante que contiene la informaci�n atingente a las empresas que prestan
																		los servicios de cobranza externa y a los honorarios correspondientes, en el evento de incurrir en mora en el
																		pago de estas obligaciones.
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    Declaraci�n del cliente: Es voluntad del Cliente que toda comunicaci�n o aviso a que el Banco se encuentre obligado con
																	    motivo de lo establecido en este contrato, le sea remitido a la direcci�n de correo electr�nico registrada en el Banco.
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
									    					<fo:block text-align="center" >Firma Cliente o Representante</fo:block>
									    				</fo:table-cell>
									    				<fo:table-cell>
									    					<fo:block text-align="center">Firma Cliente o Representante</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center">Rut: __________________</fo:block>
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
									    					<fo:block text-align="center">Banco Cr�dito Inversiones</fo:block>
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
									N� OPERACI�N: ___________________
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
										C�dula Nacional de Identidad
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
										Cta. Cte. N�
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
										L�nea de Emergencia
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
										Tipo Cr�dito
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
										Garant�a Ofrecida
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
										Objetivo del Cr�dito
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
										D�a de Pago (Cr�d. Cuotas)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										N�mero Cuotas
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
										C�dula Nacional de Identidad
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
										Cta. Cte. N�
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
										Declaro bajo juramento que mientras mantenga deudas pendientes a favor del Banco de Cr�dito e Inversiones,
										me comprometo a conservar inc�lume el patrimonio declarado en el o los estados de situaci�n y me obligo a
										comunicarles por escrito y con la debida anticipaci�n, todo hecho, acto o contrato que pueda disminuir o
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
										corriente(s) las sumas adeudadas provenientes del pr�stamo solicitado incluyendo capital, intereses y gastos,
										como as� tambi�n, en el caso de no ser cancelado oportunamente o no existir fondos disponibles en la(s)
										cuenta(s) corriente(s), aplicar a su pago cualquier otro cr�dito a mi favor que exista en el BANCO, ya sean
										saldos en cuenta vista, dep�sitos a la vista, dep�sitos a plazo, valores en custodia, fondos mutuos en BCI
										Administradora de Fondos Mutuos S.A. etc.. Asimismo declaro bajo juramento que todos los antecedentes
										presentados son fidedignos y que conozco el texto del art�culo 160 de la Ley General de Bancos.
										Autorizo al Banco de Cr�dito e Inversiones para pedir para su uso exclusivo, en los t�rminos del art�culo 4� de la
										ley 19.628, a la Administradora de Fondos de Pensiones donde efect�o mis cotizaciones previsionales, y autorizo
										asimismo a �sta, para entregar directamente al Banco o a trav�s de Previred S.A., informaci�n sobre las aludidas
										cotizaciones de los �ltimos 12 meses precedentes a cualquiera solicitud de cualquier tipo de cr�dito o de otro
										servicio bancario para los que tal informaci�n y la que derive de aquella, pueda ser de utilidad para evaluar el
										otorgamiento del pr�stamo o servicio, sea de la naturaleza que fuere.
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
			<!-- Fin 1� Pagina de Contrato-->
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
											En este acto otorgamos mandato al Banco de Cr�dito e Inversiones para
											que en su nombre y representaci�n, incluso con facultades expresas para autocontratar y obrando a trav�s de
											cualquiera de sus apoderados o en quien el Banco delegue, suscriba y/o complete uno o m�s pagar�s, y
											reconozca deudas en beneficio y a la orden del Banco de Cr�dito e Inversiones, todo ello con el prop�sito de
											documentar en esta forma el o los saldos deudores, por los montos de capital, intereses, costas y comisiones,
											que se originen con motivo del cobro de boletas de garant�a tomadas por el suscrito y emitidas por el Banco, al
											amparo de la L�nea de Cr�dito vigente. El o los pagar�s que se suscriban en virtud de este mandato podr�n
											extenderse a la vista o a plazo y en caso de no pago devengar�n la tasa de inter�s m�xima convencional para
											operaciones de cr�dito de dinero en moneda nacional. Asimismo, por el presente instrumento facultamos al
											Banco de Cr�dito e Inversiones para que, en conformidad a lo previsto en el Art�culo 11 y
											107 de la Ley 18092 del a�o 1982 sobre Letra de Cambio y Pagar�, incorpore en el o los instrumentos mercantiles
											que documenten los cr�ditos otorgados en virtud de esta solicitud de cr�dito o el Contrato de Apertura de L�nea
											de Cr�dito destinada a cubrir eventuales pagos de boletas de garant�a, la totalidad de las menciones exigidas por
											la Ley, como por ejemplo, su fecha de emisi�n, de vencimiento, la cantidad adeudada, la tasa de inter�s u otras,
											determinando en �l nuestra obligaci�n de pagar la cantidad de dinero solicitada en este acto o aquella que en
											definitiva apruebe el Banco al dorso de esta solicitud, si dicha cantidad fuere diferente. Liberamos al Banco de
											Cr�dito e Inversiones de la obligaci�n de rendir cuenta de su gesti�n.
											
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Faculto (facultamos) al Banco para aceptar instrucciones o solicitudes que yo imparta a trav�s
											medios remotos, especialmente v�a red internet u otros, v�a electr�nica, satelital o telef�nica, que est�n
											disponibles, y reconozco (reconocemos) que tales instrucciones realizadas por dichos medios constituye
											manifestaci�n expresa de mi (nuestra) voluntad, de aceptar las condiciones y modalidades bajo las cuales se
											presta el servicio, como tambi�n de las responsabilidades que asumo (asumimos) al hacer uso de tales canales y
											de la informaci�n contenida en ellos. Asimismo, autorizo (autorizamos) al Banco para que me (nos) provea en
											forma remota, de todos aquellos servicios en que normalmente se requiere mi (nuestra) presencia f�sica,
											asimilando como medio v�lido de autorizaci�n cuando as� lo requiera, a la firma electr�nica, mi clave secreta que
											es confidencial, personal e intransferible.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Reconozco(reconocemos) haber recibido por parte del Banco de Cr�dito e Inversiones informaci�n detallada de
											las comisiones que el Banco cobra por concepto de otorgamiento de cr�dito y procesos asociados a �ste, como
											en el caso de reprogramaci�n, pr�rroga y reestructuraci�n entre otros.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Declaro (Declaramos) haber recibido informaci�n detallada y aceptar que existen recargos en caso de mora o
											simple retardo en el pago de la obligaci�n de cr�dito de dinero de que da cuenta la presente solicitud y adem�s
											por concepto de la cobranza extrajudicial de cr�ditos impagos, incluyendo honorarios, a partir de la fecha que se
											indica m�s adelante, los cuales ser�n cobrados por la empresa &#x201C;Servicios de Normalizaci�n y Cobranza
											-Normaliza S.A.&#x201D; o por aquella que el BANCO designare en su oportunidad la que actuar� en nombre y en
											representaci�n e inter�s del BANCO en las gestiones de cobranza extrajudicial.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											La cobranza extrajudicial se efectuar� en horario de 8:00 a 20:00 horas.
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
											antecedentes tanto respecto de los cr�ditos morosos de sus deudores y otros que no estando en dicha condici�n
											est�n asociados a �stos, como de los antecedentes comerciales de los deudores, tales como, nombres y
											apellidos, c�dula nacional de identidad, rol �nico tributario, domicilios, direcciones y tel�fonos, etc�tera.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Los honorarios y gastos por las gestiones de cobranza ascender�n a los porcentajes que seguidamente se
											indican, aplicados sobre el total de la deuda, o la cuota vencida seg�n el caso, conforme a la siguiente escala
											progresiva: Obligaciones hasta 10 unidades de fomento 9%; por la parte que exceda las 10 unidades de fomento
											y hasta 50 unidades de fomento, 6% y por la parte que exceda las 50 unidades de fomento, 3%. Los porcentajes
											indicados se aplicar�n como sigue: Cr�ditos de Consumo/Tarjetas de Cr�dito &#x2013; Persona Naturales: Despu�s de
											transcurridos 15 d�as corridos de atraso (mora) desde el d�a del vencimiento de la obligaci�n. Cr�ditos
											Comerciales &#x2013; General/Tarjetas De Cr�dito &#x2013; Personas Jur�dicas: Despu�s de transcurridos 5 d�as corridos de
											atraso (mora) desde el d�a del vencimiento de la obligaci�n.
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
											Las tarifas anteriores podr�n ser modificadas anualmente en caso de operaciones de consumo cuyo plazo de
											pago exceda de un a�o, siempre que tales cambios se avisen con una anticipaci�n m�nima de dos per�odos de
											pago. Formalizo (Formalizamos) el presente instrumento considerando que las tarifas indicadas se basan en la
											fiel interpretaci�n de la reglamentaci�n legal vigente y en cumplimiento a lo dispuesto en la Ley 19.659 y
											adem�s normativa aplicable. Tanto los recargos en caso de mora o simple retardo como los gastos por
											concepto de la cobranza extrajudicial de los cr�ditos impagos, incluyendo honorarios y costas podr�n ser
											cobrados con cargo directo en alguna de la (s) cuenta(s) corriente(s) o cuenta(s) vistas(s) vigente(s)
											mantenida(s) por m� (nosotros) en el Banco, en la oportunidad que se cancele o regularice el vencimiento u
											obligaci�n morosa o impaga.
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
																N� OPERACI�N: __________________
															</fo:block>
															<fo:block space-after="0.1cm"></fo:block>
															<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																FECHA: &#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/> 							
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
										Resoluci�n / Recomendaci�n:
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
										V� B� Fecha
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

<!-- Fin 1� Pagina de Contrato-->
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
										TARIFARIO L�NEA DE CREDITO DE EMERGENCIA
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
										Datos B�sicos del Cliente
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
															Direcci�n particular
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
										Resumen L�nea de Cr�dito de Emergencia
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
															N� de Cuenta Corriente Relacionada
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
															Monto asignado de L�nea de Cr�dito de Emergencia
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
															Comisi�n de Administraci�n Semestral Cobrada Mensualmente
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
														<fo:block font-size="11pt" text-align="left" color="{$txt}">&#0160;&#0160;&#0160;Mensual</fo:block>																							
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
															Nota: Esta comisi�n ser� descontada mensualmente si usted no utiliza la l�nea de emergencia.
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
															Tarifa de Renovaci�n Semestral
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
															Observaci�n
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
									Copia: Banco   <xsl:value-of select="lineaEmergencia/horaActual"/>
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
										TARIFARIO L�NEA DE CREDITO DE EMERGENCIA
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
										Datos B�sicos del Cliente
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
															Direcci�n particular
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
										Resumen L�nea de Cr�dito de Emergencia
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
															N� de Cuenta Corriente Relacionada
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
															Monto asignado de L�nea de Cr�dito de Emergencia
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
															Comisi�n de Administraci�n Semestral Cobrada Mensualmente
														</fo:block>
													</fo:table-cell>
													<fo:table-cell >												
													<fo:block font-size="11pt" text-align="left" color="{$txt}">&#0160;&#0160;&#0160;Mensual</fo:block>
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
															Nota: Esta comisi�n ser� descontada mensualmente si usted no utiliza la l�nea de emergencia.
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
															Tarifa de Renovaci�n Semestral
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
															Observaci�n
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
										(BANCA PERSONAS - PERSONAS NATURALES Y JUR�DICAS)
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
													En base a lo establecido en la Ley de Protecci�n de los Derechos de los Consumidores y en la normativa de la
													Comisi�n para el Mercado Financiero, se informa al suscrito que existen recargos por
													concepto de cobranza extrajudicial de cr�ditos o cuotas impagas, incluyendo honorarios a cargo del deudor
													seg�n los plazos y productos que se indican m�s adelante, los cuales ser�n cobrados por la empresa &#x201C;Servicios
													de Normalizaci�n y Cobranzas - Normaliza S.A.&#x201D; en su caso, la que actuar� en nombre y en representaci�n e
													inter�s del Banco de Cr�dito e Inversiones en las gestiones de cobranza extrajudicial.
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
													Dicha cobranza extrajudicial que efectuar� la empresa Servicios de Normalizaci�n y Cobranzas - Normaliza S.A
													ser� realizada conforme a la Ley, en d�as h�biles y en horario de 8:00 a 20:00 horas.

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
													Declaro conocer y desde luego acepto, que seg�n lo establecido en la Ley N� 19.628 sobre Protecci�n de Datos
													de Car�cter Personal, para que la empresa Servicios de Normalizaci�n y Cobranzas - Normaliza S.A pueda
													realizar la cobranza extrajudicial, el Banco de Cr�dito e Inversiones suministrar� a dicha empresa antecedentes,
													tanto respecto de los cr�ditos morosos de sus deudores y otros que no estando en dicha condici�n est�n
													asociados a �stos, como de los antecedentes comerciales de los deudores, tales como nombres y apellidos,
													c�dula nacional de identidad, rol �nico tributario, domicilios, direcciones y tel�fonos, etc.

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
													Declaro haber recibido, en forma previa al otorgamiento del cr�dito, la informaci�n sobre el c�lculo de honorarios
													que generan la cobranza extrajudicial de los cr�ditos impagos, as� como copia fiel de este formulario cuyo original
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
													Las tarifas de honorarios que se expresan a continuaci�n podr�n ser modificadas y en tal caso ser�n informadas
													a los clientes por carta al domicilio registrado en el Banco, contemplando las condiciones previstas en la
													legislaci�n vigente.

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
													Los honorarios por la cobranza extrajudicial para todos los productos ascender�n a los porcentajes aplicados
													sobre el total de la deuda o la cuota vencida, seg�n el caso, conforme a la siguiente escala progresiva:
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
													PLAZOS DE APLICACI�N DE HONORARIOS.-

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
																					CR�DITOS DE CONSUMO / TARJETAS DE CR�DITO - PERSONAS NATURALES.-
																					-Despu�s de transcurridos 15 d�as corridos de atraso (mora) desde el d�a del vencimiento de la obligaci�n.
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
																				CR�DITOS COMERCIALES-GENERAL / TARJETAS DE CREDITO-PERSONAS JURIDICAS
																				-Despu�s de transcurridos 5 d�as corridos de atraso (mora) desde el d�a del vencimiento de la obligaci�n.
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
																				CR�DITOS HIPOTECARIOS - GENERAL.-
																				&#x2212; Despu�s de transcurridos 5 d�as corridos de atraso (mora) desde el d�a del vencimiento del
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
										(BANCA PERSONAS - PERSONAS NATURALES Y JUR�DICAS)
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
													En base a lo establecido en la Ley de Protecci�n de los Derechos de los Consumidores y en la normativa de la
													Comisi�n para el Mercado Financiero, se informa al suscrito que existen recargos por
													concepto de cobranza extrajudicial de cr�ditos o cuotas impagas, incluyendo honorarios a cargo del deudor
													seg�n los plazos y productos que se indican m�s adelante, los cuales ser�n cobrados por la empresa &#x201C;Servicios
													de Normalizaci�n y Cobranzas - Normaliza S.A.&#x201D; en su caso, la que actuar� en nombre y en representaci�n e
													inter�s del Banco de Cr�dito e Inversiones en las gestiones de cobranza extrajudicial.
												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Dicha cobranza extrajudicial que efectuar� la empresa Servicios de Normalizaci�n y Cobranzas - Normaliza S.A
													ser� realizada conforme a la Ley, en d�as h�biles y en horario de 8:00 a 20:00 horas.

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Declaro conocer y desde luego acepto, que seg�n lo establecido en la Ley N� 19.628 sobre Protecci�n de Datos
													de Car�cter Personal, para que la empresa Servicios de Normalizaci�n y Cobranzas - Normaliza S.A pueda
													realizar la cobranza extrajudicial, el Banco de Cr�dito e Inversiones suministrar� a dicha empresa antecedentes,
													tanto respecto de los cr�ditos morosos de sus deudores y otros que no estando en dicha condici�n est�n
													asociados a �stos, como de los antecedentes comerciales de los deudores, tales como nombres y apellidos,
													c�dula nacional de identidad, rol �nico tributario, domicilios, direcciones y tel�fonos, etc.

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Declaro haber recibido, en forma previa al otorgamiento del cr�dito, la informaci�n sobre el c�lculo de honorarios
													que generan la cobranza extrajudicial de los cr�ditos impagos, as� como copia fiel de este formulario cuyo original
													suscribo.

												 </fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row >
										<fo:table-cell > 
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												 <fo:inline font-size="11pt"> 
													Las tarifas de honorarios que se expresan a continuaci�n podr�n ser modificadas y en tal caso ser�n informadas
													a los clientes por carta al domicilio registrado en el Banco, contemplando las condiciones previstas en la
													legislaci�n vigente.

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
													Los honorarios por la cobranza extrajudicial para todos los productos ascender�n a los porcentajes aplicados
													sobre el total de la deuda o la cuota vencida, seg�n el caso, conforme a la siguiente escala progresiva:
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
													PLAZOS DE APLICACI�N DE HONORARIOS.-

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
																					CR�DITOS DE CONSUMO / TARJETAS DE CR�DITO - PERSONAS NATURALES.-
																					-Despu�s de transcurridos 15 d�as corridos de atraso (mora) desde el d�a del vencimiento de la obligaci�n.
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
																				CR�DITOS COMERCIALES-GENERAL / TARJETAS DE CREDITO-PERSONAS JURIDICAS
																				-Despu�s de transcurridos 5 d�as corridos de atraso (mora) desde el d�a del vencimiento de la obligaci�n.
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
																				CR�DITOS HIPOTECARIOS - GENERAL.-
																				&#x2212; Despu�s de transcurridos 5 d�as corridos de atraso (mora) desde el d�a del vencimiento del
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
																Cr�dito/Operaci�n
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
												Copia Banco   <xsl:value-of select="lineaEmergencia/horaActual"/>
											 </fo:inline> 
										</fo:block>
				    				</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>

					<!-- PAGINA de Condiciones CLIENTE-->
					<!-- Tabla de MANDATO-->
			<!--  	<fo:block text-align="left" break-after="page"> </fo:block>
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
													SOLICITUD DE INCORPORACI�N, MANDATO Y DECLARACION
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
													FOLIO N�______________________
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
							Indique con una X el tipo de producto y complete los siguientes datos de la operaci�n que est� cursando:
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
													Tipo de Operaci�n
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Monto Cr�dito
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
													Nro. Operaci�n
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline start-indent="2pt" font-weight="bold">
													Vigencia Inicial Operaci�n
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="11pt"  text-align="center" >
												<fo:inline start-indent="2pt" font-weight="bold">
													Vigencia final Operaci�n
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
																		L�nea de Sobregiro
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
																	L�nea de Emergencia
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
																	Avance Bci Multicr�dito
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
													La prima y/o tasa puede variar en funci�n a la evaluaci�n del riesgo por parte de BCI Seguros Vida S.A.
												</fo:inline>
											</fo:block>
											<fo:block line-height="11pt" >
												<fo:inline font-size="11pt">
													Capital Asegurado: saldo insoluto de la operaci�n crediticia individualizada a la fecha de siniestro.
												</fo:inline>
											</fo:block>
											<fo:block line-height="11pt" >
												<fo:inline font-size="11pt">
													Comisi�n de Intermediaci�n: 25% de la prima neta para L�nea Sobregiro/Avance Bci Multicr�dito y 30% de la prima
													neta para L�nea de Emergencia. Comisi�n de Recaudaci�n (Receptor Banco BCI): UF 0,03 + IVA por recaudaci�n.
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
													&#0160; Tel�fono:
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
													Por el presente instrumento, solicito como deudor la incorporaci�n del asegurable detallado en el punto 3,a la(s)
													p�liza(s) de Desgravamen N�s 
													</fo:inline>
													<fo:inline font-size="11pt" font-weight="bold">
													222925, 222924, 283457, 
													</fo:inline>
													<fo:inline font-size="11pt">
													seg�n producto(s) identificado(s) en punto 1.Con este objeto:
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
													Otorgo mandato irrevocable al Banco de Cr�dito e Inversiones, en adelante &#x201C;el Mandatario&#x201D;, para que contrate y/o
													renueve con BCI Seguros de Vida S.A. , uno o m�s Seguros de Desgravamen para el asegurable, intermediados
													por Bci Corredores de Seguros S.A., en virtud del o de los cuales, al ocurrir el fallecimiento de este �ltimo, queden
													saldadas, hasta el importe de cobertura de dicho(s) seguro(s), las deudas vigentes, contra�das con ocasi�n del(de
													los) Cr�dito(s) individualizados en punto 1, otorgado(s) por el Banco de Cr�dito e Inversiones. Desde ya, acepto
													como deudor directo, todas las condiciones de la contrataci�n del o de los seguro(s), entre �stas, su vigencia, la
													cobertura del o de los mismos y el cargo de la(s) prima(s) y de cualesquiera otros gastos generados con ocasi�n
													del o de los mismos, en cualquiera de mis Cuentas Corrientes, o la rebaja correspondiente del o de los cr�ditos
													que se me concediere(n), de la(s) prima(s), impuestos, comisiones y otros gastos derivados de su contrataci�n y
													renovaci�n en su caso, en las oportunidades y con la frecuencia que corresponde a los respectivos vencimientos.
													Ser� suficiente aviso de tal contrataci�n, si se hiciere, o de su renovaci�n en su caso, y tambi�n suficiente
													rendici�n de cuenta de esta gesti�n, el o los cargo(s) correspondiente(s) en la Cuenta Corriente, L�nea de Cr�dito
													o en cualquiera otros valores que tenga depositados en el Banco. As� tambi�n, acepto las condiciones de
													procedencia o improcedencia del pago del o de los seguros pactados en la Compa��a de Seguros y el monto de
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
													Que esta solicitud de incorporaci�n, no otorga cobertura hasta haber sido aceptada
													por Bci Seguros Vida S.A.; 
												</fo:inline>
												<fo:inline font-size="11pt" font-weight="bold">
													2) 
												</fo:inline>
												<fo:inline font-size="11pt">
													Que la presente Solicitud de Incorporaci�n a estos seguros se hace a petici�n del
													suscrito y en ning�n caso ha sido considerada como condici�n para el otorgamiento del (de los) cr�dito(s)
													ofrecido(s) o solicitado(s). 
												</fo:inline>
												<fo:inline font-size="11pt" font-weight="bold">
													3) 
												</fo:inline>
												<fo:inline font-size="11pt" >
													estar en conocimiento del derecho a decidir sobre la contrataci�n de los seguros y a
													la libre elecci�n del intermediario y compa��a aseguradora. 
												</fo:inline>
												<fo:inline font-size="11pt" font-weight="bold">
													4) 
												</fo:inline>
												<fo:inline font-size="11pt" >
													La(s) cobertura(s) comenzar�(n) a regir �nicamente
													a partir del momento en que este documento sea aceptado por la Compa��a Aseguradora y se inicie la vigencia
													del o de los seguros y hasta el d�a en que se produzca cualquiera de las dos circunstancias siguientes: a) que se
													cumpla la edad tope de cada cobertura, b) que se extinga el o los cr�dito(s) individualizado(s) en el punto 1.
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
													que intervengan, con las que se contrate y/o intermedie el(los) seguro(s) y sus renovaciones, la informaci�n
													pertinente a los montos de los cr�ditos; sus condiciones, estados de servicios de las deudas, montos o saldos
													insolutos adeudados y dem�s que fuere menester para dichas operaciones, seg�n lo solicitaren dichas
													compa��as.
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
													Las coberturas del o de los Seguro(s) de Desgravamen se rigen por la p�liza depositada en el registro de la
													S.V.S. bajo el c�digo POL 2 05 040, y la CAD 2 08 074 y, de acuerdo al (los) producto(s) contratado(s).
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
					</fo:table>  -->
					<!-- PAGINA de Condiciones CLIENTE-->
					<!-- Tabla de Condiciones-->
			<!--	<fo:block text-align="left" break-after="page"> </fo:block>
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
													SOLICITUD DE INCORPORACI�N, MANDATO Y DECLARACION
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
													En caso de extinci�n o disminuci�n de deuda por prepago o renegociaci�n del cr�dito, BCI Seguros solo para Avance
													Multicr�dito devolver� al deudor asegurado la prima que no se hubiere devengado por la extinci�n de los riesgos, si
													ello se hubiera producido dentro de los 45 d�as siguientes al inicio de la cobertura o dentro de un t�rmino
													correspondiente a la d�cima parte del per�odo de cobertura efectiva del seguro, si ello fuera superior (Circular 1762 de
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
													Exclusiones: Las exclusiones del seguro se encuentran contenidas en la p�liza depositada en el registro de la
													S.V.S. bajo el c�digo POL 2 05 040 y la CAD 2 08 074. Entre las principales se cuenta:
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
													Automutilaci�n, o autolesi�n,
												</fo:inline>
												<fo:inline font-size="11pt" font-weight="bold">
													 2) 
												 </fo:inline>
												 <fo:inline font-size="11pt" >
													 Acto delictivo cometido, en calidad de autor o c�mplice, por quien pudiere verse
													 beneficiado por el pago de la cantidad asegurada 
												 </fo:inline>
												 <fo:inline font-size="11pt" font-weight="bold">
													 3) 
												 </fo:inline>
												 <fo:inline font-size="11pt" >
													 Realizaci�n o participaci�n en una actividad o deporte riesgoso,
													 consider�ndose como tales aquellos que objetivamente constituyan una flagrante agravaci�n del riesgo y/o se
													 requiera de medidas de protecci�n y/o seguridad para realizarlos. A v�a de ejemplo y sin que la enumeraci�n sea
													 taxativa o restrictiva sino que meramente enunciativa, se considera actividad o deporte riesgoso el manejo de
													 explosivos, miner�a subterr�nea, trabajos en altura o l�neas de alta tensi�n, inmersi�n submarina, piloto civil,
													 paracaidismo, monta�ismo, alas delta, benji, parapente, carreras de auto y moto, entre otros. 
												 </fo:inline>
												 <fo:inline font-size="11pt" font-weight="bold">
													 4)
												 </fo:inline>
												 <fo:inline font-size="11pt" >
													 Enfermedades preexistentes, entendi�ndose por tales las definidas en el art�culo 2� las Condiciones Generales 
												 </fo:inline>
												 <fo:inline font-size="11pt" font-weight="bold">
													 5)
												 </fo:inline>
												 <fo:inline font-size="11pt" >
													 Una infecci�n oportunista o neoplasma maligno causado o que resulte como consecuencia que el Asegurado estuviere afecto o
													 fuere portador del S�ndrome de Inmunodeficiencia Adquirida, cualquiera fuese el momento en que el Asegurado se
													 haya infectado o contra�do dicho s�ndrome. 
												 </fo:inline>
												 <fo:inline font-size="11pt" font-weight="bold">
													 6) 
												 </fo:inline>
												 <fo:inline font-size="11pt" >
													 todas las exclusiones indicadas en el condicionado general.
													 F. Esta solicitud s�lo presenta un resumen de las coberturas. El Detalle de las caracter�sticas, exclusiones y
													 condiciones se encuentran en las p�lizas respectivas.
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell >
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt" font-weight="bold">
													DECLARACI�N
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
													&#0160; deuda excede los 74 y 364 d�as.
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
													&#0160; El asegurable tiene m�s de 65 a�os.
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
													&#0160; El monto de la presente operaci�n es superior a UF 2.000.-
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
													incorporaci�n tendr� aceptaci�n inmediata y pasar� a ser Certificado de Cobertura. Si cualquiera de las preguntas
													precedentes queda sin responder, la compa��a entender� que �sta ha sido contestada positivamente.
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
													En caso de duda o contradicci�n entre la informaci�n proporcionada en este u otro formulario y cualquiera de las
													respuestas anteriores prevalecer�n estas �ltimas declaraciones.
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
													Declaro estar dispuesto a someterme a pruebas m�dicas por cuenta de la Compa��a, asimismo autorizo a los
													m�dicos, hospital, cl�nica u otra instituci�n o persona que tenga mis registros personales para que entregue oproporcione la informaci�n solicitada por BCI Seguros Vida S.A. A su vez faculto a esta �ltima para que solicite o retire
													copia de tales antecedentes patol�gicos, incluso en caso de muerte, conforme a lo dispuesto en la ley n�mero 19.628,
													art�culo 127 del C�digo Sanitario.
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
													INFORMACION ARTICULOS 57 Y 58 DEL DL N� 251
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													Bci Corredores de Seguros S.A. , Rut 78.951.950-1 , en mi calidad de Corredor de seguros y en cumplimiento a la ley
													, informo que durante el a�o calendario anterior intermedi� contratos de seguros con las siguientes Compa��as de
													seguros .
												</fo:inline>
											</fo:block>
											<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" >
												<fo:inline font-size="11pt">
													En Seguros Generales: El 79,28 % en BCI Seguros Generales S.A., el 7,40 % con la Compa��a de Seguros
													Generales Cardif S.A., el 3,28 % con Aseguradora Magallanes S.A., el 3,24 % con Liberty Compa��a de Seguros
													Generales S.A., el 2,45 % con Royal Sun alliance Seguros S.A., el 1,83 % con Mapfre Seguros Generales SA.,
													el 1,10 % con C.S.G. Penta Security S.A. , el 0,75 % con Consorcio Nacional de Seguros Generales S.A. y otras
													1,42 % . En Seguros de Vida: El 65,69 % con Bci Seguros de Vida S.A., el 24,71 % con la Compa��a de Seguros
													de Vida Cardif S.A , el 5,66 % con Chilena Consolidada Seguros de Vida S.A., el 2,02 % en la Interamericana
													Compa��a de Seguros de Vida S.A. , el 1,03 % con Euroamerica Vida S.A, el 0,42 % con Consorcio Nacional Vida y
													otras 0,47 % . En Renta Vitalicia: El 25,62 % con Principal Compa��a de Seguros de Vida Chile S.A., el 23,50 %
													con Met Life Chile Seguros de Vida S.A., el 11,25% con Compa��a de Seguros de Vida Corp S.A. , el 8,25% con ING
													Vida S.A., el 6,92 % con Cruz del Sur Vida S.A.,. el 6,57% con Penta Vida Compa��a de Seguros de Vida S.A., el
													5,78 % con C.S.V Consorcio Nacional de Seguros S.A , el 4,08 % con Bci Seguros Vida S.A. , el 2,54 % con RentaVida S.A. , el 2,07% con Euroamerica Seguros de Vida S.A. y otras 3,43 %.
													Para responder del correcto y cabal cumplimiento de todas mis obligaciones emanadas de la actividad de Corredor de
													Seguros y en especial de los perjuicios que pueda ocasionar a los asegurados que contraten seguros por mi
													intermedio se ha emitido P�liza de Responsabilidad Civil N� 4282810 y P�liza de Garant�a N� 10009577 en
													Consorcio Nacional de Seguros S.A.													
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
					</fo:table> -->
				<!-- FIN PAgina-->
				
		  		<!-- Pagina de Informativo de seguro --> <!--
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
										Compa��a Aseguradora: 
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
										Clasificaci�n de riesgo: AA- 
									</fo:inline>
									<fo:inline font-size="11pt" >
										 seg�n Feller and Rate y 
									</fo:inline>
									<fo:inline font-size="11pt" font-weight="bold">
										AA- 
									</fo:inline>
									<fo:inline font-size="11pt" >
										Seg�n Fitch Ratings
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
											 vigente en la C�a.
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" font-weight="bold">
											Hasta 54 a�os
										</fo:inline>
									</fo:block>
							    </fo:table-cell>
								<fo:table-cell  border-color="black" border-style="solid">
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="center">
										<fo:inline font-size="11pt" font-weight="bold">
											55 a 75 a�os
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
											Solicitud de Incorporaci�n
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
											Siempre sujeto a evaluaci�n a compa��a
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
											Solicitud de Incorporaci�n+Declaraci�n Personal de Salud
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
											Solicitud de Incorporaci�n+Declaraci�n Personal de Salud + Ex�men M�dico + Electrocardiograma
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
											Solicitud de Incorporaci�n+Declaraci�n Personal de Salud + Ex�men M�dico + Electrocardiograma
											de reposo + Orina completa + HIV + Radiograf�a de T�rax.
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
											Solicitud de Incorporaci�n+Declaraci�n Personal de Salud + Ex�men M�dico + Electrocardiograma
											de reposo + Orina completa + HIV + Radiograf�a de T�rax + Hemograma + Glicemia + P�rfil Lip�dico.
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
											La Compa��a de Seguros se reserva el derecho de solicitar mayores antecedentes En aquellos casos
											que lo estime necesario y/o conveniente para la aceptaci�n del asegurable.
										</fo:inline>
									</fo:block>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Este seguro no cubre preexistencias, salvo que el cliente tenga conocimiento y/o diagn�stico y/o
											sintomatolog�a de alguna enfermedad que �l requiera expresamente que sea evaluada por la compa��a.
											Para ello, deber� completar una declaraci�n personal de salud, la que ser� evaluada por la compa��a e
											informar� las condiciones de asegurabilidad del cliente a la entidad contratante.											
										</fo:inline>
									</fo:block>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											La muerte que sobrevenga durante actividades y/o deportes riesgosos no tendr� cobertura
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
											75 a�os.
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
											Para las personas cuyo monto total del cupo autorizado en la l�nea de cr�dito o l�nea de emergencia sea
											inferior o igual a UF 2.000, este seguro no cubre preexistencias, salvo que el cliente tenga conocimiento
											y/o diagn�stico y/o sintomatolog�a de alguna enfermedad que �l requiera expresamente que sea
											evaluada por la compa��a. Para ello, deber� completar una declaraci�n personal de salud, la que ser�
											evaluada por la compa��a y se informar� el resultado a la entidad contratante.
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
					</fo:table> -->
				<!-- Fin 1� Informativo Contrato-->
		
				<!-- Pagina de Informativo de seguro --> <!-- 
				<fo:block text-align="left" break-after="page"></fo:block>
				<fo:table  table-layout="fixed" text-align="justify" >
					<fo:table-column column-width="17cm"/>
						<fo:table-body>
						<fo:table-row>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt" font-weight="bold">                
											La pr�ctica de actividades y/o deportes riesgosos no tendr�n cobertura.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell  >
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											El Asegurador se reserva el derecho de solicitar mayores antecedentes en aquellos casos que estime
											necesario y conveniente para la aceptaci�n del asegurable.
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
											Deudores del Banco Bci L�nea de sobregiro y L�nea de Emergencia que sean personas naturales
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
											Monto Asegurado y Condiciones de Liquidaci�n
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Cupo utilizado de la l�nea de cr�dito de sobregiro o la l�nea de emergencia o ambas con un tope
											m�ximo, correspondiente al cupo autorizado por la entidad contratante; al d�a inmediatamente anterior a
											la fecha de fallecimiento del deudor, m�s los intereses devengados al cierre del mes anterior a la fecha
											de fallecimiento, sobre la base de un servicio regular de la deuda, con un tope m�ximo, correspondiente
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
											La cobertura regir� desde la fecha en que el banco otorga efectivamente la l�nea de
											cr�dito de sobregiro o la l�nea de emergencia y la Compa��a Aseguradora acepta asumir el riesgo, hasta
											el d�a en que se produzca una cualquiera de las dos circunstancias siguientes:1) que se cumpla la edad
											tope de cada cobertura, 2) que se extinga el cr�dito que dio origen al seguro.
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
											La prima total corresponde a la tasa indicada a continuaci�n, dependiendo de la vigencia del
										    cr�dito, aplicada sobre el monto asegurado inicial.
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
											Para la l�nea de cr�dito de sobregiro,
										</fo:inline>	
										<fo:inline font-size="11pt"> 
											la tasa es de 4.0 %o (por mil) anual sobre el saldo inicial con
											un m�nimo de UF 0.3 y un m�ximo de UF 6.0.
										</fo:inline>
									</fo:block>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt"> 
											La tasa se aplica sobre el cupo total otorgado a la l�nea de cr�dito.
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
											Para la l�nea de emergencia,
										</fo:inline>	
										<fo:inline font-size="11pt"> 
											la tasa es de 2.33 %o (por mil) por semestre con una prima m�nima de
											UF 0.17 y prima m�xima de UF 3 (primas brutas).
										</fo:inline>
									</fo:block>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt"> 
											La tasa se aplica sobre el cupo total otorgado a la l�nea de emergencia.
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
											Las primas indicadas son referenciales. En caso que la aseguradora decida evaluar el riesgo espec�fico,
											ello podr�a generar un cambio de las condiciones de aseguramiento y el aumento de la prima, sin
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
											Las exclusiones se encuentran contenidas en la p�liza depositada en el registro de la S.V.S. bajo el
											c�digo POL 2 05 040
										</fo:inline>
									</fo:block>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
											Entre las principales se excluyen las preexistencias de las patolog�as cubiertas, las enfermedades
											cubiertas o intervenciones que resulten o sean consecuencia de adicci�n a las drogas o al alcohol,
											enfermedades en conexi�n con infecci�n por HIV, suicido frustrado, su tentativa y cualquier autolesi�n
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
											En caso de consultas, reclamos y denuncias de siniestro, el asegurado se deber� comunicar con BCI Corredores de
											Seguros al tel�fono (02) 5404953 o al e-mail: siniestrosbci@bci.cl., al tel�fono del CRI de la Compa��a de Seguros
											6006000292 &#x2013; desde celular 02 &#x2013; 6799700 o en cualquiera de las oficinas de BCI Seguros Vida S.A.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table> -->
					<!-- Firmas de cliente-->
			<!--		<fo:block space-after="4cm"></fo:block>
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
													Nombre completo y Nro de C�dula de Identidad del Cliente
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
					-->

				<!-- FIN TODO-->
			</fo:block>
	    </fo:flow>
    </fo:page-sequence>

	</fo:root>
 </xsl:template>
</xsl:stylesheet>