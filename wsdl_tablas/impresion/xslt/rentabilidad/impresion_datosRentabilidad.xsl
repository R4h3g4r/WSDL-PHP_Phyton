<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosRentabilidad">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>

				<fo:simple-page-master master-name="paginaPrimera" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
					<fo:region-before region-name="regionEncabezadoPrimera" extent="0cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>

				<fo:simple-page-master master-name="paginaResto" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="3.0cm" margin-bottom="0cm"/>					
					<fo:region-before region-name="regionEncabezadoResto" extent="3.0cm" precedence="true"/>
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
					</fo:static-content>
				
					<fo:flow flow-name="xsl-region-body" color="#4D6175" font-size="11pt" >
						<fo:block>
						
							<xsl:template name="temp_titulo">
								<fo:block span="none">
									<fo:table table-layout="fixed" width="100%" padding-before="2pt">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
									
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#000000" font-size="11.0pt" font-weight="bold">
														<fo:external-graphic  scaling="uniform" height="60pt" width="90pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/common/images/img_logo_bci.gif')</xsl:attribute>
														</fo:external-graphic>
														<fo:block  text-align="center" color="#000000" font-size="12.0pt" font-weight="bold">
															<xsl:value-of disable-output-escaping="no" select="titulo"/>
														</fo:block>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											
											<fo:table-row>
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="10.0pt" font-weight="bold">
														<xsl:value-of disable-output-escaping="no" select="subtitulo"/>														
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#000000" font-size="8.0pt" font-weight="bold">
														<xsl:text>NOMBRE:</xsl:text>
														<xsl:text>&#160;</xsl:text>
														<xsl:value-of disable-output-escaping="no" select="nombre"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#000000" font-size="8.0pt" font-weight="bold">
														<xsl:text>RUT:</xsl:text>
														<xsl:text>&#160;</xsl:text>
														<xsl:value-of disable-output-escaping="no" select="rut"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
  							
							<xsl:template name="temp_tituloListado">
								<fo:block span="none" padding-before="2pt">
									<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block text-align="start" color="#0360A2" font-size="9.0pt" font-weight="bold">
														<xsl:value-of disable-output-escaping="no" select="tituloPeriodo"/>
														<xsl:text>&#160;</xsl:text>
														<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionPeriodo"/><!-- Descripcion del campo Periodo -->
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
							<xsl:template name="temp_listadoRentabilidad">
								<fo:block span="none" padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(40)"/>
								<fo:table-column column-width="proportional-column-width(50)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="tituloMrginte"/><!-- Nombre del campo Indicador Rentabilidad -->
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/mrgInte"/><!-- Descripcion del campo Indicador Rentabilidad -->
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="tituloIndRentab"/><!-- Nombre del campo Indicador Rentabilidad -->
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionInicio"/><!-- Descripcion del campo Indicador Rentabilidad -->
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<xsl:if test="( InformacionRentabilidadClienteTO/despliegueInicio = 'true' )">
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="tituloCampoInicio"/><!-- Nombre del campo opcional Inicio -->
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionIndicadorRentabilidad"/><!-- Descripcion del campo opcional Inicio -->
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:if>
									<xsl:if test="( InformacionRentabilidadClienteTO/despliegueMedio = 'true' )">
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="tituloCampoMedio"/><!-- Nombre del campo opcional Medio -->
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionMedio"/><!-- Descripcion del campo opcional Medio -->
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:if>
									<xsl:if test="( InformacionRentabilidadClienteTO/despliegueMedioSuperior = 'true' )">
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="tituloCampoSuperior"/><!-- Nombre del campo opcional Medio Superior -->
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionMedioSuperior"/><!-- Descripcion del campo opcional Medio Superior -->
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:if>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="tituloCalifAnt"/><!-- Nombre del campo Calificacion Anterior -->
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionCalifAnterior"/><!-- Descripcion del campo Calificacion Anterior -->
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="tituloSpread"/><!-- Nombre del campo Spread -->
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionSpread"/><!-- Descripcion del campo Spread -->
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="tituloMargBrtInteg"/><!-- Nombre del campo Margen Bruto Integral -->
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionMargenBrtIntegral"/><!-- Descripcion del campo Margen Bruto Integral -->
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="tituloColocinte"/><!-- Nombre del campo Margen Bruto Integral -->
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionIndicadorRentabilidadAnual"/><!-- NO APARECEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE -->
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="tituloColocInteg"/><!-- Nombre del campo Colocacion Integral -->
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionColocIntegral"/><!-- Descripcion del campo Colocacion Integral -->
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="tituloMargBrtIntegAnual"/><!-- Nombre del campo Margen Bruto Integral Anualizado -->
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionMargenBrtIntegralAnual"/><!-- Descripcion del campo Margen Bruto Integral Anualizado -->
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="tituloCalifActual"/><!-- Nombre del campo Calificación Actual -->
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionCalifActual"/><!-- Descripcion del campo Calificación Actual -->
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="tituloMrgInteDic"/><!-- Nombre del campo Calificación Actual -->
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/mrgInteDic"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="tituloCampoFinal"/><!-- Nombre del campo opcional Final -->
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="InformacionRentabilidadClienteTO/descripcionFinal"/><!-- Descripcion del campo opcional Final -->
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
								</fo:table-body>
								</fo:table>
								</fo:block>
							</xsl:template>		

					<fo:block id="last-page"/>
						</fo:block>
					</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>