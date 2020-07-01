<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format">
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
				<fo:simple-page-master master-name="pagina"
					page-height="28cm" page-width="22cm" margin-top="1cm"
					margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2.5cm"
						margin-bottom="2.5cm" background-color="#ffffff" />
					<fo:region-before extent="3cm" />
					<fo:region-after extent="2cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina"
				initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm" />
							<fo:table-column column-width="5cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src"><xsl:value-of
													select="stock-ejecutivos/cabecera/ruta-imagen" />02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell
										padding-before="1cm">
										<fo:block font-size="9pt"
											font-weight="bold" space-after="1mm" text-align="right"
											color="{$txt}">
											<xsl:value-of
												select="stock-ejecutivos/cabecera/fecha-impresion" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}"
							leader-pattern="rule" leader-length="28cm" />
					</fo:block>
					<!-- Separador -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}"
							leader-pattern="rule" leader-length="24cm" />
					</fo:block>
					<!-- Separador -->
					<fo:block font-size="9pt" font-weight="normal"
						space-after="1mm" text-align="left" color="{$txt}">
						Para Consultas o Comentarios Comun�quese al 600
						6928000
					</fo:block>
					<fo:block font-size="5pt" font-weight="bold"
						space-after="1mm" text-align="right" color="{$txt}">
						Pagina
						<fo:page-number />
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido" />
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template name="contenido">
		<!-- cabecera cliente -->
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm" />
				<fo:table-column column-width="5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt"
								font-weight="bold" space-after="1mm" text-align="left"
								color="{$txt-azul-claro}">
								<xsl:value-of
									select="stock-ejecutivos/cabecera/ejecutivo" />
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt"
								font-weight="bold" space-after="1mm" text-align="right"
								color="{$txt}">
								<fo:inline color="{$txt}">
									Plataforma:
								</fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of
										select="stock-ejecutivos/cabecera/plataforma" />
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
			<fo:leader color="{$lineas}" leader-pattern="rule"
				leader-length="24cm" />
		</fo:block>
		<!-- Separador -->
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="15cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="15pt"
								font-weight="bold" text-align="left"
								color="{$txt-azul-claro}">
								Stock
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule"
				leader-length="24cm" />
		</fo:block>
		<!-- Separador -->
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="stock-ejecutivos/cabecera/grupo"/>
		</xsl:call-template>
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- LISTADO DE LINEAS -->
		<!-- Detalle -->
		<fo:block font-size="4pt" space-after="1mm"
			text-align="right">
			<!-- Primeros 6 meses -->
			<fo:table table-layout="fixed">
				<fo:table-column column-width="1.8cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal"
								color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;Ejecutivos
							</fo:block>
						</fo:table-cell>
						<xsl:for-each select="stock-ejecutivos/periodos-stock/periodo">
							<xsl:if test="position() &lt; 7">
								<fo:table-cell background-color="{$bgcolor}"
									border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal"
										color="{$txt}" padding-before="1mm" padding-after="1mm"
										text-align="left">
										&#0160;#
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="{$bgcolor}"
									border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal"
										color="{$txt}" padding-before="1mm" padding-after="1mm"
										text-align="left">
										&#0160;Stock
										&#0160;Mensual
										&#0160;<xsl:value-of select="fecha"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="{$bgcolor}"
									border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal"
										color="{$txt}" padding-before="1mm" padding-after="1mm"
										text-align="left">
										&#0160;Stock
										&#0160;Promedio
										&#0160;<xsl:value-of select="fecha"/>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
						</xsl:for-each>
					</fo:table-row>
					<xsl:for-each select="stock-ejecutivos/ejecutivos/stock">
						<fo:table-row>
							<fo:table-cell
								border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal"
									color="{$txt}" padding-before="1mm" padding-after="1mm"
									text-align="left">
									&#0160;
									<xsl:value-of select="nombre-ejecutivo" />
								</fo:block>
							</fo:table-cell>
							<xsl:for-each select="periodos-stock/periodo">
								<xsl:if test="position() &lt; 7">
									<fo:table-cell
										border="0.5pt solid {$lineas}">
										<fo:block font-weight="normal"
											color="{$txt}" padding-before="1mm" padding-after="1mm"
											text-align="left">
											&#0160;<xsl:value-of select="cantidad-operaciones"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="0.5pt solid {$lineas}">
										<fo:block font-weight="normal"
											color="{$txt}" padding-before="1mm" padding-after="1mm"
											text-align="left">
											&#0160;<xsl:value-of select="monto-stock"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="0.5pt solid {$lineas}">
										<fo:block font-weight="normal"
											color="{$txt}" padding-before="1mm" padding-after="1mm"
											text-align="left">
											&#0160;<xsl:value-of select="stock-promedio"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:for-each>
						</fo:table-row>
					</xsl:for-each>
					<fo:table-row>
						<fo:table-cell
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;
								<xsl:value-of select="stock-ejecutivos/totales/banca" />
							</fo:block>
						</fo:table-cell>
						<xsl:for-each select="stock-ejecutivos/totales/total-mensual">
							<xsl:if test="position() &lt; 7">
								<fo:table-cell
									border="0.5pt solid {$lineas}">
									<fo:block font-weight="bold"
										color="{$txt}" padding-before="1mm" padding-after="1mm"
										text-align="left">
										&#0160;
										<xsl:if test="../banca != ''">
											<xsl:value-of select="cantidad-operaciones"/>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell
									border="0.5pt solid {$lineas}">
									<fo:block font-weight="bold"
										color="{$txt}" padding-before="1mm" padding-after="1mm"
										text-align="left">
										&#0160;
										<xsl:if test="../banca != ''">
											<xsl:value-of select="monto-stock"/>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell
									border="0.5pt solid {$lineas}">
									<fo:block font-weight="bold"
										color="{$txt}" padding-before="1mm" padding-after="1mm"
										text-align="left">
										&#0160;
										<xsl:if test="../banca != ''">
											<xsl:value-of select="stock-promedio"/>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
						</xsl:for-each>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block font-size="4pt" space-after="1mm" padding-before="5mm">
			<!-- Siguientes 6 meses -->
			<fo:table table-layout="fixed">
				<fo:table-column column-width="1.8cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-column column-width="1.1cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}"
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal"
								color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;Ejecutivos
							</fo:block>
						</fo:table-cell>
						<xsl:for-each select="stock-ejecutivos/periodos-stock/periodo">
							<xsl:if test="position() &gt; 6">
								<fo:table-cell background-color="{$bgcolor}"
									border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal"
										color="{$txt}" padding-before="1mm" padding-after="1mm"
										text-align="left">
										&#0160;#
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="{$bgcolor}"
									border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal"
										color="{$txt}" padding-before="1mm" padding-after="1mm"
										text-align="left">
										&#0160;Stock
										&#0160;Mensual
										&#0160;<xsl:value-of select="fecha"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="{$bgcolor}"
									border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal"
										color="{$txt}" padding-before="1mm" padding-after="1mm"
										text-align="left">
										&#0160;Stock
										&#0160;Promedio
										&#0160;<xsl:value-of select="fecha"/>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
						</xsl:for-each>
					</fo:table-row>
					<xsl:for-each select="stock-ejecutivos/ejecutivos/stock">
						<fo:table-row>
							<fo:table-cell
								border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal"
									color="{$txt}" padding-before="1mm" padding-after="1mm"
									text-align="left">
									&#0160;
									<xsl:value-of select="nombre-ejecutivo" />
								</fo:block>
							</fo:table-cell>
							<xsl:for-each select="periodos-stock/periodo">
								<xsl:if test="position() &gt; 6">
									<fo:table-cell
										border="0.5pt solid {$lineas}">
										<fo:block font-weight="normal"
											color="{$txt}" padding-before="1mm" padding-after="1mm"
											text-align="left">
											&#0160;<xsl:value-of select="cantidad-operaciones"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="0.5pt solid {$lineas}">
										<fo:block font-weight="normal"
											color="{$txt}" padding-before="1mm" padding-after="1mm"
											text-align="left">
											&#0160;<xsl:value-of select="monto-stock"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="0.5pt solid {$lineas}">
										<fo:block font-weight="normal"
											color="{$txt}" padding-before="1mm" padding-after="1mm"
											text-align="left">
											&#0160;<xsl:value-of select="stock-promedio"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
							</xsl:for-each>
						</fo:table-row>
					</xsl:for-each>
					<fo:table-row>
						<fo:table-cell
							border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold"
								color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;
								<xsl:value-of select="stock-ejecutivos/totales/banca" />
							</fo:block>
						</fo:table-cell>
						<xsl:for-each select="stock-ejecutivos/totales/total-mensual">
							<xsl:if test="position() &gt; 6">
								<fo:table-cell
									border="0.5pt solid {$lineas}">
									<fo:block font-weight="bold"
										color="{$txt}" padding-before="1mm" padding-after="1mm"
										text-align="left">
										&#0160;
										<xsl:if test="../banca != ''">
											<xsl:value-of select="cantidad-operaciones"/>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell
									border="0.5pt solid {$lineas}">
									<fo:block font-weight="bold"
										color="{$txt}" padding-before="1mm" padding-after="1mm"
										text-align="left">
										&#0160;
										<xsl:if test="../banca != ''">
											<xsl:value-of select="monto-stock"/>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell
									border="0.5pt solid {$lineas}">
									<fo:block font-weight="bold"
										color="{$txt}" padding-before="1mm" padding-after="1mm"
										text-align="left">
										&#0160;
										<xsl:if test="../banca != ''">
											<xsl:value-of select="stock-promedio"/>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
						</xsl:for-each>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN LISTADO DE LINEAS-->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule"
				leader-length="24cm" />
		</fo:block>
		<!-- Separador -->
		<fo:block font-size="4pt" space-after="1mm" padding-before="5mm">
			<!-- Siguientes 6 meses -->
			<fo:table table-layout="fixed">
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-body>
					<fo:table-row>
						<xsl:for-each select="stock-ejecutivos/periodos-stock/periodo">
							<fo:table-cell background-color="{$bgcolor}"
								border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal"
									color="{$txt}" padding-before="1mm" padding-after="1mm"
									text-align="left">
									&#0160;<xsl:value-of select="fecha"/>
								</fo:block>
							</fo:table-cell>
						</xsl:for-each>
					</fo:table-row>
					<fo:table-row>
						<xsl:for-each select="stock-ejecutivos/totales/total-mensual">
							<fo:table-cell
								border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal"
									color="{$txt}" padding-before="1mm" padding-after="1mm"
									text-align="left">
									&#0160;<xsl:value-of select="monto-stock"/>
								</fo:block>
							</fo:table-cell>
						</xsl:for-each>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule"
				leader-length="24cm" />
		</fo:block>
		<!-- Separador -->
		
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
									<xsl:value-of select="stock-ejecutivos/cabecera/ruta-imagen"/>01-bullet2-rj.gif
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