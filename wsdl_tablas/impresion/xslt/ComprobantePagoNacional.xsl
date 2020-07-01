<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="destacado">#FFFF99</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="txt-celeste">#D9E4EF</xsl:variable>
	<xsl:variable name="fondo-tabla">#E0E0E0</xsl:variable>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="22cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
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
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="cabecera/fecha-impresion"/>
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
		<!-- Separador -->
		<fo:block space-after="5mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<!-- Titulo Modulo -->
		<fo:block border-width="2mm" space-after="5mm">
			<fo:block >
						<fo:table table-layout="fixed">
								<fo:table-column column-width="15cm"/>
										<fo:table-column column-width="3cm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell>
														<fo:block color="{$txt}" font-size="12pt" font-weight="bold" text-align="left" padding-before="2mm">
														Comprobante de Pago</fo:block>
													</fo:table-cell>
													<fo:table-cell number-rows-spanned="3">
														<fo:block>
															<fo:external-graphic>
																	<xsl:attribute name="src"><xsl:value-of select="comprobante/cabecera/ruta-imagen"/>02-logo-Tbanc.gif
																</xsl:attribute>
															</fo:external-graphic>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell>
														<fo:block color="{$txt}" font-size="15pt" font-weight="bold" text-align="left">
														Tarjeta de Crédito Nacional
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell>
														<fo:block> <xsl:value-of select="comprobante/fecha"/></fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
			</fo:block>
		</fo:block>
		<!-- Titulo Modulo -->
		<!-- Separador -->
		<fo:block space-after="3mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<!--numero de comprobante -->
		<fo:block font-weight="bold" color="{$txt}">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="14pt" text-align="left">
							&#0160;Comprobante Nº <xsl:value-of select="comprobante/numComprobante"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!--numero de comprobante-->
		<!-- Separador -->
		<fo:block space-after="0mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<!-- LISTADO DE LINEAS -->
		<!-- Detalle -->
		<fo:block font-size="10pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="9cm"/>
				<fo:table-column column-width="9cm"/>
				<fo:table-body border-color="black">
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left" background-color="{$fondo-tabla}">
								&#0160;Cliente
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left" background-color="{$fondo-tabla}">
								&#0160; <xsl:value-of select="comprobante/nombreTitular"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left" >
								&#0160;Tarjeta de crédito
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left" >
								&#0160; <xsl:value-of select="comprobante/tarjetasTitular/tarjeta/nombreTarjeta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left" background-color="{$destacado}">
								&#0160; Monto a Pagar
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left" background-color="{$destacado}">
								&#0160; $<xsl:value-of select="comprobante/deuda/totalPago"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<xsl:if test="comprobante/deuda/tipoPago='ctacte' ">
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Cuenta de Cargo
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160; <xsl:value-of select="comprobante/deuda/cuentaCargo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:if>	
					
					
					<xsl:if test="comprobante/deuda/tipoPago='cuotas' ">
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Pago en cuotas Nº
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160; <xsl:value-of select="comprobante/deuda/numeroCuotas"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Valor cuota mensual
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160; $<xsl:value-of select="comprobante/deuda/valorCuota"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Comisión
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160; $<xsl:value-of select="comprobante/deuda/montoComision"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Tasa de interés mensual
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160; <xsl:value-of select="comprobante/deuda/tasaAplicada"/>%
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;CAE
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160; <xsl:value-of select="comprobante/deuda/costoAnualEquivalente"/>%
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;CTC
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160; $<xsl:value-of select="comprobante/deuda/costoTotalCredito"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:if>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
		</fo:block>
		<!-- Separador -->
	</xsl:template>
</xsl:stylesheet>
