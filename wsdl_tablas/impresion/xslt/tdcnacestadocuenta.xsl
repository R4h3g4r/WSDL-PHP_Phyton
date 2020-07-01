<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="bg-amarillo">#FFFFDE</xsl:variable>
	<xsl:variable name="bg-plomo">#E7E7E7</xsl:variable>
	<xsl:variable name="tam-separacion">27cm</xsl:variable>

	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="32.1cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="20cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="estado-cuenta-nacional/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="estado-cuenta-nacional/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
					<!-- Separador -->
						<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
						</fo:block>
					<!-- Separador -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
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
				<fo:table-column column-width="20cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="estado-cuenta-nacional/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="estado-cuenta-nacional/rut"/></fo:inline>
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
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->
		<!-- Estado de la cuenta -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8cm"/>
				<fo:table-column column-width="12cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Estado de Cuenta Nacional
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell >
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		<!-- Estado de la cuenta -->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="estado-cuenta-nacional/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="estado-cuenta-nacional/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->
		
		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->

		<!-- nro tarjeta -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
		<fo:table table-layout="fixed">
		<fo:table-column column-width="0.3cm" />
		<fo:table-column column-width="8cm" />
		<fo:table-body>

		<fo:table-row>
		<fo:table-cell padding-before="1mm">
			<fo:external-graphic>
					<xsl:attribute name="src">
						<xsl:value-of select="estado-cuenta-nacional/rutaImagen"/>01-bullet2-rj.gif
					</xsl:attribute>
			</fo:external-graphic>
		</fo:table-cell>
		<fo:table-cell>
			<fo:block font-size="9pt" text-align="left" color="{$txt}" space-after="1mm">
				<fo:inline font-weight="bold">Tarjeta de Crédito: </fo:inline>
				<fo:inline font-weight="bold"><xsl:value-of select="estado-cuenta-nacional/numeroTarjetaCredito"/></fo:inline>
			</fo:block>
		</fo:table-cell>
		</fo:table-row>

		</fo:table-body>
		</fo:table>
		</fo:block>
		<!-- nro tarjeta -->

		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->

		<!-- Tabla 2-1 -->
		<fo:block>
			<fo:table table-layout="fixed" >
				
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<xsl:call-template name="tabla1"/>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell >
							<xsl:call-template name="tabla2"/>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
							<xsl:call-template name="tabla3"/>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Tabla 2-1 -->

		<fo:block padding-before="1cm" font-size="9pt">
			<fo:table table-layout="fixed" >
				
				<fo:table-column column-width="9cm" />
				<fo:table-column column-width="9cm" />
				<fo:table-column column-width="9cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Crédito Rotativo'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Crédito Cuotas 5-24 Meses'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row >
					<fo:table-row >
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Tasa de Interés
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								<xsl:value-of select="estado-cuenta-nacional/tasaCreditoRotativo"/>%&#0160;
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								<xsl:value-of select="estado-cuenta-nacional/tasaCreditoCuota"/>%&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block padding-before="1cm" font-size="9pt">
			<fo:table table-layout="fixed" >
				
				<fo:table-column column-width="5.5cm" />
				<fo:table-column column-width="5.4cm" />
				<fo:table-column column-width="5.4cm" />
				<fo:table-column column-width="5.4cm" />
				<fo:table-column column-width="5.4cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Saldo en Cuotas'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="4" background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Detalle de Vencimientos de Cuotas próximos 4 meses:'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row >
					<fo:table-row >
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								$ <xsl:value-of select="estado-cuenta-nacional/saldoCapital"/>&#0160;
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								$ <xsl:value-of select="estado-cuenta-nacional/vencimientoCuota1"/>&#0160;
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								$ <xsl:value-of select="estado-cuenta-nacional/vencimientoCuota2"/>&#0160;
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								$ <xsl:value-of select="estado-cuenta-nacional/vencimientoCuota3"/>&#0160;
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								$ <xsl:value-of select="estado-cuenta-nacional/vencimientoCuota4"/>&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->

		<!-- movimientos facturados -->
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Movimientos Facturados'"/>
		</xsl:call-template>
		<!-- movimientos facturados -->

		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->

	<!-- movimientos facturados -->
		<fo:block font-size="7pt">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="12cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'N° Documento'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Fecha'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Descripción'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Monto'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block font-size="7pt">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="12cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-body>

					<xsl:for-each select="estado-cuenta-nacional/detalle-movimientos-facturados/movimientos-facturados">
					<xsl:choose>
					<xsl:when test="segmento!=''">
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" padding-before="1mm" padding-after="1mm">
							<fo:block>
							&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="3" background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
						<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="0.5cm" />
								<fo:table-column column-width="8cm" />
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-left="2mm" padding-before="1mm" >
											<fo:external-graphic height="1mm" width="1mm">
												<xsl:attribute name="src">
													<xsl:value-of select="/estado-cuenta-nacional/rutaImagen"/>01-bullet1-rj.gif
												</xsl:attribute>
											</fo:external-graphic>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												<xsl:value-of select="descripcion"/><xsl:value-of select="glosa"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								$ <xsl:value-of select="monto"/>&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:when>
					<xsl:otherwise>
						<xsl:choose>
						<xsl:when test="tipoTransaccion='2'">
							<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;&#0160;<xsl:value-of select="descripcion"/><xsl:value-of select="glosa"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									$ <xsl:value-of select="monto"/>&#0160;
								</fo:block>
							</fo:table-cell>
							</fo:table-row>
						</xsl:when>
						<xsl:otherwise>
							<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;&#0160;<xsl:value-of select="numeroDocumento"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;&#0160;<xsl:value-of select="transaccion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;&#0160;<xsl:value-of select="descripcion"/><xsl:value-of select="glosa"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									$ <xsl:value-of select="monto"/>&#0160;
								</fo:block>
							</fo:table-cell>
							</fo:table-row>
						</xsl:otherwise>
						</xsl:choose>
					</xsl:otherwise>
					</xsl:choose>
					</xsl:for-each>                      
				</fo:table-body>
			</fo:table>
			<fo:block font-size="7pt" padding-before="1mm" padding-after="1mm" text-align="center" >
				&#0160;
			</fo:block>
		</fo:block>
	<!-- movimientos facturados -->

	<!-- mensaje -->
	<fo:block font-size="9pt" break-before="page">
		<fo:table table-layout="fixed">
		<fo:table-column column-width="27cm" />
		<fo:table-body>
			<fo:table-row>
				<fo:table-cell>
					<fo:block space-after="1mm" font-size="9pt">
						<xsl:value-of select="estado-cuenta-nacional/mensaje"/>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
		</fo:table-body>
		</fo:table>
	</fo:block>
	<!-- mensaje -->

	<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
	<!-- Separador -->

	<!-- Resumen de Cuenta -->
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Resumen de Cuenta'"/>
		</xsl:call-template>
	<!-- Resumen de Cuenta -->

	<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
	<!-- Separador -->

	<fo:block space-after="1mm" font-size="9pt">
		<fo:table table-layout="fixed" >
				
		<fo:table-column column-width="9cm" />
		<fo:table-column column-width="9cm" />
		<fo:table-column column-width="9cm" />
		<fo:table-body>
			<fo:table-row >
			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
				<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
					<xsl:call-template name="itemTitulo">
						<xsl:with-param name="titulo" select="'Actividad de la Cuenta'"/>
					</xsl:call-template>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
				<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
					Monto&#0160;
				</fo:block>
			</fo:table-cell>
				<fo:table-cell number-rows-spanned="9" vertical-align="bottom" border="0.5pt solid {$lineas}">
				<fo:block font-weight="normal" color="{$txt}" >
					<xsl:value-of select="estado-cuenta-nacional/frase"/>
				</fo:block>
			</fo:table-cell>
			</fo:table-row >
			<fo:table-row >
			<fo:table-cell border="0.5pt solid {$lineas}">
				<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
					<xsl:call-template name="itemTitulo">
						<xsl:with-param name="titulo" select="'Monto Anterior Facturado'"/>
					</xsl:call-template>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
				<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
					$ <xsl:value-of select="estado-cuenta-nacional/montoAnterior"/>&#0160;
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}">
			</fo:table-cell>
			</fo:table-row >

			<fo:table-row >
			<fo:table-cell border="0.5pt solid {$lineas}">
				<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
					<xsl:call-template name="itemTitulo">
						<xsl:with-param name="titulo" select="'Total de Pagos'"/>
					</xsl:call-template>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
				<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
					$ <xsl:value-of select="estado-cuenta-nacional/totalPago"/>&#0160;
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}">
			</fo:table-cell>
			</fo:table-row >

			<fo:table-row >
			<fo:table-cell border="0.5pt solid {$lineas}">
				<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
					<xsl:call-template name="itemTitulo">
						<xsl:with-param name="titulo" select="'Total PAT'"/>
					</xsl:call-template>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
				<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
					$ <xsl:value-of select="estado-cuenta-nacional/totalPat"/>&#0160;
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}">
			</fo:table-cell>
			</fo:table-row >
			
			<fo:table-row >
			<fo:table-cell border="0.5pt solid {$lineas}">
				<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
					<xsl:call-template name="itemTitulo">
						<xsl:with-param name="titulo" select="'Total Compras, cuotas y avances'"/>
					</xsl:call-template>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
				<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
					$ <xsl:value-of select="estado-cuenta-nacional/compraCuotaAvance"/>&#0160;
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}">
			</fo:table-cell>
			</fo:table-row >

			<fo:table-row >
			<fo:table-cell border="0.5pt solid {$lineas}">
				<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
					<xsl:call-template name="itemTitulo">
						<xsl:with-param name="titulo" select="'Total otros'"/>
					</xsl:call-template>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
				<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
					$ <xsl:value-of select="estado-cuenta-nacional/totalOtro"/>&#0160;
				</fo:block>
			</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}">
			</fo:table-cell>
			</fo:table-row >

			<fo:table-row >
			<fo:table-cell border="0.5pt solid {$lineas}">
				<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
					<xsl:call-template name="itemTitulo">
						<xsl:with-param name="titulo" select="'Monto Facturado'"/>
					</xsl:call-template>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}">
				<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
					$ <xsl:value-of select="estado-cuenta-nacional/montoFacturado"/>&#0160;
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}">
			</fo:table-cell>
			</fo:table-row >

			<fo:table-row >
			<fo:table-cell border="0.5pt solid {$lineas}">
				<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
					<xsl:call-template name="itemTitulo">
						<xsl:with-param name="titulo" select="'Fecha Próxima Facturación'"/>
					</xsl:call-template>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
				<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
					<xsl:value-of select="estado-cuenta-nacional/proximaFacturacion"/>&#0160;
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}">
			</fo:table-cell>
			</fo:table-row >

			<fo:table-row >
			<fo:table-cell border="0.5pt solid {$lineas}">
				<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
					<xsl:call-template name="itemTitulo">
						<xsl:with-param name="titulo" select="'Monto en Mora'"/>
					</xsl:call-template>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
				<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
					$ <xsl:value-of select="estado-cuenta-nacional/montoEnMora"/>&#0160;
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}">
			</fo:table-cell>
			</fo:table-row >

		</fo:table-body>
		</fo:table>
	</fo:block>


	<!-- comprobantes -->
		<fo:block padding-before="1cm">
			<fo:table table-layout="fixed" >
				
				<fo:table-column column-width="12cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="12cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<xsl:call-template name="comprobante1"/>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell padding-before="1cm">
							<xsl:call-template name="comprobante2"/>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
							<xsl:call-template name="comprobante3"/>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
	<!-- comprobantes -->

	<!-- Separador -->
	<fo:block space-after="1mm">
		<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
	</fo:block>
	<!-- Separador -->

	</xsl:template>

	<xsl:template name="tabla1">
		<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Tarjeta de Crédito'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								<xsl:value-of select="estado-cuenta-nacional/numeroTarjetaCredito"/>&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Fecha de Facturación'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm" >
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								<xsl:value-of select="estado-cuenta-nacional/facturacion"/>&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Cargo a Cuenta Corriente'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								$ <xsl:value-of select="estado-cuenta-nacional/cargoCuentaCorriente"/>&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="tabla2">
		<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Monto Facturado'"/>
								</xsl:call-template> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								$ <xsl:value-of select="estado-cuenta-nacional/montoFacturado"/>&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Pago Minimo'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								$ <xsl:value-of select="estado-cuenta-nacional/pagoMinimo"/>&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Pagar Hasta'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								<xsl:value-of select="estado-cuenta-nacional/pagarHasta"/>&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="tabla3">
		<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Cupo Total'"/>
								</xsl:call-template> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								$ <xsl:value-of select="estado-cuenta-nacional/cupoTotal"/>&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Cupo Utilizado'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								$ <xsl:value-of select="estado-cuenta-nacional/cupoUtilizado"/>&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row> 
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Cupo Disponible'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								$ <xsl:value-of select="estado-cuenta-nacional/cupoDisponible"/>&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="comprobante1">
		<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="6cm" />
				<fo:table-column column-width="6cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="2" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								COMPROBANTE DE PAGO - EMISOR
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Nombre'"/>
								</xsl:call-template>
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-nacional/titular"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Número de Cuenta'"/>
								</xsl:call-template>
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-nacional/comprobanteCuenta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Pagar Hasta'"/>
								</xsl:call-template>
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-nacional/pagarHasta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Monto Facturado'"/>
								</xsl:call-template>
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;$ <xsl:value-of select="estado-cuenta-nacional/montoFacturado"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Monto Cancelado'"/>
								</xsl:call-template>
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;$ <xsl:value-of select="estado-cuenta-nacional/pagoMinimo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Monto Cancelado'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="2" padding-start="2cm" border="0.5pt solid {$lineas}">
						<fo:block font-size="9pt" font-weight="bold" padding-before="1mm" padding-after="1mm" padding-top="1mm" padding-bottom="1mm" text-align="center" >
							<fo:table table-layout="fixed">
									<fo:table-column column-width="2cm" />
									<fo:table-column column-width="2cm" />
									<fo:table-column column-width="2cm" />
									<fo:table-column column-width="2cm" />
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
												<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
													Cheque  
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.5pt solid {$lineas}">
												<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
													&#0160;
												</fo:block>
											</fo:table-cell>
											<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
												<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
													Efectivo 
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.5pt solid {$lineas}">
												<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
													&#0160;
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>  
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="comprobante2">
		<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
								Cliente 
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$txt-azul-oscuro}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="3mm" space-after="0mm" text-align="center">
								Timbre
							</fo:block>
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-after="3mm" text-align="center">
								Banco
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="comprobante3">
		<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="6cm" />
				<fo:table-column column-width="6cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="2" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								COMPROBANTE DE PAGO - CLIENTE
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Nombre'"/>
								</xsl:call-template>
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-nacional/titular"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Número de Cuenta'"/>
								</xsl:call-template>
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-nacional/comprobanteCuenta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Pagar Hasta'"/>
								</xsl:call-template>
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-nacional/pagarHasta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Monto Facturado'"/>
								</xsl:call-template>
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;$ <xsl:value-of select="estado-cuenta-nacional/montoFacturado"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Pago Minimo'"/>
								</xsl:call-template>
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;$ <xsl:value-of select="estado-cuenta-nacional/pagoMinimo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Monto Cancelado'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell padding-start="2cm" number-columns-spanned="2" border="0.5pt solid {$lineas}">
						<fo:block font-size="9pt" font-weight="bold" padding-before="1mm" padding-after="1mm" padding-top="1mm" padding-bottom="1mm" text-align="center" >
							<fo:table table-layout="fixed">
									<fo:table-column column-width="2cm" />
									<fo:table-column column-width="2cm" />
									<fo:table-column column-width="2cm" />
									<fo:table-column column-width="2cm" />
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
												<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
													Cheque  
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.5pt solid {$lineas}">
												<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
													&#0160;
												</fo:block>
											</fo:table-cell>
											<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
												<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
													Efectivo 
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.5pt solid {$lineas}">
												<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
													&#0160;
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
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
									<xsl:value-of select="estado-cuenta-nacional/rutaImagen"/>01-bullet1-rj.gif
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

	<xsl:template name="subTitulo">
	<xsl:param name="titulo"/> 

	<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
	<fo:table table-layout="fixed">
	<fo:table-column column-width="0.3cm" />
	<fo:table-column column-width="8cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell padding-before="1mm">
		<fo:external-graphic>
				<xsl:attribute name="src">
					<xsl:value-of select="estado-cuenta-nacional/rutaImagen"/>01-bullet2-rj.gif
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







