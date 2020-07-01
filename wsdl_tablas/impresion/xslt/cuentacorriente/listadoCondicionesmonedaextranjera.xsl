<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!-- Parametros -->
	<xsl:param name="detalle"/>
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
<xsl:variable name="txt-celeste">#D9E4EF</xsl:variable>
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
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
				<fo:table-row>
				<fo:table-cell>
				<fo:external-graphic>
					<xsl:attribute name="src">
						<xsl:value-of select="condiciones/rutaImagen"/>02-logo-bci.gif
					</xsl:attribute>
				</fo:external-graphic>
			</fo:table-cell>
			<fo:table-cell padding-before="1cm">
				<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					<xsl:value-of select="condiciones/fechaImpresion"/>
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
					<xsl:value-of select="condiciones/nombre"/>
				</fo:block>
			<!-- nombre cliente -->
		
		</fo:table-cell>
		<fo:table-cell>
	
			<!-- rut cliente -->
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					<fo:inline color="{$txt}">RUT: </fo:inline>
					<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="condiciones/rut"/></fo:inline>
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


<!-- Cartola -->
<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
			<fo:table-column column-width="13cm"/>
			<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Cta. Cte. / Consulta Condiciones 
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell >
							<!-- nro tarjeta -->
							<fo:block font-size="9pt" text-align="right" color="{$txt}">
							<fo:inline font-weight="normal" space-before="30pt">Cuenta N°: </fo:inline>
							<fo:inline font-weight="bold" color="{$txt-azul-oscuro}"><xsl:value-of select="condiciones/nroCtaCte"/></fo:inline>
							</fo:block>
							<!-- nro tarjeta -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
<!-- Cartola -->

<!-- Separador -->
<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
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
				<xsl:value-of select="condiciones/rutaImagen"/>01-bullet1-rj.gif
			</xsl:attribute>
			</fo:external-graphic>
			&#0160;
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="condiciones/ejecutivo"/></fo:inline>
			</fo:block>
				
		</fo:table-cell>
		<fo:table-cell>
	
			<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Plataforma/Sucursal: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="condiciones/oficinaEjecutivo"/></fo:inline>
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

		<xsl:call-template name="indice">
			<xsl:with-param name="titulo" select="'Consulta Datos Básicos '"/>
		</xsl:call-template>

<!-- Separador -->

<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>

<!-- Separador -->
<!-- tabla 1 -->
<fo:block font-size="7pt" space-after="1mm" text-align="right">
<fo:table table-layout="fixed">
<fo:table-column column-width="18cm" />
	<fo:table-body>
	
	<fo:table-row text-align="right">
<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolor}" padding-before="1mm" padding-affter="1mm">
	<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="black">
			<xsl:choose>
				<xsl:when test="condiciones/tipoComision = 'F'"> 
					<fo:external-graphic>
						<xsl:attribute name="src">
							<xsl:value-of select="/condiciones/rutaImagen"/>checksi.gif
						</xsl:attribute>
					</fo:external-graphic>
				</xsl:when>
				<xsl:otherwise>
					<fo:external-graphic>
						<xsl:attribute name="src">
							<xsl:value-of select="/condiciones/rutaImagen"/>checkno.gif
						</xsl:attribute>
					</fo:external-graphic>
				</xsl:otherwise>
			</xsl:choose>
			&#0160;&#0160;&#0160;&#0160;Comisión Fija&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
			<xsl:choose>
				<xsl:when test="condiciones/tipoComision = 'V'"> 
					<fo:external-graphic>
						<xsl:attribute name="src">
							<xsl:value-of select="/condiciones/rutaImagen"/>checksi.gif
						</xsl:attribute>
	
					</fo:external-graphic>
				</xsl:when>
				<xsl:otherwise>
					<fo:external-graphic>
						<xsl:attribute name="src">
							<xsl:value-of select="/condiciones/rutaImagen"/>checkno.gif
						</xsl:attribute>
					</fo:external-graphic>
				</xsl:otherwise>
			</xsl:choose>	
			&#0160;&#0160;&#0160;&#0160;Comisión Variable&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
			<xsl:choose>
				<xsl:when test="condiciones/tipoComision = 'E'"> 
					<fo:external-graphic>
						<xsl:attribute name="src">
							<xsl:value-of select="/condiciones/rutaImagen"/>checksi.gif
						</xsl:attribute>
	
					</fo:external-graphic>
				</xsl:when>
				<xsl:otherwise>
					<fo:external-graphic>
						<xsl:attribute name="src">
							<xsl:value-of select="/condiciones/rutaImagen"/>checkno.gif
						</xsl:attribute>
					</fo:external-graphic>
				</xsl:otherwise>
			</xsl:choose>		
		&#0160;&#0160;&#0160;&#0160;Comisión Exenta
	</fo:block>
		</fo:table-cell>
		</fo:table-row>
	
	</fo:table-body>
