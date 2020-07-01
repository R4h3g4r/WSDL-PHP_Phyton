<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:param name="RUTAIMAGEN"/>

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


<xsl:template match="/">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">





<!-- propiedades pagina -->
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
<!-- propiedades pagina -->






<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">


	<fo:static-content flow-name="xsl-region-before">
		<!-- imagen bci -->
		<fo:block space-after="2mm">
		    <fo:external-graphic src="url({$RUTAIMAGEN}/02-logo-bci.gif)"/>
			<!-- <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>-->
		
			<xsl:call-template name="header"/>
			
			<!-- Separador -->

			<fo:block space-after="2mm">
				<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
			</fo:block>

			<!-- Separador -->
		
		</fo:block>
		<!-- imagen bci -->

		
	</fo:static-content>


<fo:static-content flow-name="xsl-region-after">
	<!-- Separador -->
	<fo:block space-after="1mm">
		<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
	</fo:block>
	<!-- Separador -->
	<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
	Para Consultas o Comentarios Comuníquese al 600 6928000
	</fo:block>
	<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
	Pagina <fo:page-number/>
	</fo:block>
</fo:static-content>

<fo:flow flow-name="xsl-region-body">


	

	<!-- SEPARADOR HORIZONTAL -->
	<!-- <fo:block space-after="4mm"> -->
		<!-- <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/> -->
	<!-- </fo:block> -->
	<!-- SEPARADOR HORIZONTAL -->

		<xsl:call-template name="resumen"/>

	<!-- SEPARADOR HORIZONTAL -->
	<fo:block space-after="2mm">
		<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
	</fo:block>
	<!-- SEPARADOR HORIZONTAL -->

		<xsl:call-template name="datos_generales"/>

	<!-- Separador -->
	<fo:block padding-top="5mm">
	</fo:block>
	<!-- Separador -->


	<!-- CAMPAÑAS Y RENTABILIDAD -->
	<fo:block space-after="2mm">
	<!-- <fo:block> -->
		<fo:table table-layout="fixed" >
		<fo:table-column column-width="4.4cm" />
		<fo:table-column column-width="4.4cm" />
		<fo:table-column column-width="1.5mm" />
		<fo:table-column column-width="0.1mm" />
		<fo:table-column column-width="2mm" />
		<fo:table-column column-width="8.8cm" />

		<fo:table-body>

			<fo:table-row >
			<fo:table-cell >

				<!-- DERIVACION VALIOSA -->
				<xsl:call-template name="derivacion"/>

			</fo:table-cell>


			<fo:table-cell >

				<!-- CAMPAÑA -->
				<xsl:call-template name="campanas"/>

			</fo:table-cell>


			<fo:table-cell>
			
			</fo:table-cell>
			
			<fo:table-cell background-color="{$lineas}" border="0pt solid">
			
			</fo:table-cell>

			<fo:table-cell>
			
			</fo:table-cell>

			<fo:table-cell>

				<!-- RENTABILIDAD -->
				<xsl:call-template name="rentabilidad"/>

			</fo:table-cell >
			</fo:table-row >

		</fo:table-body>
		</fo:table>
	</fo:block>
	<!-- CAMPAÑAS Y RENTABILIDAD -->

	<!-- <xsl:call-template name="deuda_bci"/>-->
	<fo:block><xsl:call-template name="deuda_bci"/></fo:block>
	<!-- <fo:block><xsl:call-template name="deuda_bci"/></fo:block> -->

	<!-- SEPARADOR HORIZONTAL -->
	<fo:block space-after="2mm">
		<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
	</fo:block>
	<!-- SEPARADOR HORIZONTAL -->


	<!-- MARGEN GLOBAL Y DEUDAS SBIF -->
	<fo:block>
		<fo:table table-layout="fixed" >
		<fo:table-column column-width="13cm" />
		<fo:table-column column-width="6mm" />
		<fo:table-column column-width="0.1mm" />
		<fo:table-column column-width="2mm" />
		<fo:table-column column-width="8cm" />

		<fo:table-body>

			<fo:table-row >
			<fo:table-cell >

				<!-- MARGEN GLOBAL -->
				<xsl:call-template name="margen_global"/>

			</fo:table-cell>

			<fo:table-cell>
			
			</fo:table-cell>
			
			<fo:table-cell background-color="{$lineas}" border="0pt solid">
			
			</fo:table-cell>

			<fo:table-cell>
			
			</fo:table-cell>

			<fo:table-cell>

				<!-- DEUDAS SBIF -->
				<xsl:call-template name="deudas_sbif"/>

			</fo:table-cell >
			</fo:table-row >

		</fo:table-body>
		</fo:table>
	</fo:block>
	<!-- MARGEN GLOBAL Y DEUDAS SBIF -->


	<!-- SEPARADOR HORIZONTAL -->
	<fo:block space-after="2mm">
		<!-- <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/> -->
	</fo:block>
	<!-- SEPARADOR HORIZONTAL -->


	<!-- <xsl:call-template name="deuda_bci"/>-->
	<xsl:if test="count(info/garantias) > 0">
		<fo:block break-before="page"><xsl:call-template name="garantias"/></fo:block>
	</xsl:if>
	<!-- <fo:block><xsl:call-template name="deuda_bci"/></fo:block> -->

