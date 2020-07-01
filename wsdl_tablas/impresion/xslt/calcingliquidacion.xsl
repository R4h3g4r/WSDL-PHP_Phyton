<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">1.3mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:variable name="size-titulo-tabla">6pt</xsl:variable>
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
					<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="calculo/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="calculo/fechaImpresion"/>
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
								<xsl:value-of select="calculo/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="calculo/rut"/></fo:inline>
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

		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="calculo/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="calculo/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->

		<!-- Separador -->
		<fo:block space-before="5mm">
		</fo:block>
		<!-- Separador -->

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

	</xsl:template>


	
	<xsl:template name="ladoizquierdo">
		
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="5.5cm"/>
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell >

					<!-- titulo -->
						<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							Cálculo Ingreso
						</fo:block>
					<!-- titulo -->
				
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

		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Perfil'"/>
		</xsl:call-template>


		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->


		<!-- PERFIL -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="4.5cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}">
					<!-- BANCA -->
						<fo:block text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'RUT Cliente:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
							<xsl:value-of select="calculo/rut"/>
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 1 -->


				<!-- FILA 2 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}">
					<!-- SEGMENTO -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Hombre Separado:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
							<xsl:value-of select="calculo/perfil/hombreSeparado"/>
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 2 -->


				<!-- FILA 3 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}">
					<!-- RENTA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Ex Cónyuge:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
							<xsl:value-of select="calculo/perfil/exConyuge"/>
						</fo:block>
					<!-- RENTA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 3 -->


				<!-- FILA 3 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}">
					<!-- RENTA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Nº de Hijos:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
							<xsl:value-of select="calculo/perfil/nroHijos"/>
						</fo:block>
					<!-- RENTA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 3 -->


				<!-- FILA 3 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}">
					<!-- RENTA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Personal F.F.A.A.'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
							<xsl:value-of select="calculo/perfil/personalFFAA"/>
						</fo:block>
					<!-- RENTA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 3 -->


			</fo:table-body>
			</fo:table>
		</fo:block>


		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Datos Empleador'"/>
		</xsl:call-template>


		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->


		<!-- DATOS EMPLEADOR -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="4.5cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}">
					<!-- BANCA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'RUT Empleador:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
							<xsl:value-of select="calculo/perfil/rutEmpleador"/>
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 1 -->


				<!-- FILA 2 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}">
					<!-- SEGMENTO -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Nombre Empleador:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
							<xsl:value-of select="calculo/perfil/nombreEmpleador"/>
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 2 -->

			</fo:table-body>
			</fo:table>
		</fo:block>

	</xsl:template>
	


	<xsl:template name="ladoderecho">
		
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="12cm"/>
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell >

					<!-- titulo -->
						<fo:block font-size="12pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							Detalle Cálculo de Ingresos
						</fo:block>
					<!-- titulo -->
				
					<!-- Separador -->
					<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
					</fo:block>
					<!-- Separador -->

				</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->


		<!-- Separador -->
		<fo:block space-after="2mm">
		</fo:block>
		<!-- Separador -->

		
		<!-- LIQUIDACIONES DE SUELDO -->
		<fo:block>

			<fo:table table-layout="fixed">
			<fo:table-column column-width="3.5cm"/>
			<xsl:for-each select="calculo/liquidaciones/liquidacion">
				<fo:table-column column-width="1.3cm"/>
			</xsl:for-each>

			<fo:table-body>

				<!-- TITULO -->
				
				<fo:table-row font-size="{$size-titulo-tabla}" height="{$alto-filas}" text-align="left" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block background-color="{$bgcolor}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Liquidaciones de Sueldo'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					
					<xsl:for-each select="calculo/liquidaciones/liquidacion">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								<xsl:value-of select="periodo" />
							</fo:block>
						</fo:table-cell>
					</xsl:for-each>
				</fo:table-row>
				<!-- CABECERA -->
				<xsl:for-each select="calculo/liquidaciones/liquidacion[1]/detalle-liquidacion/item">
				<xsl:variable name="i" select="position()"/>
					<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								<xsl:value-of select="descripcion"/>
							</fo:block>
						</fo:table-cell>

						<xsl:for-each select="../../../liquidacion">
							<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- PRODUCTO -->
								<fo:block color="{$txt}">
									<xsl:value-of select="detalle-liquidacion/item[$i]/monto" />
									<!--<xsl:value-of select="detalle-liquidacion/item/monto" />-->
								</fo:block>
							</fo:table-cell>
						</xsl:for-each>
					</fo:table-row>
				</xsl:for-each>

			</fo:table-body>
			</fo:table>

		</fo:block>


		<!-- Separador -->
		<fo:block space-after="4mm">
		</fo:block>
		<!-- Separador -->


		<!-- DESCUENTOS -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="3.5cm"/>
			<xsl:for-each select="calculo/liquidaciones/liquidacion">
				<fo:table-column column-width="1.3cm"/>
			</xsl:for-each>
			<fo:table-body>
				
				<xsl:variable name="num_cols" select="count(calculo/liquidaciones/liquidacion) + 1"/>

				<!-- TITULO -->
				<fo:table-row font-size="{$size-titulo-tabla}" background-color="{$bgcolor}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}" number-columns-spanned="{$num_cols}">
					<!-- PRODUCTO -->
						<fo:block>
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Descuentos'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- CABECERA -->
				<xsl:for-each select="calculo/liquidaciones/liquidacion[1]/descuentos/descuento">
				<xsl:variable name="j" select="position()"/>
					<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								<xsl:value-of select="descuento"/>
							</fo:block>
						</fo:table-cell>

						<xsl:for-each select="../../../liquidacion">
							<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- PRODUCTO -->
								<fo:block color="{$txt}">
									<xsl:value-of select="descuentos/descuento[$j]/monto" />
								</fo:block>
							</fo:table-cell>
						</xsl:for-each>
					</fo:table-row>
				</xsl:for-each>


				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}" number-columns-spanned="{$num_cols}">
					<!-- PRODUCTO -->
						<fo:block color="{$txt}" font-weight="bold">
							Ajustes por Segmentos Especial de Acuerdo a Política BCI
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block color="{$txt}">
							Total Fijos:
						</fo:block>
					</fo:table-cell>

					<xsl:for-each select="calculo/liquidaciones/liquidacion">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								<xsl:value-of select="subTotalLiquidoFijo"/>
							</fo:block>
						</fo:table-cell>
					</xsl:for-each>

				</fo:table-row>

				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block color="{$txt}">
							Total variables:
						</fo:block>
					</fo:table-cell>

					<xsl:for-each select="calculo/liquidaciones/liquidacion">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								<xsl:value-of select="subTotalLiquidoVariable"/>
							</fo:block>
						</fo:table-cell>
					</xsl:for-each>
				</fo:table-row>

				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block color="{$txt}" font-weight="bold">
							Total R.L.M
						</fo:block>
					</fo:table-cell>

					<xsl:for-each select="calculo/liquidaciones/liquidacion">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}" font-weight="bold">
								<xsl:value-of select="ajustes/totales/totalRLM"/>
							</fo:block>
						</fo:table-cell>
					</xsl:for-each>
				</fo:table-row>

			</fo:table-body>
			</fo:table>

		</fo:block>

		<!-- Separador -->
		<fo:block space-after="4mm">
		</fo:block>
		<!-- Separador -->
		<!-- Separador -->
		<fo:block space-after="4mm">
		</fo:block>
		<!-- Separador -->

		<!-- BOLETA HONORARIOS -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="9cm"/>
			<fo:table-column column-width="3cm"/>
			<fo:table-body>

				<!-- TITULO -->
				<fo:table-row font-size="{$size-titulo-tabla}" background-color="{$bgcolor}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Boletas Honorarios'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Monto Total'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>

				</fo:table-row>

				<!-- CABECERA -->
				<xsl:for-each select="calculo/boletas-honorarios/boleta">
					<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								<xsl:value-of select="periodo"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								<xsl:value-of select="monto"/>
							</fo:block>
						</fo:table-cell>

					</fo:table-row>
				</xsl:for-each>
				<!-- CABECERA -->

			</fo:table-body>
			</fo:table>

		</fo:block>


		<!-- Separador -->
		<fo:block space-after="4mm">
		</fo:block>
		<!-- Separador -->


		<!-- INGRESOS ADICIONALES -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="3cm"/>
			<fo:table-column column-width="3cm"/>
			<fo:table-column column-width="3cm"/>
			<fo:table-column column-width="3cm"/>
			<fo:table-body>

				<!-- TITULO -->
				<fo:table-row font-size="{$size-titulo-tabla}" background-color="{$bgcolor}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}" number-columns-spanned="4">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Ingresos Adicionales'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

																				<!-- TITULO 2 -->
				<fo:table-row font-size="{$size-titulo-tabla}" background-color="{$bgcolor}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}" number-columns-spanned="4">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Arriendos Bienes Raices'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>				
				
				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block color="{$txt-azul-claro}">
							Rol Propiedad 
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block color="{$txt-azul-claro}">
							Avalúo Fiscal
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block color="{$txt-azul-claro}">
							Monto Arriendo 
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block color="{$txt-azul-claro}">
							Rut Arrendatario
						</fo:block>
					</fo:table-cell>

				</fo:table-row>
				<!-- CABECERA -->			
				
				
				<!-- ITERACION -->
				<xsl:for-each select="calculo/arriendos-bienes-raices/arriendo">
					<fo:table-row height="{$alto-filas}" border-top="0.5pt solid {$lineas}" font-size="{$size-fuente-margen}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- CODIGO -->
							<fo:block text-align="left" color="{$txt}">
								<xsl:value-of select="rol"/>
							</fo:block>
						</fo:table-cell>
						
						<!-- DESCRIPCION -->
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<fo:block text-align="left" color="{$txt}">
								<xsl:value-of select="avaluo"/>
							</fo:block>
						</fo:table-cell>

						<!-- INGRESO -->
						<fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<fo:block text-align="left" color="{$txt}">
								<xsl:value-of select="monto"/>
							</fo:block>
						</fo:table-cell>

						<!-- PORCENTAJE RENTA -->
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<fo:block text-align="left" color="{$txt}">
								<xsl:value-of select="rutArrendatario"/>
							</fo:block>
						</fo:table-cell>
		
					</fo:table-row>
				</xsl:for-each>
				<!-- FIN ITERACION -->				

				<!-- CABECERA -->
				<xsl:if test="calculo/ingreso/montoArriendoBienesRaices > 0">
					<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}" number-columns-spanned="2">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								Total Arriendo de Bienes Raíces
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}" number-columns-spanned="2">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								<xsl:value-of select="calculo/ingreso/montoArriendoBienesRaices"/>
							</fo:block>
						</fo:table-cell>

					</fo:table-row>
				</xsl:if>
				<!-- CABECERA -->


				<!-- CABECERA -->
				<xsl:if test="calculo/ingreso/montoPensionJubilacion > 0">
					<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}" number-columns-spanned="2">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								Pensión o jubilación
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}" number-columns-spanned="2">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								<xsl:value-of select="calculo/ingreso/montoPensionJubilacion"/>
							</fo:block>
						</fo:table-cell>

					</fo:table-row>
				</xsl:if>
				<!-- CABECERA -->



				<!-- CABECERA -->
				<xsl:if test="calculo/ingreso/montoPensionAlimenticia > 0">
					<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								Pensión Alimenticia
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- PRODUCTO -->
							<fo:block color="{$txt}">
								<xsl:value-of select="calculo/ingreso/montoPensionAlimenticia"/>
							</fo:block>
						</fo:table-cell>

					</fo:table-row>
				</xsl:if>
				<!-- CABECERA -->


				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}" number-columns-spanned="2">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							Total Ingresos Adicionales:
						</fo:block>
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}" number-columns-spanned="2">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:value-of select="calculo/ingreso/totalIngresosAdicionales"/>
						</fo:block>
					</fo:table-cell>

				</fo:table-row>
				<!-- CABECERA -->



			</fo:table-body>
			</fo:table>

		</fo:block>


		<!-- Separador -->
		<fo:block space-after="4mm">
		</fo:block>
		<!-- Separador -->

		<!-- Separador -->
		<fo:block space-after="4mm">
		</fo:block>
		<!-- Separador -->

		<!-- Separador -->
		<fo:block space-after="4mm">
		</fo:block>
		<!-- Separador -->


		<!-- CALCULO FINAL -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="9cm"/>
			<fo:table-column column-width="3cm"/>
			<fo:table-body>

				<!-- TITULO -->
				<fo:table-row font-size="{$size-titulo-tabla}" background-color="{$bgcolor}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cálculo Final'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Monto Total'"/>
							</xsl:call-template>							
						</fo:block>
					</fo:table-cell>

				</fo:table-row>

				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block color="{$txt}">
							Total Ingresos Fijos
						</fo:block>
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block color="{$txt}">
							<xsl:value-of select="calculo/calculo-final/totalIngresosFijos"/>
						</fo:block>
					</fo:table-cell>

				</fo:table-row>
				<!-- CABECERA -->


				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block color="{$txt}">
							Total Ingresos variables
						</fo:block>
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block color="{$txt}">
							<xsl:value-of select="calculo/calculo-final/totalIngresosVariables"/>
						</fo:block>
					</fo:table-cell>

				</fo:table-row>
				<!-- CABECERA -->


				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							Total Ingresos ($ miles):
						</fo:block>
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:value-of select="calculo/calculo-final/totalIngresos"/>
						</fo:block>
					</fo:table-cell>

				</fo:table-row>
				<!-- CABECERA -->

			</fo:table-body>
			</fo:table>

		</fo:block>


		<!-- Separador -->
		<fo:block space-after="4mm">
		</fo:block>
		<!-- Separador -->


		<!-- CALCULO EFECTUADO POR -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="9cm"/>
			<fo:table-column column-width="3cm"/>
			<fo:table-body>

				<!-- TITULO -->
				<fo:table-row font-size="{$size-titulo-tabla}" background-color="{$bgcolor}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-top="{$espacio-texto-celda-top}" number-columns-spanned="2">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cálculo Efectuado Por:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block color="{$txt}">
							Nombre Ejecutivo:
						</fo:block>
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:value-of select="calculo/calculo-ejecutivo/nombreEjecutivo"/>
						</fo:block>
					</fo:table-cell>

				</fo:table-row>
				<!-- CABECERA -->


				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block color="{$txt}">
							Fecha:
						</fo:block>
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:value-of select="calculo/calculo-ejecutivo/fecha"/>
						</fo:block>
					</fo:table-cell>

				</fo:table-row>
				<!-- CABECERA -->


				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block color="{$txt}">
							Oficina:
						</fo:block>
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:value-of select="calculo/calculo-ejecutivo/oficina"/>
						</fo:block>
					</fo:table-cell>

				</fo:table-row>
				<!-- CABECERA -->

				<!-- CABECERA -->
				<fo:table-row font-size="{$size-fuente-margen}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block color="{$txt}">
							Hora:
						</fo:block>
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- PRODUCTO -->
						<fo:block font-weight="bold" color="{$txt}">
							<xsl:value-of select="calculo/calculo-ejecutivo/hora"/>
						</fo:block>
					</fo:table-cell>

				</fo:table-row>
				<!-- CABECERA -->

			</fo:table-body>
			</fo:table>

		</fo:block>


	</xsl:template>

	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>
		<xsl:param name="fecha"/>

		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="calculo/rutaImagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo"/>
								<xsl:if test="$fecha != ''">
									 <xsl:value-of select="$fecha"/>
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="itemTitulo">
		<xsl:param name="titulo"/> 
		<fo:block font-size="7pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm" >
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of select="calculo/rutaImagen"/>01-bullet1-rj.gif
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