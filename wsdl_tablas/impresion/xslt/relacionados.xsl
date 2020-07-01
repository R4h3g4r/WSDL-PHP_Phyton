<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
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
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>
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
											<xsl:attribute name="src"><xsl:value-of select="info/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="info/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
					<!-- Separador -->
					<fo:block space-after="2mm">
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
				<fo:table-column column-width="11cm"/>
				<fo:table-column column-width="7cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/cliente/nombre"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/cliente/rut"/>
								</fo:inline>
							</fo:block>
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
				<fo:table-column column-width="18cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Relacionados								
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
		
		<!-- cabecera ejecutivo -->
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="11cm"/>
				<fo:table-column column-width="7cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Ejecutivo: </fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="/info/colaborador/nombre"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Oficina: </fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="/info/colaborador/oficina"/>
								</fo:inline>
							</fo:block>
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
				
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="18cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="12pt" font-weight="bold" text-align="left">
								<xsl:call-template name="subTitulo">
									<xsl:with-param name="titulo" select="'Cónyuge'"/>
								</xsl:call-template>							
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
		<!-- datos del conyuge -->
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="5cm"/>
				<fo:table-column column-width="10cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Nombre: </fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/conyuge/nombre"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/conyuge/rut"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Segmento: </fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/conyuge/segmento"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Profesión / Oficio: </fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/conyuge/profesion"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Renta M$: </fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/conyuge/renta"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Tipo Cliente: </fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/conyuge/tipoCliente"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Antigüedad: </fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/conyuge/antiguedad"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Sucursal: </fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/conyuge/sucursal"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Ejecutivo: </fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/conyuge/ejecutivo"/>
								</fo:inline>
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
		<!-- Separador -->
		<!-- listado de hijos -->
		<xsl:for-each select="info/hijo">
			<fo:block>
				<fo:table table-layout="fixed">
					<fo:table-column column-width="18cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<!-- titulo -->
								<fo:block font-size="12pt" font-weight="bold" text-align="left">
									<xsl:call-template name="subTitulo">
										<xsl:with-param name="titulo" select="'Hijo'"/>
									</xsl:call-template>							
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
			<fo:block font-size="5pt" space-after="1mm">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="5cm"/>
					<fo:table-column column-width="10cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt}">Nombre: </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt-azul-claro}">
										<xsl:value-of select="nombre"/>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt}">RUT: </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt-azul-claro}">
										<xsl:value-of select="rut"/>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt}">Fecha Nacimiento: </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt-azul-claro}">
										<xsl:value-of select="fechaNacimiento"/>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt}">Profesión / Estudiante: </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt-azul-claro}">
										<xsl:value-of select="profesion"/>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt}">Renta M$: </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt-azul-claro}">
										<xsl:value-of select="renta"/>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt}">Empresa / Universidad: </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt-azul-claro}">
										<xsl:value-of select="empresa"/>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt}">Tipo Cliente: </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt-azul-claro}">
										<xsl:value-of select="tipoCliente"/>
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt}">Antigüedad: </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
									<fo:inline color="{$txt-azul-claro}">
										<xsl:value-of select="antiguedad"/>
									</fo:inline>
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
			<!-- Separador -->
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>
		<xsl:param name="fecha"/>
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src"><xsl:value-of select="/info/rutaImagen"/>01-bullet2-rj.gif
								</xsl:attribute>
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
								<xsl:attribute name="src"><xsl:value-of select="/info/rutaImagen"/>01-bullet1-rj.gif
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