</fo:flow>

</fo:page-sequence> 
</fo:root>

</xsl:template>





























<!-- Separador -->
<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>
<!-- Separador -->



<xsl:template name="datos_generales">
<!-- TABLA DATOS GENERALES -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="3cm" background-color="{$bgcolor}" border-left="0.5pt solid {$lineas}"/>
	<fo:table-column column-width="5.8cm"/>
	<fo:table-column column-width="3cm" background-color="{$bgcolor}"/>
	<fo:table-column column-width="6.2cm"/>
	<fo:table-body>
		<!-- FILA 1 -->
		<fo:table-row height="{$alto-filas}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- BANCA -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Banca: 
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="info/tipoBanca"/>
				</fo:block>
			<!-- BANCA -->
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- TIPO CLIENTE -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Tipo Cliente
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="info/tipoCliente"/>
				</fo:block>
			<!-- TIPO CLIENTE -->
			</fo:table-cell>
		</fo:table-row>
		<!-- FILA 1 -->

		

		<!-- FILA 2 -->
		<fo:table-row height="{$alto-filas}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- SEGMENTO -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Segmento: 
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="info/segmento"/>
				</fo:block>
			<!-- SEGMENTO -->
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- PATRIMONIO -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Patrimonio (M$):
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					N/D
				</fo:block>
			<!-- PATRIMONIO -->
			</fo:table-cell>
		</fo:table-row>
		<!-- FILA 2 -->


		<!-- FILA 3 -->
		<fo:table-row height="{$alto-filas}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- RENTA -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Renta (M$): 
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="info/rentaLiquida"/>
				</fo:block>
			<!-- RENTA -->
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- FECHA DE RENTA -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Fecha de Renta:
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="info/perRenta"/>
				</fo:block>
			<!-- FECHA DE RENTA -->
			</fo:table-cell>
		</fo:table-row>
		<!-- FILA 3 -->


		<!-- FILA 4 -->
		<fo:table-row height="{$alto-filas}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- SUCURSAL -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Sucursal: 
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="info/oficina"/>&#0160;<xsl:value-of select="info/glosaOficina"/>
				</fo:block>
			<!-- SUCURSAL -->
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- EJECUTIVO -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Ejecutivo:
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="info/codEjecutivo"/>
				</fo:block>
			<!-- EJECUTIVO -->
			</fo:table-cell>
		</fo:table-row>
		<!-- FILA 4 -->




	</fo:table-body>
	</fo:table>
</fo:block>
<!-- TABLA DATOS GENERALES -->
</xsl:template>




