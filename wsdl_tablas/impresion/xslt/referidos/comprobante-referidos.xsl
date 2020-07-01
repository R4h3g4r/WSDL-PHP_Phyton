<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="destacado">#FFFF99</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="txt-celeste">#D9E4EF</xsl:variable>
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
					<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src"><xsl:value-of select="comprobante/cabecera/ruta-imagen"/>logo_bci_460x250.jpg
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
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
					<!-- Separador -->
					<fo:block space-after="1mm">
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
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left">
								<xsl:value-of select="comprobante/cabecera/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
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
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="13pt" font-weight="bold" text-align="left">
							 Un amigo es un Premio
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="15pt" font-weight="bold" text-align="left">
							Ingreso De Referidos
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
		<!-- LISTADO DE LINEAS -->
		<!-- Detalle -->
		<fo:block font-size="8pt" font-weight="bold" text-align="left">
							Referente: 
	    </fo:block>
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="9cm"/>
				<fo:table-column column-width="9cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left" background-color="{$destacado}" font-size="12pt">
								&#0160;Identificador Referente
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left" background-color="{$destacado}" font-size="12pt">
								&#0160; <xsl:value-of select="comprobanteReferidos/referente/idreferente"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Nombre Referente
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160; <xsl:value-of select="comprobanteReferidos/referente/nombreReferente"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
		</fo:block>
		<!-- Separador -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="18cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left" background-color="{$destacado}" font-size="12pt">
								&#0160;Referidos
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="/comprobanteReferidos/referidos/referido">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="9cm"/>
										<fo:table-column column-width="9cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;RUT
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="rut"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;Nombres
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="nombres"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;Apellido paterno
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="apellidoPaterno"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;Apellido materno
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="apellidoMaterno"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;Celular
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="celular"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;Teléfono de contacto
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="telefono"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;E-mail
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="email"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;Direccion
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="direccion"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;Region
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="region"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;Comuna
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="comuna"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;Ciudad
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="ciudad"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										<xsl:if test="oficina != ''">
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;Sucursal
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="oficina"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:if>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160;Información para mejorar la oferta
															</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid {$lineas}">
													<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
																&#0160; <xsl:value-of select="comentario"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN LISTADO DE LINEAS-->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
		</fo:block>
		<!-- Separador -->
	</xsl:template>
</xsl:stylesheet>
