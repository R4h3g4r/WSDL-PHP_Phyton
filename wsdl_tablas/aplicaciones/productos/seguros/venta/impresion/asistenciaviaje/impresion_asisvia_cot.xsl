<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
	<xsl:variable name="IMAGEEXT">gif</xsl:variable>
	<xsl:template match="DatosCotizacion">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>

				<fo:simple-page-master master-name="paginaPrimera" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0.5cm" margin-bottom="0cm"/>
					<fo:region-before region-name="regionEncabezadoPrimera" extent="0.5cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>

				<fo:simple-page-master master-name="paginaResto" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0.5cm" margin-bottom="0cm"/>					
					<fo:region-before region-name="regionEncabezadoResto" extent="0.5cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>
				
				<fo:simple-page-master master-name="paginaMandato" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
					<fo:region-before extent="0cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>
				
				<fo:page-sequence-master master-name="masterSequenceName1">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="paginaPrimera" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="paginaResto" page-position="rest"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
				
			</fo:layout-master-set>
			
			<fo:page-sequence master-name="paginaPrincipal" master-reference="masterSequenceName1">
				<fo:static-content flow-name="regionEncabezadoResto">
					<fo:block  text-align="right" font-size="11pt" color="#4D6175">
						COTIZACIÓN DE SEGURO Nro <xsl:value-of select="Cotizacion/numeroCotizacion"/><xsl:text> (continuación) - Página </xsl:text><fo:page-number/>
					</fo:block>
				</fo:static-content>

				<fo:flow flow-name="xsl-region-body" color="#4D6175" font-size="11pt">
					<fo:block>
											
						<fo:block>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(19)"/>
								<fo:table-column column-width="proportional-column-width(62)"/>
								<fo:table-column column-width="proportional-column-width(19)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="left">
												<fo:external-graphic scaling="uniform" height="30pt" width="120pt">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell display-align="center">
											<fo:block color="#CC0000" font-size="20pt" text-align="center" font-weight="bold">
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="right">
												<fo:external-graphic  scaling="uniform" height="30pt" width="120pt">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>

						<xsl:template name="temp_datos_ejecutivo">
							<fo:block span="none">			
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(10)"/>
										<fo:table-column column-width="proportional-column-width(90)"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell display-align="before">
													<fo:block color="#0360A2">Sucursal</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="before">
													<fo:block color="#0360A2" font-weight="bold">
														<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionSucursal"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell display-align="before" >
													<fo:block color="#0360A2">Ejecutivo	</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="before">
													<fo:block color="#0360A2" font-weight="bold">
														<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionEjecutivo"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
							</fo:block>
						</xsl:template>

						<xsl:template name="temp_tituloPrincipal">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell padding="4.0pt" text-align="start" border-top-style="solid" border-after-style="solid" display-align="before" border-width="1.0pt" border-color="#6B6765" padding-left="5pt">
												<fo:block text-align="center" color="#6B6765" font-size="12.0pt" font-weight="bold">
													<xsl:text>COTIZACIÓN DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/numeroCotizacion"/><xsl:text> - Seguro </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/> 	
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:template>

						<xsl:template name="temp_tituloMateriaAsegurada">
							<fo:block span="none">
								<fo:table table-layout="fixed" width="100%" padding-before="2pt">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
												<fo:block  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
													<xsl:text>MATERIA ASEGURADA</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:template>

						<xsl:template name="temp_datosMateriaAsegurada">
							<fo:block span="none" padding-before="6pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(22)" background-color="#F4F4F4"/>
									<fo:table-column column-width="proportional-column-width(28)"/>
									<fo:table-column column-width="proportional-column-width(22)" background-color="#F4F4F4"/>
									<fo:table-column column-width="proportional-column-width(28)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text>Rut</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/rut"/>-<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/dv"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text>Nombres</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/nombre"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text>Apellido paterno</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/apellidoPaterno"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text>Apellido materno</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/apellidoMaterno"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text>Fecha de Nacimiento</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/fechaNacimiento"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text>Edad</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/edad"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text>Fecha de Inicio</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/fechaInicio"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text>Fecha de Fin</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/fechaFin"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text>Destino</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionDestino"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text>Duracion</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/duracion"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:template>

						<xsl:template name="temp_tituloPrimas">
							<fo:block span="none" padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
												<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
													<xsl:text>PRIMAS</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:template>

						<xsl:template name="temp_datosPrimas">	
							<fo:block span="none" padding-before="6pt">
								<xsl:variable name="countTarifas" select="count(xmlAuxTarifas/auxTarifa)" />
								<xsl:variable name="aux1xmlATarifas" select="xmlAuxTarifas" />
								<xsl:variable name="aux2xmlATarifas" select="xmlAuxTarifas" />
								<xsl:variable name="aux3xmlATarifas" select="xmlAuxTarifas" />
								<xsl:variable name="aux1xmlPlanes" select="xmlPlanes" />
								<xsl:variable name="aux1xmlPrimas" select="xmlPrimas" />
								<xsl:variable name="aux2xmlPrimas" select="xmlPrimas" />
								<xsl:variable name="aux3xmlPrimas" select="xmlPrimas" />
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(3)"/>
									<fo:table-column column-width="proportional-column-width(12)"/>
									<xsl:for-each select="$aux1xmlATarifas/auxTarifa">
										<xsl:if test="position()=1">
											<fo:table-column column-width="proportional-column-width(5)"/>
										</xsl:if>
										<xsl:if test="position()>1">
											<fo:table-column column-width="proportional-column-width(7)"/>
										</xsl:if>
									</xsl:for-each>
									
									<fo:table-body>
									
										<xsl:for-each select="$aux1xmlPrimas/cia/prima">
											<xsl:if test="position()=1">
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<xsl:attribute name="number-columns-spanned" >
														<xsl:value-of select="$countTarifas+2"/>
													 </xsl:attribute>
														<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
															<xsl:text>Compañia: </xsl:text><xsl:value-of select="nombreCia"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</xsl:if>
										</xsl:for-each>
										
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Plan</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Descripción</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<xsl:attribute name="number-columns-spanned" >
													<xsl:value-of select="$countTarifas"/>
												 </xsl:attribute>
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Prima Bruta UF</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>

										<fo:table-row>
											<fo:table-cell number-columns-spanned="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text></xsl:text>
												</fo:block>
											</fo:table-cell>
											<xsl:for-each select="$aux2xmlATarifas/auxTarifa">
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<xsl:if test="text()=0">
														<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="1pt" padding-after="1pt">
															<xsl:text>Titular</xsl:text>
														</fo:block>
													</xsl:if>
													<xsl:if test="text()=1">
														<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="1pt" padding-after="1pt">
															<xsl:text>Titular + 1 Acompañante</xsl:text>
														</fo:block>
													</xsl:if>
													<xsl:if test="text()>1">
														<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="1pt" padding-after="1pt">
															<xsl:text>Titular + </xsl:text><xsl:value-of select="text()"/><xsl:text> Acompañantes</xsl:text>
														</fo:block>
													</xsl:if>
												</fo:table-cell>
											</xsl:for-each>
										</fo:table-row>
										
										<xsl:for-each select="$aux1xmlPlanes/plan">
											<xsl:variable name="auxPlan" select="codigo" />
										
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of select="codigo"/>
													</fo:block>
												</fo:table-cell>					
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of select="nombre"/>
													</fo:block>
												</fo:table-cell>
												<xsl:for-each select="$aux3xmlATarifas/auxTarifa">
													<xsl:variable name="auxATarifa" select="text()"/>
													<xsl:variable name="existe">
														<xsl:for-each select="$aux2xmlPrimas/cia/prima">
															<xsl:if test="codigoPlan = $auxPlan and (acompanantes = $auxATarifa or normalize-space($auxATarifa) = '')">true</xsl:if>
														</xsl:for-each>
													</xsl:variable>
													<xsl:if test="normalize-space($existe) = ''">
														<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
															<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="2pt" padding-after="2pt">
																<xsl:text></xsl:text>
															</fo:block>
														</fo:table-cell>
													</xsl:if>
													<xsl:if test="normalize-space($existe) = 'true'">
														<xsl:for-each select="$aux3xmlPrimas/cia/prima">
															<xsl:if test="codigoPlan = $auxPlan and (acompanantes = $auxATarifa or normalize-space($auxATarifa) = '')">
																<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
																	<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="2pt" padding-after="2pt">
																		<xsl:value-of select="primaBruta"/>
																	</fo:block>
																</fo:table-cell>
															</xsl:if>
														</xsl:for-each>				
													</xsl:if>
												</xsl:for-each>
											</fo:table-row>
										</xsl:for-each>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:template>
	
						<xsl:template name="temp_tituloCoberturas">
							<fo:block span="none" padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
												<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
													<xsl:text>COBERTURAS</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:template>	

						<xsl:template name="temp_datosCoberturas">	
							<fo:block span="none" padding-before="6pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
									<fo:table-body>
										<xsl:for-each select="Coberturas/cia/cobertura">
												<fo:table-row padding-before="10pt">
													<fo:table-cell text-align="start" display-align="before" font-weight="bold" border-after-style="solid" border-width="0.5pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="10pt" padding-left="8pt">
														<fo:block text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
															<xsl:value-of disable-output-escaping="no" select="nombrePlan"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<xsl:for-each select="subCobertura">
													<fo:table-row>
														<fo:table-cell text-align="start" display-align="before" padding-left="8pt" padding-before="4pt">
															<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
																	<xsl:value-of disable-output-escaping="no" select="valor"/>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</xsl:for-each>
										</xsl:for-each>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:template>

						<xsl:template name="temp_detalle_de_pago">
							<fo:block span="none" padding-before="1pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
													<xsl:text>DETALLE DE PAGO</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:template>

						<xsl:template name="temp_datosDetallePago">	
							
							<fo:block span="none" padding-before="6pt">
								<xsl:variable name="countTarifas" select="count(xmlAuxTarifas/auxTarifa)" />
								<xsl:variable name="aux1xmlATarifas" select="xmlAuxTarifas" />
								<xsl:variable name="aux2xmlATarifas" select="xmlAuxTarifas" />
								<xsl:variable name="aux3xmlATarifas" select="xmlAuxTarifas" />
								<xsl:variable name="aux1xmlPlanes" select="xmlPlanes" />
								<xsl:variable name="aux1xmlDetallePago" select="xmlDetallePago" />	
								<xsl:variable name="aux2xmlDetallePago" select="xmlDetallePago" />	
								<xsl:variable name="aux3xmlDetallePago" select="xmlDetallePago" />	
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(3)"/>
									<fo:table-column column-width="proportional-column-width(12)"/>
									<xsl:for-each select="$aux1xmlATarifas/auxTarifa">
										<xsl:if test="position()=1">
											<fo:table-column column-width="proportional-column-width(5)"/>
										</xsl:if>
										<xsl:if test="position()>1">
											<fo:table-column column-width="proportional-column-width(7)"/>
										</xsl:if>
									</xsl:for-each>
									
									<fo:table-body>
										<xsl:for-each select="$aux1xmlDetallePago/cia/prima">
											<xsl:if test="position()=1">
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<xsl:attribute name="number-columns-spanned" >
														<xsl:value-of select="$countTarifas+2"/>
													 </xsl:attribute>
														<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
															<xsl:text>Compañia: </xsl:text><xsl:value-of select="nombreCia"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</xsl:if>
										</xsl:for-each>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Plan</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Descripción</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<xsl:attribute name="number-columns-spanned" >
													<xsl:value-of select="$countTarifas"/>
												 </xsl:attribute>
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Prima Bruta UF</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>

										<fo:table-row>
											<fo:table-cell number-columns-spanned="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text></xsl:text>
												</fo:block>
											</fo:table-cell>
											
												<xsl:for-each select="$aux2xmlATarifas/auxTarifa">
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
														<xsl:if test="text()=0">
															<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="1pt" padding-after="1pt">
																<xsl:text>Titular</xsl:text>
															</fo:block>
														</xsl:if>
														<xsl:if test="text()=1">
															<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="1pt" padding-after="1pt">
																<xsl:text>Titular + 1 Acompañante</xsl:text>
															</fo:block>
														</xsl:if>
														<xsl:if test="text()>1">
															<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="1pt" padding-after="1pt">
																<xsl:text>Titular + </xsl:text><xsl:value-of select="text()"/><xsl:text> Acompañantes</xsl:text>
															</fo:block>
														</xsl:if>
													</fo:table-cell>
												</xsl:for-each>
										</fo:table-row>
										
										
										<xsl:for-each select="$aux1xmlPlanes/plan">
											<xsl:variable name="auxPlan" select="codigo" />
										
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of select="codigo"/>
													</fo:block>
												</fo:table-cell>					
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of select="nombre"/>
													</fo:block>
												</fo:table-cell>
												
												<xsl:for-each select="$aux3xmlATarifas/auxTarifa">
													<xsl:variable name="auxATarifa" select="text()"/>
													<xsl:variable name="existe">
														<xsl:for-each select="$aux2xmlDetallePago/cia/prima">
															<xsl:if test="codigoPlan = $auxPlan and (acompanantes = $auxATarifa or normalize-space($auxATarifa) = '')">true</xsl:if>
														</xsl:for-each>
													</xsl:variable>
													
													<xsl:if test="normalize-space($existe) = ''">
														<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
															<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="2pt" padding-after="2pt">
																<xsl:text></xsl:text>
															</fo:block>
														</fo:table-cell>					
													</xsl:if>
													
													<xsl:if test="normalize-space($existe) = 'true'">
														<xsl:for-each select="$aux3xmlDetallePago/cia/prima">
															<xsl:if test="codigoPlan = $auxPlan and (acompanantes = $auxATarifa or normalize-space($auxATarifa) = '')">
																<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
																	<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="2pt" padding-after="2pt">
																		<xsl:value-of select="primaBruta"/>
																	</fo:block>
																</fo:table-cell>
															</xsl:if>
														</xsl:for-each>				
													</xsl:if>
												</xsl:for-each>
											</fo:table-row>
										</xsl:for-each>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:template>

						<xsl:template name="temp_tituloMediosPago">
							<fo:block span="none" padding-before="6pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
													<xsl:text>MEDIOS DE PAGO DISPONIBLES</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:template>

						<xsl:template name="temp_datosMediosPago">
							<fo:block span="none" padding-before="6pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(10)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(35)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(10)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(35)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(10)" background-color="#FFFFFF"/>	
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt"></fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="before" font-weight="bold" border-after-style="solid" border-width="0.5pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
												<fo:block text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
													<xsl:text>Primer pago</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt"></fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="before" font-weight="bold" border-after-style="solid" border-width="0.5pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
												<fo:block text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
													<xsl:text>Futuros pagos</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt"></fo:block>
											</fo:table-cell>
										</fo:table-row>			
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:template>

						<xsl:template name="temp_datosMediosPago2">
							<fo:block span="none" padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(30)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(30)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(10)" background-color="#FFFFFF"/>		
									<fo:table-body>
										<xsl:for-each select="MedioGlobalPago/MedioPago">					
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt"></fo:block>
												</fo:table-cell>
																												
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">											
														<xsl:value-of disable-output-escaping="no" select="primerosPagos"/>
													</fo:block>
												</fo:table-cell>
							
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt"></fo:block>
												</fo:table-cell>
							
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
														<xsl:value-of disable-output-escaping="no" select="futurosPagos"/>
													</fo:block>
												</fo:table-cell>
												
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt"></fo:block>
												</fo:table-cell>
											</fo:table-row>					
										</xsl:for-each>														
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:template>		

						<xsl:template name="temp_tituloCondiciones">
							<xsl:for-each select="textos/texto">
								<fo:block span="none" padding-before="6pt">
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
														<xsl:value-of disable-output-escaping="no" select="titulo"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
								<fo:block span="none" padding-before="6pt">
									<fo:table table-layout="fixed" width="100%" >
										<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
														<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
															<xsl:value-of disable-output-escaping="no" select="descripcion"/>
														</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:for-each>
						</xsl:template>
	
						<xsl:template name="temp_tituloTextoPorPlan">
							<xsl:for-each select="textoPlanes/textoPlan">
								<xsl:for-each select="textos/texto">
									<xsl:if test="( ../../largo != 0 and titulo != ' ')">
									<fo:block span="none" padding-before="6pt">
										<fo:table table-layout="fixed" width="100%">
											<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
														<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
															<xsl:value-of disable-output-escaping="no" select="../../descripcionPlan"/><xsl:text> - </xsl:text><xsl:value-of disable-output-escaping="no" select="../../descripcionCompania"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</fo:block>
									<fo:block span="none" padding-before="6pt">
										<fo:table table-layout="fixed" width="100%">
											<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
														<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
															<xsl:value-of disable-output-escaping="no" select="titulo"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</fo:block>
									<fo:block span="none" padding-before="6pt">
										<fo:table table-layout="fixed" width="100%" >
											<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
															<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt" white-space="pre">
																<xsl:value-of disable-output-escaping="no" select="descripcion"/>
															</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</fo:block>
									</xsl:if>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:template>

						<xsl:template name="temp_firmas">
							<fo:table table-layout="fixed"  width="50%" padding-before="35pt">
								<fo:table-column column-width="proportional-column-width(45)"/>
								<fo:table-column column-width="proportional-column-width(10)"/>
								<fo:table-column column-width="proportional-column-width(45)"/>
								<fo:table-body>
									<fo:table-row keep-with-next="always">
										<fo:table-cell text-align="center" display-align="center">
											<fo:block color="#0360A2"><xsl:value-of select="Cotizacion/fechaPropuesta"/></fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
										<fo:table-cell  text-align="center" display-align="center">
											<fo:block color="#0360A2">
												<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/FIR_COR2.gif')</xsl:attribute> 
												</fo:external-graphic>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
											<fo:block color="#0360A2"><xsl:text>Fecha</xsl:text></fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
										<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
											<fo:block color="#0360A2"><xsl:text>Corredor</xsl:text></fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</xsl:template>

						<fo:block id="last-page"/>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