<xsl:template name="header">
<!-- HEADER -->
<fo:block font-size="5pt" space-after="1mm">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="13cm"/>
	<fo:table-column column-width="5cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>

			<!-- NOMBRE -->
			
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
					<xsl:value-of select="info/nombres"/> &#0160; <xsl:value-of select="info/apellidoPaterno"/> &#0160; <xsl:value-of select="info/apellidoMaterno"/>
				</fo:block>
			<!-- NOMBRE -->
		
		</fo:table-cell>
		<fo:table-cell>
	
			<!-- RUT -->
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					<fo:inline color="{$txt}">RUT: </fo:inline>
					<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/rut"/> - <xsl:value-of select="info/dv"/></fo:inline>
				</fo:block>
			<!-- RUT -->

		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>

<!-- HEADER -->
</xsl:template>



<xsl:template name="resumen">
<!-- TITULO -->
<fo:block space-before="1.2cm">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="9cm"/>
	<fo:table-column column-width="6cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}" padding-top="2mm">
					Resumen Cliente
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>

		<!-- SEMAFOROS -->
		<fo:table-cell>
			<xsl:call-template name="semaforos"/>
		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- TITULO -->
</xsl:template>



<xsl:template name="derivacion">
	<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Derivación Valiosa'"/>
 	</xsl:call-template>

		<!-- TABLA -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="4cm"/>
			<fo:table-body>

				<xsl:choose>
				<xsl:when test="count(info/procesos) > 0">
					<xsl:for-each select="info/procesos">
					<!-- ITERACION -->
						<fo:table-row font-size="{$size-fuente-margen}">
							<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- ITEM CAMPANA -->
								<fo:block text-align="left" color="{$txt}">
									<xsl:value-of select="descripcion"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					<!-- FIN ITERACION -->
					</xsl:for-each>
				</xsl:when>
				<xsl:otherwise>
					<!-- ITERACION -->
						<fo:table-row font-size="{$size-fuente-margen}">
							<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
							<!-- ITEM CAMPANA -->
								<fo:block text-align="left" color="{$txt}">
									Sin derivación valiosa
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					<!-- FIN ITERACION -->

				</xsl:otherwise>
				</xsl:choose>

			</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- TABLA -->

</xsl:template>



<xsl:template name="campanas">
	<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Campañas'"/>
 	</xsl:call-template>

		<!-- TABLA CAMPANAS-->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="4cm"/>
			<fo:table-body>

				<xsl:choose>
				<xsl:when test="count(info/campanas) > 0">
					<!-- ITERACION -->
					<xsl:for-each select="info/campanas">
					<fo:table-row font-size="{$size-fuente-margen}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- ITEM CAMPANA -->
							<fo:block text-align="left" color="{$txt}">
								<xsl:value-of select="nombreOferta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!-- FIN ITERACION -->
					</xsl:for-each>
				</xsl:when>
				<xsl:otherwise>
					<fo:table-row font-size="{$size-fuente-margen}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- ITEM CAMPANA -->
							<fo:block text-align="left" color="{$txt}">
								Sin Campañas
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:otherwise>
				</xsl:choose>

			</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- TABLA -->

</xsl:template>


<xsl:template name="rentabilidad">
	<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Rentabilidad'"/>
 	</xsl:call-template>

<!-- TABLA -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="4.4cm" background-color="{$bgcolor}"/>
	<fo:table-column column-width="4.4cm"/>
	<fo:table-body>
		<!-- FILA 1 -->
		<fo:table-row height="{$alto-filas}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- BANCA -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Rentabilidad Esperada:
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					M$ <xsl:value-of select="info/rentabilidadEsperada"/>
				</fo:block>
			<!-- BANCA -->
			</fo:table-cell>
		</fo:table-row>
		<!-- FILA 1 -->
	
		<!-- FILA 2 -->
		<fo:table-row height="{$alto-filas}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- TIPO CLIENTE -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Rentabilidad Actual:
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					M$ <xsl:value-of select="info/rentabilidadActual"/>
				</fo:block>
			<!-- TIPO CLIENTE -->
			</fo:table-cell>
		</fo:table-row>
		<!-- FILA 2 -->


	</fo:table-body>
	</fo:table>
