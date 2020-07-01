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
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:variable name="largo-linea">21cm</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="," grouping-separator="."/>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="25.5cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="1.5cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="3.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="3cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="1mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="16cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="transfer/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
										<xsl:value-of select="transfer/fechaImpresion"/>
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
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
					</fo:block>
					<!-- Separador -->
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Para Consultas o Comentarios Comun�quese al 600 6928000
					</fo:block>
					<fo:block font-size="5pt" font-weight="bold" start-indent="20cm" space-after="1mm" text-align="left" color="{$txt}">
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
				<fo:table-column column-width="16cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="transfer/nombreCliente"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="transfer/rutCliente"/></fo:inline>
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
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
		</fo:block>
		<!-- Separador -->
		<!-- Titulo Modulo -->
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="16cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Lista de Pagos del Cliente 
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
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- ejecutivo -->
		<fo:block font-size="5pt" space-after="1mm">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="10cm"/>
	<fo:table-column column-width="8cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>

			<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:external-graphic height="1mm" width="1mm">
			<xsl:attribute name="src">
				<xsl:value-of select="transfer/rutaImagen"/>01-bullet1-rj.gif
			</xsl:attribute>
			</fo:external-graphic>
			&#0160;
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="transfer/ejecutivo"/></fo:inline>
			</fo:block>
				
		</fo:table-cell>
		<fo:table-cell>
	
			<fo:block font-size="9pt" text-align="right" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Plataforma/Sucursal: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="transfer/oficinaEjecutivo"/></fo:inline>
			</fo:block>

		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
		<!-- ejecutivo -->

		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
		</fo:block>
		<!-- Separador -->

<!-- lista transfer -->

		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
		</fo:block>
		<!-- Separador -->

		<!-- detalle talonario -->

		<fo:block font-size="8pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="2cm" />

				<fo:table-body>
					<fo:table-row font-size="10pt">
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Fecha Pago 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Docto.
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Oficina Ent. 
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Bco. Destino
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;N�mero Cuenta
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Mto. Pago
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Nombre Empresa
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Estado
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:choose>
					<xsl:when test="count(transfer/transferListado/transfer-Listado) > 0">
						<xsl:for-each select="transfer/transferListado/transfer-Listado">
							<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;<xsl:value-of select="fecha-pago"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="1mm" text-align="left">
										&#0160;<xsl:value-of select="documento"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="1mm" text-align="left">
										&#0160;<xsl:value-of select="des-oficina"/>
									</fo:block>
								</fo:table-cell>

							  <fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="1mm" text-align="left">
										&#0160;<xsl:value-of select="des-banco"/>
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="1mm" text-align="left">
										&#0160;<xsl:value-of select="cuenta"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="1mm" text-align="left">
										&#0160;<xsl:value-of select="format-number(monto, '###.##0,####', 'peso')"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="1mm" text-align="left">
										&#0160;<xsl:value-of select="empresa"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="1mm" text-align="left">
										&#0160;<xsl:value-of select="estado"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
					</xsl:otherwise>
					</xsl:choose>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- detalle talonario -->

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
									<xsl:value-of select="perfiles-provision/rutaImagen"/>01-bullet2-rj.gif
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
									<xsl:value-of select="perfiles-provision/rutaImagen"/>01-bullet1-rj.gif
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
<xsl:template name="indice">
	<xsl:param name="titulo"/> 

	<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
	<fo:table table-layout="fixed">
	<fo:table-column column-width="0.3cm" />
	<fo:table-column column-width="8cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell padding-before="1mm">
		<fo:external-graphic>
				<xsl:attribute name="src">
					<xsl:value-of select="transfer/rutaImagen"/>01-bullet2-rj.gif
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