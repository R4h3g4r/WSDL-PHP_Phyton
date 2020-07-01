<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
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
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="es" country="cl">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="1mm">
						<fo:external-graphic>
							<xsl:attribute name="src">
								<xsl:value-of select="/visacionScoreSinacofi/rutaImagen"/>02-logo-bci.gif</xsl:attribute>
						</fo:external-graphic>
					</fo:block>
					<!-- imagen bci -->
					<fo:block space-after="2mm">
						<xsl:call-template name="linea"/>
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<fo:block space-after="1mm">
						<xsl:call-template name="linea"/>
					</fo:block>
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$negro}">Para Consultas o Comentarios Comuníquese al 600 6928000</fo:block>
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$negro}">Pagina <fo:page-number/></fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<xsl:template name="contenido">
		<fo:block space-after="{$espacio-bloque}">
			<xsl:call-template name="cliente"/>
		</fo:block>
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="titulo">
				<xsl:with-param name="texto" select="'Scoring del cliente'"/>
			</xsl:call-template>
		</fo:block>
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="puntaje"/>
		</fo:block>
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="percentil"/>
		</fo:block>
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="clasificacion-riesgo"/>
		</fo:block>		
	</xsl:template>

	<!-- INFO CLIENTE -->
	<xsl:template name="cliente">
		<fo:table table-layout="fixed">
			<fo:table-column column-width="13cm"/>
			<fo:table-column column-width="5cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block text-align="left" font-size="8pt">
							<xsl:value-of select="/visacionScoreSinacofi/cliente/nombre"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="right" font-size="8pt">
							<xsl:value-of select="'RUT:  '"/>
							<xsl:value-of select="/visacionScoreSinacofi/cliente/rut"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<!-- INFORMACION DE PUNTAJE -->
	<xsl:template name="puntaje">
		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="2.5cm"/>
			<fo:table-column column-width="12cm"/>
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Puntaje'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="format-number(/visacionScoreSinacofi/respuestaScoreSinacofi/puntajeScoring, $miles, 'CL')"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="/visacionScoreSinacofi/respuestaScoreSinacofi/interpretacionPuntaje"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="/visacionScoreSinacofi/respuestaScoreSinacofi/interpretacionObservacion"/>
						<xsl:with-param name="number-columns-spanned" select="2"/>
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<!-- INFORMACION DE PERCENTIL -->
	<xsl:template name="percentil">
		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="2.5cm"/>
			<fo:table-column column-width="12cm"/>
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Percentil'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="format-number(/visacionScoreSinacofi/respuestaScoreSinacofi/percentil div 100, $porcentaje, 'CL')"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="/visacionScoreSinacofi/respuestaScoreSinacofi/interpretacionPercentil"/>
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<!-- INFORMACION DE CLASIFICACION RIESGO -->
	<xsl:template name="clasificacion-riesgo">
		
		<xsl:call-template name="subtitulo-2">
			<xsl:with-param name="texto" select="'Clasificación de riesgo'" />
		</xsl:call-template>
		
		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="3.5cm"/>
			<fo:table-column column-width="3.5cm"/>
			<fo:table-column column-width="2.5cm"/>
			<fo:table-column column-width="2.5cm"/>
			<fo:table-column column-width="2.5cm"/>
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Grupo de riesgo'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="number-rows-spanned" select="2"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Probabilidad de no pago'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="number-rows-spanned" select="2"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Información asociada al grupo de riesgo'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="number-columns-spanned" select="3"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Puntaje minimo'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Puntaje máximo'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Porcentaje de la población'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="/visacionScoreSinacofi/respuestaScoreSinacofi/grupoRiesgo"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="format-number(/visacionScoreSinacofi/respuestaScoreSinacofi/probabilidadNoPagoGrupo div 100, $porcentaje, 'CL')"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="format-number(/visacionScoreSinacofi/respuestaScoreSinacofi/puntajeMinimoGrupo, $miles, 'CL')"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="format-number(/visacionScoreSinacofi/respuestaScoreSinacofi/puntajeMaximoGrupo, $miles, 'CL')"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="format-number(/visacionScoreSinacofi/respuestaScoreSinacofi/porcentajePoblacionGrupo div 100, $porcentaje, 'CL')"/>
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<!-- plantillas -->
	<xsl:template name="celda">
		<xsl:param name="background-color" select="'white'"/>
		<xsl:param name="font-weight" select="'normal'"/>
		<xsl:param name="font-size" select="'8pt'"/>
		<xsl:param name="number-columns-spanned" select="'1'"/>
		<xsl:param name="number-rows-spanned" select="'1'"/>
		<xsl:param name="text-align" select="'left'"/>
		<xsl:param name="texto"/>
		<xsl:variable name="espacio" select="'0.4mm'"/>
		<fo:table-cell background-color="{$background-color}" number-columns-spanned="{$number-columns-spanned}" number-rows-spanned="{$number-rows-spanned}" border-top-style="solid" border-top-width="thin" border-top-color="{$gris-oscuro}"
				border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$gris-oscuro}" border-left-style="solid" border-left-width="thin" border-left-color="{$gris-oscuro}" border-right-style="solid" border-right-width="thin"
				border-right-color="{$gris-oscuro}" height="{$columna-alto}">
			<fo:block text-align="{$text-align}" font-weight="{$font-weight}" font-size="{$font-size}" space-before="{$espacio}" space-after="{$espacio}" start-indent="{$espacio}" end-indent="{$espacio}">
				<fo:block>
					<xsl:value-of select="$texto"/>
				</fo:block>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
	<xsl:template name="linea">
		<fo:leader color="{$gris-oscuro}" leader-pattern="rule" leader-length="18cm"/>
	</xsl:template>
	<xsl:template name="titulo">
		<xsl:param name="texto" select="'Titulo'"/>
		<fo:block font-size="14pt" color="{$azul-oscuro}" font-weight="bold" text-align="left" space-after="1mm">
			<xsl:value-of select="$texto"/>
		</fo:block>
	</xsl:template>
	<xsl:template name="subtitulo">
		<xsl:param name="texto" select="'Titulo'"/>
		<fo:block font-size="10pt" color="{$azul-oscuro}" font-weight="bold" text-align="left" space-after="1mm">
			<xsl:value-of select="$texto"/>
		</fo:block>
	</xsl:template>
	<xsl:template name="subtitulo-2">
		<xsl:param name="texto" select="'Titulo'"/>
		<fo:block font-size="8pt" font-weight="bold" text-align="left" space-after="1mm">
			<xsl:value-of select="$texto"/>
		</fo:block>
	</xsl:template>

	<!-- colores -->
	<xsl:variable name="negro">#000000</xsl:variable>
	<xsl:variable name="azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="azul-oscuro">#0361A2</xsl:variable>
	<xsl:variable name="gris-oscuro">#CCCCCC</xsl:variable>
	<xsl:variable name="gris-suave">#F2F2F2</xsl:variable>
	<xsl:variable name="amarillo">#FFFF99</xsl:variable>
	<xsl:variable name="rojo-oscuro">#9E1233</xsl:variable>
	<xsl:variable name="espacio-bloque">2mm</xsl:variable>
	<xsl:variable name="espacio-tabla">1mm</xsl:variable>
	<xsl:variable name="columna-alto">5mm</xsl:variable>
	<xsl:variable name="miles">#.###</xsl:variable>
	<xsl:variable name="porcentaje">###,##%</xsl:variable>
	<!-- formateador -->
	<xsl:decimal-format name="CL" decimal-separator="," grouping-separator="." />
</xsl:stylesheet>