</fo:block>
<!-- TABLA DATOS -->

</xsl:template>




<!-- TABLA -->
<!-- <fo:block break-after="page"> -->

<xsl:template name="deuda_bci">
	<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Deuda BCI al: '"/>
		<xsl:with-param name="fecha" select="info/fecAct"/>
	</xsl:call-template>

	<fo:table table-layout="fixed">
	<fo:table-column column-width="3.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-body>

		<!-- CABECERA -->
		<fo:table-row font-size="{$size-fuente-margen}" background-color="{$bgcolor}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- PRODUCTO -->
				<fo:block font-weight="bold" color="{$txt}">
					Producto 
				</fo:block>
			</fo:table-cell>
			
			<!-- VIGENTE -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" color="{$txt}">
					Vigente
				</fo:block>
			</fo:table-cell>

			<!-- INTERES -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" color="{$txt}">
					Interés
				</fo:block>
			</fo:table-cell>

			<!-- MOROSO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" color="{$txt}">
					Moroso
				</fo:block>
			</fo:table-cell>

			<!-- VENCIDO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" color="{$txt}">
					Vencido
				</fo:block>
			</fo:table-cell>

			<!-- CASTIGADO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" color="{$txt}">
					Castigado
				</fo:block>	
			</fo:table-cell>

			<!-- TOTAL -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" color="{$txt}">
					Total
				</fo:block>
			</fo:table-cell>

		</fo:table-row>
		<!-- CABECERA -->


		<!-- ITERACION -->
		<xsl:for-each select="info/deudas">
		<fo:table-row height="{$alto-filas}" border-top="0.5pt solid {$lineas}" font-size="{$size-fuente-margen}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- PRODUCTO -->
				<fo:block text-align="left" color="{$txt}">
					<xsl:value-of select="producto"/>
				</fo:block>
			</fo:table-cell>
			
			<!-- VIGENTE -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="vigente"/>
				</fo:block>
			</fo:table-cell>

			<!-- INTERES -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="interes"/>
				</fo:block>
			</fo:table-cell>

			<!-- MOROSO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="moroso"/>
				</fo:block>
			</fo:table-cell>

			<!-- VENCIDO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="vencido"/>
				</fo:block>
			</fo:table-cell>

			<!-- CASTIGADO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="castigado"/>
				</fo:block>
			</fo:table-cell>

			<!-- TOTAL -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="total"/>
				</fo:block>
			</fo:table-cell>

		</fo:table-row>
		</xsl:for-each>
		<!-- FIN ITERACION -->

	</fo:table-body>
	</fo:table>
<!-- TABLA DATOS -->

</xsl:template>


<xsl:template name="margen_global">
	<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Margen Global'"/>
 	</xsl:call-template>

<!-- TABLA -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="3.2cm" background-color="{$bgcolor}"/>
	<fo:table-column column-width="3.2cm"/>
	<fo:table-column column-width="3.2cm" background-color="{$bgcolor}"/>
	<fo:table-column column-width="3.4cm"/>
	<fo:table-body>
		<!-- FILA 1 -->
		<fo:table-row height="{$alto-filas}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- BANCA -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Estado:
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="info/estado"/>
				</fo:block>
			<!-- BANCA -->
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- TIPO CLIENTE -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Vencimiento:
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="info/fechaVencimiento"/>
				</fo:block>
			<!-- TIPO CLIENTE -->
			</fo:table-cell>
		</fo:table-row>
		<!-- FILA 2 -->


	</fo:table-body>
	</fo:table>
</fo:block>
<!-- TABLA DATOS -->


