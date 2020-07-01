<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!-- Parametros -->
	<xsl:param name="IMG_URL"/>
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
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>
	<!-- Variables -->
	<xsl:template match="MoraHipotecarioTabla">
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
					<fo:block space-after="1mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
										<xsl:value-of select="fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- Separador -->
						<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
						</fo:block>
				</fo:static-content>
				<!-- Pie de pagina -->
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
					</fo:block>
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Para Consultas o Comentarios Comuníquese al 600 692 8000
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
	
	<!--  Estructura completa del documento -->
	<xsl:template name="contenido">
		<!-- cabecera -->
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre ejecutivo -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								JOF: <xsl:value-of select="ejecConsulta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="20cm"/>
				<fo:table-column column-width="6cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="titulo"/> / <xsl:value-of select="tipoMora"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		
		<fo:block>
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="7.5cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="10cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<xsl:call-template name="ladoizquierdo"/>
						</fo:table-cell>
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="3mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Clientes en Mora'"/>
		</xsl:call-template>

		<!-- Separador -->
		<fo:block space-after="3mm">
		</fo:block>
		
		<!-- Tabla de Mora Consumo -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="20%" />
				<fo:table-column column-width="20%" />
				<fo:table-column column-width="20%" />
				<fo:table-column column-width="10%" />
				<fo:table-column column-width="10%" />
				<fo:table-column column-width="10%" />
				<fo:table-column column-width="10%" />
				<fo:table-body>
				    <!-- Titulo columnas tabla -->
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Ejecutivo
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Rut
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Cliente
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Deuda Hipotecaria ($)
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Monto total de Mora ($)
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Max. Mora en días
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-size="8pt" font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Gestión
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!-- Condicion, si trae datos o no -->
					<xsl:choose>
					<xsl:when test="count(documentos/element) > 0">
						<xsl:for-each select="documentos/element">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-size="8pt" font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="ejecutivo" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-size="8pt" font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="rut" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-size="8pt" font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="cliente" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-size="8pt" font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="deudaHipotecaria" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-size="8pt" font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="montoTotalMora" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-size="8pt" font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="maxMoraDias" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<xsl:if test="tieneGestion = 'true'">
									<fo:block font-size="8pt" font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
										<fo:inline font-family="ZapfDingbats" font-size="10pt">&#x2714;</fo:inline>
									</fo:block>
								</xsl:if>
								<xsl:if test="tieneGestion = 'false'">
									<fo:block font-size="8pt" font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
										<fo:inline font-family="ZapfDingbats" font-size="10pt">&#x274F;</fo:inline>
									</fo:block>
								</xsl:if>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="7">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									No hay Moras Hipotecario
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:otherwise>
					</xsl:choose>
				</fo:table-body>
			</fo:table>
		</fo:block>

	</xsl:template>
	
	<xsl:template name="ladoizquierdo">
		<fo:block space-after="0.1mm">
			<fo:table table-layout="fixed">
			<fo:table-column column-width="4.3cm" />
			<fo:table-column column-width="4cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- BANCA -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Ejecutivo Consultado:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="ejec"/>
						</fo:block>
					<!-- BANCA -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 1 -->


				<!-- FILA 2 -->
				<fo:table-row height="{$alto-filas}" background-color="{$bgcolor}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- SEGMENTO -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Datos Actualizados al:'"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="9pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="fechaActualizacion"/>
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>
				</fo:table-row>
				<!-- FILA 2 -->
			</fo:table-body>
			</fo:table>
		</fo:block>
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
									<xsl:value-of select="rutaImagen"/>01-bullet2-rj.gif
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
									<xsl:value-of select="rutaImagen"/>01-bullet1-rj.gif
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