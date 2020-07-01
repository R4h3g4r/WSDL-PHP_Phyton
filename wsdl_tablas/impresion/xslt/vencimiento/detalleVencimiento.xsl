<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bordeCabecera">#6B6B6B</xsl:variable>
	<xsl:variable name="fondoPlomo">#6B6B6B</xsl:variable>
	<xsl:variable name="colorTitulos">#333333</xsl:variable>
	<xsl:variable name="bgcolor">#737277</xsl:variable>
	<xsl:variable name="bgcolortexto">#FFFFFF</xsl:variable>
	<xsl:variable name="bgcolortotal">#000000</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#FFFFF</xsl:variable>
	<xsl:variable name="txtCabecera">#FFFFFF</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#000000</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="25.5cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/>
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="1mm">
						<fo:table table-layout="fixed" width="20cm">
							<fo:table-column column-width="10cm"/>
							<fo:table-column column-width="10cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>logo_bci_print_color.jpg</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Usuario:
											<xsl:value-of select="detalle-venc/nombre"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="2">
										<!-- Separador Linea -->
										<fo:block space-after="2mm">
											<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="35cm"/>
										</fo:block>
										<!-- Separador Linea-->
									</fo:table-cell>
									<fo:table-cell>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="8pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="detalle-venc/fechaImpresion"/>
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
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="35cm"/>
					</fo:block>
					<!-- Separador Linea-->
					<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">Atención a Clientes Bci Directo: 600-692-8000</fo:block>
					<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">Dirección: Av. El Golf 125, Las Condes, Santiago/Dirección para notificaciones Legales: Agustinas 1161, 7° piso, Santiago Centro, Santiago.</fo:block>
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Pagina <fo:page-number/>
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template name="contenido">
		<!-- cabecera cliente -->
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed" width="19cm">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- texto Vencimientos -->
							<fo:block font-size="20pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">Vencimientos</fo:block>
							<!-- texto Vencimientos -->
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="8pt" font-weight="normal" space-after="5mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Saldos al cierre del </fo:inline>
								<fo:inline color="{$txt}">
									<xsl:value-of select="detalle-venc/fechaCierre"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block space-after="1mm" border="1pt solid color #CCCCCC" space-before="1mm" padding-left="2mm" padding-top="3mm" margin-right="3mm" padding-bottom="3mm">
			<fo:block font-size="20pt" font-weight="bold" space-after="1mm" text-align="left" color="{$colorTitulos}">
	Detalle
<fo:block>
					<!--DATOS DE BUSQUEDA-->
					<fo:block space-before="1mm" font-weight="bold" font-size="11pt">
						<fo:list-item>
							<fo:list-item-label>
								<fo:block text-align="left" margin-left="1mm">
						Desde: <fo:inline>
										<xsl:value-of select="detalle-venc/fechaBusquedaDesde"/>
									</fo:inline>
								</fo:block>
							</fo:list-item-label>
							<fo:list-item-body>
								<fo:block text-align="center">
						Hasta: <fo:inline>
										<xsl:value-of select="detalle-venc/fechaBusquedaHasta"/>
									</fo:inline>
								</fo:block>
							</fo:list-item-body>
						</fo:list-item>
					</fo:block>
					<!--FIN DATOS DE BUSQUEDA-->
					<!-- Separador Linea -->
					<fo:block space-after="0mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm" margin-right="1pt"/>
					</fo:block>
					<!-- Separador Linea-->
					<fo:block font-size="14pt" font-weight="bold" color="{$colorTitulos}" padding-before="1mm" padding-after="1mm" text-align="left">
		Total por Moneda
