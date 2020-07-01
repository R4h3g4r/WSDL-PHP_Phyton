<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#F4F4F4</xsl:variable>
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
												<xsl:value-of select="rentabilidad-cliente/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="rentabilidad-cliente/fechaImpresion"/>
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
								<xsl:value-of select="rentabilidad-cliente/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="rentabilidad-cliente/rut"/></fo:inline>
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
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Rentabilidad 
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
								Información de Productos
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

	</xsl:template>

	<xsl:template name="datos_1">
		<fo:block>

			<fo:table table-layout="fixed">
			<fo:table-column column-width="10cm" />
			<fo:table-column column-width="8cm" />
			<fo:table-body>
			<fo:table-row height="{$alto-filas}">
			<fo:table-cell border="0" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">

			<fo:table table-layout="fixed">
			<fo:table-column column-width="6cm" />
			<fo:table-column column-width="4cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}" >
						<fo:block background-color="{$bgcolor}" font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" font-weight="bold">
							Protestos Vigentes / Aclaraciones :
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" font-weight="normal" text-align="left">
							No Disponible
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<!-- FILA 1 -->

				<!-- FILA 2 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- SEGMENTO -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" font-weight="bold">
							Fec. Apertura Cuenta Corriente  :
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" font-weight="normal" text-align="left">
							<xsl:value-of select="rentabilidad-cliente/fecha-apertura"/> (<xsl:value-of select="rentabilidad-cliente/antiguedad-cuenta-corriente"/>) años
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 2 -->

				<xsl:variable name="isNull"><xsl:value-of select="rentabilidad-cliente/rentabilidad-productos/rentabilidad-productos-cliente"/></xsl:variable>
				<xsl:if test="$isNull != ''">

				<xsl:for-each select="rentabilidad-cliente/rentabilidad-productos/rentabilidad-productos-cliente">
					<xsl:if test="position() &lt;= (count(//rentabilidad-cliente/rentabilidad-productos/rentabilidad-productos-cliente) div 2)+1">
						<fo:table-row text-align="right">
							<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
								<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}"  font-weight="bold">
									<xsl:value-of select="glosa"/> :
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
								<fo:block font-size="{$size-fuente-margen}" font-weight="normal" text-align="left">
									<xsl:value-of select="unidad"/>   <xsl:value-of select="valorRentabilidad"/> 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
				</xsl:for-each>

				<!-- FILA 3 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- SEGMENTO -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}"  font-weight="bold">
							<xsl:value-of select="rentabilidad-cliente/glosa"/> :
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" font-weight="normal" text-align="left">
							<xsl:value-of select="rentabilidad-cliente/unidad"/>   <xsl:value-of select="rentabilidad-cliente/valor"/> 
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>
				</fo:table-row>
				<!-- FILA 3 -->

				<!-- FILA 4 -->
				<xsl:if test="rentabilidad-cliente/tipoCliente = 'P'">
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- SEGMENTO -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}"  font-weight="bold">
							Utilidad Esperada Segmento :
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" font-weight="normal" text-align="left">
							$   <xsl:value-of select="rentabilidad-cliente/utilidad-segmento"/> 
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>
				</fo:table-row>
				</xsl:if>
				<!-- FILA 4 -->
				</xsl:if>
			</fo:table-body>
			</fo:table>

			</fo:table-cell>
			<fo:table-cell border="0" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">

			<fo:table table-layout="fixed">
			<fo:table-column column-width="4cm" />
			<fo:table-column column-width="4cm" />
			<fo:table-body>
				<xsl:variable name="isNull"><xsl:value-of select="rentabilidad-cliente/rentabilidad-productos/rentabilidad-productos-cliente"/></xsl:variable>
				<xsl:if test="$isNull != ''">
				<xsl:for-each select="rentabilidad-cliente/rentabilidad-productos/rentabilidad-productos-cliente">
					<xsl:if test="position() &gt; (count(//rentabilidad-cliente/rentabilidad-productos/rentabilidad-productos-cliente) div 2)+1">
						<fo:table-row text-align="right">
							<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
								<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}"  font-weight="bold">
									<xsl:value-of select="glosa"/> :
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
								<fo:block font-size="{$size-fuente-margen}" font-weight="normal" text-align="left">
									<xsl:value-of select="unidad"/>   <xsl:value-of select="valorRentabilidad"/> 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
				</xsl:for-each>

				<xsl:for-each select="rentabilidad-cliente/rentabilidad-productos/rentabilidad-productos-cliente">
					<xsl:variable name="glosa2"><xsl:value-of select="glosa"/></xsl:variable>
					<xsl:variable name="posicion"><xsl:value-of select="position()"/></xsl:variable>
					<xsl:if test="$posicion = 3">
						<xsl:if test="contains($glosa2, 'Otras Comisiones')">
							<fo:table-row text-align="right">
								<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
									<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}"  font-weight="bold">
										<xsl:value-of select="glosa"/> :
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
									<fo:block font-size="{$size-fuente-margen}" font-weight="normal" text-align="left">
										<xsl:value-of select="unidad"/>   <xsl:value-of select="valorRentabilidad"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:if>
					</xsl:if>
					<xsl:if test="$posicion = 4">
						<xsl:if test="contains($glosa2, 'Total Comisiones')">
							<fo:table-row text-align="right">
								<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
									<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}"  font-weight="bold">
										<xsl:value-of select="glosa"/> :
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
									<fo:block font-size="{$size-fuente-margen}" font-weight="normal" text-align="left">
										<xsl:value-of select="unidad"/>   <xsl:value-of select="valorRentabilidad"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:if>
					</xsl:if>
				</xsl:for-each>
				</xsl:if>
				<!-- FILA 5 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}"  font-weight="bold">
							Margen Cupo Máximo :
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" font-weight="normal" text-align="left">
							<xsl:value-of select="rentabilidad-cliente/moneda-margen"/>   <xsl:value-of select="rentabilidad-cliente/margen-cupo-maximo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<!-- FILA 5 -->

				<!-- FILA 6 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- SEGMENTO -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}"  font-weight="bold">
							 Margen Cupo Disponible :
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						<fo:block font-size="{$size-fuente-margen}" font-weight="normal" text-align="left">
							<xsl:value-of select="rentabilidad-cliente/moneda-margen"/>   <xsl:value-of select="rentabilidad-cliente/margen-cupo-disponible"/> 
						</fo:block>
					<!-- SEGMENTO -->
					</fo:table-cell>
				</fo:table-row>
				<!-- FILA 6 -->
			</fo:table-body>
			</fo:table>

			</fo:table-cell>
			</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>