<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#F0F0F0</xsl:variable>
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
	<xsl:variable name="size-fuente-margen">9pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>

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
					<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
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
												<xsl:value-of select="detalle-alertas-ejecutivo/ruta-imagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="detalle-alertas-ejecutivo/fecha-impresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
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
		<!-- cabecera ejecutivo -->
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre ejecutivo -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-alertas-ejecutivo/ejecutivo"/>
							</fo:block>
							<!-- nombre ejecutivo -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut ejecutivo -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">Plataforma: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="detalle-alertas-ejecutivo/codigoPlataforma"/> - <xsl:value-of select="detalle-alertas-ejecutivo/plataforma"/></fo:inline>
							</fo:block>
							<!-- rut ejecutivo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- cabecera ejecutivo -->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="20cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-alertas-ejecutivo/nombre-alerta"/> 
							</fo:block>
							<!-- titulo -->
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
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="10pt" font-weight="bold" text-align="left">
								Listado de Clientes:
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<xsl:call-template name="datos_1"/>
		<!-- Separador -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="10pt" font-weight="bold" text-align="left">
								Los pasos que debes seguir son:
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<xsl:call-template name="datos_2"/>
		<!-- Separador -->		
	</xsl:template>
	<xsl:template name="datos_1">
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="4cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="3.5cm"/>
			<fo:table-column column-width="4cm"/>
			<fo:table-column column-width="3.5cm"/>	
			<fo:table-body >
				<fo:table-row background-color="{$bgcolor}" text-align="right" height="{$alto-filas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" font-weight="bold">
							Nombre
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" font-weight="bold">							
							RUT
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" font-weight="bold">							
							Teléfono
						</fo:block>
					</fo:table-cell>					
					<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" font-weight="bold">							
							E-mail
						</fo:block>
					</fo:table-cell>
					<xsl:if test="detalle-alertas-ejecutivo/es-jof = 'si'">
					<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" font-weight="bold">
							Ejecutivo	
						</fo:block>
					</fo:table-cell>		
					</xsl:if>
					</fo:table-row>
				<xsl:for-each select="detalle-alertas-ejecutivo/clientes/cliente">
				<xsl:if test="position() mod 2 = 0">
						<fo:table-row background-color="{$bgcolor}" text-align="right">
							<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
								<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
									<xsl:value-of select="nombre"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
								<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
									<xsl:value-of select="rut"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
								<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
									<xsl:value-of select="fono"/>
								</fo:block>
							</fo:table-cell>					
							<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
								<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
									<xsl:value-of select="email"/>
								</fo:block>
							</fo:table-cell>
							<xsl:if test="es-jof = 'si'">
								<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
									<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
										<xsl:value-of select="nombre-ejecutivo"/>
									</fo:block>
								</fo:table-cell>		
							</xsl:if>
						</fo:table-row>
					</xsl:if>
					<xsl:if test="position() mod 2 != 0">
						<fo:table-row text-align="right">
							<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
								<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
									<xsl:value-of select="nombre"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
								<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
									<xsl:value-of select="rut"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
								<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
									<xsl:value-of select="fono"/>
								</fo:block>
							</fo:table-cell>					
							<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
								<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
									<xsl:value-of select="email"/>
								</fo:block>
							</fo:table-cell>
							<xsl:if test="es-jof = 'si'">
								<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" border="0.5pt solid {$lineas}">
									<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
										<xsl:value-of select="nombre-ejecutivo"/>
									</fo:block>
								</fo:table-cell>		
							</xsl:if>
						</fo:table-row>
					</xsl:if>						
				</xsl:for-each>
			</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
	</xsl:template>
	<xsl:template name="datos_2">
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="18cm" />
			<fo:table-body  border="0.5pt solid {$lineas}">
				<xsl:for-each select="detalle-alertas-ejecutivo/pasos-a-seguir">
					<fo:table-row text-align="right">
						<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
								<xsl:value-of select="paso"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>