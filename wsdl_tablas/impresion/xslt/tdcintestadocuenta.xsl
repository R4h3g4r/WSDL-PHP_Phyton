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
												<xsl:value-of select="estado-cuenta-internacional/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="estado-cuenta-internacional/fechaImpresion"/>
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
								<xsl:value-of select="estado-cuenta-internacional/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="estado-cuenta-internacional/rut"/></fo:inline>
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
								Estado de Cuenta Internacional
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
			<fo:inline font-weight="bold"><xsl:value-of select="estado-cuenta-internacional/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="estado-cuenta-internacional/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->
		
		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->

		<!-- nro tarjeta -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}" space-after="1mm">
			<fo:inline font-weight="bold">Tarjeta de Crédito: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="estado-cuenta-internacional/numeroTarjetaCredito"/></fo:inline>
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


		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->

		<!-- movimientos facturados -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}" space-after="1mm">
			<fo:inline font-weight="bold">Movimientos Facturados</fo:inline>
		</fo:block>
		<!-- movimientos facturados -->

		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->

	<!-- movimientos facturados -->
		<!-- tabla movimientos facturados -->
		<fo:block font-size="7pt" space-after="1.2mm" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="12cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;N° Documento
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;Fecha
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;Descripción
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;Monto
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="estado-cuenta-internacional/detalle-movimientos-facturados/movimientos-facturados">

					<xsl:choose>
					<xsl:when test="segmento!=''">

						<fo:table-row>
							<fo:table-cell number-columns-spanned="3" background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;&#0160;<xsl:value-of select="glosa"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;&#0160;<xsl:value-of select="montoDolar"/>
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
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;<xsl:value-of select="montoDolar"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>


					</xsl:otherwise>
					</xsl:choose>

					</xsl:for-each>                      
				</fo:table-body>
			</fo:table>
			<fo:block font-size="7pt" padding-before="1mm" padding-after="1mm" text-align="center" >
				&#0160;
			</fo:block>
		</fo:block>
		<!-- tabla movimientos facturados -->
	<!-- movimientos facturados -->


	<!-- comprobantes -->
		<fo:block>
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
								Fecha de Facturación 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								<xsl:value-of select="estado-cuenta-internacional/facturacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								Fecha Próxima Facturación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								<xsl:value-of select="estado-cuenta-internacional/proximaFacturacion"/>
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
								Cupo Utilizado 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								<xsl:value-of select="estado-cuenta-internacional/cupoUtilizadoUS"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								Cupo Disponible
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								<xsl:value-of select="estado-cuenta-internacional/cupoDisponibleUS"/>
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
								Pagar Hasta  
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								<xsl:value-of select="estado-cuenta-internacional/pagarHasta"/>
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
								&#0160;&#0160;&#0160;Nombre
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-internacional/comprobanteNombre"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;&#0160;Número de Cuenta
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-internacional/comprobanteCuenta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;&#0160;Cancelar Hasta
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-internacional/pagarHasta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;&#0160;Monto Facturado
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-internacional/comprobanteMontoFacturado"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;&#0160;Monto Cancelado
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;US$
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
						&#0160;
							<fo:block font-size="9pt" font-weight="bold" padding-before="1mm" padding-after="1mm" padding-top="1mm" padding-bottom="1mm" text-align="center" >
								<fo:table table-layout="fixed">
									<fo:table-column column-width="1.5cm" />
									<fo:table-column column-width="1cm" />
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
										</fo:table-row>
										<fo:table-row>
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
								&#0160;&#0160;&#0160;Nombre
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-internacional/comprobanteNombre"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;&#0160;Número de Cuenta
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-internacional/comprobanteCuenta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;&#0160;Cancelar Hasta
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-internacional/pagarHasta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;&#0160;Monto Facturado
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="estado-cuenta-internacional/comprobanteMontoFacturado"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;&#0160;&#0160;Monto Cancelado
							</fo:block>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;US$
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
						&#0160;
							<fo:block font-size="9pt" font-weight="bold" padding-before="1mm" padding-after="1mm" padding-top="1mm" padding-bottom="1mm" text-align="center" >
								<fo:table table-layout="fixed">
									<fo:table-column column-width="1.5cm" />
									<fo:table-column column-width="1cm" />
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
										</fo:table-row>
										<fo:table-row>
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



</xsl:stylesheet>







