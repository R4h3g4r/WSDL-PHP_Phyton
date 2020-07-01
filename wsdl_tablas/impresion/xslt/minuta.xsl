<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/11/21 11:20 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    
	<xsl:template match="minuta">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
            	<fo:simple-page-master master-name="minutaDeAprobacion" page-width="215.9mm" page-height="279.4mm" margin-top="10mm" margin-bottom="10mm" margin-left="30mm" margin-right="30mm">
                    <fo:region-body/>
                    <!-- <fo:region-before extent="3cm"/> -->
                </fo:simple-page-master>
            </fo:layout-master-set>
        	<fo:page-sequence master-reference="minutaDeAprobacion">
                <fo:flow flow-name="xsl-region-body">
                    <!-- border="1pt solid black" -->
					
                    <fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm">
					
						<fo:block>
	                    	<fo:table table-layout="fixed" width="155.9mm">
	                    		<fo:table-column column-width="proportional-column-width(100)"/>
	                    		<fo:table-body>
	                    			<fo:table-row font-weight="bold" background-color="#000066">
	                    				<fo:table-cell>
	                    		
											<fo:block text-align="center" font-weight="bold" font-size="11pt" color="#ffffff">
												MINUTA DE APROBACION
											</fo:block>
											
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
	                    	</fo:table>
	                    </fo:block>
	                    <fo:block>
                    	<fo:table table-layout="fixed" width="155.9mm">
                    		<fo:table-column column-width="proportional-column-width(100)"/>
                    		<fo:table-body>
                    			<fo:table-row font-weight="bold" background-color="#C0C0C0" >
                    				<fo:table-cell  border="0.5pt solid black">
                    					
                    					<fo:block padding-left="1mm" text-align="left" font-weight="bold" color="#006600">
											ANTECEDENTES GENERALES
										</fo:block>
										
                    				</fo:table-cell>
                    			</fo:table-row>
                    		</fo:table-body>
                    	</fo:table>
						<fo:block>
							<fo:table table-layout="fixed" width="155.9mm">
								<fo:table-column column-width="proportional-column-width(40)"/>
								<fo:table-column column-width="proportional-column-width(20)"/>
								<fo:table-column column-width="proportional-column-width(20)"/>
								<fo:table-column column-width="proportional-column-width(20)"/>
								<fo:table-body>
									<fo:table-row font-weight="bold"  background-color="#C0C0C0">
										<fo:table-cell border="0.5pt solid black">
											<fo:block padding-left="1mm">
												NOMBRE
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block padding-left="1mm">
												RUT
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block padding-left="1mm">
												CLASIFICACION
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block padding-left="1mm">
												OFICINA
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border="0.5pt solid black">
											<fo:block padding-left="1mm">
												<xsl:value-of select="nombre" />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block padding-left="1mm">
												<xsl:value-of select="idpDeudor" />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block padding-left="1mm">
												<xsl:value-of select="clasificacion" />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block padding-left="1mm">
												<xsl:value-of select="oficina" />
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							</fo:block>
						</fo:block>

			<fo:block space-before="4mm">
				<!-- MTO -->
						<fo:block font-weight="bold" border="0.5pt solid black" background-color="#C0C0C0" color="#006600">
							DEUDOR MINUTA
						</fo:block>
						<fo:block>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell border="0.5pt solid black">
											<fo:block padding-left="1mm">
												<xsl:value-of select="nombre"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block padding-left="1mm">
												<xsl:value-of select="idpDeudor" />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block padding-left="1mm">
												
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block padding-left="1mm">
												
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						
				<!-- FIN MTO -->
				<fo:table table-layout="fixed" width="155.9mm">
					<fo:table-column column-width="proportional-column-width(25)"/>
					<fo:table-column column-width="proportional-column-width(25)"/>
					<fo:table-column column-width="proportional-column-width(25)"/>
					<fo:table-column column-width="proportional-column-width(25)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell font-weight="bold"  background-color="#C0C0C0" border="0.5pt solid black">
								<fo:block padding-left="1mm">
									ACTIVIDAD
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">
									<xsl:value-of select="actividadEconom" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell font-weight="bold"  background-color="#C0C0C0" border="0.5pt solid black">
								<fo:block padding-left="1mm">
									EXPERIENCIA LABORAL
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">
									<xsl:value-of select="experiencia" /><fo:leader leader-pattern="space" leader-length="1mm"/>AÑO(S)
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell font-weight="bold"  background-color="#C0C0C0" border="0.5pt solid black">
								<fo:block padding-left="1mm">
									PROFESION U OFICIO
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">
									<xsl:value-of select="oficio" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell font-weight="bold"  background-color="#C0C0C0" border="0.5pt solid black">
								<fo:block padding-left="1mm">
									ANTIGUEDAD LABORAL
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">
									<xsl:value-of select="antiguedad" /><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="medidaAntiguedad" />
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell font-weight="bold"  background-color="#C0C0C0" border="0.5pt solid black">
								<fo:block padding-left="1mm">
									TRABAJADOR
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">
									<xsl:value-of select="tipoTrabajador" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell font-weight="bold"  background-color="#C0C0C0" border="0.5pt solid black">
								<fo:block padding-left="1mm">
									EMPRESA DONDE TRABAJA
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">
									<xsl:value-of select="empresaDondeTrabaja" />
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
                    	</fo:block>			



			<!-- MTO -->
			
			
			<!--******* Estados de Créditos *******-->
			<fo:block space-before="4mm" border="0.5pt solid black" font-weight="bold" background-color="#C0C0C0" color="#006600">
				ESTADO DE CREDITOS
			</fo:block>

			<fo:block>
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(20)"/>
					<fo:table-column column-width="proportional-column-width(20)"/>
					<fo:table-column column-width="proportional-column-width(20)"/>
					<fo:table-column column-width="proportional-column-width(20)"/>
					<fo:table-column column-width="proportional-column-width(20)"/>
					<fo:table-body>
						<fo:table-row font-weight="bold" background-color="#C0C0C0">
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">Productos</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">Moneda</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">Situación Contable</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">Situación Cartera</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">Monto</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="estadoCredito/element">
							<fo:table-row>
								<fo:table-cell border="0.5pt solid black">
									<fo:block padding-left="1mm">
										<xsl:value-of select="productoEstadoCredito"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block padding-left="1mm">
										<xsl:value-of select="monedaEstadoCredito"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black">
									<fo:block padding-left="1mm">
										<xsl:value-of select="situacionContableEstadoCredito"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black">
									<fo:block padding-left="1mm">
										<xsl:value-of select="situacionCarteraEstadoCredito"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black">
									<fo:block padding-left="1mm">
										<xsl:value-of select="montoEstadoCredito"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!--******* Fin Estados de Créditos *******-->			
			
			
			<!-- FIN MTO -->




                    	<fo:block space-before="4mm" font-weight="bold" border="0.5pt solid black" background-color="#C0C0C0"  color="#006600">
							SOLICITUD
						</fo:block>
                    	<fo:block>
                    		<fo:table table-layout="fixed" width="155.9mm">
                    			<fo:table-column column-width="proportional-column-width(100)"/>
                    			<fo:table-body>
                    				<fo:table-row font-weight="bold" height="10mm">
                    					<fo:table-cell  border="0.5pt solid black">
											<fo:block>
												<xsl:value-of select="solicitud" />
											</fo:block>
                    					</fo:table-cell>
                    				</fo:table-row>
                    			</fo:table-body>
                    		</fo:table>
                    	</fo:block>
						


                    	<xsl:for-each select="deudaDeudor/element">
				<fo:block space-before="4mm">
					<fo:table table-layout="fixed" width="155.9mm">
						<fo:table-column column-width="proportional-column-width(55)"/>
						<fo:table-column column-width="proportional-column-width(30)"/>
						<fo:table-column column-width="proportional-column-width(15)"/>
						<fo:table-body>
							<fo:table-row font-weight="bold"  background-color="#C0C0C0" color="#006600">
								<fo:table-cell  border="0.5pt solid black">
									<fo:block>
										<xsl:value-of select="tituloDeuda"/> (M$): <xsl:value-of select="totalBci"/> 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell  border="0.5pt solid black">
									<fo:block>
										Nº PROTESTOS
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border="0.5pt solid black">
									<fo:block>
										<xsl:value-of select="numProtestos"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row font-weight="bold"  background-color="#C0C0C0" color="#006600">
								<fo:table-cell border="0.5pt solid black">
									<fo:block text-align="center">
										DEUDA DIRECTA
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border="0.5pt solid black">
									<fo:block>
										DEUDA INDIRECTA
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border="0.5pt solid black">
									<fo:block>

									</fo:block>
								</fo:table-cell>
							</fo:table-row>

						</fo:table-body>
					</fo:table>

					<fo:table table-layout="fixed" width="155.9mm">
						<fo:table-column column-width="proportional-column-width(10)"/>
						<fo:table-column column-width="proportional-column-width(15)"/>
						<fo:table-column column-width="proportional-column-width(15)"/>
						<fo:table-column column-width="proportional-column-width(15)"/>
						<fo:table-column column-width="proportional-column-width(15)"/>
						<fo:table-column column-width="proportional-column-width(15)"/>
						<fo:table-column column-width="proportional-column-width(15)"/>
						<fo:table-body>
							<fo:table-row font-weight="bold" background-color="#C0C0C0" color="#006600">
								<fo:table-cell border="0.5pt solid black">
									<fo:block>

									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black">
									<fo:block>
										Vigente
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black">
									<fo:block>
										Vencida
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black">
									<fo:block>
										Castigada
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black">
									<fo:block>
										Vigente
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black">
									<fo:block>
										Vencida
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black">
									<fo:block>
										TOTAL
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border="0.5pt solid black"  background-color="#C0C0C0" color="#006600">
									<fo:block font-weight="bold" >
										BCI
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block>
										<xsl:value-of select="directaVgteBci"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block>
										<xsl:value-of select="directaVencidaBci"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block>
										<xsl:value-of select="directaCastigadaBci"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block>
										<xsl:value-of select="indVgteBci"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block>
										<xsl:value-of select="indVcdaBci"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block>
										<xsl:value-of select="totalBci"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border="0.5pt solid black" background-color="#C0C0C0" color="#006600">
									<fo:block font-weight="bold" >
										CMFChile
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block>
										<xsl:value-of select="directaVgteSBIF"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block>
										<xsl:value-of select="directaVencidaSBIF"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block>
										<xsl:value-of select="directaCastigadaSBIF"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block>
										<xsl:value-of select="indVgteSBIF"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block>
										<xsl:value-of select="indVcdaSBIF"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
									<fo:block>
										<xsl:value-of select="totalSBIF"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:for-each>
						
                    	<fo:block space-before="4mm">
                    		<fo:table table-layout="fixed" width="155.9mm">
                    			<fo:table-column column-width="proportional-column-width(100)"/>
                    			<fo:table-body>
                    				<fo:table-row  background-color="#C0C0C0" color="#006600">
                    					<fo:table-cell font-weight="bold"  border="0.5pt solid black">
                    						
					                    	<fo:block padding-left="1mm" font-weight="bold">
												CARGA FINANCIERA MENSUAL DEL CLIENTE
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						
						<fo:block>
							<fo:table table-layout="fixed" width="155.9mm">
								<fo:table-column column-width="proportional-column-width(16)"/>
								<fo:table-column column-width="proportional-column-width(16)"/>
								<fo:table-column column-width="proportional-column-width(16)"/>
								<fo:table-column column-width="proportional-column-width(16)"/>
								<fo:table-column column-width="proportional-column-width(10)"/>
								<fo:table-column column-width="proportional-column-width(16)"/>
								<fo:table-column column-width="proportional-column-width(10)"/>

								<fo:table-body>
									<fo:table-row  background-color="#C0C0C0" color="#006600">
										<fo:table-cell font-weight="bold"  border="0.5pt solid black" padding-left="1mm">
											<fo:block>
												Ingresos
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  border="0.5pt solid black" padding-left="1mm">
											<fo:block>
												Monto M$
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block>
												
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block>
												Carga Actual
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block>
												%
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block>
												Carga Futura
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block>
												%
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border="0.5pt solid black" padding-left="1mm"  background-color="#C0C0C0">
											<fo:block font-weight="bold">
												Del Cliente
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block>
												<xsl:value-of select="ingresosCliente"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" padding-left="1mm">
											<fo:block font-weight="bold" text-align="center">
												BCI
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block>
												<xsl:value-of select="montoCargaActualCliente"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block>
												<xsl:value-of select="porcCargaActualCliente"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block>
												<xsl:value-of select="montoCargaFuturaCliente"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block>
												<xsl:value-of select="porcCargaFuturaCliente"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border="0.5pt solid black" padding-left="1mm" background-color="#C0C0C0">
											<fo:block font-weight="bold">
												Total Familiar
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block>
												<xsl:value-of select="ingresosTotal"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block font-weight="bold" text-align="center">
												Gastos Totales
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block>
												<xsl:value-of select="montoCargaActualTotal"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block>
												<xsl:value-of select="porcCargaActualTotal"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block>
												<xsl:value-of select="montoCargaFuturaTotal"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" text-align="right" padding-right="0.5mm">
											<fo:block>
												<xsl:value-of select="porcCargaFuturaTotal"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									
								</fo:table-body>
							</fo:table>
						</fo:block>
						
                    	<fo:block space-before="4mm">
                    		<fo:table table-layout="fixed" width="155.9mm">
                    			<fo:table-column column-width="proportional-column-width(100)"/>

                    			<fo:table-body>
                    				<fo:table-row font-weight="bold"  background-color="#C0C0C0" color="#006600">
                    					<fo:table-cell border="0.5pt solid black">
                    						
					                    	<fo:block padding-left="1mm" font-weight="bold">
												GARANTIAS
											</fo:block>
											
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						<fo:block>
							<fo:table table-layout="fixed" width="155.9mm">
								<fo:table-column column-width="proportional-column-width(20)"/>
								<fo:table-column column-width="proportional-column-width(40)"/>
								<fo:table-column column-width="proportional-column-width(20)"/>
								<fo:table-column column-width="proportional-column-width(20)"/>
								<fo:table-body>
									<fo:table-row font-weight="bold"  background-color="#C0C0C0">
										<fo:table-cell border="0.5pt solid black">
											<fo:block>
												Tipo de Bien
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block>
												Ubicación
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block>
												Valor ajustado
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block>
												Tasación
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									
									<xsl:for-each select="garantias/element">
									<fo:table-row>
										<fo:table-cell border="0.5pt solid black">
											<fo:block>
												<xsl:value-of select="tipoBien" />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block>
												<xsl:value-of select="ubicacion" />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block>
												<xsl:value-of select="valorAjustado" />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black">
											<fo:block>
												<xsl:value-of select="fechaTasacion" />
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									</xsl:for-each>
									
								</fo:table-body>
							</fo:table>
						</fo:block>
						
			<fo:block space-before="4mm" border="0.5pt solid black" font-weight="bold" background-color="#C0C0C0"  color="#006600">
				MOTIVO DEL ATRASO Y SITUACIÓN ACTUAL DEL CLIENTE
			</fo:block>
			<fo:block>
				<fo:table table-layout="fixed" width="155.9mm">
					<fo:table-column column-width="proportional-column-width(100)"/>
					<fo:table-body>
						<fo:table-row font-weight="bold" height="10mm">
							<fo:table-cell  border="0.5pt solid black">
								<fo:block>
									<xsl:value-of select="motivoYSituacionActual"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
                    	</fo:block>
                    	<fo:block>
				<fo:table table-layout="fixed" width="155.9mm">
					<fo:table-column column-width="proportional-column-width(25)"/>
					<fo:table-column column-width="proportional-column-width(25)"/>
					<fo:table-column column-width="proportional-column-width(25)"/>
					<fo:table-column column-width="proportional-column-width(25)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell font-weight="bold"  background-color="#C0C0C0" border="0.5pt solid black">
								<fo:block padding-left="1mm">
									Abono a Recaudar $:
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">
									<xsl:value-of select="abonoARecaudar"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell font-weight="bold"  background-color="#C0C0C0" border="0.5pt solid black">
								<fo:block padding-left="1mm">
									Fecha de Recaudación:
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid black">
								<fo:block padding-left="1mm">
									<xsl:value-of select="fechaRecaudacion"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
                    	</fo:block>
						
                    	<fo:block space-before="4mm" border="0.5pt solid black" font-weight="bold" background-color="#C0C0C0"  color="#006600">
                    		ANTECEDENTES PARA EL CURSE DE CREDITO (Descripción del tipo de crédito, mención de garantías e instrucciones de curse)
                    	</fo:block>
                    	<fo:block>
                    		<fo:table table-layout="fixed" width="155.9mm">
                    			<fo:table-column column-width="proportional-column-width(100)"/>
                    			<fo:table-body>
                    				<fo:table-row font-weight="bold" height="10mm">
                    					<fo:table-cell  border="0.5pt solid black">
                    						<fo:block>
                    							<xsl:value-of select="comentarioYRecomendaciones"/>
                    						</fo:block>
                    						<fo:block>
                    							<xsl:value-of select="descripricionEInstrucciones"/>
                    						</fo:block>
                    					</fo:table-cell>
                    				</fo:table-row>
                    			</fo:table-body>
                    		</fo:table>
                    	</fo:block>

						
						
						
						
					</fo:block>

                <!--</fo:flow>     
        	</fo:page-sequence>
        	<fo:page-sequence master-reference="minutaDeAprobacion">
                <fo:flow flow-name="xsl-region-body">-->

					<fo:block font-family="Times" text-align="left" font-size="8pt" line-height="4mm">




						<!--******* Tipos Créditos *******-->
						<fo:block space-before="4mm" border="0.5pt solid black"  font-weight="bold" background-color="#C0C0C0"  color="#006600">
                    		TIPOS DE CRÉDITO
                    	</fo:block>
						<fo:block>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(5)"/>
								<fo:table-column column-width="proportional-column-width(9)"/>
								<fo:table-column column-width="proportional-column-width(16)"/>
								<fo:table-column column-width="proportional-column-width(8)"/>
								<fo:table-column column-width="proportional-column-width(8)"/>
								<fo:table-column column-width="proportional-column-width(9)"/>
								<fo:table-column column-width="proportional-column-width(8)"/>
								<fo:table-column column-width="proportional-column-width(11)"/>
								<fo:table-column column-width="proportional-column-width(13)"/>
								<fo:table-column column-width="proportional-column-width(13)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												N°
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												N° Operación
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Tipo Crédito
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Monto $
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Tasa %
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Plazo (Meses)
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Cuota
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Garantía
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Primer Vcto
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Fecha Curse
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
								<fo:table-body>
									<xsl:for-each select="creditos/element">
										<fo:table-row>
											<fo:table-cell text-align="center" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="numeroOrden" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="numeroOperacion" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="left" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="tipoCredito" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="right" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="monto" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="right" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="tasa" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="right" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="plazo" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="right" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="montoCuota" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="garantia" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="fechaPrimerVencimiento" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="fechaCancelacion" />
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:for-each>
								</fo:table-body>
							</fo:table>
						</fo:block>	
						<!--******* Fin Tipos Créditos *******-->


						<!--******* Cuadro Aplicación  *******-->
						<fo:block space-before="4mm" border="0.5pt solid black" font-weight="bold" background-color="#C0C0C0"  color="#006600">
                    					CUADRO APLICACIÓN
                    				</fo:block>
						<fo:block>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(6)"/>
								<fo:table-column column-width="proportional-column-width(14)"/>
								<fo:table-column column-width="proportional-column-width(24)"/>
								<fo:table-column column-width="proportional-column-width(12)"/>
								<fo:table-column column-width="proportional-column-width(14)"/>
								<fo:table-column column-width="proportional-column-width(20)"/>
								<fo:table-column column-width="proportional-column-width(10)"/>
								
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Tipo Credt.
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												N° Operación
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Observaciones
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Monto $
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Estado
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Estudio Jurídico
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-weight="bold" text-align="center" background-color="#C0C0C0" border="0.5pt solid black">
											<fo:block padding-left="1mm">
												Fecha Canc.
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
								<fo:table-body>
									<xsl:for-each select="aplicaciones/element">
										<fo:table-row>
											<fo:table-cell text-align="center" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="operacionCreditoAsociada" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="numOperacion" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="observaciones" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="right" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="montoCalculo" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="left" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="estado" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="left" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="estudioJuridico" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" border="0.5pt solid black">
												<fo:block padding-left="1mm">
													<xsl:value-of select="fechaCancelacionAplicacion" />
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:for-each>
								</fo:table-body>
							</fo:table>
						</fo:block>	
						<fo:block>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(75)"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-body>
									<fo:table-row font-weight="bold">
										<fo:table-cell  border="0.5pt solid black">
											<fo:block text-align="right">
												 Total deuda a financiar : 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  border="0.5pt solid black" padding-left="1mm">
											<fo:block text-align="right">
												<xsl:value-of select="totalDeuda" />
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						<!--******* Fin Cuadro Aplicación *******-->
						

						
						<fo:block space-before="4mm">
							<fo:table table-layout="fixed" width="155.9mm">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>
									<fo:table-row text-align="left" padding-left="1mm">
										<fo:table-cell border="0.5pt solid black"  background-color="#C0C0C0" color="#006600">
											<fo:block>
												DETALLE DE LA OPERACIÓN
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table table-layout="fixed" width="155.9mm">
								<fo:table-column column-width="proportional-column-width(60)"/>
								<fo:table-column column-width="proportional-column-width(40)"/>
								
								<fo:table-body>
									<fo:table-row text-align="left">
										<fo:table-cell border="0.5pt solid black"  background-color="#C0C0C0" color="#006600"  padding-left="1mm">
											<fo:block>
												Honorarios de Abogados
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" padding-right="1mm">
											<fo:block text-align="right">
												
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<xsl:for-each select="honorarios/element">
										<fo:table-row text-align="left">
											<fo:table-cell border="0.5pt solid black" padding-left="1mm">
												<fo:block>
													<xsl:value-of select="glosaEstudioJuridico" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.5pt solid black" padding-right="1mm">
												<fo:block text-align="right">
													$<xsl:value-of select="montoHonorarios" />
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:for-each>									
									<fo:table-row text-align="left">
										<fo:table-cell border="0.5pt solid black" background-color="#C0C0C0" color="#006600"  padding-left="1mm">
											<fo:block>
												Gastos judiciales o Procesales
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" padding-right="1mm">
											<fo:block text-align="right">
												$ <xsl:value-of select="gastosJudicialesOProcesales" />
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row text-align="left">
										<fo:table-cell border="0.5pt solid black" background-color="#C0C0C0" color="#006600"  padding-left="1mm">
											<fo:block>
												Gastos Prejudiciales
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" padding-right="1mm">
											<fo:block text-align="right">
												$ <xsl:value-of select="gastosPrejudiciales" />
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row text-align="left">
										<fo:table-cell border="0.5pt solid black" background-color="#C0C0C0" color="#006600"  padding-left="1mm">
											<fo:block>
												Gastos Notariales
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" padding-right="1mm">
											<fo:block text-align="right">
												$ <xsl:value-of select="gastosNotariales" />
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row text-align="left">
										<fo:table-cell border="0.5pt solid black" background-color="#C0C0C0" color="#006600" padding-left="1mm">
											<fo:block>
												Total deuda a financiar y costas
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" padding-right="1mm">
											<fo:block text-align="right">
												$ <xsl:value-of select="totalACursar" />
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row text-align="left">
										<fo:table-cell border="0.5pt solid black" background-color="#C0C0C0" color="#006600" padding-left="1mm">
											<fo:block>
												Recursos Propios / Abonos
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" padding-right="1mm">
											<fo:block text-align="right">
												$ <xsl:value-of select="recursosPropiosAbonos" />
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row text-align="left">
										<fo:table-cell border="0.5pt solid black" background-color="#C0C0C0" color="#006600" padding-left="1mm">
											<fo:block>
												Total a Aplicar (Valor Líquido antes de Impuestos y seguro)
											</fo:block>
										</fo:table-cell >
										<fo:table-cell border="0.5pt solid black" padding-right="1mm">
											<fo:block text-align="right">
												$ <xsl:value-of select="totalAFinanciar" />
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row text-align="left">
										<fo:table-cell border="0.5pt solid black" background-color="#C0C0C0" color="#006600" padding-left="1mm">
											<fo:block>
												Impuesto
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" padding-right="1mm">
											<fo:block text-align="right">
												$ <xsl:value-of select="impuesto" />
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row text-align="left">
										<fo:table-cell border="0.5pt solid black" background-color="#C0C0C0" color="#006600" padding-left="1mm">
											<fo:block>
												Seguro de desgravamen
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" padding-right="1mm">
											<fo:block text-align="right">
												$ <xsl:value-of select="seguroDesgravamen" />
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row text-align="left">
										<fo:table-cell border="0.5pt solid black" background-color="#C0C0C0" padding-left="1mm">
											<fo:block font-weight="bold">
												TOTAL A CURSAR
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid black" padding-right="1mm">
											<fo:block text-align="right">
												$ <xsl:value-of select="totalAAplicar" />
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									
								</fo:table-body>
							</fo:table>
						</fo:block>
						
						<xsl:if test="comentarioJefe">
							<fo:block space-before="4mm" font-weight="bold" background-color="#C0C0C0"  color="#006600">
								COMENTARIO JEFE EJECUTIVO NEGOCIADOR
							</fo:block>
							<fo:block>
								<fo:table table-layout="fixed" width="155.9mm">
									<fo:table-column column-width="proportional-column-width(100)"/>
									<fo:table-body>
										<fo:table-row font-weight="bold" height="20mm">
											<fo:table-cell  border="0.5pt solid black">
												<fo:block>
													<xsl:value-of select="comentarioJefe"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:if>
						
						<xsl:if test="comentarioGerente">
							<fo:block space-before="4mm" font-weight="bold" background-color="#C0C0C0"  color="#006600">
								COMENTARIO GERENTE NORMALIZA
							</fo:block>
							<fo:block>
								<fo:table table-layout="fixed" width="155.9mm">
									<fo:table-column column-width="proportional-column-width(100)"/>
									<fo:table-body>
										<fo:table-row font-weight="bold" height="20mm">
											<fo:table-cell  border="0.5pt solid black">
												<fo:block>
													<xsl:value-of select="comentarioGerente"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:if>

						<fo:block space-before="8mm" text-weight="bold" background-color="#C0C0C0" color="#006600" padding-left="1mm">
							APROBACION COMITE CCEE
						</fo:block>
						
						
						<fo:table table-layout="fixed" width="155.9mm">
							<fo:table-column column-width="proportional-column-width(33)"/>
							<fo:table-column column-width="proportional-column-width(33)"/>
							<fo:table-column column-width="proportional-column-width(34)"/>
							
							<fo:table-body>
								<fo:table-row text-align="left" height="20mm" display-align="after">
									<fo:table-cell >
										<fo:block>
											_______________________
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											_______________________
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											_______________________
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row text-align="left">
									<fo:table-cell>
										<fo:block>
											Nombre: <xsl:value-of select="nombreEjecutivo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											Nombre: <xsl:value-of select="nombreJefe"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											Nombre: <xsl:value-of select="nombreGerente"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row text-align="left">
									<fo:table-cell>
										<fo:block>
											Fecha: <xsl:value-of select="fechaEjecutivo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											Fecha: <xsl:value-of select="fechaJefe"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											Fecha: <xsl:value-of select="fechaGerente"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						
					</fo:block>
				</fo:flow>     
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
