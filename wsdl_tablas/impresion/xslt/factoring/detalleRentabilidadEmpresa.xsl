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
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="22cm" margin-top="1cm" margin-bottom="1cm" margin-left="                      2cm" margin-right="2cm">
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
											<xsl:attribute name="src"><xsl:value-of select="detalleRentabilidad/cabecera/ruta-imagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="detalleRentabilidad/cabecera/fecha-impresion"/>
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
							<!-- nombre Ejecutivo -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalleRentabilidad/cabecera/nombre"/>
							</fo:block>
							<!-- nombre Ejecutivo -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- Plataforma -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">Plataforma: </fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="detalleRentabilidad/cabecera/plataforma"/>
								</fo:inline>
							</fo:block>
							<!-- Plataforma -->
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
							<fo:block font-size="13pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Rentabilidad / Fecha Detalle
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
<fo:block font-size="9pt" font-weight="bold" text-align="left">
	Período: <xsl:value-of select="detalleRentabilidad/fechaConsulta"/>
</fo:block>
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
<xsl:call-template name="tabla" />

	</xsl:template>


<xsl:template name="tabla">
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="5.1cm"/>
				<fo:table-column column-width="2.15cm"/>
				<fo:table-column column-width="2.15cm"/>
				<fo:table-column column-width="2.15cm"/>
				<fo:table-column column-width="2.15cm"/>
				<fo:table-column column-width="2.15cm"/>
				<fo:table-column column-width="2.15cm"/>
				<fo:table-body>

				<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="center" space-after="0.5mm" space-before="0.5mm">
								Ejecutivos
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="center" space-after="0.5mm" space-before="0.5mm">
								Stock Promedio 
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="center" space-after="0.5mm" space-before="0.5mm">
								Ingresos
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="center" space-after="0.5mm" space-before="0.5mm">
								Costos
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="center" space-after="0.5mm" space-before="0.5mm">
								Margen
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="center" space-after="0.5mm" space-before="0.5mm">
								Spread
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="center" space-after="0.5mm" space-before="0.5mm">
								Comisiones
							</fo:block>
						</fo:table-cell>

				</fo:table-row>

				<xsl:for-each select="detalleRentabilidad/tabla/fila">
				<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="normal" text-align="left" space-after="0.5mm" space-before="0.5mm">
								&#0160;<fo:inline text-decoration="underline"><xsl:value-of select="nombreEjecutivo"/></fo:inline>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="normal" text-align="right" space-after="0.5mm" space-before="0.5mm">
								&#0160;<xsl:value-of select="stock"/>&#0160;
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="normal" text-align="right" space-after="0.5mm" space-before="0.5mm">
								&#0160;<xsl:value-of select="montoIngreso"/>&#0160;
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="normal" text-align="right" space-after="0.5mm" space-before="0.5mm">
								&#0160;<xsl:value-of select="montoCosto"/>&#0160;
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="normal" text-align="right" space-after="0.5mm" space-before="0.5mm">
								&#0160;<xsl:value-of select="margen"/>&#0160;
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="normal" text-align="right" space-after="0.5mm" space-before="0.5mm">
								&#0160;<xsl:value-of select="spread"/>&#0160;
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="normal" text-align="right" space-after="0.5mm" space-before="0.5mm">
								&#0160;<xsl:value-of select="comisiones"/>&#0160;
							</fo:block>
						</fo:table-cell>

				</fo:table-row>
				</xsl:for-each>

				<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="left" space-after="0.5mm" space-before="0.5mm">
								Total Banca Empresas
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="right" space-after="0.5mm" space-before="0.5mm">
								&#0160;<xsl:value-of select="detalleRentabilidad/tabla/totales/sumaStock"/>&#0160;
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="right" space-after="0.5mm" space-before="0.5mm">
								&#0160;<xsl:value-of select="detalleRentabilidad/tabla/totales/sumaIngreso"/>&#0160;
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="right" space-after="0.5mm" space-before="0.5mm">
								&#0160;<xsl:value-of select="detalleRentabilidad/tabla/totales/sumaCostos"/>&#0160;
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="right" space-after="0.5mm" space-before="0.5mm">
								&#0160;<xsl:value-of select="detalleRentabilidad/tabla/totales/sumaMargen"/>&#0160;
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="right" space-after="0.5mm" space-before="0.5mm">
								&#0160;<xsl:value-of select="detalleRentabilidad/tabla/totales/sumaSpread"/>&#0160;
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" text-align="right" space-after="0.5mm" space-before="0.5mm">
								&#0160;<xsl:value-of select="detalleRentabilidad/tabla/totales/sumaComision"/>&#0160;
							</fo:block>
						</fo:table-cell>

				</fo:table-row>
				

				</fo:table-body>
			</fo:table>
		</fo:block>
</xsl:template>

	
	
</xsl:stylesheet>