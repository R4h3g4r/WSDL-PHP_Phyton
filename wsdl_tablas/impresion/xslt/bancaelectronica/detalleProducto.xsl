<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!-- Parametros -->
	<xsl:param name="detalle" />
	<!-- Parametros -->
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
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
				<fo:simple-page-master master-name="pagina"
					page-height="28cm" page-width="22cm" margin-top="1cm"
					margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2.5cm"
						margin-bottom="2.5cm" background-color="#ffffff" />
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
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm" />
							<fo:table-column column-width="5cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of
													select="bel/rutaImagen" />02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell
										padding-before="1cm">
										<fo:block font-size="9pt"
											font-weight="bold" space-after="1mm" text-align="right"
											color="{$txt}">
											<xsl:value-of
												select="bel/fechaImpresion" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}"
							leader-pattern="rule" leader-length="18cm" />
					</fo:block>
					<!-- Separador -->
					<fo:block font-size="9pt" font-weight="normal"
						space-after="1mm" text-align="left" color="{$txt}">
						Para Consultas o Comentarios Comuníquese al 600
						6928000
					</fo:block>
					<fo:block font-size="5pt" font-weight="bold"
						space-after="1mm" text-align="right" color="{$txt}">
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
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm" />
				<fo:table-column column-width="5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt"
								font-weight="bold" space-after="1mm" text-align="left"
								color="{$txt-azul-claro}">
								<xsl:value-of
									select="bel/nombreCliente" />
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt"
								font-weight="bold" space-after="1mm" text-align="right"
								color="{$txt}">
								<fo:inline color="{$txt}">
									RUT:
								</fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of
										select="bel/rutCliente" />
								</fo:inline>
							</fo:block>
							<!-- rut cliente -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- cabecera cliente -->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule"
				leader-length="18cm" />
		</fo:block>
		<!-- Separador -->
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="12cm" />
				<fo:table-column column-width="6cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="15pt"
								font-weight="bold" text-align="left"
								color="{$txt-azul-claro}">
								Información del producto.
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->

		<!-- Separador -->
		<fo:block space-after="3mm">
			<fo:leader color="{$lineas}" leader-pattern="rule"
				leader-length="18cm" />
		</fo:block>
		<!-- Separador -->

		<fo:block space-after="3mm"></fo:block>
		<!-- Separador -->


		<!-- ULTIMOS 18 MOVIMIENTOS -->
		<fo:block font-size="7pt" space-after="1mm"
			text-align="center">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4,5cm" />
				<fo:table-column column-width="3,5cm" />
				<fo:table-column column-width="4,5cm" />
				<fo:table-column column-width="4,5cm" />
				<fo:table-body>
				<xsl:if test="bel/detalle-producto/tipoProducto = 'EXP'">
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Cuenta Comisión :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">

								<xsl:if
									test="bel/detalle-producto/ComisionEXP != ''">
									<xsl:value-of
										select="bel/detalle-producto/ComisionEXP" />
								</xsl:if>

								<xsl:if
									test="bel/detalle-producto/ComisionEXP = '' ">
									No existen cuentas de comisión
								</xsl:if>

							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Operar con DICOM :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/OperarDicon = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/OperarDicon  = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/OperarDicon  = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Operar con Firmas y Poderes :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/FirmasPoderes = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/FirmasPoderes = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/FirmasPoderes = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Validación clave Dos :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/ClaveDos = 'M'">
									Monousuario
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/ClaveDos = 'S'">
									Supervisor
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/ClaveDos = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Posee Mandato Boleta Garantía :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/Mandato = 'S'">
									Exenta
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Mandato = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Mandato = 'P'">
									Pagaré
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Mandato = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Obliga uso de firma digital en
								LBTR :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/FirmaDigital = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/FirmaDigital = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/FirmaDigital = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Tarifa Fija :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/TarifaFija != ''">
									<xsl:value-of
										select="bel/detalle-producto/TarifaFija" />
								</xsl:if>

								<xsl:if
									test="bel/detalle-producto/ContraApoderado = ''">
									No Disponible
								</xsl:if>

							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Uso Contralor y/o Apoderado :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/ContraApoderado = '2'">
									Opera solo con Apoderado
								</xsl:if>

								<xsl:if
									test="bel/detalle-producto/ContraApoderado = '1'">
									Operar con VB Contralor y
									Apoderado(s)
								</xsl:if>

								<xsl:if
									test="bel/detalle-producto/ContraApoderado = '0'">
									Operar solo con VB Contralor
								</xsl:if>

								<xsl:if
									test="bel/detalle-producto/ContraApoderado = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Opera con Prorrogas :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/FirmaDigital = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/FirmaDigital = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/FirmaDigital = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

</xsl:if>

