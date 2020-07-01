<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!-- Parametros -->
	<xsl:param name="detalle"/>
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
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="22cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
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
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="mini-cartola/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
										<xsl:value-of select="mini-cartola/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
	<!-- imagen bci -->
					<!-- Separador -->
						<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
						</fo:block>
					<!-- Separador -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
					</fo:block>
					<!-- Separador -->
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Para Consultas o Comentarios Comuníquese al 600 6928000
					</fo:block>
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
						Pagina <fo:page-number/>
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
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="mini-cartola/nombreCliente"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="mini-cartola/rutCliente"/></fo:inline>
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
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="12cm"/>
				<fo:table-column column-width="6cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Minicartola Cuenta Prima
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell >
							<!-- nro tarjeta -->
							<fo:block font-size="10pt" text-align="right" color="{$txt}">
								<fo:inline font-weight="normal">N° Cuenta Corriente: </fo:inline>
								<fo:inline font-weight="bold"><xsl:value-of select="mini-cartola/nroCtaCte"/></fo:inline>
							</fo:block>
							<!-- nro tarjeta -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		<!-- Titulo Modulo -->
		
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" space-after="2mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
			</fo:table>
		</fo:block>
		<!-- ejecutivo -->







		<fo:block>
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="7.5cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="10cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<xsl:call-template name="ladoizquierdo"/>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
							<xsl:call-template name="ladoderecho"/>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="3mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Ultimos 18 Movimientos de su Cuenta Prima'"/>
		</xsl:call-template>

		<!-- Separador -->
		<fo:block space-after="3mm">
		</fo:block>
		<!-- Separador -->


		<!-- ULTIMOS 18 MOVIMIENTOS -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="5.2cm" />
				<fo:table-column column-width="3.6cm" />
				<fo:table-column column-width="3.6cm" />
				<fo:table-column column-width="3.6cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Fecha Movimiento
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Descripción
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Serie
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Cargo $
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Abono $
							</fo:block>
						</fo:table-cell>

					</fo:table-row>
					<xsl:choose>
					<xsl:when test="count(mini-cartola/ultimos-18-movimientos) > 0">
						<xsl:for-each select="mini-cartola/ultimos-18-movimientos/movimiento">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="fechaMovimiento"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="descripcion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="serie"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="cargo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="abono"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="5">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160; No hay Movimientos
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:otherwise>
					</xsl:choose>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="ladoizquierdo">
		<fo:block space-after="0.1mm">
			<fo:table table-layout="fixed">
			<fo:table-column column-width="4.5cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- BANCA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Saldo Disponible $:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/saldoDisponible"/>
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 1 -->


				<!-- FILA 2 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- SEGMENTO -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Saldo Contable $:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/saldoContable"/>
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 2 -->


				<!-- FILA 3 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- RENTA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Saldo Contable 9 AM $:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm"  font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/saldoContable9AM"/>
						</fo:block>
					<!-- RENTA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 3 -->


				<!-- FILA 4 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- SUCURSAL -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Retenciones $:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/retenciones"/>
						</fo:block>
					<!-- SUCURSAL -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 4 -->


				<!-- FILA 5 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- DIRECCION PARTICULAR -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cheques y Cargos $:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/chequesYCargos"/>
						</fo:block>
					<!-- DIRECCION PARTICULAR -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 5 -->


				<!-- FILA 6 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- FONO PARTICULAR -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Depósitos y Abonos $:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/depositosYAbonos"/>
						</fo:block>
					<!-- FONO PARTICULAR -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 6 -->

				<!-- FILA 7 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- FONO COMERCIAL -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Protestos:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/protestos"/>
						</fo:block>
					<!-- FONO COMERCIAL -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 7 -->


				<!-- FILA 8 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- CELULAR -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Aclaraciones:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/aclaraciones"/>
						</fo:block>
					<!-- CELULAR -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 8 -->

			</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
			<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="8cm"/>
			</fo:block>
		<!-- Separador -->

		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Titulares de la Cuenta Prima'"/>
		</xsl:call-template>

		<!-- Separador -->
			<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="8cm"/>
			</fo:block>
		<!-- Separador -->

		<!-- TITULARES DE LA CUENTA CORRIENTE -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="5.5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Rut del Titular
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Nombre del Titular
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:choose>
					<xsl:when test="count(mini-cartola/titulares) > 0">
						<xsl:for-each select="mini-cartola/titulares/titular">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" font-size="9pt" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="rut"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" font-size="9pt" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="nombre"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="2">
								<fo:block font-weight="normal" font-size="9pt" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;No hay Titulares
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:otherwise>
					</xsl:choose>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	


	<xsl:template name="ladoderecho">
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="6cm" />
			<fo:table-column column-width="4cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- BANCA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Otros Bancos con Presencia Plaza $:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/otrosBancosConPresenciaPlaza"/>
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 1 -->


				<!-- FILA 2 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- SEGMENTO -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Bci $:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/retencionBci"/>
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 2 -->


				<!-- FILA 3 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- RENTA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Otros Bancos sin Presencia Plaza $:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/otrosBancosSinPresenciaPlaza"/>
						</fo:block>
					<!-- RENTA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 3 -->


				<!-- FILA 4 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- SUCURSAL -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cajeros Automáticos $:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/cajerosAutomaticos"/>
						</fo:block>
					<!-- SUCURSAL -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 4 -->


				<!-- FILA 5 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- DIRECCION PARTICULAR -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Disponible de Línea de Sobregiro $:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/disponibleLineaSobregiro"/>
						</fo:block>
					<!-- DIRECCION PARTICULAR -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 5 -->


				<!-- FILA 6 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- FONO PARTICULAR -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha Apertura :'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/fechaApertura"/>
						</fo:block>
					<!-- FONO PARTICULAR -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 6 -->

			</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="4mm">
		</fo:block>
		<!-- Separador -->


		<!-- PERIODICIDAD DE ENTREGA -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="5cm" />
			<fo:table-column column-width="5cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- BANCA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Periodicidad de Entrega :'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="mini-cartola/periodo"/>
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 1 -->
			</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
			<fo:block space-after="1.2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="11cm"/>
			</fo:block>
		<!-- Separador -->

		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Minicartola'"/>
		</xsl:call-template>

		<!-- Separador -->
			<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="11cm"/>
			</fo:block>
		<!-- Separador -->

		<!-- MINICARTOLA -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="1.2cm" />
				<fo:table-column column-width="1.2cm" />
				<fo:table-column column-width="1.2cm" />
				<fo:table-column column-width="1.3cm" />
				<fo:table-column column-width="1.3cm" />
				<fo:table-column column-width="1.3cm" />
				<fo:table-column column-width="1.3cm" />
				<fo:table-column column-width="1.3cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" number-columns-spanned="8">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Últimos 8 Cheques Cobrados
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>

					<xsl:choose>
					<xsl:when test="count(mini-cartola/detalle-cheques) > 0">
						<xsl:for-each select="mini-cartola/detalle-cheques/cheques">
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="cheque"/>
							</fo:block>
						</fo:table-cell>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="8">
							<fo:block font-weight="normal" color="{$txt}" font-size="9pt" padding-before="1mm" padding-after="1mm" text-align="center">
								&#0160;No hay Cheques
							</fo:block>
						</fo:table-cell>
					</xsl:otherwise>
					</xsl:choose>

					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

	</xsl:template>

	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/> 
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="mini-cartola/rutaImagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="itemTitulo">
		<xsl:param name="titulo"/> 
		<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm" >
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of select="mini-cartola/rutaImagen"/>01-bullet1-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

</xsl:stylesheet>