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
	<xsl:variable name="size-fuente-margen">6pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>
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
					<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="info/rutaImagen"/>02-logo-bci.gif
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
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="info/nombreCliente"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/rutCliente"/></fo:inline>
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
			<fo:table-column column-width="7cm"/>
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell >
					<!-- titulo -->
						<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							<xsl:value-of select="info/tituloImpresion"/>
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
		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Usuario: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="info/ejecutivoUsuario"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="info/oficinaEjecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="info/ejecutivo"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<xsl:call-template name="direccionamientoComercial"/>
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Antecedentes del Cliente'"/>
		</xsl:call-template>
		<xsl:if test="info/tipoCliente = 'P'">
			<xsl:call-template name="antecedentesClientePersona"/>
		</xsl:if>
		<xsl:if test="info/tipoCliente = 'E'">
			<xsl:call-template name="antecedentesClienteEmpresa"/>
		</xsl:if>
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<xsl:call-template name="informacionProductos"/>
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<xsl:call-template name="factoresRiesgo"/>
	</xsl:template>
	
	<xsl:template name="direccionamientoComercial">	
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Direccionamiento Comercial.'"/>
		</xsl:call-template>
		<fo:block space-after="3mm">
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.5cm" />
				<fo:table-column column-width="4.5cm" />
				<fo:table-column column-width="4.5cm" />
				<fo:table-column column-width="4.5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left" color="{$txt}">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Campañas:'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/campanas"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left" color="{$txt}">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Procesos de Negocio:'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}" padding-bottom="1mm">
							<xsl:for-each select="info/procesosNegocio/proceso">
								<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
									<xsl:value-of select="descripcion"/>
								</fo:block>
							</xsl:for-each>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="antecedentesClientePersona">
		<fo:block space-after="3mm">
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2.9cm" />
				<fo:table-column column-width="6.1cm" />
				<fo:table-column column-width="2.9cm" />
				<fo:table-column column-width="6.1cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Plan :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/plan"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Nivel Educacional :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/nivelEducacional"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Convenio :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/convenio"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Situaci&#243;n Laboral :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/situacionLaboral"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Segmento :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/segmento"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Banco Principal Bci :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/bancoPrincipalBci"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Renta Fija M$ :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/rentaFija"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Ejecutivo Comercial :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/ejecutivoComercial"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Renta Variable M$ :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/rentaVariable"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Fecha Nacimiento :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/fechaNacimiento"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Per&#237;odo de Rentas :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/periodoRentas"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Tel&#233;fono Particular :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/telefonoParticular"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Renta Familiar M$ :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/rentaFamiliar"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Tel&#233;fono Comercial :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/telefonoComercial"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Profesi&#243;n :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/profesion"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Tel&#233;fono Celular :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/telefonoCelular"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Actividad :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/actividad"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Email :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/email"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="antecedentesClienteEmpresa">
		<fo:block space-after="3mm">
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="5cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Actividad Económica :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/actividadEconomica"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Banco Principal BCI :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/bancoPrincipalBci"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Ejecutivo Factoring :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/ejecutivoFactoring"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Ejecutivo Comercial :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/ejecutivoComercial"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Ejecutivo Corredora de Bolsa :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/ejecutivoCorredoraBolsa"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Teléfono Comercial :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/telefonoComercial"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Ejecutivo Adm. FF.MM. :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/ejecutivoAdmFFMM"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Dirección E-Mail :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/antecedentesCliente/email"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="informacionProductos">
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo">
				Información de Productos <xsl:value-of select="info/informacionProductos/fechaRenta"/>.
			</xsl:with-param>
		</xsl:call-template>
		<fo:block space-after="3mm">
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="5.5cm" />
				<fo:table-column column-width="3.5cm" />
				<fo:table-column column-width="5.5cm" />
				<fo:table-column column-width="3.5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Protestos Vigentes / Aclaraciones :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/informacionProductos/protestosAclaraciones"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Fecha Apertura Cuenta Corriente :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/informacionProductos/fechaAperturaCtaCte"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo">
										Margen Cupo Máximo <xsl:value-of select="info/informacionProductos/cupoMargenMaximo/margen/glosaMoneda" />
									</xsl:with-param>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/informacionProductos/cupoMargenMaximo/margen/monto" />
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo">
										Margen Cupo Máximo <xsl:value-of select="info/informacionProductos/cupoMargenDisponible/margen/glosaMoneda" />
									</xsl:with-param>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/informacionProductos/cupoMargenDisponible/margen/monto" />
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo">
										Utilidad Esperada Segmento $ :
									</xsl:with-param>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:value-of select="info/informacionProductos/utilidadEsperadaSegmento" />
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								&#0160;
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="9cm" />
				<fo:table-column column-width="9cm" />
				<fo:table-body>
					<!-- Dibuja elementos impares -->
					<fo:table-row>
						<fo:table-cell>
							<fo:table>
								<fo:table-column column-width="5.5cm" />
								<fo:table-column column-width="3.5cm" />
								<fo:table-body>
									<xsl:for-each select="info/informacionProductos/rentabilidadProductos/producto[position() mod 2 != 0]">
										<fo:table-row>
											<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
												<fo:block text-align="left">
													<fo:block font-size="7pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
														<fo:table table-layout="fixed">
															<fo:table-column column-width="0.5cm" />
															<fo:table-column column-width="8cm" />
															<fo:table-body>
																<fo:table-row>
																	<fo:table-cell padding-left="2mm" padding-before="1mm" >
																		<fo:external-graphic height="1mm" width="1mm">
																			<xsl:attribute name="src">
																				<xsl:value-of select="../../../rutaImagen"/>01-bullet1-rj.gif
																			</xsl:attribute>
																		</fo:external-graphic>
																	</fo:table-cell>
																	<fo:table-cell>
																		<fo:block>
																			<xsl:value-of select="glosa" />&#0160;<xsl:value-of select="unidad" />:
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
															</fo:table-body>
														</fo:table>
													</fo:block>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
												<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
													<xsl:value-of select="valorRentabilidad" />
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:for-each>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
						<fo:table-cell>
							<fo:table>
								<fo:table-column column-width="5.5cm" />
								<fo:table-column column-width="3.5cm" />
								<fo:table-body>
									<xsl:for-each select="info/informacionProductos/rentabilidadProductos/producto[position() mod 2 = 0]">
										<fo:table-row>
											<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
												<fo:block text-align="left">
													<fo:block font-size="7pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
														<fo:table table-layout="fixed">
															<fo:table-column column-width="0.5cm" />
															<fo:table-column column-width="8cm" />
															<fo:table-body>
																<fo:table-row>
																	<fo:table-cell padding-left="2mm" padding-before="1mm" >
																		<fo:external-graphic height="1mm" width="1mm">
																			<xsl:attribute name="src">
																				<xsl:value-of select="../../../rutaImagen"/>01-bullet1-rj.gif
																			</xsl:attribute>
																		</fo:external-graphic>
																	</fo:table-cell>
																	<fo:table-cell>
																		<fo:block>
																			<xsl:value-of select="glosa" />&#0160;<xsl:value-of select="unidad" />:
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
															</fo:table-body>
														</fo:table>
													</fo:block>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
												<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
													<xsl:value-of select="valorRentabilidad" />
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:for-each>
									<xsl:if test="count(/info/informacionProductos/rentabilidadProductos/producto) mod 2 != 0">
										<fo:table-row>
											<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
												<fo:block text-align="left">
													&#0160;
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
												<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
													&#0160;
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:if>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="factoresRiesgo">
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo">
				Factores de Riesgo Contactos.
			</xsl:with-param>
		</xsl:call-template>
		<fo:block space-after="3mm">
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="14cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Riesgos :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:for-each select="info/factoresRiesgo/factor">
									<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
										<xsl:value-of select="glosaFactor"/>&#0160;<xsl:value-of select="glosaRiesgo"/>
									</fo:block>
								</xsl:for-each>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block text-align="left">
								<xsl:call-template name="itemTitulo">
									<xsl:with-param name="titulo" select="'Filtro Riesgos :'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
								<xsl:for-each select="info/filtrosRiesgo/filtro">
									<fo:block font-size="{$size-fuente-margen}" text-align="left" font-weight="bold" color="{$txt-azul-claro}">
										<xsl:value-of select="glosaFactor"/>&#0160;<xsl:value-of select="descripcion"/>
									</fo:block>
								</xsl:for-each>
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
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="info/rutaImagen"/>01-bullet2-rj.gif
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
		<fo:block font-size="7pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm" >
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of select="info/rutaImagen"/>01-bullet1-rj.gif
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