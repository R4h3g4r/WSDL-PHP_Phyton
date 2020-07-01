<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!-- Parametros -->
	<xsl:param name="oficina"/>
	<xsl:param name="usuario"/>
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
												<xsl:value-of select="workflow-garantias/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="workflow-garantias/fechaImpresion"/>
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

		<!-- ejecutivo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="12cm"/>
				<fo:table-column column-width="6cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block font-size="9pt" text-align="left" color="{$txt}">
							<fo:inline font-weight="normal" space-before="30pt">Usuario: </fo:inline>
							<fo:inline font-weight="bold" color="{$txt-azul-claro}"><xsl:value-of select="$usuario"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-size="9pt" text-align="left" color="{$txt}">
							<fo:inline font-weight="normal" space-before="30pt" color="{$txt}">Oficina: </fo:inline>
							<fo:inline font-weight="bold" color="{$txt-azul-claro}"><xsl:value-of select="$oficina"/></fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		<!-- ejecutivo -->

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="5cm"/>
			<fo:table-column column-width="13cm"/>
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell >

					<!-- titulo -->
						<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							Workflow Garantías
						</fo:block>
					<!-- titulo -->
				
				</fo:table-cell>
				<fo:table-cell >
			
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
			
		<!-- Detalle -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								Rol
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								Tarea
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								Referencia
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								Identificación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								Inicio
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
								Vencimiento
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="workflow-garantias/listado-workflow/fila-listado-workflow">
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="rol"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="substring(tarea,0,30)"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="referencia"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="identificacion"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of select="inicio"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of select="vencimiento"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Detalle -->

	</xsl:template>

</xsl:stylesheet>