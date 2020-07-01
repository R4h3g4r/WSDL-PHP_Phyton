<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!-- Parametros -->
	<xsl:param name="fechaVenc"/>
	<!-- Parametros -->
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="rojo">#FF0000</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
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
		<!-- Titulo Cartola Línea Sobregiro-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Movimientos sin Facturar
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo-->

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

		<!--tabla-->
		<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="6cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								&#0160;Movimientos por Tarjeta
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<xsl:for-each select="info/xmlListadoCuenta/info">
		<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="6cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-body>

					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" border="0.5pt solid {$lineas}" padding-before="1mm" padding-after="1mm" background-color="{$bgcolor}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" text-align="left">
								<fo:table table-layout="fixed">
								<fo:table-column column-width="0.5cm" />
								<fo:table-column column-width="4cm" />
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-left="2mm" padding-before="1mm" >
											<fo:external-graphic height="1mm" width="1mm">
												<xsl:attribute name="src">
													<xsl:value-of select="/info/rutaImagen"/>01-bullet1-rj.gif
												</xsl:attribute>
											</fo:external-graphic>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												Cuenta N° <xsl:value-of select="cuenta"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
								</fo:table>

							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<xsl:choose>
					<xsl:when test="existeListadoNacional='S'">

					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" border="0.5pt solid {$lineas}">
							<fo:block>
							&#0160;
							</fo:block>
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								<fo:table table-layout="fixed">
								<fo:table-column column-width="0.3cm" />
								<fo:table-column column-width="8cm" />
								<fo:table-body>
								<fo:table-row>
								<fo:table-cell padding-before="1mm">
									<fo:block text-align="center">
									<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="/info/rutaImagen"/>01-bullet2-rj.gif
											</xsl:attribute>
									</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block>
										Nacionales
									</fo:block>
								</fo:table-cell>
								</fo:table-row>

								</fo:table-body>
								</fo:table>
							</fo:block>
							<fo:block>
								<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolor}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Número de Documento'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolor}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Fecha Transacción'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolor}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Descripción'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolor}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Monto Transacción'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

						<xsl:for-each select="listadoNacional/movimiento">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="numeroDocumento"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="fechaTransaccion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="descripcion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;$ <xsl:value-of select="monto"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					
					</xsl:when>
					</xsl:choose>
					<xsl:choose>
					<xsl:when test="existeListadoInternacional='S'">

					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" border="0.5pt solid {$lineas}">
							<fo:block>
							&#0160;
							</fo:block>
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="0.3cm" />
								<fo:table-column column-width="8cm" />
								<fo:table-body>
								<fo:table-row>
								<fo:table-cell padding-before="1mm">
									<fo:block text-align="center">
									<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="/info/rutaImagen"/>01-bullet2-rj.gif
											</xsl:attribute>
									</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block>
										Internacionales
									</fo:block>
								</fo:table-cell>
								</fo:table-row>

								</fo:table-body>
								</fo:table>			
							</fo:block>
							<fo:block>
								<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolor}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Número de Documento'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolor}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Fecha Transacción'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolor}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Descripción'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolor}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Monto Transacción'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

						<xsl:for-each select="listadoInternacional/movimiento">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="numeroDocumento"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="fechaTransaccion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="descripcion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;US$ <xsl:value-of select="monto"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</xsl:when>
					</xsl:choose>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
		</xsl:for-each>
		<!--tabla-->

	</xsl:template>

	<xsl:template name="itemTitulo">
		<xsl:param name="titulo"/> 
		<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm" >
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of select="/info/rutaImagen"/>01-bullet1-rj.gif
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

	<fo:block font-size="9pt" font-weight="normal" text-align="left" color="{$txt-azul-oscuro}" >
	<fo:table table-layout="fixed">
	<fo:table-column column-width="0.3cm" />
	<fo:table-column column-width="8cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell padding-before="1mm">
		<fo:external-graphic>
				<xsl:attribute name="src">
					<xsl:value-of select="/info/rutaImagen"/>01-bullet2-rj.gif
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