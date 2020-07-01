<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
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
											<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>02-logo-bci.gif
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
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="linea-credito/cabecera/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="linea-credito/cabecera/rut"/>
								</fo:inline>
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
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							Factoring / Linea de credito
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
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Descrip. Línea
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Nº Línea
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Fecha Solic.
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Fecha Resol.
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Vigencia Desde
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Vigencia Hasta
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Monto Solic.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="linea-credito/lineas/linea">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="descripcion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="numero"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="fecha-solicitud"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="fecha-resolucion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="vigencia-desde"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="vigencia-hasta"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="monto-solicitado"/>
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

	<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Datos Generales
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->



		<!-- division -->
		<fo:block space-after="2mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8.8cm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="0.1mm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="9cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>


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
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!--fin  division -->




		<!-- division -->
		<fo:block space-after="2mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8.8cm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="0.1mm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="9cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Aprobación Comité
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->
							<xsl:call-template name="ladoizquierdo2"/>
						</fo:table-cell>
						<fo:table-cell>

				</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">

				</fo:table-cell>
						<fo:table-cell>

				</fo:table-cell>
						<fo:table-cell>
<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Observación
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->
							<xsl:call-template name="ladoderecho2"/>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!--fin  division -->





				<!-- division -->
		<fo:block space-after="2mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8.8cm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="0.1mm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="9cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>

	<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Porcentaje Anticipado
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->

							<xsl:call-template name="ladoizquierdo3"/>
						</fo:table-cell>
						<fo:table-cell>

				</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">

				</fo:table-cell>
						<fo:table-cell>

				</fo:table-cell>
						<fo:table-cell>
						<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Sub-Lineas Por Deudor
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->

							<xsl:call-template name="ladoderecho3"/>
						</fo:table-cell>
					</fo:table-row>

										<fo:table-row>
						<fo:table-cell>


							&#0160;
						</fo:table-cell>
						<fo:table-cell>

				</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">

				</fo:table-cell>
						<fo:table-cell>

				</fo:table-cell>
						<fo:table-cell>

							<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Sub-Lineas por producto
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->

							<xsl:call-template name="ladoderecho4"/>
						</fo:table-cell>
					</fo:table-row>

				</fo:table-body>
			</fo:table>
		</fo:block>

		<!--fin  division -->

			</xsl:template>


		<xsl:template name="ladoizquierdo">
			<!-- tabla A -->
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="4.4cm"/>
					<fo:table-column column-width="4.4cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Nº de Línea :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/numero"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Estado Línea :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/estado"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Fecha Solic. :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/fecha-solicitud"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Monto Solicitud :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/monto-solicitud"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- tabla A -->
		</xsl:template>
		<xsl:template name="ladoderecho">
			<!-- tabla B -->
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="4.8cm"/>
					<fo:table-column column-width="5cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Grupo Económico :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/grupo-economico"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Monto Grupo :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/monto-grupo"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Monto Disponible :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/monto-dispnible"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- tabla B -->
		</xsl:template>





















		<xsl:template name="ladoizquierdo2">
			<!-- tabla A -->
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="4.4cm"/>
					<fo:table-column column-width="4.4cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Fecha Desde :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/fecha-desde"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Fecha Hasta :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/fecha-hasta"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Fecha Resolución. :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/fecha-resolucion"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Monto Aprobado :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/monto-aprobado"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- tabla A -->
		</xsl:template>
		<xsl:template name="ladoderecho2">
			<!-- tabla B -->
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="4.8cm"/>
					<fo:table-column column-width="5cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Observacion :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/observacion"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Tipo Comisón :
	</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/tipo-comision"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic>
										<xsl:attribute name="src"><xsl:value-of select="linea-credito/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
									</fo:external-graphic>&#0160;Obs. Comisión:
	</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="linea-credito/linea-detallada/observacion-comision"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- tabla B -->
		</xsl:template>












		<xsl:template name="ladoizquierdo3">
			<!-- tabla A -->
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;T.D.
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;% Anticipo
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Cobranza
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Responsabilidad
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="linea-credito/linea-detallada/porcentaje-anticipado/item">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="td"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="porcentaje-anticipo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="cobranza"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="responsabilidad"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>

			</fo:block>
			<!-- tabla A -->
		</xsl:template>
		<xsl:template name="ladoderecho3">
			<!-- tabla B -->
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">

			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="1.5cm"/>
				<fo:table-column column-width="1.5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;RUT deudor
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Deudor
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Monto Sublinea
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Monto Ocupado
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;%
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="linea-credito/linea-detallada/sublineas-por-deudor/item">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="rut-deudor"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="nombre-deudor"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="monto-sublinea"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="monto-ocupado"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="porcentaje"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>


			</fo:block>
			<!-- tabla B -->
		</xsl:template>




		<xsl:template name="ladoderecho4">
			<!-- tabla B -->
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">

			<fo:table table-layout="fixed">
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Tipo Docto.
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Monto Sublinea
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Monto Ocupado
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;%
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="linea-credito/linea-detallada/sublineas-por-producto/item">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="tipo-documento"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="monto-sublinea"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="monto-ocupado"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="porcentaje"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>


			</fo:block>
			<!-- tabla B -->
		</xsl:template>


</xsl:stylesheet>
