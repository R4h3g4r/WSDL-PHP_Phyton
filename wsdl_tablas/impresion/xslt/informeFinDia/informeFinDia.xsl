<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#737277</xsl:variable>
	<xsl:variable name="bgcolortexto">#FFFFFF</xsl:variable>
	<xsl:variable name="bgcolortotal">#000000</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#FFFFF</xsl:variable>
	<xsl:variable name="txtCabecera">#FFFFFF</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#000000</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:variable name="miles">#.###</xsl:variable>
	<!-- Variables -->
	<!-- formateador -->
	<xsl:decimal-format name="CL" decimal-separator="," grouping-separator="."/>
	
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
												<xsl:value-of select="informe-dia/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after" >
					<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Atención a Clientes Bci Directo: 600-692-8000
					</fo:block>
					<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Dirección: Av. El Golf 125, Las Condes, Santiago/Dirección para notificaciones Legales: Agustinas 1161, 7° piso, Santiago Centro, Santiago.
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
	<fo:table-column column-width="14cm"/>
	<fo:table-column column-width="6cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>

			<!-- nombre cliente -->
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
					<fo:inline color="{$txt}">Fecha: </fo:inline>
					<xsl:value-of select="informe-dia/fechaImpresion"/>
				</fo:block>
			<!-- nombre cliente -->
		
		</fo:table-cell>
		<fo:table-cell>
	
			<!-- rut cliente -->
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					<fo:inline color="{$txt}">Ejecutivo: </fo:inline>
					<fo:inline color="{$txt}"><xsl:value-of select="informe-dia/nombre"/></fo:inline>
				</fo:block>
			<!-- rut cliente -->

		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>

<!-- cabecera cliente -->
<!-- Separador Linea -->
<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="21cm"/>
</fo:block>

<fo:block space-after="1mm">
	<fo:inline color="{$txt}">Ingresados por la Sucursal </fo:inline>
</fo:block>


<!-- Separador Linea-->

<fo:block space-after="1mm"/>

<fo:block font-size="6pt" space-after="1mm" text-align="right">
<fo:table table-layout="fixed" width="21cm">
<fo:table-column column-width="1cm" />
<fo:table-column column-width="1cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="1,5cm" />
<fo:table-column column-width="1,5cm" />

	<fo:table-body>
		<fo:table-row>
			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Folio</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Tipo Doc.</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Rut</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Razón Social</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Dirección</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Neto</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Exento</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Iva</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Monto Final</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Destino</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Origen</fo:block>
			</fo:table-cell>
		</fo:table-row>


		<xsl:for-each select="informe-dia/mismaOficina">
		<fo:table-row text-align="right">

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="folio"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="tipoDoc"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="rut"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="razonSocial"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="direccion"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal"  padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="format-number(neto, $miles, 'CL')"/>

			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal"  padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="format-number(exento, $miles, 'CL')"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal"  padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="format-number(iva, $miles, 'CL')"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal"  padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="format-number(montoFinal, $miles, 'CL')"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal"  padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="destino"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal"  padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="origen"/>
			</fo:block>
			</fo:table-cell>

		</fo:table-row>
		</xsl:for-each>

	</fo:table-body>
</fo:table>
</fo:block>


<fo:block space-after="5mm"/>

<fo:block font-size="6pt" space-after="1mm" text-align="right">
<fo:table table-layout="fixed" width="7cm">
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="3cm" />

	<fo:table-body>
		<fo:table-row>
			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Destino</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Fecha Emision</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Total Monto Final</fo:block>
			</fo:table-cell>

		</fo:table-row>


		<xsl:for-each select="informe-dia/resumenMismaOficina">
		<fo:table-row text-align="right">

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="destino"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="fecha"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="format-number(total, $miles, 'CL')"/>
			</fo:block>
			</fo:table-cell>

		</fo:table-row>
		</xsl:for-each>

	</fo:table-body>
</fo:table>
</fo:block>


<fo:block space-before="10mm">
	<fo:inline color="{$txt}">Ingresados por otra Sucursal </fo:inline>
</fo:block>


<fo:block space-after="2mm"/>
<!-- tabla 1 -->
<fo:block font-size="6pt" space-after="1mm" text-align="right">
<fo:table table-layout="fixed" width="21cm">
<fo:table-column column-width="1cm" />
<fo:table-column column-width="1cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="1,5cm" />
<fo:table-column column-width="1,5cm" />
 
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Folio</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Tipo Doc.</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Rut</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Razón Social</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Dirección</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Neto</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Exento</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Iva</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Monto Final</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Destino</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
		Origen</fo:block>
		</fo:table-cell>
	</fo:table-row>


	<xsl:for-each select="informe-dia/otraOficina">
	<fo:table-row text-align="right">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="folio"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="tipoDoc"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="rut"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="razonSocial"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="direccion"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal"  padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="format-number(neto, $miles, 'CL')"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal"  padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="format-number(exento, $miles, 'CL')"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal"  padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="format-number(iva, $miles, 'CL')"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal"  padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="format-number(montoFinal, $miles, 'CL')"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal"  padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="destino"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal"  padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="origen"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	</xsl:for-each>
                            
	</fo:table-body>
</fo:table>
</fo:block>
<!-- tabla 1 -->



<fo:block space-after="5mm"/>

<fo:block font-size="6pt" space-after="1mm" text-align="right">
<fo:table table-layout="fixed" width="7cm">
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="3cm" />

	<fo:table-body>
		<fo:table-row>
			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Destino</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Fecha Emision</fo:block>
			</fo:table-cell>

			<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="2mm" padding-after="2mm" text-align="center">
			Total Monto Final</fo:block>
			</fo:table-cell>

		</fo:table-row>


		<xsl:for-each select="informe-dia/resumenOtraOficina">
		<fo:table-row text-align="right">

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="destino"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="fecha"/>
			</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}">
			<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="center">
			&#0160;<xsl:value-of select="format-number(total, $miles, 'CL')"/>
			</fo:block>
			</fo:table-cell>

		</fo:table-row>
		</xsl:for-each>

	</fo:table-body>
</fo:table>
</fo:block>




	</xsl:template>
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="detalleVencimiento.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml=""
		          commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="">
			<advancedProp name="sInitialMode" value=""/>
			<advancedProp name="bXsltOneIsOkay" value="true"/>
			<advancedProp name="bSchemaAware" value="true"/>
			<advancedProp name="bXml11" value="false"/>
			<advancedProp name="iValidation" value="0"/>
			<advancedProp name="bExtensions" value="true"/>
			<advancedProp name="iWhitespace" value="0"/>
			<advancedProp name="sInitialTemplate" value=""/>
			<advancedProp name="bTinyTree" value="true"/>
			<advancedProp name="xsltVersion" value="2.0"/>
			<advancedProp name="bWarnings" value="true"/>
			<advancedProp name="bUseDTD" value="false"/>
			<advancedProp name="iErrorHandling" value="fatal"/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
		<MapperBlockPosition></MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->