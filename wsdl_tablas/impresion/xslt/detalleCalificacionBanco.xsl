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
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">Para Consultas o Comentarios Comun�quese al 600 6928000</fo:block>
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">P�gina <fo:page-number/></fo:block>
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
									<xsl:value-of select="/info/nombreCliente"/>
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
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">Detalle Calificaci�n Bancos</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>


		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>

		<fo:block font-size="9pt">
			<fo:table table-layout="fixed" space-before="3mm">
				<fo:table-column column-width="5cm"/>
				<fo:table-column column-width="3.75cm"/>
				<fo:table-column column-width="5.5cm"/>
				<fo:table-column column-width="3.25cm"/>
				<fo:table-body>

						<!-- Contenido de la Tabla Principal -->
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Fecha Calificaci�n Bancos:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/fecha"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Nombre Aval Corto Plazo:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/avalCortoPlazo"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Fecha Balance:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/fechaBalance"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Riesgo Puro Aval Corto Plazo:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/riesgoPuroAvalCortoPlazo"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Riesgo Puro:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/riesgoPuro"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Rut Aval Largo Plazo:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/rutAvalLargoPlazo"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Riesgo Puro Corto Plazo:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/riesgoPuroCortoPlazo"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Nombre Aval Largo Plazo:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/avalLargoPlazo"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Riesgo Puro Largo Plazo:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/riesgoPuroLargoPlazo"/>
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Riesgo Puro Aval Largo Plazo:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/riesgoPuroAvalLargoPlazo"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Rut Aval Corto Plazo:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/rutAvalCortoPlazo"/>
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Fecha �ltima Modificaci�n:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/fechaUltimaModificacion"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<xsl:call-template name="celda-cabecera">
							<xsl:with-param name="texto" select="' '"/>
							</xsl:call-template>
							<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid" border-left-width="thin"
							               border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="{$espacio-texto-celda-top}">
								</fo:block>
							</fo:table-cell>

							<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
			               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
								<fo:block text-align="left" font-size="10pt" space-before="{$espacio-texto-celda-top}">
									<fo:inline color="{$txt-azul-oscuro}">
										<xsl:call-template name="vineta-roja">
											<xsl:with-param name="texto" select="'Usuario �ltima Modificaci�n:'"/>
										</xsl:call-template>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="info/usuarioUltimaModificacion"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

				</fo:table-body>
			</fo:table>
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