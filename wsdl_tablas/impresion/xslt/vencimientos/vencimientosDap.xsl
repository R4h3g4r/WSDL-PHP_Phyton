<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-titulo">8pt</xsl:variable>
	<xsl:variable name="txt-cuerpo">6pt</xsl:variable>
	<xsl:variable name="txt-sub-titulo">9pt</xsl:variable>
	<xsl:variable name="fondo-azul-claro">#E7EAF0</xsl:variable>
	<xsl:variable name="fondo-amarillo">#FFFFCC</xsl:variable>
	<xsl:decimal-format decimal-separator="," grouping-separator="."/>

	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="vencimientosDAP" page-height="28cm" page-width="23cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="1cm" margin-bottom="1.5cm" background-color="#ffffff"/>
					<fo:region-before extent="1cm"/>
					<fo:region-after extent="1cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->

			<fo:page-sequence master-reference="vencimientosDAP" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
				</fo:static-content>

				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:choose>
							<xsl:when test="count(vencimientoDap/vencimientoDap-detalle-operacion/detalle) > 0">
								<fo:block padding-before="1cm"/>
								<xsl:call-template name="encabezado"/>
								<fo:block padding-before="0.1cm"/>
								<xsl:call-template name="Sub-titulo"/>
								<fo:block padding-before="0.2cm"/>
								<xsl:call-template name="detalle"/>
								<fo:block padding-before="0.5cm"/>
								<xsl:call-template name="totales"/>
								<fo:block padding-before="0.5cm"/>
								<xsl:call-template name="mensaje"/>
								<fo:block padding-before="1cm"/>
								<xsl:call-template name="imagen"/>

							</xsl:when>
							<xsl:otherwise>
								<fo:block padding-top="2cm" text-align="center">No existen Datos a imprimir.</fo:block>
							</xsl:otherwise>
						</xsl:choose>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<!-- TABLA DE ENCAVESADO -->
	<xsl:template name="encabezado">
		<fo:block space-after="1cm">
		<fo:table table-layout="fixed">
			<fo:table-column column-width="19cm"/>
			<fo:table-body>
				<fo:table-row>					
					<fo:table-cell>
						<fo:block text-align="center">
							<fo:inline font-size="12pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">Ahorre e Invierta</fo:inline>
						</fo:block>
						<fo:block text-align="center">
							<fo:inline font-size="14pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Consulta Vencimientos</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Fecha Actual : <xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/fecha-actual"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

			</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>
	<!-- TERMINO TABLA DE ENCAVESADO -->

	<!-- TABLA DE SUBTITULO -->
	<xsl:template name="Sub-titulo">
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="9.1cm"/>	<!-- Subtitulo -->
				<fo:table-column column-width="3.5cm"/>	<!-- Subtitulo -->
				<fo:table-column column-width="3.2cm"/>	<!-- Fecha desde -->
				<fo:table-column column-width="3.2cm"/>	<!-- Fecha hasta -->

				<fo:table-body>
					<fo:table-row background-color="{$fondo-azul-claro}">
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="left" font-weight="bold">
								Detalle Depósitos a Plazo
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="left" font-weight="bold">
								Periodo Consultado :
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="left" font-weight="bold">
								<fo:inline font-size="{$txt-sub-titulo}" font-weight="bold" space-after="5mm" text-align="left">DESDE :<xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/fecha-inicio-consulta"/></fo:inline>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="left" font-weight="bold">
								<fo:inline font-size="{$txt-sub-titulo}" font-weight="bold" space-after="5mm" text-align="left">HASTA :<xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/fecha-termino-consulta"/></fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

				</fo:table-body>
			</fo:table>

						
		</fo:block>

	</xsl:template>
	<!-- TERMINO TABLA DE SUBTITULO -->

	<!-- TABLA DE DETALLE -->
	<xsl:template name="detalle">
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>	<!-- Fecha de Vencimiento -->
				<fo:table-column column-width="1.5cm"/>	<!-- Moneda Operacion -->
				<fo:table-column column-width="2.1cm"/>	<!-- Nº Operacion -->
				<fo:table-column column-width="2cm"/>	<!-- Nemotecnico -->
				<fo:table-column column-width="1.5cm"/>	<!-- Fecha Operacion -->
				<fo:table-column column-width="1.5cm"/>	<!-- Tasa Pactada -->
				<fo:table-column column-width="1cm"/>	<!-- Plazo -->
				<fo:table-column column-width="2cm"/>	<!-- Custodia Electronica -->
				<fo:table-column column-width="1.2cm"/> <!-- Garantia -->
				<fo:table-column column-width="2.2cm"/> <!-- Monto al Vcto Moneda Origen -->
				<fo:table-column column-width="2cm"/> <!-- Monto Vcto en $ -->

				<fo:table-body>
					<fo:table-row background-color="{$fondo-azul-claro}">
						<fo:table-cell border-left-style="solid" border-top-style="solid" border-bottom-style="solid" border="0.4pt none #000000">
							<fo:block font-size="{$txt-titulo}" text-align="center" font-weight="bold">
								Fecha de Vencimiento
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-top-style="solid" border-bottom-style="solid" border="0.4pt none #000000">
							<fo:block font-size="{$txt-titulo}" text-align="center" font-weight="bold">
								Moneda Operacion
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-top-style="solid" border-bottom-style="solid" border="0.4pt none #000000">
							<fo:block font-size="{$txt-titulo}" text-align="center" font-weight="bold">
								Nº Operacion
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-top-style="solid" border-bottom-style="solid" border="0.4pt none #000000">
							<fo:block font-size="{$txt-titulo}" text-align="center" font-weight="bold">
								Nemotecnico
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-top-style="solid" border-bottom-style="solid" border="0.4pt none #000000">
							<fo:block font-size="{$txt-titulo}" text-align="center" font-weight="bold">
								Fecha Operacion
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-top-style="solid" border-bottom-style="solid" border="0.4pt none #000000">
							<fo:block font-size="{$txt-titulo}" text-align="center" font-weight="bold">
								Tasa Pactada
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-top-style="solid" border-bottom-style="solid" border="0.4pt none #000000">
							<fo:block font-size="{$txt-titulo}" text-align="center" font-weight="bold">
								Plazo
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-top-style="solid" border-bottom-style="solid" border="0.4pt none #000000">
							<fo:block font-size="{$txt-titulo}" text-align="center" font-weight="bold">
								 Custodia Electronica
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-top-style="solid" border-bottom-style="solid" border="0.4pt none #000000">
							<fo:block font-size="{$txt-titulo}" text-align="center" font-weight="bold">
								Garantia
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-top-style="solid" border-bottom-style="solid" border="0.4pt none #000000">
							<fo:block font-size="{$txt-titulo}" text-align="center" font-weight="bold">
								Monto al Vcto Moneda Origen
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-top-style="solid" border-bottom-style="solid" border-right-style="solid" border="0.4pt none #000000">
							<fo:block font-size="{$txt-titulo}" text-align="center" font-weight="bold">
								Monto Vcto en $
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="vencimientoDap/vencimientoDap-detalle-operacion/detalle">
						<fo:table-row background-color="#FFFFFF">

								<fo:table-cell border="0.4pt solid #000000">
									<fo:block font-size="{$txt-cuerpo}" text-align="center" font-weight="normal">
										<xsl:value-of select="fecha-vencimiento"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.4pt solid #000000">
									<fo:block font-size="{$txt-cuerpo}" text-align="center" font-weight="normal">
										<xsl:value-of select="moneda-opracion"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.4pt solid #000000">
									<fo:block font-size="{$txt-cuerpo}" text-align="left" font-weight="normal">
										<xsl:value-of select="numero-operacion"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.4pt solid #000000">
									<fo:block font-size="{$txt-cuerpo}" text-align="left" font-weight="normal">
										<xsl:value-of select="nemotecnico"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.4pt solid #000000">
									<fo:block font-size="{$txt-cuerpo}" text-align="center" font-weight="normal">
										<xsl:value-of select="fecha-operacion"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.4pt solid #000000">
									<fo:block font-size="{$txt-cuerpo}" text-align="center" font-weight="normal">
										<xsl:value-of select="tasa-pactada"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.4pt solid #000000">
									<fo:block font-size="{$txt-cuerpo}" text-align="center" font-weight="normal">
										<xsl:value-of select="plazo"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.4pt solid #000000">
									<fo:block font-size="{$txt-cuerpo}" text-align="center" font-weight="normal">
										<xsl:value-of select="custodia-electronica"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.4pt solid #000000">
									<fo:block font-size="{$txt-cuerpo}" text-align="center" font-weight="normal">
										<xsl:value-of select="garantia"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.4pt solid #000000">
									<fo:block font-size="{$txt-cuerpo}" text-align="right" font-weight="normal">
										<xsl:value-of select="monto-vcto-moneda-origen"/>
									</fo:block>
								</fo:table-cell>

								<fo:table-cell border="0.4pt solid #000000">
									<fo:block font-size="{$txt-cuerpo}" text-align="right" font-weight="normal">
										<xsl:value-of select="monto-vcto-pesos"/>
									</fo:block>
								</fo:table-cell>

							</fo:table-row>

						</xsl:for-each>

				</fo:table-body>
			</fo:table>

		</fo:block>

	</xsl:template>
	<!-- TERMINO TABLA DE DETALLE -->

	<!-- TABLA DE TOTALES -->
	<xsl:template name="totales">
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="1.2cm"/>	<!-- En blanco para margenes -->
				<fo:table-column column-width="4.5cm"/>	<!-- descripcion -->
				<fo:table-column column-width="3cm"/>	<!-- valor -->
				<fo:table-column column-width="5cm"/>	<!-- descripcion-->
				<fo:table-column column-width="0.5cm"/>	<!-- valor -->
				<fo:table-column column-width="3.2cm"/>	<!-- descripcion -->
				<fo:table-column column-width="1.5cm"/>	<!-- valor -->
				<fo:table-column column-width="0.1cm"/>	<!-- En blanco para margenes -->


				<fo:table-body>
				<!-- PRIMERA FILA -->
					<fo:table-row background-color="{$fondo-azul-claro}">
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								Total DAP en $:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								<xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/totales-dap/total-dap-en-pesos"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								Total Operaciones $:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								<xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/totales-dap/total-operaciones-en-pesos"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!-- PRIMERA FILA -->

					<!-- SEGUNDA FILA -->
					<fo:table-row background-color="{$fondo-azul-claro}">
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								Total DAP en UF:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								<xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/totales-dap/total-dap-en-uf"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								Total Operaciones UF:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								<xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/totales-dap/total-operaciones-uf"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								Valor Actual UF:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								<xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/totales-dap/valor-actual-uf"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!-- SEGUNDA FILA -->

					<!-- TERCERA FILA -->
					<fo:table-row background-color="{$fondo-azul-claro}">
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								Total DAP en USD:
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								<xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/totales-dap/total-dap-en-usd"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								Total Operaciones USD:
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								<xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/totales-dap/total-operaciones-usd"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								Valor Actual USD:
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								<xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/totales-dap/valor-actual-usd"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!-- TERCERA FILA -->

					<!-- CUARTA FILA -->
					<fo:table-row background-color="{$fondo-azul-claro}">
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								Total General DAP en $:
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								<xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/totales-dap/total-general-dap-en-pesos"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								Total General Operaciones:
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
								<xsl:value-of select="vencimientoDap/vencimientoDap-detalle-operacion/totales-dap/total-general-operaciones"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
							</fo:block>
						</fo:table-cell>

						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="right" font-weight="bold">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!-- CUARTA FILA -->

				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- TERMINO TABLA DE TOTALES -->

	<!-- TABLA DE MENSAJE FINAL -->
	<xsl:template name="mensaje">
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="19cm"/>	<!-- mensaje -->
				<fo:table-body>
					<fo:table-row background-color="{$fondo-amarillo}">
						<fo:table-cell border="0.4pt none #000000">
							<fo:block font-size="{$txt-sub-titulo}" text-align="left" font-weight="bold">
								<xsl:value-of select="vencimientoDap/mensaje-final"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>		
		</fo:block>
	</xsl:template>
	<!-- TERMINO TABLA DE MENSAJE FINAL -->

	<xsl:template name="imagen"> 
		<fo:block> 
			<fo:table> 
				<fo:table-column column-width="19cm"/>	<!-- imagen -->
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
		                	<xsl:variable name="ruta_imagen">
								<xsl:value-of disable-output-escaping="no" select="vencimientoDap/ruta-imagen"/>
							</xsl:variable>
		                    <fo:block text-align="center" color="#000000" space-before="2mm" border="0.0pt solid black">
		                    	<fo:external-graphic src="{$ruta_imagen}/logo_grande.gif" height="100pt" width="100pt"/>
							</fo:block>
		                </fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="vencimientoDAP.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->