<!-- TABLA -->
<fo:block padding-top="5mm">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="2.4cm"/>
	<fo:table-column column-width="1.3cm"/>
	<fo:table-column column-width="1.3cm"/>
	<fo:table-column column-width="1.3cm"/>
	<fo:table-column column-width="1.3cm"/>
	<fo:table-column column-width="1.3cm"/>
	<fo:table-column column-width="1.3cm"/>
	<fo:table-column column-width="1.5cm"/>
	<fo:table-column column-width="1.3cm"/>
	<fo:table-body>
		<!-- CABECERA -->
		<fo:table-row background-color="{$bgcolor}" height="{$alto-filas}">
			<!-- DETALLE -->
			<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					Detalle 
				</fo:block>
			</fo:table-cell>
			
			<!-- APROBADO -->
			<fo:table-cell number-columns-spanned="2" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					Aprobado
				</fo:block>
			</fo:table-cell>

			<!-- CONTRATADO -->
			<fo:table-cell number-columns-spanned="2" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					Contratado
				</fo:block>
			</fo:table-cell>

			<!-- DISPONIBLE -->
			<fo:table-cell number-columns-spanned="2" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					Disponible
				</fo:block>
			</fo:table-cell>

			<!-- VENCIMIENTO -->
			<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					Vcto.
				</fo:block>
			</fo:table-cell>

			<!-- GARANTIA -->
			<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					Garantía
				</fo:block>
			</fo:table-cell>

		</fo:table-row>
		<!-- CABECERA -->


		<!-- INDICADORES -->
		<fo:table-row background-color="{$bgcolor}" height="{$alto-filas}">
			<!-- VACIO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}"></fo:block>
			</fo:table-cell>
			
			<!-- UF -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					UF
				</fo:block>
			</fo:table-cell>

			<!-- M$ -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					M$
				</fo:block>
			</fo:table-cell>

			<!-- UF -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					UF
				</fo:block>
			</fo:table-cell>

			<!-- M$ -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					M$
				</fo:block>
			</fo:table-cell>

			<!-- UF -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					UF
				</fo:block>
			</fo:table-cell>

			<!-- M$ -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					M$
				</fo:block>
			</fo:table-cell>

			<!-- VACIO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}"></fo:block>
			</fo:table-cell>

			<!-- VACIO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}"></fo:block>
			</fo:table-cell>

		</fo:table-row>
		<!-- INDICADORES -->


		<!-- ITERACION -->
		<xsl:for-each select="info/margenes">
		<fo:table-row height="{$alto-filas}" border="0.5pt solid {$lineas}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm">
			<!-- DETALLE -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					<xsl:value-of select="detalle"/>
				</fo:block>
			</fo:table-cell>
			
			<!-- APROBADO UF -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="cupoMaximoUF"/>
				</fo:block>
			</fo:table-cell>

			<!-- APROBADO M$ -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="cupoMaximoPesos"/>
				</fo:block>
			</fo:table-cell>

			<!-- CONTRATADO UF -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="cupoActivContrUF"/>
				</fo:block>
			</fo:table-cell>

			<!-- CONTRATADO M -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="cupoActivContrPesos"/>
				</fo:block>
			</fo:table-cell>

			<!-- DISPONIBLE UF -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="montoDisponibleUF"/>
				</fo:block>
			</fo:table-cell>

			<!-- DISPONIBLE M -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="montoDisponiblePesos"/>
				</fo:block>
			</fo:table-cell>

			<!-- VENCIMIENTO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="fechaVencimiento"/>
				</fo:block>
			</fo:table-cell>

			<!-- GARANTIA -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					N/D
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		</xsl:for-each>
		<!-- FIN ITERACION -->

	
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- TABLA -->
<!-- MARGEN GLOBAL -->

</xsl:template>