</fo:block>
					<fo:block font-size="7pt" space-after="1mm" text-align="right">
						<fo:table table-layout="fixed" width="19cm" margin-left="2mm">
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="3.5cm"/>
							<fo:table-column column-width="3.5cm"/>
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$lineas}">
										<fo:block font-weight="bold" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Montos Totales del Período</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$lineas}">
										<fo:block font-weight="bold" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		A recibir moneda de origen</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$lineas}">
										<fo:block font-weight="bold" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		A pagar moneda de origen</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$lineas}">
										<fo:block font-weight="bold" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Neto moneda origen</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$lineas}">
										<fo:block font-weight="bold" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Neto equivalente en pesos</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<xsl:if test="detalle-venc/cabecera/netoEquivalentePesos != 0">
									<!--CABECERA EN PESOS-->
									<fo:table-row>
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}">
											<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
				&#0160;Total en $
				</fo:block>
										</fo:table-cell>
										<!--CABECERA A RECIBIR-->
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}" alignment-baseline="central">
											<fo:block>
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO -->
														<fo:block text-align="left" margin-left="2mm">
															<!--SIGNO POSITIVO-->
															<xsl:if test="detalle-venc/cabecera/recibirPesosSigno = 'positivo'">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
															<!--SIGNO NEGATIVO-->
															<xsl:if test="detalle-venc/cabecera/recibirPesosSigno = 'negativo'  ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
														</fo:block>
														<!--FIN SIGNO-->
													</fo:list-item-label>
													<fo:list-item-body>
														<!--MONTO-->
														<fo:block text-align="right" margin-right="1mm" space-before="1mm">
															<xsl:value-of select="detalle-venc/cabecera/recibirPesos"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>
										<!--CABECERA A PAGAR-->
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}">
											<fo:block>
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO -->
														<fo:block text-align="left" margin-left="2mm">
															<!--SIGNO POSITIVO-->
															<xsl:if test="detalle-venc/cabecera/pagarPesosSigno = 'positivo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
															<!--SIGNO NEGATIVO-->
															<xsl:if test=" detalle-venc/cabecera/pagarPesosSigno = 'negativo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
														</fo:block>
														<!--FIN SIGNO-->
													</fo:list-item-label>
													<fo:list-item-body>
														<!--MONTO-->
														<fo:block text-align="right" margin-right="1mm" space-before="1mm">
															<xsl:value-of select="detalle-venc/cabecera/pagarPesos"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>
										<!--CABECERA NETO EN MONEDA ORIGEN-->
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}">
											<fo:block>
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO -->
														<fo:block text-align="left" margin-left="2mm">
															<!--SIGNO POSITIVO-->
															<xsl:if test="detalle-venc/cabecera/monedaOrigenPesosSigno = 'positivo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
															<!--SIGNO NEGATIVO-->
															<xsl:if test="detalle-venc/cabecera/monedaOrigenPesosSigno = 'negativo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
														</fo:block>
														<!--FIN SIGNO-->
													</fo:list-item-label>
													<fo:list-item-body>
														<!--MONTO-->
														<fo:block text-align="right" margin-right="1mm" space-before="1mm">
															<xsl:value-of select="detalle-venc/cabecera/monedaOrigenPesos"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>
										<!--CABECERA NETO EQUIVALENTE EN PESOS-->
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}">
											<fo:block>
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO -->
														<fo:block text-align="left" margin-left="2mm">
															<!--SIGNO POSITIVO-->
															<xsl:if test="detalle-venc/cabecera/netoEquivalentePesosSigno = 'positivo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
															<!--SIGNO NEGATIVO-->
															<xsl:if test="detalle-venc/cabecera/netoEquivalentePesosSigno = 'negativo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
														</fo:block>
														<!--FIN SIGNO-->
													</fo:list-item-label>
													<fo:list-item-body>
														<!--MONTO-->
														<fo:block text-align="right" margin-right="1mm" space-before="1mm">
															<xsl:value-of select="detalle-venc/cabecera/netoEquivalentePesos"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="detalle-venc/cabecera/netoEquivalentePesosUF != 0">
									<!--CABECERA EN UF-->
									<fo:table-row>
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}">
											<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
				&#0160;Total en UF
				</fo:block>
										</fo:table-cell>
										<!--CABECERA A RECIBIR-->
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}" alignment-baseline="central">
											<fo:block>
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO -->
														<fo:block text-align="left" margin-left="2mm">
															<!--SIGNO POSITIVO-->
															<xsl:if test="detalle-venc/cabecera/recibirUFSigno = 'positivo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
															<!--SIGNO NEGATIVO-->
															<xsl:if test="detalle-venc/cabecera/recibirUFSigno = 'negativo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
														</fo:block>
														<!--FIN SIGNO-->
													</fo:list-item-label>
													<fo:list-item-body>
														<!--MONTO-->
														<fo:block text-align="right" margin-right="1mm" space-before="1mm">
															<xsl:value-of select="detalle-venc/cabecera/recibirUF"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>
										<!--CABECERA A PAGAR-->
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}">
											<fo:block>
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO -->
														<fo:block text-align="left" margin-left="2mm">
															<!--SIGNO POSITIVO-->
															<xsl:if test="detalle-venc/cabecera/pagarUFSigno = 'positivo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
															<!--SIGNO NEGATIVO-->
															<xsl:if test="detalle-venc/cabecera/pagarUFSigno = 'negativo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
														</fo:block>
														<!--FIN SIGNO-->
													</fo:list-item-label>
													<fo:list-item-body>
														<!--MONTO-->
														<fo:block text-align="right" margin-right="1mm" space-before="1mm">
															<xsl:value-of select="detalle-venc/cabecera/pagarUF "/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>
										<!--CABECERA NETO EN MONEDA ORIGEN-->
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}">
											<fo:block>
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO -->
														<fo:block text-align="left" margin-left="2mm">
															<!--SIGNO POSITIVO-->
															<xsl:if test="detalle-venc/cabecera/netoMonedaOrigenUFSigno = 'positivo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
															<!--SIGNO NEGATIVO-->
															<xsl:if test="detalle-venc/cabecera/netoMonedaOrigenUF = 'negativo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
														</fo:block>
														<!--FIN SIGNO-->
													</fo:list-item-label>
													<fo:list-item-body>
														<!--MONTO-->
														<fo:block text-align="right" margin-right="1mm" space-before="1mm">
															<xsl:value-of select="detalle-venc/cabecera/netoMonedaOrigenUF  "/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>
										<!--CABECERA NETO EQUIVALENTE EN PESOS-->
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}">
											<fo:block>
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO -->
														<fo:block text-align="left" margin-left="2mm">
															<!--SIGNO POSITIVO-->
															<xsl:if test="detalle-venc/cabecera/netoEquivalentePesosUFSigno = 'positivo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
															<!--SIGNO NEGATIVO-->
															<xsl:if test="detalle-venc/cabecera/netoEquivalentePesosUFSigno = 'negativo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
														</fo:block>
														<!--FIN SIGNO-->
													</fo:list-item-label>
													<fo:list-item-body>
														<!--MONTO-->
														<fo:block text-align="right" margin-right="1mm" space-before="1mm">
															<xsl:value-of select="detalle-venc/cabecera/netoEquivalentePesosUF "/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="detalle-venc/cabecera/equivalentePesosDolar != 0">
									<!--CABECERA EN USD-->
									<fo:table-row>
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}">
											<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
				&#0160;Total en USD
				</fo:block>
										</fo:table-cell>
										<!--CABECERA A RECIBIR-->
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}" alignment-baseline="central">
											<fo:block>
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO -->
														<fo:block text-align="left" margin-left="2mm">
															<!--SIGNO POSITIVO-->
															<xsl:if test="detalle-venc/cabecera/recibirDolarSigno = 'positivo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
															<!--SIGNO NEGATIVO-->
															<xsl:if test="detalle-venc/cabecera/recibirDolarSigno = 'negativo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
														</fo:block>
														<!--FIN SIGNO-->
													</fo:list-item-label>
													<fo:list-item-body>
														<!--MONTO-->
														<fo:block text-align="right" margin-right="1mm" space-before="1mm">
															<xsl:value-of select="detalle-venc/cabecera/recibirDolar "/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>
										<!--CABECERA A PAGAR-->
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}">
											<fo:block>
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO -->
														<fo:block text-align="left" margin-left="2mm">
															<!--SIGNO POSITIVO-->
															<xsl:if test="detalle-venc/cabecera/pagarDolarSigno = 'positivo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
															<!--SIGNO NEGATIVO-->
															<xsl:if test="detalle-venc/cabecera/pagarDolarSigno = 'negativo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
														</fo:block>
														<!--FIN SIGNO-->
													</fo:list-item-label>
													<fo:list-item-body>
														<!--MONTO-->
														<fo:block text-align="right" margin-right="1mm" space-before="1mm">
															<xsl:value-of select="detalle-venc/cabecera/pagarDolar "/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>
										<!--CABECERA NETO EN MONEDA ORIGEN-->
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}">
											<fo:block>
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO -->
														<fo:block text-align="left" margin-left="2mm">
															<!--SIGNO POSITIVO-->
															<xsl:if test="detalle-venc/cabecera/monedaOrigenDolarSigno = 'positivo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
															<!--SIGNO NEGATIVO-->
															<xsl:if test="detalle-venc/cabecera/monedaOrigenDolarSigno = 'negativo'">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
														</fo:block>
														<!--FIN SIGNO-->
													</fo:list-item-label>
													<fo:list-item-body>
														<!--MONTO-->
														<fo:block text-align="right" margin-right="1mm" space-before="1mm">
															<xsl:value-of select="detalle-venc/cabecera/monedaOrigenDolar "/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>
										<!--CABECERA NETO EQUIVALENTE EN PESOS-->
										<fo:table-cell background-color="{$lineas}" border="0.5pt solid {$lineas}">
											<fo:block>
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO -->
														<fo:block text-align="left" margin-left="2mm">
															<!--SIGNO POSITIVO-->
															<xsl:if test="detalle-venc/cabecera/equivalentePesosDolarSigno = 'positivo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
															<!--SIGNO NEGATIVO-->
															<xsl:if test="detalle-venc/cabecera/equivalentePesosDolarSigno = 'negativo' ">
																<fo:external-graphic width="2.5mm" height="2.5mm">
																	<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>
														</fo:block>
														<!--FIN SIGNO-->
													</fo:list-item-label>
													<fo:list-item-body>
														<!--MONTO-->
														<fo:block text-align="right" margin-right="1mm" space-before="1mm">
															<xsl:value-of select="detalle-venc/cabecera/equivalentePesosDolar "/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<fo:table-row>
									<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$fondoPlomo}">
										<fo:block font-weight="bold" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;Total General en $
			</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$fondoPlomo}">
										<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;
			</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$fondoPlomo}">
										<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;
			</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$fondoPlomo}">
										<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;
			</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$lineas}">
										<fo:block>
											<fo:list-item>
												<fo:list-item-label>
													<!--SIGNO -->
													<fo:block text-align="left" margin-left="2mm">
														<!--SIGNO POSITIVO-->
														<xsl:if test="detalle-venc/cabecera/totalPesosSigno = 'positivo' ">
															<fo:external-graphic width="2.5mm" height="2.5mm">
																<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</xsl:if>
														<!--SIGNO NEGATIVO-->
														<xsl:if test="detalle-venc/cabecera/totalPesosSigno = 'negativo' ">
															<fo:external-graphic width="2.5mm" height="2.5mm">
																<xsl:attribute name="src"><xsl:value-of select="detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</xsl:if>
													</fo:block>
													<!--FIN SIGNO-->
												</fo:list-item-label>
												<fo:list-item-body>
													<!--MONTO-->
													<fo:block text-align="right" margin-right="1mm" space-before="1mm" color="{$txtCabecera}" font-weight="bold">
														<xsl:value-of select="detalle-venc/cabecera/totalPesos "/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:block>
			</fo:block>
			<fo:block space-after="3mm"/>
			<!-- tabla 1 -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:block font-size="14pt" font-weight="bold" color="{$colorTitulos}" padding-before="1mm" padding-after="1mm" text-align="left">
		Detalle de Operaciones
