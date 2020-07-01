<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="txt-celeste">#D9E4EF</xsl:variable>
	<xsl:variable name="no-text">#FFFFFF</xsl:variable>
	<xsl:variable name="miles">#.###</xsl:variable>
	<!-- formateador -->
	<xsl:decimal-format name="CL" decimal-separator="," grouping-separator="."/>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="22cm" margin-top="2cm" margin-left="1.6cm" margin-right="1cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="1cm"/>
					<fo:region-before extent="4cm"/>
					<fo:region-after extent="1cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block space-after="2mm">
						<!-- CABEZERA DEL DOCUMENTO -->
						<fo:table table-layout="fixed">
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="10cm"/>
							<fo:table-column column-width="5.4cm"/>
							<fo:table-body>
								<!-- INICIO SEGUNDA FILA -->
								<fo:table-row>
									<!-- INICIO PRIMERA COLUMNA -->
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">extras/facturaelectronica/logo5.jpg</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<!-- FIN PRIMERA COLUMNA -->
									<!-- INICIO SEGUNDA COLUMNA -->
									<fo:table-cell>
										<fo:block space-after="1mm" text-align="center" color="{$txt}">
											<!-- INICIO TABLA ANIDADA TITULO -->
											<fo:table table-layout="fixed">
												<fo:table-column column-width="10cm"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell>
															<fo:block font-family="Helvetica" font-weight="bold" font-size="13px" color="{$txt}" text-align="center">
																<xsl:value-of select="DTE/Documento/Encabezado/Emisor/RznSoc"/>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell>
															<fo:block font-family="Helvetica" font-weight="bold" font-size="13px" color="{$txt}" text-align="center">GIRO:&#xA0;
																<xsl:value-of select="DTE/Documento/Encabezado/Emisor/GiroEmis"/>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell>
															<fo:block font-family="Helvetica" font-weight="bold" font-size="11px" color="{$txt}" text-align="center">
																<xsl:value-of select="DTE/Documento/Encabezado/Emisor/DirOrigen"/>&#xA0;-&#xA0;
																<xsl:value-of select="DTE/Documento/Encabezado/Emisor/CmnaOrigen"/>
															</fo:block>
															<fo:block font-family="Helvetica" font-weight="bold" font-size="11px" color="{$txt}" text-align="center">Sucursal:&#xA0;
																<xsl:value-of select="DTE/Documento/Encabezado/Emisor/Sucursal"/>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
											<!-- TABLA ANIDADA TITULO -->
										</fo:block>
									</fo:table-cell>
									<!-- FIN SEGUNDA COLUMNA -->

									<!-- INICIO TERCERA COLUMNA -->
									<fo:table-cell>
										<fo:block font-size="5px" font-weight="bold" text-align="center" color="{$txt}" border="2px solid {$txt}">
											<fo:table table-layout="fixed">
												<fo:table-column column-width="5.4cm"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell>
															<fo:block font-family="Helvetica" font-weight="bold" font-size="11px" color="{$txt}" margin-left="4mm" padding-before="1mm" text-align="center">RUT:&#xA0;
																<xsl:value-of select="DTE/Documento/Encabezado/Emisor/RUTEmisor"/>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell>
															<fo:block font-family="Helvetica" font-weight="bold" font-size="9px" color="{$txt}" text-align="center">LIQUIDACIÓN</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell>
															<fo:block font-family="Helvetica" font-weight="bold" font-size="9px" color="{$txt}" padding-before="3mm" padding-after="1mm" text-align="center">Nº&#xA0;
																<xsl:value-of select="DTE/Documento/Encabezado/IdDoc/Folio"/>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										</fo:block>
										<fo:block font-size="3px" font-family="Helvetica" font-weight="normal" text-align="center" color="{$txt}">&#xA0;</fo:block>
										<fo:block font-size="7px" font-family="Helvetica" font-weight="normal" text-align="center" color="{$txt}">S.I.I. Santiago Centro</fo:block>
									</fo:table-cell>
									<!-- FIN TERCERA COLUMNA -->
								</fo:table-row>
								<!-- FIN SEGUNDA FILA -->
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- FIN DE CABEZERA DEL DOCUMENTO -->
				</fo:static-content>

				<fo:flow flow-name="xsl-region-body">
					<!-- Separador -->
					<fo:block space-after="10mm">
						<fo:leader color="{$no-text}" leader-pattern="rule" leader-length="18cm"/>
					</fo:block>
					<!-- Separador -->
					<xsl:call-template name="contenido"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<xsl:template name="contenido">
		<!-- INICIO GLOSA FACTURA/BOLETA -->
		<fo:block font-size="5px" space-after="1mm" border="4px solid {$lineas}">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="10.5cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" space-after="1mm" space-before="2mm" margin-left="2mm" text-align="left" color="{$txt}">SEÑOR(ES)</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="bold" font-family="Helvetica" space-after="1mm" space-before="2mm" text-align="left" color="{$txt}">:&#xA0;<xsl:value-of select="DTE/Documento/Encabezado/Receptor/RznSocRecep"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" space-after="1mm" space-before="2mm" text-align="left" color="{$txt}">R.U.T.</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="bold" font-family="Helvetica" space-after="1mm" space-before="2mm" text-align="left" color="{$txt}">:&#xA0;<xsl:value-of select="DTE/Documento/Encabezado/Receptor/RUTRecep"/></fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" space-after="1mm" space-before="2mm" margin-left="2mm" text-align="left" color="{$txt}">DIRECCIÓN</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="bold" font-family="Helvetica" space-after="1mm" space-before="2mm" text-align="left" color="{$txt}">:&#xA0;<xsl:value-of select="DTE/Documento/Encabezado/Receptor/DirRecep"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" space-after="1mm" space-before="2mm" text-align="left" color="{$txt}">FECHA</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="bold" font-family="Helvetica" space-after="1mm" space-before="2mm" text-align="left" color="{$txt}">:&#xA0;<xsl:value-of select="DTE/Documento/Encabezado/IdDoc/FchEmis"/></fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" space-after="1mm" space-before="2mm" margin-left="2mm" text-align="left" color="{$txt}">COMUNA</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="bold" font-family="Helvetica" space-after="1mm" space-before="2mm" text-align="left" color="{$txt}">:&#xA0;<xsl:value-of select="DTE/Documento/Encabezado/Receptor/CmnaRecep"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" space-after="1mm" space-before="2mm" text-align="left" color="{$txt}">CONDICIÓN DE PAGO</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="bold" font-family="Helvetica" space-after="1mm" space-before="2mm" text-align="left" color="{$txt}">:&#xA0;CONTADO</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" space-after="1mm" space-before="2mm" margin-left="2mm" text-align="left" color="{$txt}">CIUDAD</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="bold" font-family="Helvetica" space-after="1mm" space-before="2mm" text-align="left" color="{$txt}">:&#xA0;<xsl:value-of select="DTE/Documento/Encabezado/Receptor/CiudadRecep"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6px" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6px" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" space-after="1mm" space-before="2mm" margin-left="2mm" text-align="left" color="{$txt}">GIRO COMERCIAL</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="bold" font-family="Helvetica" space-after="1mm" space-before="2mm" text-align="left" color="{$txt}">:&#xA0;<xsl:value-of select="DTE/Documento/Encabezado/Receptor/GiroRecep"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6px" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6px" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN GLOSA FACTURA/BOLETA -->

		<!-- INICIO SEPARADOR -->
		<fo:block>
			<fo:leader color="{$no-text}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- FIN SEPARADOR -->

		<!-- DETALLE DE LA FACTURA -->
		<fo:block font-size="7px" space-after="1mm" text-align="right" border="4px solid {$lineas}">
			<fo:table table-layout="fixed" height="9cm">
				<fo:table-column column-width="15.4cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm" border="0.5px {$lineas}" border-left-style="solid"/>
				<fo:table-body>
					<!-- CABEZERA DEL DETALLE DE LA FACTURA -->
					<fo:table-row>
						<fo:table-cell background-color="{$lineas}">
							<fo:block font-weight="bold" font-size="8px" color="{$txt}" text-align="left">&#xA0;DETALLES</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}">
							<fo:block font-weight="bold" font-size="8px" color="{$txt}" text-align="left">
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}">
							<fo:block font-weight="bold" font-size="8px" color="{$txt}" text-align="center">&#xA0;TOTAL</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="DTE/Documento/Detalle">
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">&#xA0;
								<xsl:value-of select="NroLinDet"/>&#xA0;&#xA0;&#xA0;&#xA0;
								<xsl:value-of select="NmbItem"/>&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;
								<xsl:if test="QtyItem != ''">
									<xsl:value-of select="format-number(QtyItem, $miles, 'CL')"/>&#xA0;
								</xsl:if>
							</fo:block>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left" margin-left="4mm">&#xA0;<xsl:value-of select="DscItem"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right" margin-right="1mm"><xsl:value-of select="NmbItem"/>&#xA0;</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right" margin-right="1mm">
								<xsl:value-of select="format-number(MontoItem, $miles, 'CL')"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- INICIO FIRMAS Y TOTALES -->
		<fo:block font-size="7px" text-align="right" border="1px solid {$no-text}">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="6cm"/>
				<fo:table-column column-width="11.4cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-body>
					<fo:table-row height="0.3cm">
						<!-- PRIMERA COLUMNA -->
						<fo:table-cell>
							<fo:block font-weight="bold" font-size="8px" color="{$txt}" text-align="left">
								<!-- INICIO TABLA CANCELADO/FIRMA/FECHA -->
								<fo:table table-layout="fixed" border="2px solid {$lineas}">
									<fo:table-column column-width="6cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell background-color="{$lineas}">
												<fo:block font-weight="bold" font-size="8px" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">&#xA0;CANCELADO/FIRMA/FECHA</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row height="0.5cm">
											<fo:table-cell>
												<fo:block font-weight="bold" font-size="5px" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
								<!-- FIN CANCELADO/FIRMA/FECHA -->
							</fo:block>
						</fo:table-cell>
						<!-- FIN PRIMERA COLUMNA -->

						<!-- SEGUNDA COLUMNA -->
						<fo:table-cell>
							<fo:block font-weight="bold" font-size="5px" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								<fo:table table-layout="fixed">
									<fo:table-column column-width="11.4cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block font-family="Helvetica" font-weight="bold" font-size="7px" color="{$txt}" padding-before="3mm" padding-after="1mm" text-align="right">TOTAL EXENTO</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block font-family="Helvetica" font-weight="bold" font-size="7px" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right">&#xA0;</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block font-family="Helvetica" font-weight="bold" font-size="7px" color="{$txt}" padding-after="1mm" margin-right="1mm" text-align="right">TOTAL</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
						<!-- FIN SEGUNDA COLUMNA -->

						<!-- INICIO TERCERA COLUMNA -->
						<fo:table-cell>
							<fo:block font-weight="bold" font-size="12px" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center" border="1px solid {$lineas}">
								<!-- INICIO TABLA ANIDADA EN TERCERA COLUMNA -->
								<fo:table table-layout="fixed">
									<fo:table-column column-width="2cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block font-family="Helvetica" font-weight="bold" font-size="7px" color="{$txt}" padding-before="3mm" padding-after="1mm" text-align="right" margin-right="1mm">&#xA0;<xsl:value-of select="format-number(DTE/Documento/Encabezado/Totales/MntExe, $miles, 'CL')"/></fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block font-family="Helvetica" font-weight="bold" font-size="7px" color="{$txt}" text-align="right" margin-right="1mm">&#xA0;</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block font-family="Helvetica" font-weight="bold" font-size="7px" color="{$txt}" text-align="right" margin-right="1mm">&#xA0;<xsl:value-of select="format-number(DTE/Documento/Encabezado/Totales/MntTotal, $miles, 'CL')"/></fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
								<!-- FIN TABLA ANIDADA EN TERCERA COLUMNA -->
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!-- FIN TERCERA COLUMNA -->
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN FIRMAS Y TOTALES -->

		<!-- INICIO DATOS GENERALES Y TIMBRE ELECTRONICO -->
		<fo:block font-size="7px" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="10cm"/>
				<fo:table-column column-width="1cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row height="2.5cm">
						<fo:table-cell border="1px solid {$lineas}" margin-right="1mm" margin-left="1mm">
							<fo:block font-weight="bold" font-size="7px" color="{$txt-azul-claro}" padding-before="1mm" text-align="left">RUT:</fo:block>
							<fo:block font-weight="bold" font-size="7px" color="{$txt-azul-claro}" padding-before="1mm" text-align="left">NOMBRE:</fo:block>
							<fo:block font-weight="bold" font-size="7px" color="{$txt-azul-claro}" padding-before="1mm" text-align="left">FECHA:</fo:block>
							<fo:block font-weight="bold" font-size="7px" color="{$txt-azul-claro}" padding-before="1mm" text-align="left">RECINTO:</fo:block>
							<fo:block font-weight="bold" font-size="7px" color="{$txt-azul-claro}" padding-before="1mm" text-align="left">FIRMA:</fo:block>
							<fo:block font-weight="bold" font-size="4px" color="{$txt}" padding-before="1mm" text-align="left">"El acuse de recibo que se declara en este acto, de acuerdo en lo dispuiesto en la letra b) del Art.4ª, y de la letra c) del Art. 5ª de la Ley 19.983, acredita que la entrega de mercaderias o servicio(s) prestado(s) ha(n) sido recibido(s)".</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" color="{$txt}" padding-before="1mm" text-align="center">Timbre electronico S.I.I.</fo:block>
							<fo:block font-size="7px" font-weight="normal" font-family="Helvetica" color="{$txt}" padding-after="1mm" text-align="center">Res. 43 del 2005 - Verifique documento: www.sii.cl</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN DATOS GENERALES Y TIMBRE ELECTRONICO -->
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="dte-T34.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml=""
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
			<advancedProp name="bWarnings" value="true"/>
			<advancedProp name="bUseDTD" value="false"/>
			<advancedProp name="iErrorHandling" value="0"/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no">
			<SourceSchema srcSchemaPath="dte-T34.xml" srcSchemaRoot="DTE" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/>
		</MapperInfo>
		<MapperBlockPosition>
			<template match="/">
				<block path="fo:root/fo:page-sequence/fo:flow/xsl:call-template" x="271" y="123"/>
			</template>
		</MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->