<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:param name="opcion"/>
	<xsl:param name="vista"/>

	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="bg-amarillo">#FFFFDE</xsl:variable>
	<xsl:variable name="bg-plomo">#E7E7E7</xsl:variable>
	<xsl:variable name="blanco">#FFFFFF</xsl:variable>
	<xsl:variable name="tam-separacion">20cm</xsl:variable>

	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="30cm"
					page-width="21cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="12cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="impresion/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>								
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="impresion/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
					<!-- Separador -->
						<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
						</fo:block>
					<!-- Separador -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
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
				<fo:table-column column-width="12cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="impresion/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="impresion/rut"/></fo:inline>
							</fo:block>
							<!-- rut cliente -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- cabecera cliente -->
		
		<!-- Separador -->
		<fo:block space-after="3mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->

		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="impresion/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="impresion/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->
		
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Titulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="12cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Formulario: Perfil de Riesgo de Inversión
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell >
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		<!-- Titulo -->
		
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->

		<!-- sub titulo -->
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Sección 1 : Horizonte de Inversión'"/>
		</xsl:call-template>
		<!-- sub titulo -->

		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->
						
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="13cm" />
					<fo:table-column column-width="4cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;1. ¿Cuándo tiene contemplado comenzar a girar dinero de sus inversiones?
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;<xsl:value-of select="/impresion/p1_0/descripcionrespuesta"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									<fo:inline font-weigth="normal">&#0160;2. Una vez que comience a girar de sus inversiones, en cuánto tiempo tiene contemplado girar todos sus fondos?</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;<xsl:value-of select="/impresion/p2_0/descripcionrespuesta"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- sub titulo -->
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Sección 2 : Experiencia y Tolerancia al Riesgo'"/>
		</xsl:call-template>
		<!-- sub titulo -->

		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="4cm" />
					<fo:table-column column-width="13cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;3. Conocimiento en Inversiones:
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;
									<xsl:choose>
									<xsl:when test="/impresion/p3_0/opcionelegida = 'A'">
									No estoy informado sobre el comportamiento de las inversiones ni de sus mercados.
									</xsl:when>
									<xsl:when test="/impresion/p3_0/opcionelegida = 'B'">
									Estoy algo informado sobre inversiones y de sus mercados.
									</xsl:when>
									<xsl:when test="/impresion/p3_0/opcionelegida = 'C'">
									Estoy informado sobre el comportamiento de las inversiones y de sus mercados.
									</xsl:when>
									<xsl:when test="/impresion/p3_0/opcionelegida = 'D'">
									Extenso, estoy muy enterado de la evolución de los mercados financieros (Diarios, revistas, internet, etc).
									</xsl:when>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="17cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;4. Experiencia en Inversiones : He invertido / invierto en las siguientes inversiones (Marque todas las que apliquen) : 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="8cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									Mercado Nacional
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									Nunca he Invertido
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									Algunas veces he Invertido
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									Habitualmente Invierto
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									% de su Patrimonio
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Depósitos a plazo, fondos mutuos de renta fija
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_1/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_1/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_1/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_1/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Bonos (del Banco Central, empresas, etc), pactos
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_2/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_2/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_2/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_2/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Acciones nacionales y/o FM de renta variable
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_3/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_3/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_3/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_3/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Fondos de inversión cerrados
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_4/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_4/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_4/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_4/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Simultáneas
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_5/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_5/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_5/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_5/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Venta Corta
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_6/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_6/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_6/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_6/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Forwards
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_7/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_7/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_7/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_7/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Derivados (Opciones, swaps)
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_8/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_8/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_8/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_8/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Inversión en bienes raíces
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_9/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_9/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_9/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_9/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Otros (especificar) : <xsl:value-of select="/impresion/p4_10/descripcionvalorcampo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_10/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_10/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_10/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_10/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						
					</fo:table-body>
				</fo:table>
		</fo:block>
		
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="8cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									Mercado Internacional
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									Nunca he Invertido
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									Algunas veces he Invertido
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									Habitualmente Invierto
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									% de su Patrimonio
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Renta fija internacional, investment grade
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_11/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_11/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_11/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_11/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Renta fija internacional, NO investment grade
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_12/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_12/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_12/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_12/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Fondos mutuos administrados en el extranjero de Renta fija
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_13/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_13/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_13/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_13/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Acciones y/o FM de renta variable mercados desarrollados
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_14/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_14/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_14/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_14/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Acciones y/o FM de renta variable mercados emergentes
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_15/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_15/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_15/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_15/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Forwards
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_16/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_16/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_16/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_16/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Derivados (Opciones, swaps)
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_17/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_17/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_17/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_17/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Hedge Funds
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_18/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_18/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_18/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_18/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="left">
									Otros (especificar) : <xsl:value-of select="/impresion/p4_19/descripcionvalorcampo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_19/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
										<xsl:choose>
										<xsl:when test="/impresion/p4_19/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p4_19/opcionelegida = 'C'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="1mm" padding-bottom="1mm" color="{$txt}" text-align="center">
									<xsl:value-of select="/impresion/p4_19/valorcampo"/>%
								</fo:block>
							</fo:table-cell>
						</fo:table-row>					
						
					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center" break-before="page">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="9cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell number-columns-spanned="2" background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;5. Fluctuaciones de Mercado
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									<fo:inline font-weigth="normal">&#0160;Considere este escenario: imagine que en los últimos tres meses el valor de las acciones en el mercado han bajado un 25% y sus inversiones en acciones también bajaron un 25%. ¿Qué haría usted?</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;
									<xsl:choose>
									<xsl:when test="/impresion/p5_0/opcionelegida = 'A'">
									Soy muy adverso al riesgo, por lo que vendería todas mis acciones.
									</xsl:when>
									<xsl:when test="/impresion/p5_0/opcionelegida = 'B'">
									Vender algunas de mis acciones.
									</xsl:when>
									<xsl:when test="/impresion/p5_0/opcionelegida = 'C'">
									Soy inversionista de largo plazo y acepto dichas fluctuaciones, por lo que no haría nada.
									</xsl:when>
									<xsl:when test="/impresion/p5_0/opcionelegida = 'D'">
									Dichas fluctuaciones las veo como una oportunidad, por lo que compraría más acciones.
									</xsl:when>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="4cm" />
					<fo:table-column column-width="1cm" />
					<fo:table-column column-width="5cm" />
					<fo:table-column column-width="1cm" />
					<fo:table-column column-width="5cm" />
					<fo:table-column column-width="1cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell number-columns-spanned="6" background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;6. Expectativas de retorno y riesgo
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell number-columns-spanned="6" background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									<fo:inline font-weigth="normal">&#0160;Si usted dispone de dinero para invertir y se enfrenta a las alternativas de rentabilidad promedio y los rangos de variación posibles que se presentan, cuál elegiría?:</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									<fo:inline font-weigth="normal">&#0160;Rentabilidad Promedio Anual</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'A'">
											<fo:inline font-weigth="normal">&#0160;7,20%</fo:inline>
										</xsl:when>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'B'">
											<fo:inline font-weigth="normal">&#0160;9,00%</fo:inline>
										</xsl:when>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'C'">
											<fo:inline font-weigth="normal">&#0160;10,40%</fo:inline>
										</xsl:when>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'D'">
											<fo:inline font-weigth="normal">&#0160;11,70%</fo:inline>
										</xsl:when>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'E'">
											<fo:inline font-weigth="normal">&#0160;12,50%</fo:inline>
										</xsl:when>
									</xsl:choose>		
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									<fo:inline font-weigth="normal">&#0160;Máxima ganancia posible Anual</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'A'">
											<fo:inline font-weigth="normal">&#0160;16,30%</fo:inline>
										</xsl:when>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'B'">
											<fo:inline font-weigth="normal">&#0160;25,00%</fo:inline>
										</xsl:when>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'C'">
											<fo:inline font-weigth="normal">&#0160;33,60%</fo:inline>
										</xsl:when>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'D'">
											<fo:inline font-weigth="normal">&#0160;42,80%</fo:inline>
										</xsl:when>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'E'">
											<fo:inline font-weigth="normal">&#0160;50,00%</fo:inline>
										</xsl:when>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									<fo:inline font-weigth="normal">&#0160;Máxima pérdida posible Anual</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'A'">
											<fo:inline font-weigth="normal">&#0160;-5,60%</fo:inline>
										</xsl:when>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'B'">
											<fo:inline font-weigth="normal">&#0160;-12,10%</fo:inline>
										</xsl:when>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'C'">
											<fo:inline font-weigth="normal">&#0160;-18,20%</fo:inline>
										</xsl:when>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'D'">
											<fo:inline font-weigth="normal">&#0160;-24,00%</fo:inline>
										</xsl:when>
										<xsl:when test="/impresion/p5_0/opcionelegida = 'E'">
											<fo:inline font-weigth="normal">&#0160;-28,20%</fo:inline>
										</xsl:when>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="9cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell number-columns-spanned="2" background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;7. Renta de la cartera de inversión
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border=	"0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									<fo:inline font-weigth="normal">&#0160;Necesito la siguiente cantidad de efectivo, producida de los dividendos y de los intereses, de mi actual porfolio de inversión:</fo:inline>
									<fo:inline font-weigth="bold"><xsl:value-of select="/impresion/p7_0/valorcampo"/></fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" padding-top="2mm" padding-bottom="2mm" color="{$txt}" text-align="left">
									&#0160;&#0160;&#0160;&#0160;
									<xsl:choose>
										<xsl:when test="/impresion/p7_0/opcionelegida = 'A'">
											<xsl:call-template name="radioSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="radioNo"/>
										</xsl:otherwise>
									</xsl:choose>
									&#0160;&#0160;
									<fo:inline font-weight="bold">Mucho</fo:inline>
									&#0160;&#0160;
									<xsl:choose>
										<xsl:when test="/impresion/p7_0/opcionelegida = 'B'">
											<xsl:call-template name="radioSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="radioNo"/>
										</xsl:otherwise>
									</xsl:choose>
									&#0160;&#0160;
									<fo:inline font-weight="bold">Una Parte</fo:inline>
									&#0160;&#0160;
									<xsl:choose>
										<xsl:when test="/impresion/p7_0/opcionelegida = 'C'">
											<xsl:call-template name="radioSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="radioNo"/>
										</xsl:otherwise>
									</xsl:choose>
									&#0160;&#0160;
									<fo:inline font-weight="bold">Ninguno</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="9cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell number-columns-spanned="2" background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;8. Necesidades de liquidez
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									<fo:inline font-weigth="normal">&#0160;Para desarrollar cualquier estrategia o portafolio de inversión, es indispensable conocer de sus necesidades de liquidez. Requeriría usted de liquidez inmediata, en cualquier momento de su horizonte de inversión?</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;&#0160;
									<xsl:choose>
										<xsl:when test="/impresion/p8_0/opcionelegida = 'A'">
											<xsl:call-template name="radioSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="radioNo"/>
										</xsl:otherwise>
									</xsl:choose>
									&#0160;&#0160;
									<fo:inline font-weight="bold">Si</fo:inline>
									&#0160;&#0160;
									<xsl:choose>
										<xsl:when test="/impresion/p8_0/opcionelegida = 'B'">
											<xsl:call-template name="radioSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="radioNo"/>
										</xsl:otherwise>
									</xsl:choose>
									&#0160;&#0160;
									<fo:inline font-weight="bold">No</fo:inline>
								</fo:block>
								<xsl:choose>
									<xsl:when test="/impresion/p8_0/opcionelegida = 'A'">
										<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
											&#0160;&#0160;Porcentaje de sus activos que requerirían de liquidez inmediata&#0160;<xsl:value-of select="/impresion/p8_0/valorcampo"/>
										</fo:block>
										<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
											&#0160;&#0160;Explicar por favor: &#0160;<xsl:value-of select="/impresion/p8_0/descripcionvalorcampo"/>
										</fo:block>
									</xsl:when>
								</xsl:choose>
							</fo:table-cell>
						</fo:table-row>

					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="9cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell number-columns-spanned="2" background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;9. Leverage
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									<fo:inline font-weigth="normal">Está interesado en utilizar el apalancamiento financiero (Leverage) como parte de su estrategia de inversión?</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
                                    &#0160;<xsl:value-of select="/impresion/p9_0/descripcionrespuesta"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="9cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell number-columns-spanned="2" background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;10. Experiencia con competencia
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									<fo:inline font-weigth="normal">¿Cómo están siendo administradas sus inversiones en el presente?, ha tenido algún problema?. Cuál es el principal</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
                                    &#0160;<xsl:value-of select="/impresion/p10_0/descripcionrespuesta"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="9cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell number-columns-spanned="2" background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;11. Consideraciones especiales:
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									<fo:inline font-weigth="normal">Tiene consideraciones especiales en cuanto a impuestos? (Ej: utiliza APV, 57 bis, 18 TER, etc)</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
                                    &#0160;<xsl:value-of select="/impresion/p11_0/descripcionrespuesta"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="17cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;4. 12. Productos Bancarios que posee, Señale los productos Bancarios que actualmente utiliza (Marque todas las que apliquen):
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="11cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" padding-before="2mm" color="{$txt}" text-align="center">
									Mercado Nacional
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" padding-before="2mm" color="{$txt}" text-align="center">
									Banco Bci
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" padding-before="2mm" color="{$txt}" text-align="center">
									Otros Bancos
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									Cuenta Corriente
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_1/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_1/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									Línea de Crédito
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_2/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_2/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									Tarjeta de Crédito
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_3/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_3/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									Créditos de Consumo
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_4/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_4/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									Leasing
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_5/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_5/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									Factoring
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_6/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_6/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									Créditos Hipotecarios con mutuos y letras
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_7/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_7/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									Otros (especificar) : <xsl:value-of select="/impresion/p12_8/descripcionvalorcampo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_8/opcionelegida = 'A'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="center">
									<xsl:choose>
										<xsl:when test="/impresion/p12_8/opcionelegida = 'B'">
											<xsl:call-template name="checkSi"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="checkNo"/>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>			
						
					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- sub titulo -->
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Resultado Perfilamiento'"/>
		</xsl:call-template>
		<!-- sub titulo -->

		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->
		
		<fo:block font-size="7pt" padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="6cm" />
					<fo:table-column column-width="6cm" />
					<fo:table-column column-width="5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;Resultado Perfilamiento
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;Fecha Perfilamiento
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;Puntaje
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;<xsl:value-of select="/impresion/glosa"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;<xsl:value-of select="/impresion/fecha"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt}" text-align="left">
									&#0160;<xsl:value-of select="/impresion/puntaje"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
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
									<xsl:value-of select="impresion/rutaImagen"/>01-bullet2-rj.gif
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
									<xsl:value-of select="impresion/rutaImagen"/>01-bullet1-rj.gif
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
	
	<xsl:template name="checkNo">
		<fo:external-graphic height="8px" width="8px">
			<xsl:attribute name="src">
				<xsl:value-of select="impresion/rutaImagen"/>bancaprivadacheckno.gif
			</xsl:attribute>
		</fo:external-graphic>
	</xsl:template>
	
	<xsl:template name="checkSi">
		<fo:external-graphic height="8px" width="8px">
			<xsl:attribute name="src">
				<xsl:value-of select="impresion/rutaImagen"/>bancaprivadachecksi.gif
			</xsl:attribute>
		</fo:external-graphic>
	</xsl:template>
	
	<xsl:template name="radioNo">
		<fo:external-graphic height="8px" width="8px">
			<xsl:attribute name="src">
				<xsl:value-of select="impresion/rutaImagen"/>bancaprivadaradiono.gif
			</xsl:attribute>
		</fo:external-graphic>
	</xsl:template>
	
	<xsl:template name="radioSi">
		<fo:external-graphic height="8px" width="8px">
			<xsl:attribute name="src">
				<xsl:value-of select="impresion/rutaImagen"/>bancaprivadaradiosi.gif
			</xsl:attribute>
		</fo:external-graphic>
	</xsl:template>
	
	

</xsl:stylesheet>







