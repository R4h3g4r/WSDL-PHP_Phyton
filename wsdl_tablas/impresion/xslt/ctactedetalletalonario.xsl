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
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:variable name="largo-linea">21cm</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="25.5cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="1.5cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="3cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="1mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="16cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="cabecera-talonario/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
										<xsl:value-of select="cabecera-talonario/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
					<!-- Separador -->
						<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
						</fo:block>
					<!-- Separador -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
					</fo:block>
					<!-- Separador -->
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Para Consultas o Comentarios Comuníquese al 600 6928000
					</fo:block>
					<fo:block font-size="5pt" font-weight="bold" start-indent="20cm" space-after="1mm" text-align="left" color="{$txt}">
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
				<fo:table-column column-width="16cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="cabecera-talonario/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="cabecera-talonario/rut"/></fo:inline>
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
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
		</fo:block>
		<!-- Separador -->
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="15cm"/>
				<fo:table-column column-width="6cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Detalle Talonarios
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell >
							<!-- nro tarjeta -->
							<fo:block font-size="10pt" text-align="right" color="{$txt}">
								<fo:inline font-weight="normal">N° Cuenta Corriente: </fo:inline>
								<fo:inline font-weight="bold"><xsl:value-of select="cabecera-talonario/nroCtaCte"/></fo:inline>
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
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
		</fo:block>
		<!-- Separador -->

		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="cabecera-talonario/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="cabecera-talonario/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
		</fo:block>
		<!-- Separador -->

		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Total Cheques'"/>
		</xsl:call-template>

		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
		</fo:block>
		<!-- Separador -->

		<fo:block space-after="1mm">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="6.5cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="7cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="6.5cm" />
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
							<xsl:call-template name="ladocentro"/>
						</fo:table-cell >

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
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
		</fo:block>
		<!-- Separador -->

		<!-- detalle talonario -->

		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8cm" />
				<fo:table-column column-width="5cm" />
				<fo:table-column column-width="5cm" />
				<fo:table-column column-width="2.9cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Número Serie
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Estado
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Fecha Movimiento
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Monto
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:choose>
					<xsl:when test="count(cabecera-talonario/detalleTalonario) > 0">
						<xsl:for-each select="cabecera-talonario/detalleTalonario/detalle-talonario">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="numeroSerie"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="estado"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="fechaMovimiento"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="monto"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
					</xsl:otherwise>
					</xsl:choose>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- detalle talonario -->

	</xsl:template>
	
	<xsl:template name="ladoizquierdo">
		<fo:block space-after="0.1mm">
			<fo:table table-layout="fixed">
			<fo:table-column column-width="4.5cm" />
			<fo:table-column column-width="2cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- BANCA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Total Cheques Pagados :'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="cabecera-talonario/chequesPagados"/>
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 1 -->
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="ladocentro">
		<fo:block space-after="0.1mm">
			<fo:table table-layout="fixed">
			<fo:table-column column-width="5cm" />
			<fo:table-column column-width="2cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- BANCA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Total Cheques Pendientes :'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="cabecera-talonario/chequesPendientes"/>
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 1 -->
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="ladoderecho">
		<fo:block space-after="0.1mm">
			<fo:table table-layout="fixed">
			<fo:table-column column-width="4.5cm" />
			<fo:table-column column-width="2cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- BANCA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Total Cheques :'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="cabecera-talonario/totalCheques"/>
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 1 -->
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
									<xsl:value-of select="cabecera-talonario/rutaImagen"/>01-bullet2-rj.gif
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
									<xsl:value-of select="cabecera-talonario/rutaImagen"/>01-bullet1-rj.gif
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