</fo:block>
				<fo:table table-layout="fixed" width="19cm">
					<fo:table-column column-width="3cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-column column-width="2cm"/>
					<fo:table-column column-width="3cm"/>
					<fo:table-column column-width="3cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$lineas}" font-weight="bold">
								<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">
		Fecha de vencimiento</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$lineas}" font-weight="bold">
								<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">
		Razón social</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$lineas}" font-weight="bold">
								<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">
		Producto</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$lineas}" font-weight="bold">
								<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">
		Moneda de operacion</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$lineas}" font-weight="bold">
								<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">
		Monto al Vencimiento moneda de origen</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$fondoPlomo}" border="0.5pt solid {$lineas}" font-weight="bold">
								<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">
		Monto al Vencimiento equivalente en Pesos</fo:block>
							</fo:table-cell>
						</fo:table-row>
		<xsl:for-each select="detalle-venc/listado">
							<fo:table-row text-align="right">
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="fechaVencimiento"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}" text-align="left">
									<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" margin-left="5pt">
		&#0160;<xsl:value-of select="razonSocial"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}" text-align="left">
									<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" margin-left="5pt">
		&#0160;<xsl:value-of select="producto"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block>
										<fo:list-item>
											<fo:list-item-label>
												<!--SIGNO -->
												<fo:block text-align="left" margin-left="2mm">
													<!--SIGNO POSITIVO-->
													<xsl:if test="montoMonedaSigno = 'positivo' ">
														<fo:external-graphic width="2.5mm" height="2.5mm">
															<xsl:attribute name="src"><xsl:value-of select="/detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
														</fo:external-graphic>
													</xsl:if>
													<!--SIGNO NEGATIVO-->
													<xsl:if test="montoMonedaSigno = 'negativo' ">
														<fo:external-graphic width="2.5mm" height="2.5mm">
															<xsl:attribute name="src"><xsl:value-of select="/detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
														</fo:external-graphic>
													</xsl:if>
												</fo:block>
												<!--FIN SIGNO-->
											</fo:list-item-label>
											<fo:list-item-body>
												<!--MONTO-->
												<fo:block text-align="right" margin-right="1mm" space-before="1mm">
													<xsl:value-of select="montoMoneda "/>
												</fo:block>
											</fo:list-item-body>
										</fo:list-item>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block>
										<fo:list-item>
											<fo:list-item-label>
												<!--SIGNO -->
												<fo:block text-align="left" margin-left="2mm">
													<!--SIGNO POSITIVO-->
													<xsl:if test="netoEquivalenteSigno = 'positivo' ">
														<fo:external-graphic width="2.5mm" height="2.5mm">
															<xsl:attribute name="src"><xsl:value-of select="/detalle-venc/rutaImagen"/>ico_mas.gif</xsl:attribute>
														</fo:external-graphic>
													</xsl:if>
													<!--SIGNO NEGATIVO-->
													<xsl:if test=" netoEquivalenteSigno = 'negativo' ">
														<fo:external-graphic width="2.5mm" height="2.5mm">
															<xsl:attribute name="src"><xsl:value-of select="/detalle-venc/rutaImagen"/>ico_menos.gif</xsl:attribute>
														</fo:external-graphic>
													</xsl:if>
												</fo:block>
												<!--FIN SIGNO-->
											</fo:list-item-label>
											<fo:list-item-body>
												<!--MONTO-->
												<fo:block text-align="right" margin-right="1mm" space-before="1mm">
													<xsl:value-of select="netoEquivalente"/>
												</fo:block>
											</fo:list-item-body>
										</fo:list-item>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- tabla 1 -->
			<fo:block font-size="8pt" font-weight="normal" space-after="2mm" text-align="left" color="{$txt}">
				<xsl:value-of select="/detalle-venc/valoresMonetarios"/>
			</fo:block>
		</fo:block>
		<!-- Separador Linea -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="25cm"/>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>