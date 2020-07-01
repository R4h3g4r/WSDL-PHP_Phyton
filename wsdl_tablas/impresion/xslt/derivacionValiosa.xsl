<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!-- Parametros -->
	<xsl:param name="opcion"/>
	<xsl:param name="universo"/>
	<xsl:param name="oficina"/>
	<xsl:param name="usuario"/>
	<xsl:param name="mulli"/>
	<xsl:param name="frta"/>
	<xsl:param name="fmul"/>
	<xsl:param name="frm"/>
	<xsl:param name="fcm"/>
	<xsl:param name="frmc"/>
	
	<!-- Parametros -->
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
												<xsl:value-of select="detalle/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
										<xsl:value-of select="detalle/fechaImpresion"/>
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
				<fo:table-column column-width="12cm"/>
				<fo:table-column column-width="6cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Derivación Valiosa
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

		<fo:block font-size="9pt" space-after="0.1mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="5cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="8.5cm" />
				<fo:table-column column-width="3.5cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell border="0.5pt solid {$lineas}" border-right-style="none" number-columns-spanned="3" padding-before="2mm" padding-after="2mm" >
							<fo:block padding-before="1mm" padding-after="1mm" text-align="left">
							<fo:inline font-weight="bold" color="{$txt}">&#0160;Universo:</fo:inline>
							<fo:inline font-weight="normal">&#0160;<xsl:value-of select="$universo"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" padding-before="2mm" padding-after="2mm">
							<fo:block  padding-before="1mm" padding-after="1mm" text-align="left">
							<fo:inline font-weight="bold" color="{$txt}" >&#0160;Nº de Clientes</fo:inline>
							<fo:inline font-weight="normal">&#0160;</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}" border-right-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;Clientes Listos
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" border-right-style="none" background-color="{$bgcolor}" >
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								<fo:external-graphic>
									<xsl:attribute name="src">
										<xsl:value-of select="detalle/rutaImagen"/>03-btn_verde.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;Multicrédito Listo
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;<xsl:value-of select="$mulli"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}" border-right-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;Clientes Pendientes
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" border-right-style="none" background-color="{$bgcolor}" >
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								<fo:external-graphic>
									<xsl:attribute name="src">
										<xsl:value-of select="detalle/rutaImagen"/>03-btn_amarillo.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;Falta Renta
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;<xsl:value-of select="$frta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}" border-right-style="none" background-color="{$bgcolor}" padding-before="2mm" >
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;Clientes Pendientes
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" border-right-style="none" background-color="{$bgcolor}" >
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								<fo:external-graphic>
									<xsl:attribute name="src">
										<xsl:value-of select="detalle/rutaImagen"/>03-btn_amarillo.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;Falta Multicrédito
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;<xsl:value-of select="$fmul"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}" border-right-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;Clientes Pendientes
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" border-right-style="none" background-color="{$bgcolor}" >
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								<fo:external-graphic>
									<xsl:attribute name="src">
										<xsl:value-of select="detalle/rutaImagen"/>03-btn_naranjo.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;Falta Renta + Multicrédito
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;<xsl:value-of select="$frm"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}" border-right-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;Clientes Pendientes
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" border-right-style="none" background-color="{$bgcolor}" >
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								<fo:external-graphic>
									<xsl:attribute name="src">
										<xsl:value-of select="detalle/rutaImagen"/>03-btn_naranjo.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;Falta Contrato Multicanal + Multicrédito
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;<xsl:value-of select="$fcm"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}" border-right-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;Clientes Pendientes
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" border-right-style="none" background-color="{$bgcolor}" >
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								<fo:external-graphic>
									<xsl:attribute name="src">
										<xsl:value-of select="detalle/rutaImagen"/>03-btn_rojo.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;Falta Renta + Contrato Multicanal + Multicrédito
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none" background-color="{$bgcolor}" padding-before="2mm">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" text-align="left">
								&#0160;<xsl:value-of select="$frmc"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>

		<xsl:choose>
		<xsl:when test="$opcion='MULLI'">
		<fo:block padding-before="2mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm"/>
				<fo:table-column column-width="12cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block>
							<fo:external-graphic>
								<xsl:attribute name="src">
									<xsl:value-of select="detalle/rutaImagen"/>03-btn_verde.gif
								</xsl:attribute>
							</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-before="2mm" font-size="9pt" >
							<fo:block font-weight="bold" text-align="left" >
							&#0160;Multicrédito Listo
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		</xsl:when>

		<xsl:when test="$opcion='FRTA'">
		<fo:block padding-before="2mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm"/>
				<fo:table-column column-width="12cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block>
							<fo:external-graphic>
								<xsl:attribute name="src">
									<xsl:value-of select="detalle/rutaImagen"/>03-btn_amarillo.gif
								</xsl:attribute>
							</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-before="2mm" font-size="9pt" >
							<fo:block font-weight="bold" text-align="left" >
							&#0160;Falta Renta
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		</xsl:when>

		<xsl:when test="$opcion='FMUL'">
		<fo:block padding-before="2mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm"/>
				<fo:table-column column-width="12cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block>
							<fo:external-graphic>
								<xsl:attribute name="src">
									<xsl:value-of select="detalle/rutaImagen"/>03-btn_amarillo.gif
								</xsl:attribute>
							</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-before="2mm" font-size="9pt" >
							<fo:block font-weight="bold" text-align="left" >
							&#0160;Falta Multicrédito
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		</xsl:when>

		<xsl:when test="$opcion='FRM'">
		<fo:block padding-before="2mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm"/>
				<fo:table-column column-width="12cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block>
							<fo:external-graphic>
								<xsl:attribute name="src">
									<xsl:value-of select="detalle/rutaImagen"/>03-btn_naranjo.gif
								</xsl:attribute>
							</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-before="2mm" font-size="9pt" >
							<fo:block font-weight="bold" text-align="left" >
							&#0160;Falta Renta + Multicrédito
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		</xsl:when>

		<xsl:when test="$opcion='FCM'">
		<fo:block padding-before="2mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm"/>
				<fo:table-column column-width="12cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block>
							<fo:external-graphic>
								<xsl:attribute name="src">
									<xsl:value-of select="detalle/rutaImagen"/>03-btn_naranjo.gif
								</xsl:attribute>
							</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-before="2mm" font-size="9pt" >
							<fo:block font-weight="bold" text-align="left" >
							&#0160;Falta Contrato Multicanal + Multicrédito
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		</xsl:when>

		<xsl:when test="$opcion='FRMC'">
		<fo:block padding-before="2mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm"/>
				<fo:table-column column-width="12cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block>
							<fo:external-graphic>
								<xsl:attribute name="src">
									<xsl:value-of select="detalle/rutaImagen"/>03-btn_rojo.gif
								</xsl:attribute>
							</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-before="2mm" font-size="9pt" >
							<fo:block font-weight="bold" text-align="left" >
							&#0160;Falta Renta + Contrato Multicanal + Multicrédito
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		</xsl:when>

		</xsl:choose>

		<fo:block font-size="7pt" padding-before="2mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="4.2cm" />
				<fo:table-column column-width="3.6cm" />
				<fo:table-column column-width="3.6cm" />
				<fo:table-column column-width="3.6cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;RUT
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Cliente
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;E-mail
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Fono Particular
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Fono Comercial
							</fo:block>
						</fo:table-cell>

					</fo:table-row>
					<xsl:choose>
					<xsl:when test="count(detalle/listado-clientes/cliente) > 0">
						<xsl:for-each select="detalle/listado-clientes/cliente">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="rut"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="cliente"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="correoElectronico"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="telefonoParticular"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="telefonoComercial"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="5">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:otherwise>
					</xsl:choose>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

</xsl:stylesheet>