<xsl:template name="deudas_sbif">
	<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Deudas CMFChile al: '"/>
		<xsl:with-param name="fecha" select="info/fecAct"/>
	</xsl:call-template>


	<!-- TABLA -->
	<fo:block>
		<fo:table table-layout="fixed">
		<fo:table-column column-width="3cm" background-color="{$bgcolor}"/>
		<fo:table-column column-width="2cm"/>
		<fo:table-body>
			<!-- FILA 1 -->
			<fo:table-row height="{$alto-filas}">
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<!-- BANCA -->
					<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
						Directa Vigente: 
					</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
						<xsl:value-of select="info/directaVigente"/>
					</fo:block>
				<!-- BANCA -->
				</fo:table-cell>

			</fo:table-row>
			<!-- FILA 1 -->


			<!-- FILA 2 -->
			<fo:table-row height="{$alto-filas}">
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<!-- SEGMENTO -->
					<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
						Directa Morosa: 
					</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
						<xsl:value-of select="info/directaMorosa"/>
					</fo:block>
				<!-- SEGMENTO -->
				</fo:table-cell>

			</fo:table-row>
			<!-- FILA 2 -->


			<!-- FILA 3 -->
			<fo:table-row height="{$alto-filas}">
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<!-- RENTA -->
					<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
						Directa Vencida: 
					</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
						<xsl:value-of select="info/directaVencida"/>
					</fo:block>
				<!-- RENTA -->
				</fo:table-cell>

			</fo:table-row>
			<!-- FILA 3 -->


			<!-- FILA 4 -->
			<fo:table-row height="{$alto-filas}">
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<!-- SUCURSAL -->
					<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
						Directa Castigada: 
					</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
						<xsl:value-of select="info/directaCastigada"/>
					</fo:block>
				<!-- SUCURSAL -->
				</fo:table-cell>

			</fo:table-row>
			<!-- FILA 4 -->


			<!-- FILA 5 -->
			<fo:table-row height="{$alto-filas}">
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<!-- DIRECCION PARTICULAR -->
					<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
						Indirecta Vigente: 
					</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
						<xsl:value-of select="info/indirectaVigente"/>
					</fo:block>
				<!-- DIRECCION PARTICULAR -->
				</fo:table-cell>

			</fo:table-row>
			<!-- FILA 5 -->


			<!-- FILA 6 -->
			<fo:table-row height="{$alto-filas}">
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<!-- FONO PARTICULAR -->
					<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
						Indirecta Morosa: 
					</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
						N/D
					</fo:block>
				<!-- FONO PARTICULAR -->
				</fo:table-cell>

			</fo:table-row>
			<!-- FILA 6 -->



			<!-- FILA 7 -->
			<fo:table-row height="{$alto-filas}">
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<!-- FONO COMERCIAL -->
					<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
						Indirecta Vencida: 
					</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
						<xsl:value-of select="info/indirectaVencida"/>
					</fo:block>
				<!-- FONO COMERCIAL -->
				</fo:table-cell>

			</fo:table-row>
			<!-- FILA 7 -->


			<!-- FILA 8 -->
			<fo:table-row height="{$alto-filas}">
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<!-- CELULAR -->
					<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
						Indirecta Castigada: 
					</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
						<xsl:value-of select="info/indirectaCastigada"/>
					</fo:block>
				<!-- CELULAR -->
				</fo:table-cell>

			</fo:table-row>
			<!-- FILA 8 -->


			<!-- FILA 9 -->
			<fo:table-row height="{$alto-filas}">
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<!-- CELULAR -->
					<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
						Protestos Boletín: 
					</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
						<xsl:value-of select="info/protestosBoletin"/>
					</fo:block>
				<!-- CELULAR -->
				</fo:table-cell>

			</fo:table-row>
			<!-- FILA 9 -->

			<!-- FILA 10 -->
			<fo:table-row height="{$alto-filas}">
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<!-- CELULAR -->
					<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
						Morosos Comercio: 
					</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
						<xsl:value-of select="info/morososComercio"/>
					</fo:block>
				<!-- CELULAR -->
				</fo:table-cell>

			</fo:table-row>
			<!-- FILA 10 -->

			<!-- FILA 11 -->
			<fo:table-row height="{$alto-filas}">
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<!-- CELULAR -->
					<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
						Protestos Bci Vigentes: 
					</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
						<xsl:value-of select="info/protestosBCIVigentes"/>
					</fo:block>
				<!-- CELULAR -->
				</fo:table-cell>

			</fo:table-row>
			<!-- FILA 11 -->

			<!-- FILA 12 -->
			<fo:table-row height="{$alto-filas}">
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<!-- CELULAR -->
					<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
						Aclaraciones Bci:
					</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
						<xsl:value-of select="info/aclaraciones"/>
					</fo:block>
				<!-- CELULAR -->
				</fo:table-cell>

			</fo:table-row>
			<!-- FILA 12 -->

			
		</fo:table-body>
		</fo:table>
	</fo:block>
	<!-- TABLA -->
