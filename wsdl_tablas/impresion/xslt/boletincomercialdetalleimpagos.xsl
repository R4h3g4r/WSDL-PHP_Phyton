<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- edited with XMLSpy v2006 U (http://www.altova.com) by Francisco (EMBRACE) -->
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
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="22cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/>
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
											<xsl:attribute name="src"><xsl:value-of select="detalle-impagos/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="detalle-impagos/fechaImpresion"/>
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
								Detalle Boletín Comercial
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

		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
			<fo:table-column column-width="13cm"/>
			<fo:table-column column-width="5cm"/>
			<fo:table-body>
				<fo:table-row>
				<fo:table-cell>

					<!-- nombre cliente -->
						<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
							<fo:inline color="{$txt}">Usuario: </fo:inline>
							<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="detalle-impagos/ejecutivo"/></fo:inline>
						</fo:block>
					<!-- nombre cliente -->
				
				</fo:table-cell>
				<fo:table-cell>
			
					<!-- rut cliente -->
						<fo:block font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">
							<fo:inline color="{$txt}">Oficina: </fo:inline>
							<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="detalle-impagos/oficina"/></fo:inline>
						</fo:block>
					<!-- rut cliente -->

				</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- ejecutivo -->

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<xsl:call-template name="datos_1"/>
		<!-- Separador -->
		<fo:block space-after="5mm">
		</fo:block>
		<!-- Separador -->
		<!-- Separador -->
		<fo:block space-after="5mm">
		</fo:block>
		<!-- Separador -->
	</xsl:template>
	<xsl:template name="datos_1">
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="5cm"/>
				<fo:table-column column-width="13cm"/>
				<fo:table-body>
					<!-- FILA 1 -->
					<fo:table-row height="{$alto-filas}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- BANCA -->
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Nombre Deudor :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-impagos/nombre"/>
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
									<xsl:with-param name="titulo" select="'Rut :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-impagos/rut"/>
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
									<xsl:with-param name="titulo" select="'Corr. :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-impagos/corr"/>
							</fo:block>
							<!-- RENTA -->
						</fo:table-cell>
					</fo:table-row>
					<!-- FILA 3 -->
					<!-- FILA 4 -->
					<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- RENTA -->
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'N° Operación :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-impagos/numOper"/>
							</fo:block>
							<!-- RENTA -->
						</fo:table-cell>
					</fo:table-row>
					<!-- FILA 4 -->
					<!-- FILA 5 -->
					<fo:table-row height="{$alto-filas}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- RENTA -->
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Fecha Vencimiento :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-impagos/fechaVencimiento"/>
							</fo:block>
							<!-- RENTA -->
						</fo:table-cell>
					</fo:table-row>
					<!-- FILA 5 -->
					<!-- FILA 6 -->
					<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- RENTA -->
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Periodo Mora :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-impagos/periodoMora"/>
							</fo:block>
							<!-- RENTA -->
						</fo:table-cell>
					</fo:table-row>
					<!-- FILA 6 -->
					<!-- FILA 7 -->
					<fo:table-row height="{$alto-filas}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- RENTA -->
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Cuota :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-impagos/cuota"/>
							</fo:block>
							<!-- RENTA -->
						</fo:table-cell>
					</fo:table-row>
					<!-- FILA 7 -->
					<!-- FILA 8 -->
					<fo:table-row height="{$alto-filas}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- VALOR CUOTA -->
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Valor Cuota :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-impagos/valorCuota"/>
							</fo:block>
							<!-- VALOR CUOTA -->
						</fo:table-cell>
					</fo:table-row>
					<!-- FILA 8 -->					
					<!-- FILA 9 -->
					<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- RENTA -->
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Moneda :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-impagos/moneda"/>
							</fo:block>
							<!-- RENTA -->
						</fo:table-cell>
					</fo:table-row>
					<!-- FILA 9 -->
					<!-- FILA 10 -->
					<fo:table-row height="{$alto-filas}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- RENTA -->
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Saldo Deuda :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-impagos/saldoDeuda"/>
							</fo:block>
							<!-- RENTA -->
						</fo:table-cell>
					</fo:table-row>
					<!-- FILA 10 -->
					<!-- FILA 11 -->
					<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- RENTA -->
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Enviado :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-impagos/enviado"/>
							</fo:block>
							<!-- RENTA -->
						</fo:table-cell>
					</fo:table-row>
					<!-- FILA 11 -->
					<!-- FILA 12 -->
					<fo:table-row height="{$alto-filas}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- RENTA -->
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Fecha Envio :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-impagos/fechaEnvio"/>
							</fo:block>
							<!-- RENTA -->
						</fo:table-cell>
					</fo:table-row>
					<!-- FILA 12 -->
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>
		<xsl:param name="fecha"/>
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src"><xsl:value-of select="detalle-impagos/rutaImagen"/>01-bullet2-rj.gif
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
		<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm">
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src"><xsl:value-of select="detalle-impagos/rutaImagen"/>01-bullet1-rj.gif
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
