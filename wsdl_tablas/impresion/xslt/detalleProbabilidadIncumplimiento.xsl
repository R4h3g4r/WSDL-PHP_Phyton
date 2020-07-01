<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
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
	<xsl:decimal-format name="peso" decimal-separator="," grouping-separator="."/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="22cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/>
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="info/rutaImagen"/>02-logo-bci.gif</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:call-template name="formato-fecha-hora">
												<xsl:with-param name="texto" select="info/fechaImpresion"/>
											</xsl:call-template>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
					</fo:block>
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">Para Consultas o Comentarios Comuníquese al 600 6928000</fo:block>
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Página <fo:page-number/></fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template name="contenido">
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="11cm"/>
				<fo:table-column column-width="7cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}"></fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/nombreCliente"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT:</fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/rutCliente"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="18cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">Detalle Probabilidad Incumplimientos (PI)</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-column column-width="6cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
							<fo:block text-align="left" font-size="9pt" space-before="{$espacio-texto-celda-top}">
								<fo:inline color="{$txt-azul-oscuro}">
									<xsl:call-template name="vineta-roja">
										<xsl:with-param name="texto" select="'Fecha de Balance: '"/>
									</xsl:call-template>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
							<fo:block text-align="left" font-weight="bold" font-size="9pt" space-before="{$espacio-texto-celda-top}">
								<fo:inline color="{$txt-azul-oscuro}">
									<xsl:value-of select="/info/fechaBalance"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
							<fo:block text-align="left" font-size="9pt" space-before="{$espacio-texto-celda-top}">
								<fo:inline color="{$txt-azul-oscuro}">
									<xsl:call-template name="vineta-roja">
										<xsl:with-param name="texto" select="'Clasificación por Modelo: '"/>
									</xsl:call-template>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
							<fo:block text-align="left" font-weight="bold" font-size="9pt" space-before="{$espacio-texto-celda-top}">
								<fo:inline color="{$txt-azul-oscuro}">
									<xsl:value-of select="/info/clasPorModelo"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
							<fo:block text-align="left" font-size="9pt" space-before="{$espacio-texto-celda-top}">
								<fo:inline color="{$txt-azul-oscuro}">
									<xsl:call-template name="vineta-roja">
										<xsl:with-param name="texto" select="'Tipo de PI: '"/>
									</xsl:call-template>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
							<fo:block text-align="left" font-weight="bold" font-size="9pt" space-before="{$espacio-texto-celda-top}">
								<fo:inline color="{$txt-azul-oscuro}">
									<xsl:value-of select="/info/tipoPI"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
							<fo:block text-align="left" font-size="9pt" space-before="{$espacio-texto-celda-top}">
								<fo:inline color="{$txt-azul-oscuro}">
									<xsl:call-template name="vineta-roja">
										<xsl:with-param name="texto" select="'Probabilidad de Incumplimiento 1 año: '"/>
									</xsl:call-template>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
							<fo:block text-align="left" font-weight="bold" font-size="8pt" space-before="{$espacio-texto-celda-top}">
								<fo:inline color="{$txt-azul-oscuro}">
									<xsl:value-of select="/info/PI1anio"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
							<fo:block text-align="left" font-size="9pt" space-before="{$espacio-texto-celda-top}">
								<fo:inline color="{$txt-azul-oscuro}">
									<xsl:call-template name="vineta-roja">
										<xsl:with-param name="texto" select="'Tipo de Balance: '"/>
									</xsl:call-template>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
							<fo:block text-align="left" font-weight="bold" font-size="8pt" space-before="{$espacio-texto-celda-top}">
								<fo:inline color="{$txt-azul-oscuro}">
									<xsl:value-of select="/info/tipoBalance"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
							<fo:block text-align="left" font-size="9pt" space-before="{$espacio-texto-celda-top}">
								<fo:inline color="{$txt-azul-oscuro}">
									<xsl:call-template name="vineta-roja">
										<xsl:with-param name="texto" select="'Probabilidad de Incumplimiento 5 años: '"/>
									</xsl:call-template>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
							<fo:block text-align="left" font-weight="bold" font-size="8pt" space-before="{$espacio-texto-celda-top}">
								<fo:inline color="{$txt-azul-oscuro}">
									<xsl:value-of select="/info/PI5anios"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>

		<fo:block font-size="9pt">
			<xsl:call-template name="subTitulo">
				<xsl:with-param name="titulo" select="'Principales Variables e Indicadores que Afectan Probabilidad de Incumplimiento (Contribuciones Relativas)'"/>
			</xsl:call-template>
			<fo:table table-layout="fixed" space-before="3mm">
				<fo:table-column column-width="6cm"/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-body>
					<fo:table-row>
						<xsl:call-template name="celda-cabecera">
							<xsl:with-param name="texto" select="' '"/>
						</xsl:call-template>
						<xsl:call-template name="celda-cabecera">
							<xsl:with-param name="texto" select="'1 año'"/>
						</xsl:call-template>
						<xsl:call-template name="celda-cabecera">
							<xsl:with-param name="texto" select="'5 años'"/>
						</xsl:call-template>
						<xsl:call-template name="celda-cabecera">
							<xsl:with-param name="texto" select="'Percentiles'"/>
						</xsl:call-template>
						<xsl:call-template name="celda-cabecera">
							<xsl:with-param name="texto" select="'Ratios o Niveles'"/>
						</xsl:call-template>
					</fo:table-row>
						<!-- Contenido de la Tabla Principal -->
						<!-- Activos -->
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Activos:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr1Ass"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr5Ass"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorPerAss"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorAss"/>&#0160;
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
	
						<!-- Existencias/Costo de Exploración -->
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Existencias/Costo de Exploración :'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr1Inv"/>%&#0160;
								</fo:block>
							</fo:table-cell>							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr5Inv"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorPerInv"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorInvCos"/>&#0160;
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<!-- Pasivos/Activos -->
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Pasivos/Activos :'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr1Lia"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr5Lia"/>%&#0160;
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorPerLia"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorLiaAss"/>&#0160;
								</fo:block>
							</fo:table-cell>

						</fo:table-row>

						<!-- Tasa de Crecimiento Utilidad Neta -->
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Tasa de Crecimiento Utilidad Neta :'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr1Nig"/>%&#0160;
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr5Nig"/>%&#0160;
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorPerNig"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorIncGro"/>&#0160;
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<!-- Utilidad Neta/Activos -->
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Utilidad Neta/Activos :'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr1Nia"/>%&#0160;
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr5Nia"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorPerNia"/>%&#0160;
								</fo:block>
							</fo:table-cell>
						
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorIncAss"/>&#0160;
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<!-- Test Acido -->
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Test Acido :'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr1Qra"/>%&#0160;
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr5Qra"/>%&#0160;
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorPerRat"/>%&#0160;
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorQuiRat"/>&#0160;
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<!-- Utilidad Retenida/Activos -->
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Utilidad Retenida/Activos :'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr1Rea"/>%&#0160;
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr5Rea"/>%&#0160;
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorPerRet"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorRetAss"/>&#0160;
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<!-- Crecimiento de Ventas -->
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Crecimiento de Ventas :'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr1Sgr"/>%&#0160;
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr5Sgr"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorPerSgr"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorSalGro"/>&#0160;
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<!-- Disponible/Activos -->
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Disponible/Activos :'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr1Cas"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr5Cas"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorPerSas"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorCasAss"/>&#0160;
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<!-- Cobertura Interés -->
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Cobertura Interés :'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr1Dsc"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorYr5Dsc"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorPerDeb"/>%&#0160;
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="info/valorDebSer"/>&#0160;
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

				</fo:table-body>
			</fo:table>
		</fo:block>	
		<fo:block>
			<fo:inline>
			 &#0160;
			</fo:inline>	
		</fo:block>
		<fo:block>
			<fo:inline>
			 Contribución Relativa : Valores negativos contribuyen a disminuir el riesgo, variables con valores positivos incrementan el riesgo
			</fo:inline>	
		</fo:block>
		
		
	</xsl:template>
	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>
		<xsl:param name="fecha"/>
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" space-before="5mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="20cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="info/rutaImagen"/>01-bullet2-rj.gif</xsl:attribute>
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
				<fo:table-column column-width="0.5cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm">
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of select="/info/rutaImagen"/>01-bullet1-rj.gif</xsl:attribute>
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
	<xsl:template name="vineta-roja">
		<xsl:param name="texto"/>
		<fo:block>
			<fo:external-graphic width="1mm" height="1mm">
				<xsl:attribute name="src">
					<xsl:value-of select="/info/rutaImagen"/>01-bullet1-rj.gif</xsl:attribute>
			</fo:external-graphic>
			<fo:leader leader-length="2mm"/>
			<xsl:value-of select="$texto"/>
		</fo:block>
	</xsl:template>
	<xsl:template name="celda">
		<xsl:param name="texto"/>
		<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid" border-left-width="thin"
		               border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
			<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="{$espacio-texto-celda-top}">
				<fo:inline>
					<xsl:value-of select="$texto"/>
				</fo:inline>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
	<xsl:template name="celda-cabecera">
		<xsl:param name="texto"/>
		<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
			<fo:block text-align="left" font-weight="bold" font-size="9pt" space-before="{$espacio-texto-celda-top}">
				<fo:inline color="{$txt-azul-claro}">
					<xsl:value-of select="$texto"/>
				</fo:inline>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
	<xsl:template name="formato-fecha">
		<xsl:param name="texto"/>
		<xsl:value-of select="translate(substring (string($texto),1,10), '/', '/')"/>
	</xsl:template>
	<xsl:template name="formato-fecha-hora">
		<xsl:param name="texto"/>
		<xsl:value-of select="translate(translate($texto , '/', '/'), 'T', ' ')"/>
	</xsl:template>
</xsl:stylesheet>