</xsl:template>


<xsl:template name="semaforos">

	<fo:table table-layout="fixed">
	<fo:table-column column-width="3cm" background-color="{$bgcolor}"/>
	<fo:table-column column-width="6cm"/>
	<fo:table-body>
		<!-- FILA 1 -->
		<fo:table-row height="{$alto-filas}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- BANCA -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Fuga:
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					N/D
				</fo:block>
			<!-- BANCA -->
			</fo:table-cell>
		</fo:table-row>
		<!-- FILA 1 -->
	
		<!-- FILA 2 -->
		<fo:table-row height="{$alto-filas}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- SEMAFORO RIESGO -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Riesgo:
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:choose>
					<xsl:when test="info/indicadorRiesgo = 'R'">
						ROJO
					</xsl:when>
					<xsl:when test="info/indicadorRiesgo = 'A'">
						AMARILLO
					</xsl:when>
					<xsl:when test="info/indicadorRiesgo = 'V'">
						VERDE
					</xsl:when>
					<xsl:otherwise>
						No Disponible
					</xsl:otherwise>
					</xsl:choose>
					<!-- <xsl:value-of select="info/riesgo"/>-->
				</fo:block>
			<!-- TIPO CLIENTE -->
			</fo:table-cell>
		</fo:table-row>
		<!-- FILA 2 -->
		
		<!-- FILA 1 -->
		<fo:table-row height="{$alto-filas}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- BANCA -->
				<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
					Lealtad del Cliente:
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="info/mensajeCuadranteCliente"/>
				</fo:block>
			<!-- BANCA -->
			</fo:table-cell>
		</fo:table-row>
		<!-- FILA 1 -->

	</fo:table-body>
	</fo:table>
</xsl:template>



