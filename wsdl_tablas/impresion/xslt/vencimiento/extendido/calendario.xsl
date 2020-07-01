<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#737277</xsl:variable>
	<xsl:variable name="bgcolorcalendariomenor">
		<xsl:value-of select="calendario/rutaImagen"/>diagonalFull.jpg</xsl:variable>
	<xsl:variable name="bgcolorcalendarioigual">#EFEFEF</xsl:variable>
	<xsl:variable name="bgcolorcalendariomayor">#FFFFFF</xsl:variable>
	<xsl:variable name="bgcolorgris">#F0F0F0</xsl:variable>
	<xsl:variable name="bgcolorgrisOscuro">#6E6E6E</xsl:variable>
	<xsl:variable name="bgcolorojo">#B22222</xsl:variable>
	<xsl:variable name="bgcolortexto">#FFFFFF</xsl:variable>
	<xsl:variable name="bgcolortotal">#000000</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="lineasBlanco">#FFFFFF</xsl:variable>
	<xsl:variable name="txt">#FFFFF</xsl:variable>
	<xsl:variable name="txtCabecera">#FFFFFF</xsl:variable>
	<xsl:variable name="txtDia">#999999</xsl:variable>
	<xsl:variable name="txtDiaActual">#FFFFFF</xsl:variable>
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
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="25.5cm" margin-top="1cm" margin-bottom="1cm" margin-left="1cm" margin-right="1cm">
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
						<fo:table table-layout="fixed" width="23.8cm">
							<fo:table-column column-width="11.9cm"/>
							<fo:table-column column-width="11.9cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src"><xsl:value-of select="calendario/rutaImagen"/>logo_bci_print_color.jpg</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Usuario:
											<xsl:value-of select="calendario/nombre"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="2">
										<!-- Separador Linea -->
										<fo:block space-after="2mm">
											<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="25.4cm"/>
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
											<xsl:value-of select="calendario/fechaImpresion"/>
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
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="25.5cm"/>
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
			<fo:table table-layout="fixed" width="23cm">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- texto Vencimientos -->
							<fo:block font-size="12pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">Vencimientos</fo:block>
							<!-- texto Vencimientos -->
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="8pt" font-weight="normal" space-after="10mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Saldos al cierre del </fo:inline>
								<fo:inline color="{$txt}">
									<xsl:value-of select="calendario/fechaCierre"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row  width="23.8cm">
						<fo:table-cell>
							<fo:block font-size="12pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">Calendario</fo:block>
						</fo:table-cell>
						<fo:table-cell >
						<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="calendario/fechaSeleccionada"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- cabecera cliente -->
		<xsl:variable name="imgPositiva" select="calendario/rutaImagenPositiva"/>
		<xsl:variable name="imgNegativa" select="calendario/rutaImagenNegativa"/>
		<fo:block space-after="1mm"/>
		<!-- tabla 1 -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed" width="23.8cm">
				<fo:table-column column-width="3.4cm"/>
				<fo:table-column column-width="3.4cm"/>
				<fo:table-column column-width="3.4cm"/>
				<fo:table-column column-width="3.4cm"/>
				<fo:table-column column-width="3.4cm"/>
				<fo:table-column column-width="3.4cm"/>
				<fo:table-column column-width="3.4cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolortotal}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">Lunes
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolortotal}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">Martes</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolortotal}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">Miércoles</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolortotal}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">Jueves</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolortotal}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">Viernes</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolortotal}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">Sábado</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolortotal}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="1mm" text-align="center">Domingo</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!--INICIO GENERACION DE TODA LA SEMANA-->
					<xsl:for-each select="calendario/semana">
						<fo:table-row text-align="right">
							<!-- INICIO DEL DIA LUNES -->					
							<xsl:if test="lunes/numeroActual = 'menor'">
								<fo:table-cell border="0.5pt solid {$lineas}" background-image="{$bgcolorcalendariomenor}" background-repeat="no-repeat">
									<fo:block font-weight="bold" color="{$txtDia}" padding-before="1mm" padding-after="15mm" text-align="left">&#xA0;<xsl:value-of select="lunes/numeroDia"/>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
							<xsl:if test="lunes/numeroActual = 'igual'">
								<xsl:if test="lunes/activo != 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgris}">														
														&#xA0;&#xA0;<xsl:value-of select="lunes/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<!--LUNES ACTIVO-->
								<xsl:if test="lunes/activo = 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$lineasBlanco}" padding-after="0.6mm" padding-before="0.8mm" margin="2pt 70pt 80pt 0pt" text-align="left" space-before="0mm" margin-left="0mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgrisOscuro}">														
														&#xA0;&#xA0;<xsl:value-of select="lunes/numeroDia"/>
										</fo:block>
										<xsl:if test="lunes/estadoNeto = 'positivo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="lunes/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="lunes/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</xsl:if>
										<!--NUMERO DEL MES SUPERIOR ENMARCADO Y SELECIONADO-->
										<xsl:if test="lunes/estadoNeto = 'negativo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="lunes/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="lunes/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</xsl:if>
										<!--LINEA PARA GENERAR LA DIFERENCIA-->
										<fo:block text-align="right">
											<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
										</fo:block>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" rule-thickness="0.1pt" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="lunes/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="lunes/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<xsl:if test="lunes/numeroActual = 'mayor'">
								<xsl:if test="lunes/activo != 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
												&#xA0;&#xA0;<xsl:value-of select="lunes/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="lunes/activo = 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" background-color="{$bgcolorgris}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
												&#xA0;&#xA0;<xsl:value-of select="lunes/numeroDia"/>
										</fo:block>
										<xsl:if test="lunes/estadoNeto = 'positivo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="lunes/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="lunes/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
											<!--LINEA PARA GENERAR LA DIFERENCIA-->
											<fo:block text-align="right">
												<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
											</fo:block>
										</xsl:if>
										<xsl:if test="lunes/estadoNeto = 'negativo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="lunes/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="lunes/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
											<!--LINEA PARA GENERAR LA DIFERENCIA-->
											<fo:block text-align="right">
												<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
											</fo:block>
										</xsl:if>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="lunes/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
														$ <xsl:value-of select="lunes/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<!-- TERMINO DIA LUNES -->
							<!--MARTES-->
							<!--INICIO-->
							<xsl:if test="martes/numeroActual = 'menor'">
								<fo:table-cell border="0.5pt solid {$lineas}" background-image="{$bgcolorcalendariomenor}" background-repeat="no-repeat">
									<fo:block font-weight="bold" color="{$txtDia}" padding-before="1mm" padding-after="15mm" text-align="left">
										&#xA0;<xsl:value-of select="martes/numeroDia"/>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
							<xsl:if test="martes/numeroActual = 'igual'">
								<xsl:if test="martes/activo != 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgris}">														
														&#xA0;&#xA0;<xsl:value-of select="martes/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<!--MARTES ACTIVO-->
								<xsl:if test="martes/activo = 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$lineasBlanco}" padding-after="0.6mm" padding-before="0.8mm" margin="2pt 70pt 80pt 0pt" text-align="left" space-before="0mm" margin-left="0mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgrisOscuro}">														
														&#xA0;&#xA0;<xsl:value-of select="martes/numeroDia"/>
										</fo:block>
										<xsl:if test="martes/estadoNeto = 'positivo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="martes/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="martes/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</xsl:if>
										<!--NUMERO DEL MES SUPERIOR ENMARCADO Y SELECIONADO-->
										<xsl:if test="martes/estadoNeto = 'negativo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="martes/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="martes/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</xsl:if>
										<!--LINEA PARA GENERAR LA DIFERENCIA-->
										<fo:block text-align="right">
											<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
										</fo:block>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="martes/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="martes/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<xsl:if test="martes/numeroActual = 'mayor'">
								<xsl:if test="martes/activo != 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
												&#xA0;&#xA0;<xsl:value-of select="martes/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="martes/activo = 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" background-color="{$bgcolorgris}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
												&#xA0;&#xA0;<xsl:value-of select="martes/numeroDia"/>
										</fo:block>
										<xsl:if test="martes/estadoNeto = 'positivo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="martes/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="martes/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
											<!--LINEA PARA GENERAR LA DIFERENCIA-->
											<fo:block text-align="right">
												<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
											</fo:block>
										</xsl:if>
										<xsl:if test="martes/estadoNeto = 'negativo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="martes/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="martes/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
											<!--LINEA PARA GENERAR LA DIFERENCIA-->
											<fo:block text-align="right">
												<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
											</fo:block>
										</xsl:if>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="martes/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
														$ <xsl:value-of select="martes/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<!--Fin Martes-->
							<!--TERMINO-->
							<!--	MIERCOLES-->
							<!--INICIO-->
							<xsl:if test="miercoles/numeroActual = 'menor'">
								<fo:table-cell border="0.5pt solid {$lineas}" background-image="{$bgcolorcalendariomenor}" background-repeat="no-repeat">
									<fo:block font-weight="bold" color="{$txtDia}" padding-before="1mm" padding-after="15mm" text-align="left">&#xA0;<xsl:value-of select="miercoles/numeroDia"/>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
							<xsl:if test="miercoles/numeroActual = 'igual'">
								<xsl:if test="miercoles/activo != 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgris}">														
														&#xA0;&#xA0;<xsl:value-of select="miercoles/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<!--MIERCOLES ACTIVO-->
								<xsl:if test="miercoles/activo = 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$lineasBlanco}" padding-after="0.6mm" padding-before="0.8mm" margin="2pt 70pt 80pt 0pt" text-align="left" space-before="0mm" margin-left="0mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgrisOscuro}">														
														&#xA0;&#xA0;<xsl:value-of select="miercoles/numeroDia"/>
										</fo:block>
										<xsl:if test="miercoles/estadoNeto = 'positivo'">
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="miercoles/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="miercoles/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</xsl:if>
										<!--NUMERO DEL MES SUPERIOR ENMARCADO Y SELECIONADO-->
										<xsl:if test="miercoles/estadoNeto = 'negativo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="miercoles/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="miercoles/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</xsl:if>
										<!--LINEA PARA GENERAR LA DIFERENCIA-->
										<fo:block text-align="right">
											<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
										</fo:block>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="miercoles/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="miercoles/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<xsl:if test="miercoles/numeroActual = 'mayor'">
								<xsl:if test="miercoles/activo != 'activo'">
								<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
									<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
													&#xA0;&#xA0;<xsl:value-of select="miercoles/numeroDia"/>
									</fo:block>
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="miercoles/activo = 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" background-color="{$bgcolorgris}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
														&#xA0;&#xA0;<xsl:value-of select="miercoles/numeroDia"/>
										</fo:block>
										<xsl:if test="miercoles/estadoNeto = 'positivo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="miercoles/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="miercoles/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
											<!--LINEA PARA GENERAR LA DIFERENCIA-->
											<fo:block text-align="right">
												<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
											</fo:block>
										</xsl:if>
										<xsl:if test="miercoles/estadoNeto = 'negativo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="miercoles/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="miercoles/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
											<!--LINEA PARA GENERAR LA DIFERENCIA-->
											<fo:block text-align="right">
												<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
											</fo:block>
										</xsl:if>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="miercoles/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
														$ <xsl:value-of select="miercoles/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<!--TERMINO-->
							<!--JUEVES-->
							<!-- INICIO -->
							<xsl:if test="jueves/numeroActual = 'menor'">
								<fo:table-cell border="0.5pt solid {$lineas}" background-image="{$bgcolorcalendariomenor}" background-repeat="no-repeat">
									<fo:block font-weight="bold" color="{$txtDia}" padding-before="1mm" padding-after="15mm" text-align="left">&#xA0;<xsl:value-of select="jueves/numeroDia"/>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
							<xsl:if test="jueves/numeroActual = 'igual'">
								<xsl:if test="jueves/activo != 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgris}">														
														&#xA0;&#xA0;<xsl:value-of select="jueves/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<!--JUEVESACTIVO-->
								<xsl:if test="jueves/activo = 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$lineasBlanco}" padding-after="0.6mm" padding-before="0.8mm" margin="2pt 70pt 80pt 0pt" text-align="left" space-before="0mm" margin-left="0mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgrisOscuro}">														
														&#xA0;&#xA0;<xsl:value-of select="jueves/numeroDia"/>
										</fo:block>
										<xsl:if test="jueves/estadoNeto = 'positivo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic  width="2.5mm" height="2.5mm">
																<xsl:attribute name="src"><xsl:value-of select="jueves/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="jueves/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</xsl:if>
										<!--NUMERO DEL MES SUPERIOR ENMARCADO Y SELECIONADO-->
										<xsl:if test="jueves/estadoNeto = 'negativo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic  width="2.5mm" height="2.5mm">
																<xsl:attribute name="src"><xsl:value-of select="jueves/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="jueves/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
										</xsl:if>
										<!--LINEA PARA GENERAR LA DIFERENCIA-->
										<fo:block text-align="right">
											<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
										</fo:block>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="jueves/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="jueves/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<xsl:if test="jueves/numeroActual = 'mayor'">
								<xsl:if test="jueves/activo != 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
													&#xA0;&#xA0;<xsl:value-of select="jueves/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="jueves/activo = 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" background-color="{$bgcolorgris}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
														&#xA0;&#xA0;<xsl:value-of select="jueves/numeroDia"/>
										</fo:block>
										<xsl:if test="jueves/estadoNeto = 'positivo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="jueves/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="jueves/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
											<!--LINEA PARA GENERAR LA DIFERENCIA-->
											<fo:block text-align="right">
												<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
											</fo:block>
										</xsl:if>
										<xsl:if test="jueves/estadoNeto = 'negativo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic  width="2.5mm" height="2.5mm">
																<xsl:attribute name="src"><xsl:value-of select="jueves/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="jueves/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
											<!--LINEA PARA GENERAR LA DIFERENCIA-->
											<fo:block text-align="right">
												<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
											</fo:block>
										</xsl:if>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="jueves/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
														$ <xsl:value-of select="jueves/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<!-- Fin jueves-->
							<!--VIERNES-->
							<!-- INICIO -->
							<xsl:if test="viernes/numeroActual = 'menor'">
								<fo:table-cell border="0.5pt solid {$lineas}" background-image="{$bgcolorcalendariomenor}" background-repeat="no-repeat">
									<fo:block font-weight="bold" color="{$txtDia}" padding-before="1mm" padding-after="15mm" text-align="left">
										&#xA0;<xsl:value-of select="viernes/numeroDia"/>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
							<xsl:if test="viernes/numeroActual = 'igual'">
								<xsl:if test="viernes/activo != 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgris}">														
														&#xA0;&#xA0;<xsl:value-of select="viernes/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<!--VERNES ACTIVO-->
								<xsl:if test="viernes/activo = 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$lineasBlanco}" padding-after="0.6mm" padding-before="0.8mm" margin="2pt 70pt 80pt 0pt" text-align="left" space-before="0mm" margin-left="0mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgrisOscuro}">														
														&#xA0;&#xA0;<xsl:value-of select="viernes/numeroDia"/>
										</fo:block>
										<!--VALOR NETO-->
										<fo:block space-before="1.5mm" font-weight="bold">
											<fo:list-item>
												<fo:list-item-label>
													<!--SIGNO MAS-->
													<xsl:if test="viernes/estadoNeto = 'positivo'">
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm" >
																<xsl:attribute name="src"><xsl:value-of select="viernes/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</xsl:if>
													<!--SIGNO MENOS-->
													<xsl:if test="viernes/estadoNeto = 'negativo'">
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="viernes/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</xsl:if>
												</fo:list-item-label>
												<fo:list-item-body>
													<!--TOTAL DEUDA-->
													<fo:block text-align="right" margin-right="1mm">
														$ <xsl:value-of select="viernes/neto"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
										<!--LINEA PARA GENERAR LA DIFERENCIA-->
										<fo:block text-align="right">
											<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
										</fo:block>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="viernes/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="viernes/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<xsl:if test="viernes/numeroActual = 'mayor'">
								<xsl:if test="viernes/activo != 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
												&#xA0;&#xA0;<xsl:value-of select="viernes/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="viernes/activo = 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" background-color="{$bgcolorgris}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
												&#xA0;&#xA0;<xsl:value-of select="viernes/numeroDia"/>
										</fo:block>
										<xsl:if test="viernes/estadoNeto = 'positivo'">
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="viernes/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="viernes/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
											<!--LINEA PARA GENERAR LA DIFERENCIA-->
											<fo:block text-align="right">
												<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
											</fo:block>
										</xsl:if>
										<xsl:if test="viernes/estadoNeto = 'negativo'">
											<!--VIERNES NEGATIVO PERO FUTURO-->
											<!--VALOR NETO-->
											<fo:block space-before="1.5mm" font-weight="bold">
												<fo:list-item>
													<fo:list-item-label>
														<!--SIGNO MENOS-->
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="viernes/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body>
														<!--TOTAL DEUDA-->
														<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="viernes/neto"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:block>
											<!--LINEA PARA GENERAR LA DIFERENCIA-->
											<fo:block text-align="right">
												<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
											</fo:block>
										</xsl:if>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="viernes/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
														$ <xsl:value-of select="viernes/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<!-- Fin viernes -->
							<!--SABADO-->
							<xsl:if test="sabado/numeroActual = 'menor'">
								<fo:table-cell border="0.5pt solid {$lineas}" background-image="{$bgcolorcalendariomenor}" background-repeat="no-repeat">
									<fo:block font-weight="bold" color="{$txtDia}" padding-before="1mm" padding-after="15mm" text-align="left">
										&#xA0;<xsl:value-of select="sabado/numeroDia"/>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
							<xsl:if test="sabado/numeroActual = 'igual'">
								<xsl:if test="sabado/activo != 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgris}">														
														&#xA0;&#xA0;<xsl:value-of select="sabado/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<!--SABADO ACTIVO-->
								<xsl:if test="sabado/activo = 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$lineasBlanco}" padding-after="0.6mm" padding-before="0.8mm" margin="2pt 70pt 80pt 0pt" text-align="left" space-before="0mm" margin-left="0mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgrisOscuro}">														
														&#xA0;&#xA0;<xsl:value-of select="sabado/numeroDia"/>
										</fo:block>
										<!--VALOR NETO-->
										<fo:block space-before="1.5mm" font-weight="bold">
											<fo:list-item>
												<fo:list-item-label>
													<!--SIGNO MAS-->
													<xsl:if test="sabado/estadoNeto = 'positivo'">
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="sabado/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</xsl:if>
													<!--SIGNO MENOS-->
													<xsl:if test="sabado/estadoNeto = 'negativo'">
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="sabado/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</xsl:if>
												</fo:list-item-label>
												<fo:list-item-body>
													<!--TOTAL DEUDA-->
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="sabado/neto"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
										<!--LINEA PARA GENERAR LA DIFERENCIA-->
										<fo:block text-align="right">
											<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
										</fo:block>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="sabado/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="sabado/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<xsl:if test="sabado/numeroActual = 'mayor'">
								<xsl:if test="sabado/activo != 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
														&#xA0;&#xA0;<xsl:value-of select="sabado/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="sabado/activo = 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" background-color="{$bgcolorgris}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
														&#xA0;&#xA0;<xsl:value-of select="sabado/numeroDia"/>
										</fo:block>
										<!--VALOR NETO-->
										<fo:block space-before="1.5mm" font-weight="bold">
											<fo:list-item>
												<fo:list-item-label>
													<!--SIGNO MAS-->
													<xsl:if test="sabado/estadoNeto = 'positivo'">
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="sabado/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</xsl:if>
													<!--SIGNO MENOS-->
													<xsl:if test="sabado/estadoNeto = 'negativo'">
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="sabado/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</xsl:if>
												</fo:list-item-label>
												<fo:list-item-body>
													<!--TOTAL DEUDA-->
													<fo:block text-align="right" margin-right="1mm">
														$ <xsl:value-of select="sabado/neto"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
										<!--LINEA PARA GENERAR LA DIFERENCIA-->
										<fo:block text-align="right">
											<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
										</fo:block>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="sabado/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
														$ <xsl:value-of select="sabado/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<!--FIN SABADO-->
							<!--DOMINGO-->
							<xsl:if test="domingo/numeroActual = 'menor'">
								<fo:table-cell border="0.5pt solid {$lineas}" background-image="{$bgcolorcalendariomenor}" background-repeat="no-repeat">
									<fo:block font-weight="bold" color="{$txtDia}" padding-before="1mm" padding-after="15mm" text-align="left">&#xA0;<xsl:value-of select="domingo/numeroDia"/>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
							<xsl:if test="domingo/numeroActual = 'igual'">
								<xsl:if test="domingo/activo != 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgris}">														
														&#xA0;&#xA0;<xsl:value-of select="domingo/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<!--domingo ACTIVO-->
								<xsl:if test="domingo/activo = 'activo'">
									<fo:table-cell border="1pt solid {$bgcolorgrisOscuro}" background-color="{$bgcolorgris}" border-right="3pt" border-bottom="3pt">
										<fo:block font-weight="bold" color="{$lineasBlanco}" padding-after="0.6mm" padding-before="0.8mm" margin="2pt 70pt 80pt 0pt" text-align="left" space-before="0mm" margin-left="0mm" margin-right="79pt" padding-bottom="0.2mm" background-color="{$bgcolorgrisOscuro}">														
														&#xA0;&#xA0;<xsl:value-of select="domingo/numeroDia"/>
										</fo:block>
										<!--VALOR NETO-->
										<fo:block space-before="1.5mm" font-weight="bold">
											<fo:list-item>
												<fo:list-item-label>
													<!--SIGNO MAS-->
													<xsl:if test="domingo/estadoNeto = 'positivo'">
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="domingo/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</xsl:if>
													<!--SIGNO MENOS-->
													<xsl:if test="domingo/estadoNeto = 'negativo'">
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="domingo/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</xsl:if>
												</fo:list-item-label>
												<fo:list-item-body>
													<!--TOTAL DEUDA-->
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="domingo/neto"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
										<!--LINEA PARA GENERAR LA DIFERENCIA-->
										<fo:block text-align="right">
											<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
										</fo:block>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="domingo/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="domingo/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<xsl:if test="domingo/numeroActual = 'mayor'">
								<xsl:if test="domingo/activo != 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
														&#xA0;&#xA0;<xsl:value-of select="domingo/numeroDia"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="domingo/activo = 'activo'">
									<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
										<fo:block font-weight="bold" color="{$txtDia}" background-color="{$bgcolorgris}" padding-after="0.6mm" padding-before="0.9mm" margin="2pt 75pt 85pt 0pt" text-align="left" space-before="0.5mm" margin-left="0.7mm" margin-right="79pt" padding-bottom="0.2mm">														
														&#xA0;&#xA0;<xsl:value-of select="domingo/numeroDia"/>
										</fo:block>
										<!--VALOR NETO-->
										<fo:block space-before="1.5mm" font-weight="bold">
											<fo:list-item>
												<fo:list-item-label>
													<!--SIGNO MAS-->
													<xsl:if test="domingo/estadoNeto = 'positivo'">
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="domingo/rutaImagen"/>ico_mas.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</xsl:if>
													<!--SIGNO MENOS-->
													<xsl:if test="domingo/estadoNeto = 'negativo'">
														<fo:block text-align="left" margin-left="2mm">
															<fo:external-graphic width="2mm" height="2mm">
																<xsl:attribute name="src"><xsl:value-of select="domingo/rutaImagen"/>ico_menos.gif</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</xsl:if>
												</fo:list-item-label>
												<fo:list-item-body>
													<!--TOTAL DEUDA-->
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="domingo/neto"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
										<!--LINEA PARA GENERAR LA DIFERENCIA-->
										<fo:block text-align="right">
											<fo:leader color="{$bgcolortotal}" leader-pattern="rule" leader-length="90pt"/>
										</fo:block>
										<!--A RECIBIR Y A PAGAR-->
										<fo:block font-weight="bold" color="{$txt-azul-oscuro}" space-before="1mm" space-after="1mm">
											<fo:list-item>
												<!--A PAGAR-->
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm">
															A recibir 															
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
															$ <xsl:value-of select="domingo/recibir"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
											<!--A RECIBIR-->
											<fo:list-item>
												<fo:list-item-label>
													<fo:block text-align="left" margin-left="1mm" space-before="1mm">
															A pagar 
														</fo:block>
												</fo:list-item-label>
												<fo:list-item-body>
													<fo:block text-align="right" margin-right="1mm">
														$ <xsl:value-of select="domingo/pagar"/>
													</fo:block>
												</fo:list-item-body>
											</fo:list-item>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:if>
							<!--FIN DOMINGO-->
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- tabla 1 -->
		<!-- Separador Linea -->
		<fo:block space-after="5mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="24cm"/>
		</fo:block>
	</xsl:template>
	<xsl:template match="numeroActual">
	</xsl:template>
</xsl:stylesheet>