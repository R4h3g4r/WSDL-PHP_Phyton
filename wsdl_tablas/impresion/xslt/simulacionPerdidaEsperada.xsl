<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xs="http://www.w3.org/2001/XMLSchema">
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
	<xsl:variable name="espacio-texto-celda-right">2mm</xsl:variable>	
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">9pt</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="tablewidth0" select="$maxwidth * 1.00000"/>
	<xsl:variable name="maxwidth" select="7.30000"/>
	<xsl:variable name="sumcolumnwidths0" select="0.31250 + 2.91667"/>
	<xsl:variable name="factor0">
		<xsl:choose>
			<xsl:when test="$sumcolumnwidths0 &gt; 0.00000 and $sumcolumnwidths0 &gt; $tablewidth0">
				<xsl:value-of select="$tablewidth0 div $sumcolumnwidths0"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="1.000"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	<xsl:variable name="defaultcolumns0" select="1"/>
	<xsl:variable name="defaultcolumnwidth0">
		<xsl:choose>
			<xsl:when test="$factor0 &lt; 1.000">
				<xsl:value-of select="0.000"/>
			</xsl:when>
			<xsl:when test="$defaultcolumns0 &gt; 0">
				<xsl:value-of select="($tablewidth0 - $sumcolumnwidths0) div $defaultcolumns0"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="0.000"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	<xsl:variable name="columnwidth0_0" select="0.31250 * $factor0"/>
	<xsl:variable name="columnwidth0_1" select="2.91667 * $factor0"/>
	<xsl:variable name="columnwidth0_2" select="$defaultcolumnwidth0"/>
	<xsl:template name="formato-fecha">
		<xsl:param name="texto"/>
		<xsl:value-of select="translate(substring (string($texto),1,10), '/', '/')"/>
	</xsl:template>
	<xsl:output version="1.0" method="xml" encoding="UTF-8" indent="no"/>
	<xsl:param name="SV_OutputFormat" select="'PDF'"/>
	<xsl:variable name="XML1" select="/"/>
	<xsl:decimal-format name="format1" grouping-separator="." decimal-separator=","/>
	<xsl:variable name="fo:layout-master-set">
	
		<fo:layout-master-set>
			<fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in">
				<fo:region-body margin-top="0.79in" margin-bottom="0.79in"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
	</xsl:variable>
	<xsl:template match="/">

		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
			<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:for-each select="$XML1">
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:text>url(</xsl:text>
												<xsl:if test="substring(string(concat(info/rutaImagen,&apos;02-logo-bci.gif&apos;)), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;02-logo-bci.gif&apos;)), '&#x5c;', '/')"/>
												<xsl:text>)</xsl:text>
											</xsl:attribute>
										</fo:external-graphic>
										</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<fo:inline font-weight="bold">
													<xsl:call-template name="formato-fecha">
														<xsl:with-param name="texto">
															<xsl:for-each select="info">
																<xsl:for-each select="cliente">
																	<xsl:for-each select="fechaImpresion">
																			<xsl:apply-templates>
																				<xsl:with-param name="maxwidth" select="$columnwidth0_2 - 0.01042 - 0.01042 - 0.02083 - 0.02083"/>
																			</xsl:apply-templates>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:with-param>
													</xsl:call-template>
												</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
							<fo:block>
								<xsl:text>&#xA;</xsl:text>
							</fo:block>
							<fo:block text-align="center" space-before.optimum="-8pt">
								<fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="2pt" color="#CCCCCC"/>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:block font-size="5pt" space-after="1mm">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="13cm"/>
								<fo:table-column column-width="5cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<!-- nombre cliente -->
											<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
												<xsl:for-each select="info">
													<xsl:for-each select="cliente">
														<xsl:for-each select="nombre">
															<fo:inline color="{$txt-azul-claro}">
																<xsl:apply-templates>
																	<xsl:with-param name="maxwidth" select="$columnwidth0_2 - 0.01042 - 0.01042 - 0.02083 - 0.02083"/>
																</xsl:apply-templates>
															</fo:inline>
														</xsl:for-each>
													</xsl:for-each>
													<fo:inline>
														<xsl:text>&#160;</xsl:text>
													</fo:inline>
													<xsl:for-each select="cliente">
														<xsl:for-each select="apellido">
															<fo:inline color="{$txt-azul-claro}">
																<xsl:apply-templates>
																	<xsl:with-param name="maxwidth" select="$columnwidth0_2 - 0.01042 - 0.01042 - 0.02083 - 0.02083"/>
																</xsl:apply-templates>
															</fo:inline>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</fo:block>
											<!-- nombre cliente -->
										</fo:table-cell>
										<fo:table-cell>
											<!-- rut cliente -->
											<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
												<fo:inline color="{$txt}">RUT : </fo:inline>&#160;
												<xsl:for-each select="info">
													<xsl:for-each select="cliente">
														<xsl:for-each select="rut">
															<fo:inline color="{$txt-azul-claro}">
																<xsl:apply-templates>
																	<xsl:with-param name="maxwidth" select="$columnwidth0_2 - 0.01042 - 0.01042 - 0.02083 - 0.02083"/>
																</xsl:apply-templates>
															</fo:inline>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</fo:block>
											<!-- rut cliente -->
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:block text-align="center" space-before.optimum="-8pt">
								<fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="2pt" color="#CCCCCC"/>
							</fo:block>
							
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:block>
								<fo:table table-layout="fixed">
									<fo:table-column column-width="20cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<!-- titulo -->
												<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
													Simular Pérdida Esperada 
												</fo:block>
												<!-- titulo -->
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:block>
								<xsl:text>&#xA;</xsl:text>
							</fo:block>
							<fo:block text-align="center" space-before.optimum="-8pt">
								<fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="2pt" color="#CCCCCC"/>
							</fo:block>
							<fo:block>
								<xsl:text>&#xA;</xsl:text>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:external-graphic>
								<xsl:attribute name="src">
									<xsl:text>url(</xsl:text>
									<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet2-rj.gif&apos;)), 2, 1) = ':'">
										<xsl:text>file:///</xsl:text>
									</xsl:if>
									<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet2-rj.gif&apos;)), '&#x5c;', '/')"/>
									<xsl:text>)</xsl:text>
								</xsl:attribute>
							</fo:external-graphic>
							<fo:inline font-weight="bold">
								<xsl:text> Datos Generales</xsl:text>
							</fo:inline>
							<fo:block>
								<xsl:text>&#xA;</xsl:text>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							
							<fo:table table-layout="fixed" width="{$tablewidth0}in" border-collapse="separate" color="#447dcb" font-size="9pt" display-align="center">
								<fo:table-column column-width="{$columnwidth0_0}in"/>
								<fo:table-column column-width="{$columnwidth0_1}in"/>
								<fo:table-column column-width="{$columnwidth0_2}in"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
											<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
												<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
													<xsl:attribute name="src">
														<xsl:text>url(</xsl:text>
														<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
															<xsl:text>file:///</xsl:text>
														</xsl:if>
														<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
														<xsl:text>)</xsl:text>
													</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
											<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
												<fo:inline>
													<xsl:text>Nombre Cliente:</xsl:text>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
											<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
												<xsl:for-each select="info">
													<xsl:for-each select="cliente">
														<xsl:for-each select="nombre">
															<fo:inline font-weight="bold">
																<xsl:apply-templates>
																	<xsl:with-param name="maxwidth" select="$columnwidth0_2 - 0.01042 - 0.01042 - 0.02083 - 0.02083"/>
																</xsl:apply-templates>
															</fo:inline>
														</xsl:for-each>
													</xsl:for-each>
													<fo:inline>
														<xsl:text>&#160;</xsl:text>
													</fo:inline>
													<xsl:for-each select="cliente">
														<xsl:for-each select="apellido">
															<fo:inline font-weight="bold">
																<xsl:apply-templates>
																	<xsl:with-param name="maxwidth" select="$columnwidth0_2 - 0.01042 - 0.01042 - 0.02083 - 0.02083"/>
																</xsl:apply-templates>
															</fo:inline>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
											<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
												<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
													<xsl:attribute name="src">
														<xsl:text>url(</xsl:text>
														<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
															<xsl:text>file:///</xsl:text>
														</xsl:if>
														<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
														<xsl:text>)</xsl:text>
													</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
											<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
												<fo:inline>
													<xsl:text>IdC Cliente:</xsl:text>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
											<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
												<xsl:for-each select="info">
													<xsl:for-each select="cliente">
														<xsl:for-each select="rut">
															<fo:inline font-weight="bold">
																<xsl:apply-templates>
																	<xsl:with-param name="maxwidth" select="$columnwidth0_2 - 0.01042 - 0.01042 - 0.02083 - 0.02083"/>
																</xsl:apply-templates>
															</fo:inline>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
											<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
												<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
													<xsl:attribute name="src">
														<xsl:text>url(</xsl:text>
														<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
															<xsl:text>file:///</xsl:text>
														</xsl:if>
														<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
														<xsl:text>)</xsl:text>
													</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
											<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
												<fo:inline>
													<xsl:text>Fecha Último Cálculo PE</xsl:text>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
											<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
												<fo:inline font-weight="bold">
													<xsl:call-template name="formato-fecha">
														<xsl:with-param name="texto">
															<xsl:for-each select="info">
																<xsl:for-each select="cliente">
																	<xsl:for-each select="fechaUltimoCambio">
																			<xsl:apply-templates>
																				<xsl:with-param name="maxwidth" select="$columnwidth0_2 - 0.01042 - 0.01042 - 0.02083 - 0.02083"/>
																			</xsl:apply-templates>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:with-param>
													</xsl:call-template>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
											<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
												<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
													<xsl:attribute name="src">
														<xsl:text>url(</xsl:text>
														<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
															<xsl:text>file:///</xsl:text>
														</xsl:if>
														<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
														<xsl:text>)</xsl:text>
													</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
											<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
												<fo:inline>
													<xsl:text>Probabilidad de Incumplimiento (%):</xsl:text>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
											<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
												<xsl:for-each select="info">
													<xsl:for-each select="cliente">
														<xsl:for-each select="datosSimuladorPerdidaEsperada">
															<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																<xsl:for-each select="ValorPsvVpi">
																	<fo:inline font-weight="bold">
																		<xsl:value-of select="format-number(number(string(.)), '#.##0,00', 'format1')"/>
																	</fo:inline>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
											<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
												<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
													<xsl:attribute name="src">
														<xsl:text>url(</xsl:text>
														<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
															<xsl:text>file:///</xsl:text>
														</xsl:if>
														<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
														<xsl:text>)</xsl:text>
													</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
											<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
												<fo:inline>
													<xsl:text>Clasificación Super:</xsl:text>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
											<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
												<xsl:for-each select="info">
													<xsl:for-each select="cliente">
														<xsl:for-each select="datosSimuladorPerdidaEsperada">
															<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																<xsl:for-each select="CodClasificacionSuper">
																	<fo:inline font-weight="bold">
																		<xsl:apply-templates>
																			<xsl:with-param name="maxwidth" select="$columnwidth0_2 - 0.01042 - 0.01042 - 0.02083 - 0.02083"/>
																		</xsl:apply-templates>
																	</fo:inline>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<xsl:variable name="tablewidth1" select="$maxwidth * 1.00000 - 0.01042 - 0.01042"/>
							<xsl:variable name="sumcolumnwidths1" select="0.31250 + 2.91667 + 2.08333"/>
							<xsl:variable name="factor1">
								<xsl:choose>
									<xsl:when test="$sumcolumnwidths1 &gt; 0.00000 and $sumcolumnwidths1 &gt; $tablewidth1">
										<xsl:value-of select="$tablewidth1 div $sumcolumnwidths1"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="1.000"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:variable>
							<xsl:variable name="defaultcolumns1" select="1"/>
							<xsl:variable name="defaultcolumnwidth1">
								<xsl:choose>
									<xsl:when test="$factor1 &lt; 1.000">
										<xsl:value-of select="0.000"/>
									</xsl:when>
									<xsl:when test="$defaultcolumns1 &gt; 0">
										<xsl:value-of select="($tablewidth1 - $sumcolumnwidths1) div $defaultcolumns1"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="0.000"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:variable>
							<xsl:variable name="columnwidth1_0" select="0.31250 * $factor1"/>
							<xsl:variable name="columnwidth1_1" select="2.91667 * $factor1"/>
							<xsl:variable name="columnwidth1_2" select="2.08333 * $factor1"/>
							<xsl:variable name="columnwidth1_3" select="$defaultcolumnwidth1"/>
							<fo:table width="{$maxwidth}in">
								<fo:table-column column-width="{0.01042}in"/>
								<fo:table-column column-width="{$tablewidth1}in"/>
								<fo:table-column column-width="{0.01042}in"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block/>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												<fo:table table-layout="fixed" width="{$tablewidth1}in" border-top-style="solid" border-top-color="#ECE9D8" border-top-width="0.01042in" border-bottom-style="solid" border-bottom-color="#ACA899" border-bottom-width="0.01042in" border-left-style="solid" border-left-color="#ECE9D8" border-left-width="0.01042in" border-right-style="solid" border-right-color="#ACA899" border-right-width="0.01042in" border-collapse="separate" color="#447dcb" font-size="9pt" display-align="center">
													<fo:table-column column-width="{$columnwidth1_0}in"/>
													<fo:table-column column-width="{$columnwidth1_1}in"/>
													<fo:table-column column-width="{$columnwidth1_2}in"/>
													<fo:table-column column-width="{$columnwidth1_3}in"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block padding-top="1pt" padding-bottom="1pt"/>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block padding-top="1pt" padding-bottom="1pt"/>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
																	<fo:inline font-size="10pt" font-weight="bold">
																		<xsl:text>Situación Actual</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
																	<fo:inline font-size="10pt" font-weight="bold">
																		<xsl:text>Situación Proyectada</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text> Deuda Banco M$:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorDeuBanco">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="deudaBanco">
																				<fo:inline font-weight="bold">
																					<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																				</fo:inline>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text> Deuda Leasing M$:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorDeuLeasing">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="deudaLeasing">
																				<fo:inline font-weight="bold">
																					<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																				</fo:inline>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text>Garantías Generales Banco M$:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorGarGenBanco">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="garantiaGeneralesBancos">
																				<fo:inline font-weight="bold">
																					<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																				</fo:inline>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text>Garantías Específicas Banco M$:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorGarEspBanco">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="garantiaEspecificasBancos">
																				<fo:inline font-weight="bold">
																					<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																				</fo:inline>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text>Garantías Generales Leasing M$:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorGarGenLeasi">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="garantiaGeneralesLeasing">
																				<fo:inline font-weight="bold">
																					<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																				</fo:inline>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text>Garantías Específicas Leasing M$:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorGarEspLeasi">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="garantiaEspecificaLeasing">
																				<fo:inline font-weight="bold">
																					<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																				</fo:inline>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text>Bienes Leasing M$:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorBieLeasing">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="bienesLeasing">
																				<fo:inline font-weight="bold">
																					<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																				</fo:inline>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block/>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:inline>
								<xsl:text>&#160;</xsl:text>
							</fo:inline>
							<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
								<xsl:attribute name="src">
									<xsl:text>url(</xsl:text>
									<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet2-rj.gif&apos;)), 2, 1) = ':'">
										<xsl:text>file:///</xsl:text>
									</xsl:if>
									<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet2-rj.gif&apos;)), '&#x5c;', '/')"/>
									<xsl:text>)</xsl:text>
								</xsl:attribute>
							</fo:external-graphic>
							<fo:inline font-weight="bold">
								<xsl:text> Resultados</xsl:text>
							</fo:inline>
							<fo:block>
								<xsl:text>&#xA;</xsl:text>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<xsl:variable name="tablewidth2" select="$maxwidth * 1.00000 - 0.01042 - 0.01042"/>
							<xsl:variable name="sumcolumnwidths2" select="0.31250 + 2.91667 + 2.08333"/>
							<xsl:variable name="factor2">
								<xsl:choose>
									<xsl:when test="$sumcolumnwidths2 &gt; 0.00000 and $sumcolumnwidths2 &gt; $tablewidth2">
										<xsl:value-of select="$tablewidth2 div $sumcolumnwidths2"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="1.000"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:variable>
							<xsl:variable name="defaultcolumns2" select="1"/>
							<xsl:variable name="defaultcolumnwidth2">
								<xsl:choose>
									<xsl:when test="$factor2 &lt; 1.000">
										<xsl:value-of select="0.000"/>
									</xsl:when>
									<xsl:when test="$defaultcolumns2 &gt; 0">
										<xsl:value-of select="($tablewidth2 - $sumcolumnwidths2) div $defaultcolumns2"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="0.000"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:variable>
							<xsl:variable name="columnwidth2_0" select="0.31250 * $factor2"/>
							<xsl:variable name="columnwidth2_1" select="2.91667 * $factor2"/>
							<xsl:variable name="columnwidth2_2" select="2.08333 * $factor2"/>
							<xsl:variable name="columnwidth2_3" select="$defaultcolumnwidth2"/>
							<fo:table width="{$maxwidth}in">
								<fo:table-column column-width="{0.01042}in"/>
								<fo:table-column column-width="{$tablewidth2}in"/>
								<fo:table-column column-width="{0.01042}in"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block/>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												<fo:table table-layout="fixed" width="{$tablewidth2}in" border-top-style="solid" border-top-color="#ECE9D8" border-top-width="0.01042in" border-bottom-style="solid" border-bottom-color="#ACA899" border-bottom-width="0.01042in" border-left-style="solid" border-left-color="#ECE9D8" border-left-width="0.01042in" border-right-style="solid" border-right-color="#ACA899" border-right-width="0.01042in" border-collapse="separate" color="#447dcb" font-size="9pt" display-align="center">
													<fo:table-column column-width="{$columnwidth2_0}in"/>
													<fo:table-column column-width="{$columnwidth2_1}in"/>
													<fo:table-column column-width="{$columnwidth2_2}in"/>
													<fo:table-column column-width="{$columnwidth2_3}in"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block padding-top="1pt" padding-bottom="1pt"/>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block padding-top="1pt" padding-bottom="1pt"/>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
																	<fo:inline font-size="10pt" font-weight="bold">
																		<xsl:text>Situación Actual</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
																	<fo:inline font-size="10pt" font-weight="bold">
																		<xsl:text>Situación Proyectada</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text>Pérdida Esperada Total:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorPerdidaEsperadaTotal">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="calculoSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultCalculaSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorPerdidaEsperadaTotal">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text>Pérdida Esperada Total %:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="PorcePerdidaEsperadaTotal">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0,00', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="calculoSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultCalculaSimulacionDePerdidaEsperada">
																					<xsl:for-each select="PorcePerdidaEsperadaTotal">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0,00', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text> Pérdida Esperada Banco:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorPerdidaEsperadaBanco">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="calculoSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultCalculaSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorPerdidaEsperadaBanco">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text> Pérdida Esperada Banco %:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="PorcePerdidaEsperadaBanco">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0,00', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="calculoSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultCalculaSimulacionDePerdidaEsperada">
																					<xsl:for-each select="PorcePerdidaEsperadaBanco">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0,00', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text> Pérdida Esperada Leasing:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorPerdidaEsperadaLeasing">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="calculoSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultCalculaSimulacionDePerdidaEsperada">
																					<xsl:for-each select="ValorPerdidaEsperadaLeasing">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="centar" color="{$txt-azul-claro}">
																	<fo:external-graphic alignment-adjust="auto" alignment-baseline="middle" baseline-shift="baseline" dominant-baseline="auto">
																		<xsl:attribute name="src">
																			<xsl:text>url(</xsl:text>
																			<xsl:if test="substring(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(concat(info/rutaImagen,&apos;01-bullet1-rj.gif&apos;)), '&#x5c;', '/')"/>
																			<xsl:text>)</xsl:text>
																		</xsl:attribute>
																	</fo:external-graphic>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
																<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
																	<fo:inline>
																		<xsl:text> Pérdida Esperada Leasing %:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="datosSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultDatosDeSimulacionDePerdidaEsperada">
																					<xsl:for-each select="PorcePerdidaEsperadaLeasing">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0,00', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
																<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="right" color="{$txt-azul-claro}">
																	<xsl:for-each select="info">
																		<xsl:for-each select="cliente">
																			<xsl:for-each select="calculoSimuladorPerdidaEsperada">
																				<xsl:for-each select="ResultCalculaSimulacionDePerdidaEsperada">
																					<xsl:for-each select="PorcePerdidaEsperadaLeasing">
																						<fo:inline font-weight="bold">
																							<xsl:value-of select="format-number(number(string(.)), '#.##0,00', 'format1')"/>
																						</fo:inline>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block/>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</xsl:for-each>
					</fo:block>
					<fo:block id="SV_RefID_PageTotal"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template name="double-backslash">
		<xsl:param name="text"/>
		<xsl:param name="text-length"/>
		<xsl:variable name="text-after-bs" select="substring-after($text, '\')"/>
		<xsl:variable name="text-after-bs-length" select="string-length($text-after-bs)"/>
		<xsl:choose>
			<xsl:when test="$text-after-bs-length = 0">
				<xsl:choose>
					<xsl:when test="substring($text, $text-length) = '\'">
						<xsl:value-of select="concat(substring($text,1,$text-length - 1), '\\')"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$text"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="concat(substring($text,1,$text-length - $text-after-bs-length - 1), '\\')"/>
				<xsl:call-template name="double-backslash">
					<xsl:with-param name="text" select="$text-after-bs"/>
					<xsl:with-param name="text-length" select="$text-after-bs-length"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
</xsl:stylesheet>
