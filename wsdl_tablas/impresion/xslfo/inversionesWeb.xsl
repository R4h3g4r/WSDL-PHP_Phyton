<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>	
	<xsl:param name="img"/>
	<xsl:template match="string">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="carta_landscape" page-height="8.5in" page-width="11.0in" margin-top="0.60in" margin-bottom="1.5cm" margin-left="0.30in" margin-right="0.20in">
					<fo:region-body/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="carta_landscape" font-family="Times, Times New Roman">
				<fo:flow flow-name="xsl-region-body">
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="125pt"/>
							<fo:table-column column-width="550pt"/>
							<fo:table-column column-width="125pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding="2pt" number-rows-spanned="2">
										<fo:block font-size="8pt" text-align="left">										
											<fo:external-graphic height="56pt" width="148pt" src="url({$img})"/>							
											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt">
										<fo:block font-size="14pt" text-align="center"  padding-top="6pt" padding-left="2pt">
											<fo:inline font-weight="bold"  start-indent="4pt">BALANCE DE INVERSION</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt">
										<fo:block font-size="8pt" text-align="left">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding="2pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valorizada al </fo:inline> 
											<fo:inline start-indent="4pt"><xsl:value-of select="valorizada_al"/> </fo:inline>
											<fo:inline  font-weight="bold"  start-indent="4pt">   Moneda </fo:inline> 
											<fo:inline start-indent="4pt"><xsl:value-of select="moneda"/> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt">
										<fo:block font-size="8pt" text-align="left">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="300pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Cliente</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline start-indent="4pt"><xsl:value-of select="cliente"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Rut</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline start-indent="4pt"><xsl:value-of select="rut"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Dirección</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline start-indent="4pt"><xsl:value-of select="direccion"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Cuenta de Inversión</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline start-indent="4pt"><xsl:value-of select="cuenta_de_inversion"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">			
											<fo:inline  font-weight="bold"  start-indent="4pt">Comuna</fo:inline>
										</fo:block>
									</fo:table-cell>
								
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline start-indent="4pt"><xsl:value-of select="comuna"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline  font-weight="bold" start-indent="4pt">Ejecutivo Cuenta</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline start-indent="4pt"><xsl:value-of select="ejecutivo_cuenta"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Ciudad</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline start-indent="4pt"><xsl:value-of select="ciudad"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="1pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left" padding-top="1pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>
					</fo:block>					
					<fo:block font-size="8pt">
		
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="450pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valor Actual</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valor Mes Anterior</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valor Año Anterior</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row >
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">CUENTA ACTIVO</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="fecha_actual"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="fecha_mes_anterior"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="fecha_ano_anterior"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt" >
						<fo:table text-align="center" table-layout="fixed" border="0.5pt solid black">
							<fo:table-column column-width="750pt"/>
							<fo:table-body>
								<fo:table-row >
									<fo:table-cell>
										<fo:block font-size="8pt">
											<fo:table text-align="center" table-layout="fixed" >
												<fo:table-column column-width="450pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Acciones y Derechos Preferentes de Suscripción de Acciones</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="acciones_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="acciones_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="acciones_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>		
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Renta Fija e Intermediación Financiera</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="rentas_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="rentas_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="rentas_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>													
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Facturas y Documentos por cobrar</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="faccob_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="faccob_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="faccob_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>										
	
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Cuentas por cobrar por Operaciones a Plazo(Simultáneas de Compra)</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="cuentascob_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="cuentascob_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="cuentascob_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Cuentas por cobrar por Operaciones de Renta Fija(Pacto)</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="cuentascobpacto_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="cuentascobpacto_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="cuentascobpacto_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Dividendos por cobrar</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="divcob_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="divcob_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="divcob_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Fondos Mutuos y Fondos de Inversión</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="mutuos_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="mutuos_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="mutuos_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt">Otras Cuentas por Cobrar</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="ocucob_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="ocucob_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="ocucob_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Saldo de Caja</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline  start-indent="4pt"><xsl:value-of select="saldocaja_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="saldocaja_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline  start-indent="4pt"><xsl:value-of select="saldocaja_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										</fo:block>
										
									</fo:table-cell>
								</fo:table-row>
													<fo:table-row >
														<fo:table-cell  border="0.5pt solid black">
															<fo:table text-align="center" table-layout="fixed" >
																<fo:table-column column-width="450pt"/>
																<fo:table-column column-width="100pt"/>
																<fo:table-column column-width="100pt"/>
																<fo:table-column column-width="100pt"/>
																<fo:table-body>
													<fo:table-row  >
														<fo:table-cell padding="1pt" >
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Total Activos Reales</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline  start-indent="4pt"><xsl:value-of select="totalactreales_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="totalactreales_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline  start-indent="4pt"><xsl:value-of select="totalactreales_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
																</fo:table-body>
															</fo:table>

					
					</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row >
						<fo:table-cell  border="0.5pt solid black">
							<fo:table text-align="center" table-layout="fixed" >
								<fo:table-column column-width="450pt"/>
								<fo:table-column column-width="100pt"/>
								<fo:table-column column-width="100pt"/>
								<fo:table-column column-width="100pt"/>
								<fo:table-body>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Acciones por Recibir por Operaciones a Plazo(Simultáneas de Venta)</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="accionesporrecibir_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="accionesporrecibir_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="accionesporrecibir_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
																											<fo:table-cell padding="2pt">
																												<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																													<fo:inline  font-weight="bold"  start-indent="4pt">Títulos de Renta Fija Recibidos por Compromisos de Compra(Pacto)</fo:inline>
																												</fo:block>
																											</fo:table-cell>
																											<fo:table-cell padding="2pt">
																												<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																													<fo:inline start-indent="4pt"><xsl:value-of select="titulosrentafijarecibidos_d"/></fo:inline>
																												</fo:block>
																											</fo:table-cell>
																											<fo:table-cell padding="2pt">
																												<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																													<fo:inline start-indent="4pt"><xsl:value-of select="titulosrentafijarecibidos_ma"/></fo:inline>
																												</fo:block>
																											</fo:table-cell>
																											<fo:table-cell padding="2pt">
																												<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																													<fo:inline start-indent="4pt"><xsl:value-of select="titulosrentafijarecibidos_aa"/></fo:inline>
																												</fo:block>
																											</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Acciones Recibidas por Operaciones a Plazo(Simultáneas de Compra)</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="accionesrecibidas_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="accionesrecibidas_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="accionesrecibidas_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>													
													
													
													
												</fo:table-body>
											</fo:table>

										
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell  border="0.5pt solid black">
										<fo:table text-align="center" table-layout="fixed" >
											<fo:table-column column-width="450pt"/>
											<fo:table-column column-width="100pt"/>
											<fo:table-column column-width="100pt"/>
											<fo:table-column column-width="100pt"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell padding="1pt">
														<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
															<fo:inline  font-weight="bold"  start-indent="4pt">Total Activos</fo:inline>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell padding="1pt">
														<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
															<fo:inline start-indent="4pt"><xsl:value-of select="totalactivos_d"/></fo:inline>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell padding="1pt">
														<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
															<fo:inline start-indent="4pt"><xsl:value-of select="totalactivos_ma"/></fo:inline>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell padding="1pt">
														<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
															<fo:inline start-indent="4pt"><xsl:value-of select="totalactivos_aa"/></fo:inline>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="450pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">CUENTA PASIVO</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="8pt" >
						<fo:table text-align="center" table-layout="fixed" border="0.5pt solid black">
							<fo:table-column column-width="750pt"/>
							<fo:table-body>
								<fo:table-row >
									<fo:table-cell >
										<fo:block font-size="8pt">
											<fo:table text-align="center" table-layout="fixed" >
												<fo:table-column column-width="450pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Facturas y Documentos por Pagar</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="facturasporpagar_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="facturasporpagar_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="facturasporpagar_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Cuentas por Pagar por Operaciones a Plazo(Simultáneas de Venta)</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="cuentasporpagar_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="cuentasporpagar_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="cuentasporpagar_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Cuentas por Pagar por Operaciones de Renta Fija(Pacto)</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="cuentasporpagarrentafija_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="cuentasporpagarrentafija_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="cuentasporpagarrentafija_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													
													
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Otras Cuentas por Pagar</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="otrascuentasporpagar_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="otrascuentasporpagar_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="otrascuentasporpagar_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border="0.5pt solid black">
										<fo:block font-size="8pt">
											<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="450pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-body>
													<fo:table-row >
														<fo:table-cell padding="1pt" >
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Total de Pasivos Reales</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="pasivoexigible_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="pasivoexigible_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="pasivoexigible_aa"/></fo:inline>
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
										<fo:block font-size="8pt">
											<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="450pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Acciones por entregar por Operaciones a Plazo(Simultáneas de Compra)</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="accionesporentregar_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="accionesporentregar_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="accionesporentregar_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Patrimonio</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="patrimonio_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="patrimonio_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="patrimonio_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Total de Pasivos</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="totalpasivos_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="totalpasivos_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="totalpasivos_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													
												</fo:table-body>
											</fo:table>
										</fo:block>
										
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border="0.5pt solid black">
										<fo:block font-size="8pt">
											<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="450pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Unidades de Valor Patrimonial</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="unidadesvalorpatrimonial_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="unidadesvalorpatrimonial_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="unidadesvalorpatrimonial_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Índice de Valor Patrimonial</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="indicevalorpatrimonial_d"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="indicevalorpatrimonial_ma"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="indicevalorpatrimonial_aa"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													
												</fo:table-body>
											</fo:table>
										</fo:block>
										
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border="0.5pt solid black">
										<fo:block font-size="8pt">
											<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="450pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-column column-width="100pt"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt">Semanal</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt">Mensual</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt">Anual</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Rentabilidades</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="rentabilidad_d"/>%</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="rentabilidad_ma"/>%</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline start-indent="4pt"><xsl:value-of select="rentabilidad_aa"/>%</fo:inline>
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
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	</xsl:stylesheet>
