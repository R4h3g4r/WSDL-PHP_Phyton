<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-rojo-claro">#FF0000</xsl:variable>
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
					margin-top="1.5cm"
					margin-bottom="1.5cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
				
					<!-- imagen bci -->
					<fo:block >
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding-top="3mm">
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="impresion/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-top="15mm">
										<fo:block font-size="9pt" font-weight="bold"  text-align="right" color="{$txt}">
										<xsl:value-of select="impresion/fechaImpresion"/>
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
					<fo:block>
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
					</fo:block>
					<!-- Separador -->
					<fo:block font-size="9pt" font-weight="normal" text-align="left" color="{$txt}">
						Para Consultas o Comentarios Comuníquese al 600 6928000
					</fo:block>
					<fo:block font-size="5pt" font-weight="bold" text-align="right" color="{$txt}">
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
		<fo:block font-size="5pt" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="impresion/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" text-align="right" font-weight="bold" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="impresion/rut"/></fo:inline>
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
								Cta. Cte. / Minicartola
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-size="10pt" text-align="right" color="{$txt}">
								<fo:inline font-weight="normal">Cuenta N° : </fo:inline>
								<fo:inline font-weight="bold"><xsl:value-of select="impresion/numeroCuentaCorriente"/></fo:inline>
							</fo:block>
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
			<fo:inline font-weight="bold"><xsl:value-of select="impresion/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Plataforma/Sucursal: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="impresion/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->
		
		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="15cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="impresion/rutaImagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="9pt" text-align="left" color="{$txt}">
								<fo:inline font-weight="bold" space-before="30pt">Ejecutivo:</fo:inline>
								<fo:inline font-weight="normal"><xsl:value-of select="impresion/ejecutivominicartola"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
								<fo:inline font-weight="bold" space-before="30pt">Oficina: </fo:inline>
								<fo:inline font-weight="normal"><xsl:value-of select="impresion/oficinaminicartola"/></fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- ejecutivo -->
		
		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
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

		<!-- Separador -->
		<fo:block space-after="3mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Últimos 18 Movimientos de su Cuenta Corriente'"/>
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
					<xsl:when test="count(impresion/movimientos) > 0">
						<xsl:for-each select="impresion/movimientos">
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
									&#0160;<xsl:value-of select="serial"/>
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
						<xsl:choose>
						<xsl:when test="impresion/saldoDisponible = ''">
							<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-rojo-claro}">
								<xsl:value-of select="impresion/saldoDisponibleNegativo"/>
							</fo:block>
						</xsl:when>
						<xsl:otherwise>
							<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="impresion/saldoDisponible"/>
							</fo:block>
						</xsl:otherwise>
						</xsl:choose>
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
						<xsl:choose>
						<xsl:when test="impresion/saldoContable = ''">
							<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-rojo-claro}">
								<xsl:value-of select="impresion/saldoContableNegativo"/>
							</fo:block>
						</xsl:when>
						<xsl:otherwise>
							<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="impresion/saldoContable"/>
							</fo:block>
						</xsl:otherwise>
						</xsl:choose>
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
						<xsl:choose>
						<xsl:when test="impresion/saldoContable9AM = ''">
							<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm"  font-weight="bold" text-align="left" color="{$txt-rojo-claro}">
								<xsl:value-of select="impresion/saldoContable9AMNegativo"/>
							</fo:block>
						</xsl:when>
						<xsl:otherwise>
							<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm"  font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="impresion/saldoContable9AM"/>
							</fo:block>
						</xsl:otherwise>
						</xsl:choose>
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
							<xsl:value-of select="impresion/retenciones"/>
						</fo:block>
					<!-- SUCURSAL -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 4 -->

                <!-- DETALLE RETENCIONES -->
	                <!-- FILA 1 -->
	                <fo:table-row height="{$alto-filas}">
	                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
	                    <!-- BANCA -->
	                        <fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
	                            <xsl:call-template name="itemTitulo">
	                                <xsl:with-param name="titulo" select="'Otros Bancos CP/Plaza $:'"/>
	                            </xsl:call-template>
	                        </fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
	                        <fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
	                            <xsl:value-of select="impresion/retencionBancos"/>
	                        </fo:block>
	                    <!-- BANCA -->
	                    </fo:table-cell>
	
	                </fo:table-row>
	                <!-- FILA 1 -->
	
	                <!-- FILA 2 -->
	                <fo:table-row height="{$alto-filas}">
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
	                            <xsl:value-of select="impresion/retencionBCI"/>
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
	                                <xsl:with-param name="titulo" select="'Otros Bancos SP/Plaza $:'"/>
	                            </xsl:call-template>
	                        </fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
	                        <fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
	                            <xsl:value-of select="impresion/retencionBancosOP"/>
	                        </fo:block>
	                    <!-- RENTA -->
	                    </fo:table-cell>
	
	                </fo:table-row>
	                <!-- FILA 3 -->
	
	                <!-- FILA 4 -->
	                <fo:table-row height="{$alto-filas}">
	                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
	                    <!-- RETENCION HASTA 3 DÍAS -->
	                        <fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
	                            <xsl:call-template name="itemTitulo">
	                                <xsl:with-param name="titulo" select="'Valor Ret. hasta 3 días $:'"/>
	                            </xsl:call-template>
	                        </fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
	                        <fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
	                            <xsl:value-of select="impresion/retencionHasta3dias"/>
	                        </fo:block>
	                    <!-- RETENCION HASTA 3 DÍAS -->
	                    </fo:table-cell>
	
	                </fo:table-row>
	                <!-- FILA 4 -->
	
	                <!-- FILA 5 -->
	                <fo:table-row height="{$alto-filas}">
	                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
	                    <!-- RETENCIÓN MAS DE 3 DÍAS -->
	                        <fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
	                            <xsl:call-template name="itemTitulo">
	                                <xsl:with-param name="titulo" select="'Valor Ret. más de 3 días $:'"/>
	                            </xsl:call-template>
	                        </fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
	                        <fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
	                            <xsl:value-of select="impresion/retencionMas3dias"/>
	                        </fo:block>
	                    <!-- RETENCIÓN MAS DE 3 DÍAS -->
	                    </fo:table-cell>
	
	                </fo:table-row>
	                <!-- FILA 5 -->
	
	                <!-- FILA 6 -->
	                <fo:table-row height="{$alto-filas}">
	                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
	                    <!-- Depósito en cajero -->
	                        <fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
	                            <xsl:call-template name="itemTitulo">
	                                <xsl:with-param name="titulo" select="'Cajeros Automáticos $:'"/>
	                            </xsl:call-template>
	                        </fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
	                        <fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
	                            <xsl:value-of select="impresion/cajeroAutomatico"/>
	                        </fo:block>
	                    <!-- Depósito en cajero -->
	                    </fo:table-cell>
	
	                </fo:table-row>
	                <!-- FILA 6 -->
                <!-- DETALLE RETENCIONES -->

			</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
			<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="8cm"/>
			</fo:block>
		<!-- Separador -->

		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Titulares de la Cuenta Corriente'"/>
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
					<xsl:when test="count(impresion/titulares) > 0">
						<xsl:for-each select="impresion/titulares">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" font-size="9pt" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="rutFormateado"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" font-size="9pt" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="nombreTitular"/>
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
                    <!-- CHEQUES Y CARGOS -->
                        <fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
                            <xsl:call-template name="itemTitulo">
                                <xsl:with-param name="titulo" select="'Cheques y Cargos $:'"/>
                            </xsl:call-template>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
                        <fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
                            <xsl:value-of select="impresion/chequesYCargos"/>
                        </fo:block>
                    <!-- CHEQUES Y CARGOS -->
                    </fo:table-cell>

                </fo:table-row>
                <!-- FILA 1 -->


                <!-- FILA 2 -->
                <fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
                    <!-- DEPOSITOS Y ABONOS -->
                        <fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
                            <xsl:call-template name="itemTitulo">
                                <xsl:with-param name="titulo" select="'Depósitos y Abonos $:'"/>
                            </xsl:call-template>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
                        <fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
                            <xsl:value-of select="impresion/depositosYAbonos"/>
                        </fo:block>
                    <!-- DEPOSITOS Y ABONOS -->
                    </fo:table-cell>

                </fo:table-row>
                <!-- FILA 2 -->

                <!-- FILA 3 -->
                <fo:table-row height="{$alto-filas}">
                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
                    <!-- PROTESTOS -->
                        <fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
                            <xsl:call-template name="itemTitulo">
                                <xsl:with-param name="titulo" select="'Protestos:'"/>
                            </xsl:call-template>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
                        <fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
                            <xsl:value-of select="impresion/protestos"/>
                        </fo:block>
                    <!-- PROTESTOS -->
                    </fo:table-cell>

                </fo:table-row>
                <!-- FILA 3 -->

                <!-- FILA 4 -->
                <fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
                    <!-- ACLARACIONES -->
                        <fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
                            <xsl:call-template name="itemTitulo">
                                <xsl:with-param name="titulo" select="'Aclaraciones:'"/>
                            </xsl:call-template>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
                        <fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
                            <xsl:value-of select="impresion/aclaraciones"/>
                        </fo:block>
                    <!-- ACLARACIONES -->
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
						<xsl:choose>
						<xsl:when test="impresion/sobregiroDisponible = ''">
							<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-rojo-claro}">
								<xsl:value-of select="impresion/sobregiroDisponibleNegativo"/>
							</fo:block>
						</xsl:when>
						<xsl:otherwise>
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="impresion/sobregiroDisponible"/>
						</fo:block>
						</xsl:otherwise>
						</xsl:choose>
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
							<xsl:value-of select="impresion/fechaApertura"/>
						</fo:block>
					<!-- FONO PARTICULAR -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 6 -->
				<!-- FILA 7 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Saldo Promedio Trimestre Actual :'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="impresion/saldoPromActual"/>
						</fo:block>
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 7 -->
				<!-- FILA 8 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Saldo Promedio Trimestre Anterior:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="impresion/saldoPromAnterior"/>
						</fo:block>
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 8 -->
				<!-- FILA 9 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Total Depositos Trimestre Actual :'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="impresion/totalDepTrimAct"/>
						</fo:block>
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 9 -->

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
							<xsl:value-of select="impresion/periodo"/>
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 1 -->
			</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="4mm">
		</fo:block>
		<!-- Separador -->
		
		<!-- ESTADO DE LA CUENTA -->
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
								<xsl:with-param name="titulo" select="'Estado de la Cuenta :'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="impresion/estadoCuenta"/>
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
					<xsl:when test="count(impresion/cheques) > 0">
						<xsl:for-each select="impresion/cheques">
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="serieCheque"/>
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
									<xsl:value-of select="impresion/rutaImagen"/>01-bullet2-rj.gif
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
									<xsl:value-of select="impresion/rutaImagen"/>01-bullet1-rj.gif
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