<xsl:template name="garantias">
<fo:block space-before="1cm">
	<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Garantías'"/>
 	</xsl:call-template>

	<fo:table table-layout="fixed">
	<fo:table-column column-width="3.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-body>

		<!-- CABECERA -->
		<fo:table-row font-size="{$size-fuente-margen}" background-color="{$bgcolor}" height="{$alto-filas}" text-align="left" padding-top="2mm" padding-bottom="2mm">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- TIPO GARANTIA -->
				<fo:block font-weight="bold" color="{$txt}">
					Tipo de Grantía 
				</fo:block>
			</fo:table-cell>
			
			<!-- NOMBRE/GLOSA -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" color="{$txt}">
					Nombre/Glosa
				</fo:block>
			</fo:table-cell>

			<!-- RUT/VCTO. -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" color="{$txt}">
					RUT/Vcto.
				</fo:block>
			</fo:table-cell>

			<!-- E/G -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" color="{$txt}">
					E/G
				</fo:block>
			</fo:table-cell>

			<!-- FECHA TASACION -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" color="{$txt}">
					Fecha Tasación
				</fo:block>
			</fo:table-cell>

			<!-- VALOR COMERCIAL -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" color="{$txt}">
					Valor Comercial
				</fo:block>
			</fo:table-cell>

			<!-- VALOR LIQUIDACION -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" color="{$txt}">
					Valor Liquidación
				</fo:block>	
			</fo:table-cell>

		</fo:table-row>
		<!-- CABECERA -->


		<!-- ITERACION -->
		<xsl:for-each select="info/garantias">
		<fo:table-row height="{$alto-filas}" border-top="0.5pt solid {$lineas}" font-size="{$size-fuente-margen}">
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- PRODUCTO -->
				<fo:block text-align="left" color="{$txt}">
					<xsl:value-of select="tipoGarantia"/>
				</fo:block>
			</fo:table-cell>
			
			<!-- VIGENTE -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="nombreGlosa"/>
				</fo:block>
			</fo:table-cell>

			<!-- INTERES -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="rutVcto"/>
				</fo:block>
			</fo:table-cell>

			<!-- MOROSO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="limite"/>
				</fo:block>
			</fo:table-cell>

			<!-- VENCIDO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="fechaTasacion"/>
				</fo:block>
			</fo:table-cell>

			<!-- CASTIGADO -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="valorComercial"/>
				</fo:block>
			</fo:table-cell>

			<!-- TOTAL -->
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
				<fo:block font-weight="bold" text-align="left" color="{$txt}">
					<xsl:value-of select="valorLiquidacion"/>
				</fo:block>
			</fo:table-cell>

		</fo:table-row>
		</xsl:for-each>
		<!-- FIN ITERACION -->

		<!-- TOTALES -->
		<fo:table-row font-size="{$size-fuente-margen}" background-color="{$bgcolor}" height="{$alto-filas}" padding-top="2mm" padding-bottom="2mm">
			<fo:table-cell number-columns-spanned="5" border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- TIPO GARANTIA -->
				<fo:block font-weight="bold" color="{$txt}" text-align="right">
					Total Garantías Reales :
				</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- TIPO GARANTIA -->
				<fo:block font-weight="bold" color="{$txt}">
					<!-- <xsl:value-of select="totalGarRealCom"/> -->
					<!-- #,##0 -->
					<!-- <xsl:value-of select="format-number(26825.8, '#.###,00', 'euro')"/>-->
					<!-- <xsl:value-of select="sum(info/garantias/valorComercial)"/> -->
					<xsl:value-of select="format-number(sum(info/garantias/valorComercial), '#.##0', 'peso')"/>
				</fo:block>
			</fo:table-cell>

			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
			<!-- TIPO GARANTIA -->
				<fo:block font-weight="bold" color="{$txt}">
					<!-- <xsl:value-of select="totalGarRealLiq"/> -->
					<!-- xsl:value-of select="sum(info/garantias/valorLiquidacion)"/> -->
					<xsl:value-of select="format-number(sum(info/garantias/valorLiquidacion), '#.##0', 'peso')"/>
				</fo:block>
			</fo:table-cell>

		</fo:table-row>
		<!-- TOTALES -->

	</fo:table-body>
	</fo:table>
</fo:block>
<!-- TABLA DATOS -->
</xsl:template>


<!-- VIÑETAS -->
<xsl:template name="subTitulo">
<xsl:param name="titulo"/>
<xsl:param name="fecha"/>

	<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" space-after="1mm">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="0.3cm" />
	<fo:table-column column-width="8cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell padding-before="1mm">
	<fo:external-graphic height="1.2mm" width="1.2mm"  src="url({$RUTAIMAGEN}/01-bullet2-rj.gif)"/>
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
	<fo:table-column column-width="0.5cm" />
	<fo:table-column column-width="8cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell padding-left="2mm" padding-before="1mm" >
	<fo:external-graphic height="1mm" width="1mm" src="url({$RUTAIMAGEN}/01-bullet1-rj.gif)"/>
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