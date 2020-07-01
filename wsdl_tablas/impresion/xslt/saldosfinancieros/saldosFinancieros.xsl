<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables -->
	<xsl:variable name="qRows">
	   <xsl:value-of select="saldos/qRows" />
	</xsl:variable>
	<xsl:variable name="bordeCabecera">
		#6B6B6B
	</xsl:variable>
	<xsl:variable name="fondoPlomo">
		#6B6B6B
	</xsl:variable>
	<xsl:variable name="colorTitulos">
		#333333
	</xsl:variable>
	<xsl:variable name="bgcolor">
		#737277
	</xsl:variable>
	<xsl:variable name="bgcolortexto">
		#FFFFFF
	</xsl:variable>
	<xsl:variable name="bgcolortotal">
		#000000
	</xsl:variable>
	<xsl:variable name="lineas">
		#CCCCCC
	</xsl:variable>
	<xsl:variable name="txt">
		#FFFFF
	</xsl:variable>
	<xsl:variable name="txtCabecera">
		#FFFFFF
	</xsl:variable>
	<xsl:variable name="txt-azul-claro">
		#0061A5
	</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">
		#000000
	</xsl:variable>
	<xsl:variable name="alto-filas">
		5mm
	</xsl:variable>
	<xsl:variable name="espacio-subtitulos">
		2mm
	</xsl:variable>
	<xsl:variable name="borde-tabla">
		#CCCCCC
	</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">
		2mm
	</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">
		1mm
	</xsl:variable>
	<xsl:variable name="size-fuente-margen">
		7pt
	</xsl:variable>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm" page-width="25.5cm" margin-top="1cm"
					margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm"
						background-color="#ffffff" />
					<fo:region-before extent="3cm" />
					<fo:region-after extent="2cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina"
				initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="1mm">
						<fo:table table-layout="fixed" width="20cm">
							<fo:table-column column-width="10cm" />
							<fo:table-column column-width="10cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src"><xsl:value-of
												select="saldos/rutaImagen" />logo_bci_print_color.jpg</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold"
											space-after="1mm" text-align="right" color="{$txt}">
											Usuario:
											<xsl:value-of select="saldos/nombre" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="2">
										<!-- Separador Linea -->
										<fo:block space-after="2mm">
											<fo:leader color="{$lineas}" leader-pattern="rule"
												leader-length="35cm" />
										</fo:block>
										<!-- Separador Linea -->
									</fo:table-cell>
									<fo:table-cell>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="8pt" font-weight="normal"
											space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="saldos/fechaImpresion" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador Linea -->
					<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule"
							leader-length="35cm" />
					</fo:block>
					<!-- Separador Linea -->
					<fo:block font-size="6pt" font-weight="normal"
						space-after="1mm" text-align="left" color="{$txt}">Atención a Clientes Bci
						Directo: 600-692-8000</fo:block>
					<fo:block font-size="6pt" font-weight="normal"
						space-after="1mm" text-align="left" color="{$txt}">Dirección: Av. El Golf
						125, Las Condes, Santiago/Dirección para notificaciones Legales:
						Agustinas 1161, 7° piso, Santiago Centro, Santiago.</fo:block>
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm"
						text-align="right" color="{$txt}">
						Pagina
						<fo:page-number />
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido" />
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template name="contenido">
		<!-- cabecera cliente -->
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed" width="19cm">
				<fo:table-column column-width="13cm" />
				<fo:table-column column-width="5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- texto Saldos Financieros -->
							<fo:block font-size="20pt" font-weight="bold"
								space-after="1mm" text-align="left" color="{$txt}">Saldos Financieros
							</fo:block>
							<!-- texto Saldos Financieros -->
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="8pt" font-weight="normal"
								space-after="5mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Saldos al cierre del </fo:inline>
								<fo:inline color="{$txt}">
									<xsl:value-of select="saldos/fechaCierre" />
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block space-after="1mm" border="1pt solid color #CCCCCC"
			space-before="1mm" padding-left="2mm" padding-top="3mm" margin-right="3mm"
			padding-bottom="3mm">
			<fo:block font-size="20pt" font-weight="bold" space-after="1mm"
				text-align="left" color="{$colorTitulos}">



				<fo:block>
					<fo:block font-size="7pt" space-after="1mm" text-align="right">





						<fo:table table-layout="fixed" width="21cm" margin-left="2mm">
							<fo:table-column column-width="7cm" />
							<fo:table-column column-width="4cm" />
							<fo:table-column column-width="4cm" />
							<fo:table-column column-width="4cm" />

							<fo:table-body>


								<!--CABECERA DE LA TABLA PARA LOS SALDOS FINANCIEROS -->
								<fo:table-row>

									<fo:table-cell background-color="{$fondoPlomo}"
										border="0.5pt solid {$lineas}">
										<fo:block font-weight="bold" color="{$txtCabecera}"
											padding-before="2mm" padding-after="2mm" text-align="center">

										</fo:block>
									</fo:table-cell>

									<fo:table-cell background-color="{$fondoPlomo}"
										border="0.5pt solid {$lineas}">
										<fo:block font-weight="bold" color="{$txtCabecera}"
											padding-before="2mm" padding-after="2mm" text-align="center">
											Activos $
										</fo:block>
									</fo:table-cell>

									<fo:table-cell background-color="{$fondoPlomo}"
										border="0.5pt solid {$lineas}">
										<fo:block font-weight="bold" color="{$txtCabecera}"
											padding-before="2mm" padding-after="2mm" text-align="center">
											Pasivos $
										</fo:block>
									</fo:table-cell>

									<fo:table-cell background-color="{$fondoPlomo}"
										border="0.5pt solid {$lineas}">
										<fo:block font-weight="bold" color="{$txtCabecera}"
											padding-before="2mm" padding-after="2mm" text-align="center">
											Derivados $
										</fo:block>
									</fo:table-cell>

								</fo:table-row>

								<!--TOTAL DE TODOS LOS RUTS SELECCIONADOS -->

								<fo:table-row>
									<fo:table-cell background-color="{$lineas}"
										border="0.5pt solid {$lineas}">
										<fo:block font-weight="bold" color="#000000"
											padding-before="1mm" padding-after="1mm" text-align="left">
											&#0160;Total de RUTs selecionados
										</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="{$lineas}"
										border-left="0.5pt solid #FFFFFF">
										<fo:block font-weight="bold" color="#000000"
											padding-before="1mm" padding-after="1mm" text-align="right">
											<xsl:value-of select="saldos/resumenTotalActivos" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="{$lineas}"
										border-left="0.5pt solid #FFFFFF">
										<fo:block font-weight="bold" color="#000000"
											padding-before="1mm" padding-after="1mm" text-align="right">
											<xsl:value-of select="saldos/resumenTotalPasivos" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="{$lineas}"
										border-left="0.5pt solid #FFFFFF">
										<fo:block font-weight="bold" color="#000000"
											padding-before="1mm" padding-after="1mm" text-align="right">
											<xsl:value-of select="saldos/resumenTotalDerivados" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<!--LISTADO CON TODOS ACTIVOS PASIVOS Y DERIVADOS -->
								<xsl:for-each select="saldos/listadoResumen">



									<fo:table-row text-align="right">

										<fo:table-cell border="0.5pt solid {$lineas}"
											text-align="left">
											<fo:block font-weight="normal" padding-before="1mm"
												padding-after="1mm" margin-left="5pt">
												&#0160;
											
												<fo:list-item>
													<fo:list-item-label>
														
														<fo:block text-align="left">
																<xsl:value-of select="rut" />
														</fo:block>
														
													</fo:list-item-label>
													<fo:list-item-body>
														
														<fo:block text-align="left" margin-left="50pt" space-before="1mm">
																<xsl:value-of select="nombre" />
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>

										<fo:table-cell border="0.5pt solid {$lineas}">
											<fo:block font-weight="normal" padding-before="1mm"
												padding-after="1mm" margin-left="5pt">
												&#0160;
												<xsl:if test="tipoProductoSeleccionado = 'activos'">
													<fo:list-item>
														<fo:list-item-label>
															<!--ico check-->
															<xsl:if test="checkeado='true'">
															<fo:block text-align="left" margin-left="2mm">
																<fo:external-graphic width="3mm" height="3mm">
																	<xsl:attribute name="src"><xsl:value-of select="rutaImagen"/>checked.gif</xsl:attribute>
																</fo:external-graphic>
															</fo:block>
															</xsl:if>
															<xsl:if test="not(checkeado='true')">
															<fo:block text-align="left" margin-left="2mm">
																<fo:external-graphic width="3mm" height="3mm">
																	<xsl:attribute name="src"><xsl:value-of select="rutaImagen"/>checkno.gif</xsl:attribute>
																</fo:external-graphic>
															</fo:block>
															</xsl:if>
														</fo:list-item-label>
														<fo:list-item-body>
															<!--saldo-->
															<fo:block text-align="right" margin-right="1mm">
																 <xsl:value-of select="activo"/>
															</fo:block>
														</fo:list-item-body>
													</fo:list-item>
												</xsl:if>
												<xsl:if test="not(tipoProductoSeleccionado = 'activos')">
												<fo:list-item>
														<fo:list-item-label>
															<!--ico check-->
															<fo:block text-align="left" margin-left="2mm">
																<fo:external-graphic width="3mm" height="3mm">
																	<xsl:attribute name="src"><xsl:value-of select="rutaImagen"/>checkno.gif</xsl:attribute>
																</fo:external-graphic>
															</fo:block>
														</fo:list-item-label>
														<fo:list-item-body>
															<!--saldo-->
															<fo:block text-align="right" margin-right="1mm">
																 <xsl:value-of select="activo"/>
															</fo:block>
														</fo:list-item-body>
													</fo:list-item>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid {$lineas}">
											<fo:block font-weight="normal" padding-before="1mm"
												padding-after="1mm" margin-left="5pt">
												&#0160;
												<xsl:if test="tipoProductoSeleccionado = 'pasivos'">
													<fo:list-item>
														<fo:list-item-label>
															<!--ico check-->
															<xsl:if test="checkeado='true'">
																<fo:block text-align="left" margin-left="2mm">
																	<fo:external-graphic width="3mm" height="3mm">
																		<xsl:attribute name="src"><xsl:value-of select="rutaImagen"/>checked.gif</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</xsl:if>
															<xsl:if test="not(checkeado='true')">
																<fo:block text-align="left" margin-left="2mm">
																	<fo:external-graphic width="3mm" height="3mm">
																		<xsl:attribute name="src"><xsl:value-of select="rutaImagen"/>checkno.gif</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</xsl:if>
														</fo:list-item-label>
														<fo:list-item-body>
															<!--saldo-->
															<fo:block text-align="right" margin-right="1mm">
																 <xsl:value-of select="pasivo"/>
															</fo:block>
														</fo:list-item-body>
													</fo:list-item>
												</xsl:if>
												<xsl:if test="not(tipoProductoSeleccionado = 'pasivos')">
												<fo:list-item>
														<fo:list-item-label>
															<!--ico check-->
															<fo:block text-align="left" margin-left="2mm">
																<fo:external-graphic width="3mm" height="3mm">
																	<xsl:attribute name="src"><xsl:value-of select="rutaImagen"/>checkno.gif</xsl:attribute>
																</fo:external-graphic>
															</fo:block>
														</fo:list-item-label>
														<fo:list-item-body>
															<!--saldo-->
															<fo:block text-align="right" margin-right="1mm">
																 <xsl:value-of select="pasivo"/>
															</fo:block>
														</fo:list-item-body>
													</fo:list-item>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid {$lineas}">
											<fo:block font-weight="normal" padding-before="1mm"
												padding-after="1mm" margin-left="5pt">
												&#0160;
												<xsl:if test="tipoProductoSeleccionado = 'derivados'">
													<fo:list-item>
														<fo:list-item-label>
															<!--ico check-->
															<xsl:if test="checkeado = 'true'">
															<fo:block text-align="left" margin-left="2mm">
																<fo:external-graphic width="3mm" height="3mm">
																	<xsl:attribute name="src"><xsl:value-of select="rutaImagen"/>checked.gif</xsl:attribute>
																</fo:external-graphic>
															</fo:block>
															</xsl:if>
															<xsl:if test="not(checkeado = 'true')">
															<fo:block text-align="left" margin-left="2mm">
																<fo:external-graphic width="3mm" height="3mm">
																	<xsl:attribute name="src"><xsl:value-of select="rutaImagen"/>checkno.gif</xsl:attribute>
																</fo:external-graphic>
															</fo:block>
															</xsl:if>
														</fo:list-item-label>
														<fo:list-item-body>
															<!--saldo-->
															<fo:block text-align="right" margin-right="1mm">
																 <xsl:value-of select="derivado"/>
															</fo:block>
														</fo:list-item-body>
													</fo:list-item>
												</xsl:if>												
												<xsl:if test="not(tipoProductoSeleccionado = 'derivados')">
												<fo:list-item>
														<fo:list-item-label>
															<!--ico check-->
															<fo:block text-align="left" margin-left="2mm">
																<fo:external-graphic width="3mm" height="3mm">
																	<xsl:attribute name="src"><xsl:value-of select="rutaImagen"/>checkno.gif</xsl:attribute>
																</fo:external-graphic>
															</fo:block>
														</fo:list-item-label>
														<fo:list-item-body>
															<!--saldo-->
															<fo:block text-align="right" margin-right="1mm">
																 <xsl:value-of select="derivado"/>
															</fo:block>
														</fo:list-item-body>
													</fo:list-item>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>




								</xsl:for-each>


							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:block>
			</fo:block>







			<fo:block space-after="3mm" />
			<!-- tabla 1 -->
			<xsl:if test="saldos/cuenta">
				<fo:block font-size="7pt" space-after="1mm" text-align="right">
					<fo:block font-size="14pt" font-weight="bold" color="{$colorTitulos}"
						padding-before="1mm" padding-after="1mm" text-align="left">
						<fo:table>
						  <fo:table-column/>
						  <fo:table-column/>
						  <fo:table-body>
						      <fo:table-row>
						          <fo:table-cell>
						              <fo:block>
										Detalle de <xsl:value-of select="/saldos/nombreProducto" />						  
						              </fo:block>
						          </fo:table-cell>
                                  <fo:table-cell>
                                      <fo:block>
                                        Graficado por <xsl:value-of select="/saldos/tipoGrafico" />                       
                                      </fo:block>
                                  </fo:table-cell>
						      </fo:table-row>
						  </fo:table-body>
						</fo:table>
					</fo:block>
					<fo:table table-layout="fixed" width="19cm">
						<fo:table-column column-width="2.5cm" />
						<fo:table-column column-width="1.5cm" />
						<fo:table-column column-width="1.5cm" />
						<fo:table-column column-width="5.5cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell background-color="{$fondoPlomo}"
									border="0.5pt solid {$lineas}" font-weight="bold">
									<fo:block font-weight="normal" color="{$txtCabecera}"
										padding-before="1mm" padding-after="1mm" text-align="center">
										<xsl:value-of select="/saldos/tituloColumna" />
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="{$fondoPlomo}"
									border="0.5pt solid {$lineas}" font-weight="bold">
									<fo:block font-weight="normal" color="{$txtCabecera}"
										padding-before="1mm" padding-after="1mm" text-align="center">
										Monto
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="{$fondoPlomo}"
									border="0.5pt solid {$lineas}" font-weight="bold">
									<fo:block font-weight="normal" color="{$txtCabecera}"
										padding-before="1mm" padding-after="1mm" text-align="center">
										Participacion %</fo:block>
								</fo:table-cell>
								<fo:table-cell number-rows-spanned="{$qRows + 3}">
						            <fo:block font-size="8pt" font-weight="normal" space-after="2mm"
						                text-align="left" color="{$txt}">               
						                <fo:instream-foreign-object>
						                    <xsl:value-of select="/saldos/grafico" disable-output-escaping="yes"/>
						                </fo:instream-foreign-object>
						            </fo:block>
								</fo:table-cell>

							</fo:table-row>




							<xsl:for-each select="saldos/cuenta">


								<fo:table-row text-align="right">
									<fo:table-cell border="0.5pt solid {$lineas}" text-align="left">
										<fo:block font-weight="normal" color="{$txt-azul-oscuro}"
											padding-before="1mm" padding-after="1mm" text-align="left">
											&#0160;
											<xsl:value-of select="producto" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="0.5pt solid {$lineas}"
										text-align="right">
										<fo:block font-weight="normal" padding-before="1mm"
											padding-after="1mm" margin-left="5pt">
											&#0160;
											<xsl:value-of select="monto" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="0.5pt solid {$lineas}"
										text-align="right">
										<fo:block font-weight="normal" padding-before="1mm"
											padding-after="1mm" margin-left="5pt">
											&#0160;
											<xsl:value-of select="porcentaje" />
										</fo:block>
									</fo:table-cell>


								</fo:table-row>
									



							</xsl:for-each>
<fo:table-row>
									<fo:table-cell background-color="{$lineas}"
										border-top="0.5pt solid {$fondoPlomo}" border-bottom="0.5pt solid {$fondoPlomo}" 
										border-right="0.5pt solid {$fondoPlomo}"
										number-columns-spanned="3">
										<fo:block font-weight="bold" color="#000000"
											padding-before="1mm" padding-after="1mm" text-align="right">
											Total <xsl:value-of select="/saldos/nombreDetalleProducto" /> seleccionados $ <xsl:value-of select="/saldos/montoDetalleProducto" /> 
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
								    <fo:table-cell number-columns-spanned="3" background-color="#FFFFFF">
								        <fo:block font-weight="normal" padding-before="1mm"
                                            padding-after="1mm" margin-left="5pt">
                                            
    								        <!-- Empty cell for design purposes -->
                                            
                                        </fo:block>
								    </fo:table-cell>
								</fo:table-row>



						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
			<!-- tabla 1 -->
		</fo:block>
		<!-- Separador Linea -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule"
				leader-length="25cm" />
		</fo:block>
	</xsl:template>
</xsl:stylesheet>
