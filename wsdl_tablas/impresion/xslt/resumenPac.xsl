<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!-- Parametros -->
	<xsl:param name="fechaVenc"/>
	<xsl:param name="tipoPac"/>
	<!-- Parametros -->
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
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
											<xsl:attribute name="src"><xsl:value-of select="detalle-pac/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="detalle-pac/fechaGestion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
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
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="detalle-pac/cliente"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="detalle-pac/rut"/>
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
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<!-- Titulo Condiciones Línea Sobregiro-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								PAC- Pago Automático de Cuentas 
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Condiciones Línea Sobregiro-->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold">
				<xsl:value-of select="detalle-pac/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold">
				<xsl:value-of select="detalle-pac/oficina"/>
			</fo:inline>
		</fo:block>
		<!-- ejecutivo -->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>	
		

		<!-- tipo pac -->
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="18cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- tipo -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="$tipoPac"/>
							</fo:block>
							<!-- tipo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- tipo pac -->



		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>


		
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="1cm"/>
					<fo:table-column column-width="2cm"/>
					<fo:table-column column-width="5cm"/>
					<fo:table-column column-width="3.5cm"/>
					<fo:table-column column-width="3.5cm"/>
					<fo:table-column column-width="3cm"/>
					<!-- Encabezado -->
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Est.
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;N° Convenio
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Compañía
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Cuenta Corriente de Cargo
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Monto Máximo en UF
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Fecha de Ingreso
								</fo:block>
							</fo:table-cell>
						</fo:table-row>	
						<!-- inicio listado  -->
						<xsl:for-each select="detalle-pac/listado-pac/item-pac">
							<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
										<xsl:if test="est!=''">
											<fo:external-graphic>
												<xsl:attribute name="src"><xsl:value-of select="/detalle-pac/rutaImagen"/><xsl:value-of select="est"/></xsl:attribute>
											</fo:external-graphic>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="numConvenio"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="compania"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="ctaCorrienteCargo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="right">
									&#0160;<xsl:value-of select="montoMaxUF"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="fechaIngreso"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:for-each>
						<!-- fin listado -->
							
					</fo:table-body>
					</fo:table>
			</fo:block>
		</xsl:template>	
	<!-- listado detalle -->
</xsl:stylesheet>
