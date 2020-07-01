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
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>

	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="22cm"
					page-width="28cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="1cm"
					margin-right="1cm">
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
							<fo:table-column column-width="21cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="transferencia/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="transferencia/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
					<!-- Separador -->
						<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="26cm"/>
						</fo:block>
					<!-- Separador -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
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
				<fo:table-column column-width="26cm"/>
				<fo:table-column column-width="0cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="12pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								Banco de Crédito e Inversiones, Rut 97.006.000-6, certifica que don(a) <xsl:value-of select="transferencia/nombreEmpresa"/>
								ha efectuado el pago Nro. <xsl:value-of select="transferencia/numeroTransferencia"/>, con el siguiente detalle:
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- cabecera cliente -->

		<!-- Separador -->
		<fo:block space-after="3mm">
		</fo:block>
		<!-- Separador -->
		
		<fo:block font-size="7pt" space-after="10mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-body>
					<fo:table-row space-after="1mm">
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
								Nro Transferencia
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
								Cuenta Cargo
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
								Beneficiario
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
								Rut Beneficiario
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
								Cuenta Destino
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
								Banco Destino
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
								Fecha Transferencia
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
                            <fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
                                Nro.Factura / Boleta
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
                            <fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
                                Orden de Compra
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
                            <fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
                                Mensaje para Destinatario
                            </fo:block>
                        </fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
								Monto Transferencia
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
                            <fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
                                Tipo Pago
                            </fo:block>
                        </fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="transferencia/detalles/detalle">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="right">
									&#0160;<xsl:value-of select="../../numeroTransferencia"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="right">
									&#0160;<xsl:value-of select="ctaCargo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="nombreBeneficiario"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
								<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="rutBeneficiario"/>-<xsl:value-of select="dvBeneficiario"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
								<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="right">
									&#0160;<xsl:value-of select="cuentaDestino"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
								<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="bancoDestino"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
								<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="right">
									&#0160;<xsl:value-of select="fechaTransferencia"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
                                <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
                                    &#0160;<xsl:value-of select="numFactura"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
                                <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
                                    &#0160;<xsl:value-of select="ordCompra"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
                                <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
                                    &#0160;<xsl:value-of select="mensajeDest"/>
                                </fo:block>
                            </fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
								<xsl:call-template name="montoFormateado">
									<xsl:with-param name="montoaFormatear" select="monto"/>
								</xsl:call-template>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" padding-right="{$espacio-texto-celda-left}">
                                <fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
                                    &#0160;<xsl:value-of select="tipo"/>
                                </fo:block>
                            </fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="21cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-before="1cm">
							<fo:external-graphic width="110pt"  height="110pt" text-align="right" position="relative">
								<xsl:attribute name="src">
									<xsl:value-of select="transferencia/rutaImagen"/>sello_bci.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>	
	</xsl:template>

	<xsl:template name="montoFormateado">
		<xsl:param name="montoaFormatear"/>
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="right">
			&#0160;<xsl:value-of select="format-number($montoaFormatear, '###.###', 'peso')"/>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>
		<xsl:param name="fecha"/>
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="#0361A2" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="transferencia/rutaImagen"/>01-bullet2-rj.gif
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
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm" >
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of select="transferencia/rutaImagen"/>01-bullet1-rj.gif
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