<xsl:if test="bel/detalle-producto/tipoProducto = 'PRP'">

					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Cuenta Comisión :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/ComisionPPR != ''">
									<xsl:value-of
										select="bel/detalle-producto/ComisionPPR" />
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/ComisionPPR = ''">
									No existen cuentas de comisión
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Identificador Transfer :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/identificador != ''">
									<xsl:value-of
										select="bel/detalle-producto/identificador" />
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/identificador = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Publicación :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/Publicacion = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Publicacion = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Publicacion = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Pago :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/Pago = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Pago = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Pago = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Factoring :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/Factoring = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Factoring = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Factoring = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Operar con Firmas y Poderes:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/FirmasPoderes = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/FirmasPoderes = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/FirmasPoderes = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Tipo Factoring :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/TipoFactor = 'T'">
									Total
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/TipoFactor = 'E'">
									eFactoring
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/TipoFactor = 'A'">
									Ambos
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/TipoFactor = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Rendición de Pago :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/RendicioPago = 'Y'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/RendicioPago = 'M'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/RendicioPago = ''">
									No Requiere
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Desagrupar Vales Vista :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/Desagrupar = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Desagrupar = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Desagrupar = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Rendición diaria Informe pagos
								Vales Vista :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/Rendicion = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Rendicion = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Rendicion = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Rendición física Vales Vista :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/RendiFisica = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/RendiFisica = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/RendiFisica = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Operar con Firma Electrónica :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/FirmaElectro = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/FirmaElectro = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/FirmaElectro = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Cambiar Forma de Pago :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/CambioFormaPag = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/CambioFormaPag = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/CambioFormaPag = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Envio de E-mail :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/EnvioEmail = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/EnvioEmail = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/EnvioEmail = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Permitir Financiamiento :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/Financiamiento = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Financiamiento = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Financiamiento = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Mail con Detalle a Proveedor :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/MailDetProv = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/MailDetProv = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/MailDetProv = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Recaudar 4ta Copia de Factura :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/RecaudarCopia = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/RecaudarCopia = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/RecaudarCopia = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Sin Asignar 69 :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/SinAsig69 = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/SinAsig69 = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/SinAsig69 = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Sin Asignar 70 :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/SinAsig70 = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/SinAsig70 = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/SinAsig70 = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Sin Asignar 71 :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/SinAsig71 = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/SinAsig71 = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/SinAsig71 = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Migrado de Transfer :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/MigradoTran = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/MigradoTran = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/MigradoTran = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Tipo de Facturación :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/TipoFactura = 'A'">
									Por Abono
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/TipoFactura = 'D'">
									Por Documento
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/TipoFactura = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Empresa Piloto :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Sin Asignar 75 :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/SinAsig75 = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/SinAsig75 = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/SinAsig75 = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Sin Asignar 76 :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
</xsl:if>
<xsl:if test="bel/detalle-producto/tipoProducto = 'TRF'">

					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Cuenta Comisión :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/ComisionTRF != ''">
									<xsl:value-of
										select="bel/detalle-producto/CuentaComision" />
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/ComisionTRF = ''">
									No existen cuentas de comisión
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Identificador de liquidación :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/IdenLiq = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/IdenLiq = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/IdenLiq = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Rendición de Pago :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/RendiPago = 'Y'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/RendiPago = 'M'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/RendiPago = ''">
									No Requiere
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Monto proveedor calculado :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/MontoProv = 'Y'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/MontoProv = 'M'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/MontoProv = ''">
									No Requiere
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Identificador Transfer :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/identificador != ''">
									<xsl:value-of
										select="bel/detalle-producto/identificador" />
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/identificador = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Operar con Firmas y Poderes:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/FirmasPoderes = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/FirmasPoderes = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/FirmasPoderes = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Operar con Vale Vista Virtual :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/ValeVista = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/ValeVista = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/ValeVista = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Rendición Física Vale Vista
								Virtual :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/RendiFisica = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/RendiFisica = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/RendiFisica = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Empresa Piloto :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = 'S'">
									Si
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = 'N'">
									No
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Tarifa Fija :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/TarifaFija != ''">
									<xsl:value-of
										select="bel/detalle-producto/TarifaFija" />
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/TarifaFija = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Tipo de Carga :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = 'N'">
									Normal
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = 'D'">
									Distribuida
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = 'C'">
									Centralizada
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/EmpPiloto = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Hábiles para Caducidad del Pago
								en Efectivo:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/Caducidad != ''">
									<xsl:value-of
										select="bel/detalle-producto/Caducidad" />
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Caducidad = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
</xsl:if>
<xsl:if test="bel/detalle-producto/tipoProducto = 'SPC'">

					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Cuenta Comisión :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/CuentaComision != ''">
									<xsl:value-of
										select="bel/detalle-producto/CuentaComision" />
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/CuentaComision = ''">
									No existen cuentas de comisión
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Día de cargo :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/DiaCargo = '09'">
									9
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/DiaCargo = '10'">
									10
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/DiaCargo = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Cuenta cargo :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/CuentaCargo != ''">
									<xsl:value-of
										select="bel/detalle-producto/CuentaCargo" />
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/CuentaCargo = ''">
									No existen cuentas de cargo
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								&#0160;Tarifa Fija :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{normal}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt-azul-oscuro}" padding-before="1mm"
								padding-after="1mm" text-align="left">
								<xsl:if
									test="bel/detalle-producto/Tarifa != ''">
									<xsl:value-of
										select="bel/detalle-producto/Tarifa" />
								</xsl:if>
								<xsl:if
									test="bel/detalle-producto/Tarifa = ''">
									No Disponible
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
</xsl:if>

				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="detalle1">
		<fo:block space-after="0.1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="18cm" />
				<fo:table-body>

					<!-- FILA 4 -->
					<fo:table-row height="{$alto-filas}">
						<fo:table-cell border="0.5pt solid {$lineas}"
							padding-left="{$espacio-texto-celda-left}"
							padding-top="{$espacio-texto-celda-top}">
							<!-- SUCURSAL -->
							<fo:block font-size="{$size-fuente-margen}"
								text-align="left" color="{$txt}">
								<xsl:call-template name="nombre">
									<xsl:with-param name="titulo"
										select="'Nombre del Titular:'" />
								</xsl:call-template>

							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!-- FILA 1 -->
				</fo:table-body>
			</fo:table>
		</fo:block>

	</xsl:template>

	<xsl:template name="subTitulo">
		<xsl:param name="titulo" />
		<fo:block font-size="9pt" font-weight="bold" text-align="left"
			color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm"
								width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of
										select="bel/rutaImagen" />01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo" />
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="itemTitulo">
		<xsl:param name="titulo" />
		<fo:block font-size="9pt" font-weight="normal"
			color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm"
			text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="8cm" />

				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm"
							padding-before="1mm">
							<fo:external-graphic height="1mm"
								width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of
										select="bel/rutaImagen" />01-bullet1-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo" />
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template name="itemTitulo2">
		<xsl:param name="titulo" />
		<fo:block font-size="9pt" font-weight="normal"
			color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm"
			text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm"
							padding-before="1mm">
							<fo:external-graphic height="1mm"
								width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of
										select="bel/rutaImagen" />01-bullet1-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo" />
								&#0160;
								<xsl:value-of select="bel/moneda" />
								$:
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template name="actual">
		<xsl:param name="titulo" />
		<fo:block font-size="9pt" font-weight="normal"
			color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm"
			text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm"
							padding-before="1mm">
							<fo:external-graphic height="1mm"
								width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of
										select="bel/rutaImagen" />01-bullet1-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo" />
								&#0160;
								<xsl:value-of select="bel/fechaActual" />
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo" />
								&#0160;
								<xsl:value-of
									select="bel/fechaImpresion" />
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template name="anterior">
		<xsl:param name="titulo" />
		<fo:block font-size="9pt" font-weight="normal"
			color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm"
			text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm"
							padding-before="1mm">
							<fo:external-graphic height="1mm"
								width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of
										select="bel/rutaImagen" />01-bullet1-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo" />
								&#0160;
								<xsl:value-of
									select="bel/fechaAnterior" />
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo" />
								&#0160;
								<xsl:value-of
									select="bel/fechaImpresion" />
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template name="nombre">
		<xsl:param name="titulo" />
		<fo:block font-size="9pt" font-weight="normal"
			color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm"
			text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="15.5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm"
							padding-before="1mm">
							<fo:external-graphic height="1mm"
								width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of
										select="bel/rutaImagen" />01-bullet1-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo" />
								&#0160;
								<xsl:value-of select="bel/cliente" />
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo" />
								&#0160;
								<xsl:value-of
									select="bel/fechaImpresion" />
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="..\..\..\..\..\..\Documents and Settings\tinet\Escritorio\impresion\BEL.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="no"
		          profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext=""
		          validateoutput="no" validator="internal" customvalidator="">
			<advancedProp name="sInitialMode" value=""/>
			<advancedProp name="bXsltOneIsOkay" value="true"/>
			<advancedProp name="bSchemaAware" value="false"/>
			<advancedProp name="bXml11" value="false"/>
			<advancedProp name="iValidation" value="0"/>
			<advancedProp name="bExtensions" value="true"/>
			<advancedProp name="iWhitespace" value="0"/>
			<advancedProp name="sInitialTemplate" value=""/>
			<advancedProp name="bTinyTree" value="true"/>
			<advancedProp name="bWarnings" value="true"/>
			<advancedProp name="bUseDTD" value="false"/>
			<advancedProp name="iErrorHandling" value="fatal"/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
		<MapperBlockPosition></MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->