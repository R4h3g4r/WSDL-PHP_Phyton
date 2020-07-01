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
	<xsl:variable name="size-fuente-margen">8pt</xsl:variable>
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
								<xsl:value-of select="info/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/rut"/></fo:inline>
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
								Contratación Doble Ejecutivo
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
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="info/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="info/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->
		
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Antecedentes del Cliente'"/>
			<xsl:with-param name="numero" select="'1.- '"/>
		</xsl:call-template>

		<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
			Nombre : <xsl:value-of select="info/nombre"/>
			<!-- Separador -->
			<fo:block space-after="1mm">
			</fo:block>
			<!-- Separador -->
			Cédula de Identidad N° : <xsl:value-of select="info/rut"/>
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="5mm">
		</fo:block>
		<!-- Separador -->


		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Descripción del Cliente'"/>
			<xsl:with-param name="numero" select="'2.- '"/>
		</xsl:call-template>

		<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}">
			Nuevo servicio del BCI, en el que usted contará con un segundo ejecutivo, el que a través del teléfono, responderá sus requerimientos de venta y servicio.
			En definitiva usted contará con su ejecutivo de cuentas de la sucursal y con un ejecutivo de cuentas, con nombre y apellido que lo atenderá telefónicamente.
			Con este servicio usted puede acceder rápidamente y por teléfono a su Doble Ejecutivo y dar solución a sus requerimientos financieros vía telefónica, sin tener que acercarse a la sucursal.
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="5mm">
		</fo:block>
		<!-- Separador -->


		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Disponiblidad del Servicio'"/>
			<xsl:with-param name="numero" select="'3.- '"/>
		</xsl:call-template>

		<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
			Usted podrá ubicar a su Doble Ejecutivo, llamando a un número de teléfono directo.
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="5mm">
		</fo:block>
		<!-- Separador -->


		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Costo del Servicio'"/>
			<xsl:with-param name="numero" select="'4.- '"/>
		</xsl:call-template>

		<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
			Este servicio, tendrá para usted un costo de <xsl:value-of select="info/tarifa"/> pesos.
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="5mm">
		</fo:block>
		<!-- Separador -->



		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Autorización de cargo en Cuenta Corriente'"/>
			<xsl:with-param name="numero" select="'5.- '"/>
		</xsl:call-template>

		<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
			Autorización a cargar mensualmente, el costo de este servicio, en mi cuenta corriente N° <xsl:value-of select="info/ctaCte"/> .-
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="5mm">
		</fo:block>
		<!-- Separador -->



		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Eliminación del Servicio'"/>
			<xsl:with-param name="numero" select="'6.- '"/>
		</xsl:call-template>

		<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
			La eliminación de este servicio, la realizaré telefónicamente a través del segundo ejecutivo.
			
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="2mm">
		</fo:block>
		<!-- Separador -->
		
		<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
			La anterior se hará efectiva a contar del mes siguiente a la renuncia del servicio.
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="5mm">
		</fo:block>
		<!-- Separador -->



		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Antecedentes Relevantes'"/>
			<xsl:with-param name="numero" select="'7.- '"/>
		</xsl:call-template>

		<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
			i) Por medio del presente, autorizo a BCI para grabar los llamados que efectué a mi Doble Ejecutivo.
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="3mm">
		</fo:block>
		<!-- Separador -->

		<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
			ii) El Doble Ejecutivo, podrá ser modificado arbitrariamente por el BCI, previo aviso al cliente.
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="3mm">
		</fo:block>
		<!-- Separador -->


		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Antecedentes de su Doble Ejecutivo'"/>
		</xsl:call-template>

		<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
			Nombre : <xsl:value-of select="info/nombreEjecutivo"/>
			<!-- Separador -->
			<fo:block space-after="1mm">
			</fo:block>
			<!-- Separador -->
			Teléfono : <xsl:value-of select="info/telDobEjec"/>
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="1cm">
		</fo:block>
		<!-- Separador -->

		<fo:block font-size="{$size-fuente-margen}" text-align="right" color="{$txt}">--------------------------------------</fo:block>
		<fo:block font-size="{$size-fuente-margen}" text-align="right" color="{$txt}">Cliente</fo:block>


	</xsl:template>

	
	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>
		<xsl:param name="numero"/>

		<fo:block font-size="8pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$numero"/> <xsl:value-of select="$titulo"/>
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