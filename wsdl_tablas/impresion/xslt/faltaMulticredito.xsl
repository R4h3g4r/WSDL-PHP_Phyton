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
					page-height="28cm"
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

		<xsl:choose>
		<xsl:when test="$vista='cliente'">
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
								<xsl:value-of select="detalle/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="detalle/rut"/></fo:inline>
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
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->

		</xsl:when>
		</xsl:choose>

		<!-- Estado de la cuenta -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8cm"/>
				<fo:table-column column-width="12cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Detalle de Derivación Valiosa
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell >
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		<!-- Estado de la cuenta -->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->
		
		<xsl:choose>
		<xsl:when test="$vista='cliente'">

		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="detalle/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="detalle/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->
		
		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->

		</xsl:when>
		</xsl:choose>

		<!-- sub titulo -->
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Falta Multicrédito'"/>
		</xsl:call-template>
		<!-- sub titulo -->

		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$tam-separacion}"/>
		</fo:block>
		<!-- Separador -->

		<!-- pasos -->
		<fo:block font-size="8pt" background-color="{$bgcolor}" >
		
		<fo:block start-indent="4pt" padding-before="4mm">
		Revisa si cliente tiene Margen Vigente, Línea de Multicrédito Creada y Pantalla Parámetros Producto Cliente (PPC)
		</fo:block>

		<fo:block start-indent="4pt" padding-before="0.5mm">
		Ingresada.
		</fo:block>

		<fo:block start-indent="4pt" padding-before="5mm">
			<fo:external-graphic height="1mm" width="1mm">
				<xsl:attribute name="src">
				<xsl:value-of select="detalle/rutaImagen"/>00-bullet-az3.gif
				</xsl:attribute>
			</fo:external-graphic>
		<fo:inline font-weight="normal">&#0160;Si no tiene margen o </fo:inline>
		<fo:inline font-weight="bold">Línea de Multicrédito</fo:inline>
		<fo:inline font-weight="normal">, envía una evaluación a Comité BP.</fo:inline>
		</fo:block>

		<fo:block start-indent="4pt" padding-before="3mm">
			<fo:external-graphic height="1mm" width="1mm">
				<xsl:attribute name="src">
				<xsl:value-of select="detalle/rutaImagen"/>00-bullet-az3.gif
				</xsl:attribute>
			</fo:external-graphic>
		<fo:inline font-weight="normal">&#0160;Si no tiene pantalla </fo:inline>
		<fo:inline font-weight="bold">Parámetros Producto Cliente </fo:inline>
		<fo:inline font-weigth="normal">con datos, ingresa los datos solicitados. La PPC se</fo:inline>
		</fo:block>
		<fo:block start-indent="8pt" padding-before="0.5mm">
		<fo:inline font-weight="normal">encuentra en </fo:inline>
		<fo:inline font-weight="bold">Bci Corp Colocaciones</fo:inline>
		<fo:inline font-weight="normal">.</fo:inline>
		</fo:block>

		<fo:block start-indent="4pt" padding-before="3mm">
			<fo:external-graphic height="1mm" width="1mm">
				<xsl:attribute name="src">
				<xsl:value-of select="detalle/rutaImagen"/>00-bullet-az3.gif
				</xsl:attribute>
			</fo:external-graphic>
		<fo:inline font-weight="normal">&#0160;Si tiene </fo:inline>
		<fo:inline font-weight="bold">Línea de Multicrédito Creada </fo:inline>
		<fo:inline font-weight="normal">y no activada, debes solicitar a tu ACA la activación del producto,</fo:inline>
		</fo:block>
		<fo:block start-indent="8pt" padding-before="0.5mm">
		enviándole la siguiente documentación :
		</fo:block>

		<fo:block start-indent="4pt" padding-before="3mm">
		1.&#0160;&#0160;&#0160;&#0160;&#0160;Pantallazo de visación de cada cliente con semáforo verde
		</fo:block>

		<fo:block start-indent="4pt" padding-before="3mm">
		2.&#0160;&#0160;&#0160;&#0160;&#0160;Pantallazo Consulta de Margen (para verificar si tiene garantía asociada al consumo y linea global superior
		</fo:block>

		<fo:block start-indent="8pt" padding-before="0.5mm">
		&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;a UF 2)
		</fo:block>

		<fo:block start-indent="4pt" padding-before="3mm">
		3.&#0160;&#0160;&#0160;&#0160;&#0160;Pantalla que acredita que el contrato de cuenta corriente está vigente (se indica en normativa Multicredito)
		</fo:block>

		<fo:block start-indent="4pt" padding-before="6mm" padding-after="2cm" padding-top="3mm" padding-bottom="3mm">
			<fo:external-graphic height="1mm" width="1mm">
				<xsl:attribute name="src">
				<xsl:value-of select="detalle/rutaImagen"/>00-bullet-az3.gif
				</xsl:attribute>
			</fo:external-graphic>
		Recuerda que :
		</fo:block>

		<fo:block>
		<fo:table table-layout="fixed" >
			<fo:table-column column-width="1cm" />
			<fo:table-column column-width="0.5cm" />
			<fo:table-column column-width="14.5cm" />
			<fo:table-column column-width="1cm" />
			<fo:table-body>
			<fo:table-row>
			<fo:table-cell>
			</fo:table-cell>
			<fo:table-cell background-color="{$blanco}">
			</fo:table-cell>
			<fo:table-cell background-color="{$blanco}">
				<fo:block padding-top="1mm" padding-bottom="1mm" padding-before="2mm" padding-after="2mm" text-align="center">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="7cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt-azul-oscuro}" text-align="left">
									&#0160;&#0160;
									<fo:external-graphic height="1mm" width="1mm">
										<xsl:attribute name="src">
											<xsl:value-of select="detalle/rutaImagen"/>01-bullet1-rj.gif
										</xsl:attribute>
									</fo:external-graphic>
									Documentación Firmada por el Cliente
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="2mm" color="{$txt-azul-oscuro}" text-align="left">
									&#0160;&#0160;
									<fo:external-graphic height="1mm" width="1mm">
										<xsl:attribute name="src">
											<xsl:value-of select="detalle/rutaImagen"/>01-bullet1-rj.gif
										</xsl:attribute>
									</fo:external-graphic>
									Documentación Adicional que debe firmar el
								</fo:block>
								<fo:block color="{$txt-azul-oscuro}" text-align="left">
									&#0160;&#0160;&#0160;&#0160;&#0160;Cliente para activar el Multicrédito
								</fo:block>

							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="1mm" text-align="left">
									Nuevo Contrato Cuenta Corriente
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="1mm" text-align="left">
									Nada
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="1mm" text-align="left">
									Contrato Multicanal
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="1mm" text-align="left">
									Nada
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="1mm" text-align="left">
									Contrato Multicrédito con Megapagaré
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="1mm" text-align="left">
									Nada
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="5mm" text-align="left">
									Contrato Multicrédito sin Megapagaré
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="1mm" text-align="left">
									Contrato Multicanal. 
								</fo:block>
								<fo:block text-align="left">
									Excepcionalmente se podrá activar el Multicrédito sólo con el Contrato Multicrédito, si el Cliente no acepta firmar el Contrato Multicanal.
								</fo:block>

							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="4mm" text-align="left">
									Contrato Multicrédito sin Contrato Multicanal
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="1mm" text-align="left">
									Contrato Multicanal. Excepcionalmente se podrá activar el Multicrédito sólo con el Contrato Multicrédito, si el Cliente no acepta firmar el Contrato Multicanal.
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="1mm" text-align="left">
									Contrato Cuenta Corriente con Multicrédito y con Megapagaré
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="2.5mm" text-align="left">
									Nada
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="1mm" text-align="left">
									Megapagaré sin Contrato Bci Multicrédito y sin Contrato Multicanal
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="2.5mm" text-align="left">
									Contrato Multicanal o Contrato Bci Multicrédito
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="1mm" text-align="left">
									No tiene firmada ni Contrato Multicanal, ni Contrato Multicrédito ni Megapagaré
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block padding-before="1mm" text-align="left">
									Contrato Multicanal. Excepcionalmente se podrá activar el Multicrédito sólo con el Contrato Multicrédito, si el Cliente no acepta firmar el Contrato Multicanal.
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

					</fo:table-body>
				</fo:table>
				</fo:block>
			
			</fo:table-cell>
			<fo:table-cell background-color="{$bgcolor}">
			</fo:table-cell>
			</fo:table-row>
			</fo:table-body>
		</fo:table>
		</fo:block>
		
		<fo:block>
			&#0160;
		</fo:block>

		</fo:block>
		<!-- pasos -->

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
									<xsl:value-of select="detalle/rutaImagen"/>01-bullet2-rj.gif
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
									<xsl:value-of select="detalle/rutaImagen"/>01-bullet1-rj.gif
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