</fo:table>
</fo:block>
<!-- tabla 1 -->
<!-- Separador -->

<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>

<!-- Separador -->


	<!-- Separador -->
		<fo:block>
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="9cm" />
				<fo:table-column column-width="10cm" />
				<fo:table-body>
				
					<fo:table-row >	
						<fo:table-cell>
						<!-- tabla impar -->
						<fo:block font-size="7pt" space-after="1mm" text-align="right">
								<fo:table table-layout="fixed">
								<fo:table-column column-width="9cm" />
								<fo:table-column column-width="9cm" />
	 
									<fo:table-body>
									<xsl:for-each select="condiciones/condicionesListado/condiciones-listado">
									<fo:table-row text-align="right">	
									<xsl:if test="position() mod 2 = 1">
									<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-affter="1mm">
									<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="black">
											<xsl:choose>
												<xsl:when test="estado = 'V'"> 
													<fo:external-graphic>
														<xsl:attribute name="src">
															<xsl:value-of select="/condiciones/rutaImagen"/>checksi.gif
														</xsl:attribute>
	
													</fo:external-graphic>
												</xsl:when>
												<xsl:otherwise>
													<fo:external-graphic>
														<xsl:attribute name="src">
															<xsl:value-of select="/condiciones/rutaImagen"/>checkno.gif
														</xsl:attribute>
													</fo:external-graphic>
												</xsl:otherwise>
											</xsl:choose>	
										&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="glosa"/>
									</fo:block>
								</fo:table-cell>
								</xsl:if>
								</fo:table-row>
							</xsl:for-each>
							</fo:table-body>
						</fo:table>
						</fo:block>
						<!-- tabla impar -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- tabla par -->
							<fo:block font-size="7pt" space-after="1mm" text-align="right">
							<fo:table table-layout="fixed">
							<fo:table-column column-width="9cm" />
							<fo:table-column column-width="9cm" />
	 
								<fo:table-body>
								<xsl:for-each select="condiciones/condicionesListado/condiciones-listado">
								<xsl:variable name="secuencial" select="secuencial"/>
								<fo:table-row text-align="right">	
								<xsl:if test="position() mod 2 = 0">
								<fo:table-cell border="0.5pt solid {$lineas}" padding-before="1mm" padding-affter="1mm">
								<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="black">
										<xsl:choose>
											<xsl:when test="estado = 'V'"> 
												<fo:external-graphic>
													<xsl:attribute name="src">
														<xsl:value-of select="/condiciones/rutaImagen"/>checksi.gif
													</xsl:attribute>
	
												</fo:external-graphic>
											</xsl:when>
											<xsl:otherwise>
												<fo:external-graphic>
													<xsl:attribute name="src">
														<xsl:value-of select="/condiciones/rutaImagen"/>checkno.gif
													</xsl:attribute>
												</fo:external-graphic>
											</xsl:otherwise>
										</xsl:choose>	
									&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="glosa"/>
								</fo:block>
									</fo:table-cell>
									</xsl:if>
									</fo:table-row>
								</xsl:for-each>
								</fo:table-body>
							</fo:table>
							</fo:block>
							<!-- tabla par-->
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->








<!-- Separador -->
<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>

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
	<fo:external-graphic>
			<xsl:attribute name="src">
				<xsl:value-of select="condiciones/rutaImagen"/>01-bullet2-rj.gif
			</xsl:attribute>
	 </fo:external-graphic>
	</fo:table-cell>
	<fo:table-cell>
	<fo:block>
		<xsl:value-of select="$titulo"/>
		&#0160;(<xsl:value-of select="condiciones/nroCtaCte"/>)
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
					<xsl:value-of select="condiciones/rutaImagen"/>01-bullet2-rj.gif
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







