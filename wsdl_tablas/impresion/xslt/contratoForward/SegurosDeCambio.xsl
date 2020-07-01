<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:template match="comprobante">
	<xsl:variable name="imagen"><xsl:value-of select="rutaImagen"/>logoBci.gif</xsl:variable>
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

			<fo:layout-master-set>
				<fo:simple-page-master master-name="all"
					page-height="11in" page-width="8.5in" margin-top="1.0cm"
					margin-bottom="0.0cm" margin-left="2.0cm" margin-right="2.0cm"
					border="thick solid red">
					<fo:region-body margin-top="0.5cm"
							margin-bottom="2cm" />
					<fo:region-before extent="4cm" />
					<fo:region-after extent="2cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			
			<fo:page-sequence master-reference="all">

					<fo:static-content flow-name="xsl-region-before" padding="6" >		
						<fo:block text-align="left" font-size="10pt" font-family="serif" line-height="1em + 2pt">
						<fo:external-graphic width="2.28cm"  height="1.03cm" left="6cm" text-align="right" position="relative" src="{$imagen}"/><xsl:text>&#160;</xsl:text>
							<xsl:text>&#160;</xsl:text><fo:inline text-align="right"> Pagina <fo:page-number/> de <fo:page-number-citation ref-id="paginaFinal" /></fo:inline>
						</fo:block>
						<fo:block  text-align="right">
							<fo:inline font-size="9pt" font-weight="bold">
								<fo:inline>Nº CONTRATO:<xsl:apply-templates select="numContrato" /></fo:inline>
							</fo:inline>
						</fo:block>
					</fo:static-content>
				
					<fo:static-content flow-name="xsl-region-after">
					</fo:static-content>
				
				<fo:flow flow-name="xsl-region-body">
	
					<fo:table font-size="10pt" font-family="serif" space-before.optimum="50pt" space-after.optimum="1pt">
						<fo:table-column column-width="6.0in" />
						<fo:table-column column-width="1.5in" />
						<fo:table-header></fo:table-header>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-style="solid"	border-width=".05pt" border-color="white" padding="1mm">
									<fo:block></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="5pt">
									<fo:block text-align="center">
										<fo:inline font-size="10pt" font-weight="bold">
											ANEXO Nro. 1
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="center">
										<fo:inline font-size="10pt" font-weight="bold">
											CONTRATO DE COMPRAVENTA Y ARBITRAJE A FUTURO DE MONEDA EXTRANJERA 
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>

					<fo:table font-size="10pt" font-family="serif" space-before.optimum="1pt" space-after.optimum="1pt">
						<fo:table-column column-width="6.5in"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="11pt">
									<fo:block text-align="justify" line-height="15pt">
										En Santiago de Chile a <fo:inline><xsl:apply-templates select="fecha" /></fo:inline>, 
										entre, por una parte, BANCO DE CREDITO E INVERSIONES, 
										R.U.T. <fo:inline><xsl:apply-templates	select="rutBanco" /></fo:inline>, representado por la(s) persona(s) que suscribe(n) y se 
										individualiza(n) al final, todos domiciliados en esta ciudad, 
										EL GOLF 125 , COMUNA DE LAS CONDES, SANTIAGO, 
										en adelante "Banco" y, por la otra, <fo:inline><xsl:apply-templates select="nombreCliente" /></fo:inline>, 
										R.U.T. <fo:inline><xsl:apply-templates select="rutCliente"/></fo:inline>, representado la(s) persona(s) que se suscribe(n) y se individualiza(n) al final, 
										todos los domiciliados en esta ciudad <fo:inline><xsl:apply-templates select="domicilioCliente" /></fo:inline>, en adelante "Cliente", se ha convenido el 
										Contrato Forward que más adelante se indica, el cual se regirá por las Condiciones Generales de Contratos de 
										Derivados en el Mercado Local suscrito y vigente entre ambas partes, documento que, para todos los efectos, 
										se entiende formar parte integrante del presente instrumento: 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
	
					</fo:table>
					
					<fo:table font-size="10pt" font-family="serif" space-before.optimum="1pt" space-after.optimum="1pt">
						<fo:table-column column-width="6.5in"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell  padding-before="15pt">
									<fo:block font-size="12pt" font-weight="bold">
										I. Definiciones 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="11pt">
									<fo:block text-align="justify" line-height="15pt" padding-before="15pt" padding-after="10pt">
										a) Por Monto Contratado se entiende la cantidad de Moneda Extranjera objeto de venta en este 
										Contrato. 
									</fo:block>
									<fo:block text-align="justify" line-height="15pt" padding-after="10pt">	
										b) Por Precio Pactado se entiende la cantidad en pesos moneda corriente nacional, de Unidades de Fomento o 
										de Dólares fijada por las partes como precio de compra de la cantidad de Moneda Extranjera objeto de venta en este Contrato. 
									</fo:block>
									<fo:block text-align="justify" line-height="15pt" padding-after="10pt">	
										c) Precio Referencial de Mercado para las operaciones de compraventa de moneda extranjera dólar de los Estados Unidos de América, 
										se entiende la cantidad en pesos, moneda corriente nacional, resultante de multiplicar el Tipo de Cambio Referencial estipulado 
										en el Contrato, vigente a la Fecha de Pago o Liquidación Anticipada, según corresponda, por el monto de la Moneda Extranjera objeto de este Contrato.  
									</fo:block>
									<fo:block text-align="justify" line-height="15pt" padding-after="10pt">
										d) Por Precio Referencial de Mercado para las operaciones de compraventa de Moneda Extranjera distinta al Dólar o para las operaciones 
										de compra venta de moneda extranjera distinto al dolar o para las operaciones de arbitraje a futuro cuyo cumplimiento se pacte por compensación, se entiende la cantidad de Moneda Nacional, que resulte de multiplicar las siguientes 
										dos cantidades: (i) la cantidad de Dólares que corresponde al monto total de la otra Moneda Extranjera prevista en este Contrato, 
										según la Paridad Referencial, por (ii) por el Tipo de Cambio Referencial estipulado por las partes vigentes a la Fecha de Pago o de Liquidación Anticipada, 
										según corresponda. 
									</fo:block >
									<fo:block text-align="justify" line-height="15pt" padding-after="10pt">	
										e) Por Precio Referencial de Mercado para las operaciones de arbitraje a futuro, cuyo cumplimiento se pacte por entrega, se entiende la cantidad de 
										Dólares que corresponda a la otra Moneda Extranjera prevista en este Contrato, según la Paridad Referencial vigente en la Fecha de Pago o de la Liquidación Anticipada, según corresponda. 
									</fo:block>
									<fo:block text-align="justify" line-height="15pt" padding-after="10pt">
										f) Por Tipo de Cambio de Contrato se entiende la cantidad de pesos, moneda corriente nacional, o de Unidades de Fomento, necesarias para comprar una unidad de moneda extranjera, al valor 
										estipulado por las partes en los respectivos Contratos. 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<fo:table padding-after="1em" padding-before="2em" font-size="10pt" table-layout="fixed">
						<fo:table-column column-width="2"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block break-before="page" space-before="1in" >
											<fo:inline font-size="12pt" font-weight="bold">
												II. Condiciones Financieras 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
					</fo:table>
					<fo:table padding-after="1em" padding-before="2em" font-size="10pt" table-layout="fixed">
					<fo:table-column column-width="5.5cm"/>
					<fo:table-column column-width="10.5cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>1. Tipo de Transacción </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:COMPRA/VENTA</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="6pt">
									<fo:block text-align="left">
										<fo:inline>2. Fecha de Vencimiento </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="fechaPago"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>3. Vendedor</fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="vendedor"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>4. Comprador</fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt" >
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="comprador"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>5. Modalidad de Cumplimiento</fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="modoCumplimiento"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>6. Moneda Extranjera</fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline >:<xsl:apply-templates select="monedaExt"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>7. Tipo de Cambio de Contrato </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="tipoCambioContrato"/> CLP por USD 1,000</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>8. Paridad de Contrato </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="paridadContrato"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>9. Precio Pactado </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:CLP <xsl:apply-templates select="precioPactado"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>10. Tipo de Cambio Referencial</fo:inline> 
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="tipoCambioReferencial"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>11. Paridad Referencial </fo:inline> 
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="paridadReferencial"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>12. Bancos de Referencia</fo:inline> 
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="bancoRef"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>13. Garantías </fo:inline> 
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="garantias"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>14. Forma de Pago </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="formaPago"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>15. Lugar de Cumplimiento </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="lugarCumplimiento"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>16. Valuta </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:<xsl:apply-templates select="valuta"/></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<fo:table font-size="10pt" font-family="serif" space-before.optimum="1pt" space-after.optimum="1pt">
						<fo:table-column column-width="6.5in"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell  padding-before="15pt">
									<fo:block padding-after="15pt">
										<fo:inline font-size="12pt" font-weight="bold">
											III.Obligaciones de las Partes
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="11pt">
									<fo:block  text-align="justify" line-height="15pt">
										En la operación de compraventa a futuro de Moneda Extranjera, el vendedor se compromete a entregar la Moneda  
										vendida y el comprador a pagar el precio convenido, en pesos moneda corriente nacional o en Unidades de Fomento, 
										según lo establezca el Contrato, pagaderas en Moneda Nacional, en la Fecha de Pago, según corresponda.   
									</fo:block>
									<fo:block ext-align="justify" line-height="15pt">	
										En la operación de arbitraje a futuro de Moneda Extranjera, el vendedor se compromete a entregar la Moneda Extranjera 
										vendida y el comprador a pagar el precio convenido en Dólares en la Fecha de Pago. 
									</fo:block>
									<fo:block ext-align="justify" line-height="15pt">	
										En todo caso, si la modalidad de cumplimiento de un Contrato fuere la compensación, se aplicará lo previsto en la sección IV 
										siguiente, párrafo ii).
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<fo:table  font-size="10pt" font-family="serif" space-before.optimum="1pt" space-after.optimum="1pt">
						<fo:table-column column-width="6.5in"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell  padding-before="15pt">
									<fo:block break-before="page" space-before="1in" >
										<fo:inline font-size="12pt" font-weight="bold">
											IV. Cumplimiento 
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block  padding-before="15pt" padding-after="10pt">
										El comprador y el vendedor deberán cumplir este Contrato en la Fecha de Pago de acuerdo a la modalidad prevista en 
										la sección II precedente, pudiendo ser alguna de las que se indican a continuación:  
									</fo:block>
									<fo:block padding-after="10pt">	
										i) Entrega: 
									</fo:block>
									<fo:block padding-after="10pt">	
										(A) El Precio Pactado será el que se estipule en el Contrato y deberá pagarse por el comprador en la Fecha de 
										Pago. 
									</fo:block>
									<fo:block padding-after="10pt">	
										(B) El vendedor deberá entregar la Moneda Extranjera vendida en la fecha estipulada. 
									</fo:block>
									<fo:block padding-after="10pt">	
										ii) Compensación: 
									</fo:block>
									<fo:block padding-after="10pt">	
										(A) El comprador de la Moneda Extranjera deberá pagar a su contraparte la diferencia resultante entre el Precio 
										Pactado y el Precio Referencial de Mercado acordado por las partes, vigente a la Fecha de Pago de este Contrato, 
										cuando el primero sea superior al segundo.  
									</fo:block>
									<fo:block padding-after="10pt">	
										(B) En caso contrario, esto es, cuando el Precio Referencial de Mercado resultare superior al Precio Pactado, 
										será el vendedor quien pague dicha diferencia a su contraparte. 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<fo:table font-size="10pt" font-family="serif" space-before.optimum="2cm" space-after.optimum="1pt">
						<fo:table-column column-width="6.5in"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell  padding-before="15pt">
									<fo:block padding-after="15pt">
										<fo:inline font-size="12pt" font-weight="bold">
											V. Ejemplares 
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block  padding-before="15pt" padding-after="15pt">
										El presente contrato se firma en dos ejemplares de idéntico tenor y fecha, 
										quedando uno en poder de cada parte. A menos que se exprese lo contrario en este instrumento,  
										los términos en mayúsculas tendrán el significado que para ellos se señala en las Condiciones generales.
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-border="1" font-size="10pt" font-family="serif" space-before.optimum="3cm" space-after.optimum="1pt">
						<fo:table-column column-width="3.2in"/>
						<fo:table-column column-width="3.2in"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell  border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block>
										<fo:inline>______________________________________________</fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block>
										<fo:inline>_____________________________________________</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block text-align="left">
										<fo:inline>p.p. <xsl:apply-templates select="glosaBanco" /></fo:inline> 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block >
										<fo:inline> p.p. <xsl:apply-templates select="nombreCliente" /></fo:inline>
									</fo:block>									
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block text-align="left">
										<fo:inline >Nombre:</fo:inline> 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block >
										<fo:inline>Nombre:</fo:inline>
									</fo:block>									
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block text-align="left">
										<fo:inline >Rut:</fo:inline> 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block >
										<fo:inline>Rut:</fo:inline>
									</fo:block>									
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block text-align="left">
										<fo:inline >Nombre:</fo:inline> 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block >
										<fo:inline>Nombre:</fo:inline>
									</fo:block>									
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block text-align="left">
										<fo:inline >Rut:</fo:inline> 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block >
										<fo:inline>Rut:</fo:inline>
									</fo:block>									
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
	
					<fo:block id="paginaFinal"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>