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
								<fo:inline>Nº CONTRATO: <xsl:apply-templates select=" numContrato"/></fo:inline> 
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
											ANEXO Nro. 5
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="center">
										<fo:inline font-size="10pt" font-weight="bold">
											CONTRATO FORWARD SOBRE UNIDADES DE REAJUSTABILIDAD E ÍNDICES DE PROMEDIO 
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
										En Santiago de Chile a <fo:inline><xsl:apply-templates select="fecha"/></fo:inline>, entre, por una parte, 
										BANCO DE CREDITO E INVERSIONES, 
										R.U.T. <fo:inline><xsl:apply-templates select="rutBanco"/></fo:inline>, representado por la(s) persona(s) que suscribe(n) 
										individualiza(n) al final, todos domiciliados en esta ciudad, EL GOLF 125 , COMUNA DE LAS CONDES, SANTIAGO, 
										en adelante "Banco" y, por la otra, <fo:inline><xsl:apply-templates select="nombreCliente"/></fo:inline>,
										<xsl:text>&#160;</xsl:text><xsl:text>&#160;</xsl:text> R.U.T. <fo:inline><xsl:apply-templates select="rutCliente"/></fo:inline>, 
										representado por la(s) persona(s) que se suscribe(n) y se individualiza(n) al final, todos los domiciliados en esta ciudad, 
										<fo:inline><xsl:apply-templates select="direcCliente"/></fo:inline>, en adelante "Cliente", se ha convenido el Contrato Forward que más adelante se indica, el 
										cual se regirá por las Condiciones Generales de contratos de Derivados en el Mercado Local suscrito y vigente 
										entre ambas partes, documento que, para todos los efectos, se entiende formar parte integrante del presente 
										instrumento:
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
										i) Por Diferencial se entiende la diferencia en pesos, moneda nacional, que resulte en la o las Fechas de Pago, según sea el caso, entre (i) el Valor Pactado, y el (ii) el Valor Referencial  
									</fo:block>
									<fo:block text-align="justify" line-height="15pt" padding-after="10pt">	
										ii) Por Fecha de Pago se entiende la fecha fijada por las partes para el cumplimiento del contrato 
									</fo:block>
									<fo:block text-align="justify" line-height="15pt" padding-after="10pt">	
										iii) Por Índices de Tasas Promedio se entiende el índice de tasas de interés local indicado en la sección II de este Contrato. 
									</fo:block>
									<fo:block text-align="justify" line-height="15pt" padding-after="10pt">
										iv) Por Índice de Cámara Promedio se entiende aquel índice que informe y determine la Asociación de Bancos e Instituciones Financieras de Chile A.G., según su valor vigente en la o las fechas de Pago o de Liquidación Anticipada, según corresponda. 
									</fo:block >
									<fo:block text-align="justify" line-height="15pt" padding-after="10pt">	
										v) Por Índice Overnight Promedio se entiende aquel índice que informe y determine la Asociación de Bancos e Instituciones Financieras de Chile A.G., según su valor vigente en la o las fechas de Pago o de Liquidación Anticipada, según corresponda. 
									</fo:block>
									<fo:block text-align="justify" line-height="15pt" padding-after="10pt">
										vi) Por Valor de Índice Pactado, se entiende la cantidad en pesos moneda corriente nacional a que equivale una unidad de fomento, el índice de valor promedio, el tipo de cambio observado o el índice de tasa promedio pactado, según corresponda, en la Fecha de Pago o de Liquidación Anticipada, según corresponda, conforme el valor acordado por las partes en este contrato 
									</fo:block>
									<fo:block text-align="justify" line-heigth="15pt" padding-after="10pt">
										vii) Por Valor de Índice Referencial, se entiende la cantidad de pesos, moneda corriente nacional, a que equivale una Unidad de Fomento o el Índice de Valor Promedio, el Tipo de cambio observado o el Índice de Tasa Promedio, según sea el caso, en la Fecha de Pago o de liquidación anticipada según corresponda. 
									</fo:block>
									<fo:block text-align="justify" line-heigth="15pt" padding-after="10pt">
										viii) Por Monto Contratado, se entiende la cantidad de Unidades de Fomento, de Índice de valor Promedio, de Tipo de Cambio Observado o de Índice de Tasa Promedio, según corresponda, que cada parte ha pactado en el respectivo Contrato. 
									</fo:block>
									<fo:block break-before="page" space-before="1in"  text-align="justify" line-heigth="15pt" padding-after="10pt">
										ix) Por Valor Pactado se entiende el valor en pesos, moneda corriente nacional, que se obtiene de multiplicar el correspondiente Valor de Índice Pactado, por el Monto Contratado. 
									</fo:block>
									<fo:block text-align="justify" line-heigth="15pt" padding-after="10pt">
										x) Por Valor Referencial, se entiende el valor en pesos, moneda corriente nacional, de multiplicar el correspondiente Valor de Unidad Referencial, por el respectivo Monto Contratado
									</fo:block>
									<fo:block text-align="justify" line-heigth="15pt" padding-after="10pt">
										xi) Por Pagador de Valor Pactado significa la parte que en este Contrato se ha obligado a pagar a la otra en la o las Fechas de Pago, según corresponda, el Valor Pactado. 
									</fo:block>
									<fo:block text-align="justify" line-heigth="15pt" padding-after="10pt">
										xii) Por Pagador de Valor Referencial significa la parte que en este Contrato se ha obligado a pagar a la otra en la o las Fechas de Pago, según corresponda, el Valor Referencial. 
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
										<fo:block >
											<fo:inline font-size="12pt" font-weight="bold">
												II. Condiciones Financieras 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
					</fo:table>
					
					<fo:table padding-after="1em" padding-before="2em" font-size="10pt" table-layout="fixed">
					<fo:table-column column-width="6.5cm"/>
					<fo:table-column column-width="10.5cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>1. Fecha de Vencimiento </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>: <xsl:apply-templates select="fechaPago" /></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>	
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="6pt">
									<fo:block text-align="left">
										<fo:inline>2. Pagador Valor Pactado </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>: <xsl:apply-templates select="comprador" /></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>3. Pagador Valor Referencial </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>: <xsl:apply-templates select="vendedor" /></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>4. Modalidad de Pago </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt" >
									<fo:block text-align="left">
										<fo:inline>: <xsl:apply-templates select="modalidadCumplimiento" /></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>5. Valor de Reajustabilidad Pactado </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>:CLP <xsl:apply-templates select="tipoCambioContrato" /></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>6. Monto Contratado </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt" >
									<fo:block text-align="left">
										<fo:inline>: <xsl:apply-templates select="montoMonedaExtranjera" /></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
																					
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>7. Bancos de Referencia </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>: <xsl:apply-templates select="bancoRef" /></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>8. Forma de Pago </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>: <xsl:apply-templates select="formaPago" /></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>9. Lugar de Cumplimiento </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>: <xsl:apply-templates select="lugarCumplimiento" /></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>10. Valuta </fo:inline>
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>: <xsl:apply-templates select="valuta" /></fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>11. Observaciones</fo:inline> 
									</fo:block> 	
								</fo:table-cell>
								<fo:table-cell padding="1mm" padding-before="10pt">
									<fo:block text-align="left">
										<fo:inline>: Valor Indice Referencial: Unidad de Fomento <xsl:apply-templates select="fechaPago" /></fo:inline>
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
									<fo:block break-before="page" space-before="1in"  padding-after="15pt">
										<fo:inline font-size="12pt" font-weight="bold">
											III. Cumplimiento 
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding="1mm" padding-before="11pt">
									<fo:block  text-align="justify" line-height="15pt" padding-after="10pt">
										En la Fecha de Pago, las partes deberán cumplir el presente Contrato de siguientes: 	
									</fo:block>
									<fo:block text-align="justify" line-height="15pt" padding-after="10pt">	
										(A) En la Fecha de Pago se calculará la equivalencia en pesos, moneda Valor Pactado y del Valor Referencial. 
									</fo:block>
									<fo:block text-align="justify" line-height="15pt" padding-after="10pt">	
										(B) Establecida la cuantía de las obligaciones de cada parte de conformidad a cláusula 4.2. de las 
										Condiciones Generales, dichas cantidades se compensarán recíprocamente hasta la concurrencia de sus valores. 
										La parte que resultare deudora la diferencia (el "Diferencial") a la parte que resulte acreedora. 
									</fo:block >
									<fo:block text-align="justify" line-heigth="15pt" padding-after="10pt">
										(C) Todos los pagos que deban hacerse de conformidad a las reglas anteriores, partes a la otra 
										serán siempre en pesos, moneda corriente nacional, y se efectuarán entrega de vale cámara, vale 
										vista de la plaza o a través de depósitos indicada por las partes. 
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
									<fo:block >
										<fo:inline font-size="12pt" font-weight="bold">
											IV. Definiciones; Ejemplares 
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block  padding-before="15pt" padding-after="10pt">
										A menos que se exprese lo contrario en este instrumento, los términos en mayúsculas 
										significado que para ellos se señala en las Condiciones Generales. El presente dos 
										ejemplares de idéntico tenor y fecha, quedando uno en poder de cada parte.  
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
										<fo:inline>pp <xsl:apply-templates select="nombreCliente" /></fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-style="solid" border-width="1pt" border-color="black" padding="1mm" text-align="left">
									<fo:block >
										<fo:inline>pp <xsl:apply-templates select="glosaBanco" /></fo:inline>
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