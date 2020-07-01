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
												<xsl:value-of select="info/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="info/fechaImpresion"/>
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
								<xsl:value-of select="info/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/rut"/></fo:inline>
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
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Direcciones del Cliente
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
		
		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="info/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="info/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->
		
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<xsl:call-template name="datos_1"/>


		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
	</xsl:template>

	<xsl:template name="datos_1">
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="5.6cm" />
			<fo:table-column column-width="4cm" />
			<fo:table-column column-width="1.8cm" />
			<fo:table-column column-width="1.8cm" />
			<fo:table-column column-width="1.8cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- BANCA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							Tipo
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							Dirección
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							Comuna
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							Télefono
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							Código Postal
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							Fecha Verif.
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>


				</fo:table-row>
				<!-- FILA 1 -->


				<!-- FILA 2 -->
			<xsl:choose>
			<xsl:when test="count(info/direccionesCliente/direcciones-cliente) > 0">
				<xsl:for-each select="info/direccionesCliente/direcciones-cliente">				
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- SEGMENTO -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:value-of select="tipo"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<!-- 40 -->
							<xsl:value-of select="substring(direccion, 1, 40)"/>
							<!-- Separador -->
							<fo:block space-after="1mm">
							</fo:block>
							<xsl:value-of select="substring(direccion, 40, 40)"/>
							<!-- Separador -->
							<fo:block space-after="1mm">
							</fo:block>
							<xsl:value-of select="substring(direccion, 80)"/>
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:value-of select="comuna"/>
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:value-of select="telefono"/>
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:value-of select="codPostal"/>
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:value-of select="fechaVerificacion"/>
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>
				</fo:table-row>
				<!-- FILA 2 -->
				</xsl:for-each>
			</xsl:when>
			<xsl:otherwise>
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}" number-columns-spanned="6">
						<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}">
							No hay Direcciones
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>
				</fo:table-row>
			</xsl:otherwise>
			</xsl:choose>

			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="datos_3">
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="5cm" />
			<fo:table-column column-width="13cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- BANCA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Situación Vivienda :'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
							<xsl:value-of select="info/situacionVivienda"/>
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
								<xsl:with-param name="titulo" select="'Tiempo de Residencia :'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
							<xsl:value-of select="info/tiempResidencia"/>
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
								<xsl:with-param name="titulo" select="'Abono Renta Transfer :'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
							<xsl:value-of select="info/abonoRentaTransfer"/>
						</fo:block>
					<!-- RENTA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 3 -->

			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>



	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>

		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="9cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="info/rutaImagen"/>01-bullet2-rj.gif
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
									<xsl:value-of select="info/rutaImagen"/>01-bullet1-rj.gif
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