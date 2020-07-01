<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<xsl:variable name="IMAGEEXT">gif</xsl:variable>

	<!-- Inicio documento principal -->

	<xsl:template match="DatosImpresionCotizacion">
		
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			
			<fo:layout-master-set>

				<fo:simple-page-master master-name="paginaPrimera" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
					<fo:region-before region-name="regionEncabezadoPrimera" extent="0cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>

				<fo:simple-page-master master-name="paginaResto" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0.5cm" margin-bottom="0cm"/>					
					<fo:region-before region-name="regionEncabezadoResto" extent="0.5cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
					<!--<fo:region-after region-name="regionPieResto" extent="1.5cm" precedence="true"/>-->
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
					<fo:block  text-align="right" font-size="11pt">
						COTIZACION DE SEGURO Nro 
						<xsl:value-of select="nroCotizacion"/>
					    (continuación)
						- 
						Página <fo:page-number/>
					</fo:block>
				</fo:static-content>
										
				<fo:flow flow-name="xsl-region-body" color="#006666" font-size="11pt" >
				<fo:block >
															
					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datos_logos_cabecera"/>
										</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
						</fo:table>
					</fo:block>
					
					<!-- DATOS EJECUTIVOS Y SUCURSAL -->
					<xsl:template name="temp_datos_ejecutivo">
						<fo:block span="none">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(10)"/>
									<fo:table-column column-width="proportional-column-width(90)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell display-align="before">
												<fo:block color="#006666">Sucursal</fo:block>
											</fo:table-cell>
											<fo:table-cell display-align="before">
												<fo:block color="#006666">
													<xsl:value-of disable-output-escaping="no" select="nombreSucursal"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell display-align="before" >
												<fo:block color="#006666">Ejecutivo	</fo:block>
											</fo:table-cell>
											<fo:table-cell display-align="before">
												<fo:block color="#006666">
													<xsl:value-of disable-output-escaping="no" select="nombreEjecutivo"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell/>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
						</fo:block>
					</xsl:template>
					

					<xsl:template name="temp_tituloPrincipal">
		
						<fo:block padding-before="2pt">
			
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)" background-color="#000000"/>
								<fo:table-body>
									<fo:table-row>
									<fo:table-cell padding="2.0pt" text-align="start" border-style="solid" display-align="before" border-width="1.0pt" border-color="#000000" background-color="#336699" >
										<fo:block text-align="center" color="#FFFFFF" font-size="12.0pt" font-weight="bold">
										<xsl:text>COTIZACION DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="nroCotizacion"/> 
										<xsl:text> - PRODUCTO </xsl:text><xsl:value-of disable-output-escaping="no" select="descripcionProducto"/> 
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
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>MATERIA ASEGURADA PARA EL RAMO MULTIRIESGO HOGAR</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>
										
					<xsl:template name="temp_datosMateriaAsegurada">

						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)" background-color="#f0f0f0"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(20)" background-color="#f0f0f0"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Región</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="region"/>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text>Ciudad</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="ciudad"/>
										</fo:block>
									</fo:table-cell>

								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Comuna</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="comuna"/>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
												<xsl:text>Zona</xsl:text>
											</xsl:if>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
												<xsl:value-of disable-output-escaping="no" select="zona"/>
											</xsl:if>
										</fo:block>
									</fo:table-cell>

								</fo:table-row>
								
								<xsl:if test="( materiaAsegurada = '1' )">								
								
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Tipo de Construcción</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="tipoConstruccion"/>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
												<xsl:text disable-output-escaping="no">Monto Asegurado Edificio (UF)</xsl:text>
											</xsl:if>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
												<xsl:value-of disable-output-escaping="no" select="montoAseguradoEdificio"/>
											</xsl:if>
										</fo:block>
									</fo:table-cell>

								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text>Tipo de Vivienda</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="tipoVivienda"/>	
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
																					
										</fo:block>
									</fo:table-cell>


								</fo:table-row>
								
								</xsl:if>

								
								<xsl:if test="( materiaAsegurada = '2' )">								
								
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Tipo de Construcción</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="tipoConstruccion"/>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
												<xsl:text disable-output-escaping="no">Monto Asegurado Contenido (UF)</xsl:text>
											</xsl:if>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
												<xsl:value-of disable-output-escaping="no" select="montoAseguradoContenido"/>
											</xsl:if>
										</fo:block>
									</fo:table-cell>

								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text>Tipo de Vivienda</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="tipoVivienda"/>	
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							
								</xsl:if>

								<xsl:if test="( materiaAsegurada = '3' )">								
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text disable-output-escaping="no">Tipo de Construcción</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="tipoConstruccion"/>
											</fo:block>
										</fo:table-cell>
							
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
													<xsl:text disable-output-escaping="no">Monto Asegurado Edificio (UF)</xsl:text>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
							
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
													<xsl:value-of disable-output-escaping="no" select="montoAseguradoEdificio"/>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
	
									</fo:table-row>
									
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Tipo de Vivienda</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="tipoVivienda"/>	
											</fo:block>
										</fo:table-cell>
							
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
													<xsl:text disable-output-escaping="no">Monto Asegurado Contenido (UF)</xsl:text>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
													<xsl:value-of disable-output-escaping="no" select="montoAseguradoContenido"/>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>							
								</xsl:if>
					<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 											
								<xsl:if test="( sismo = 'SI' )">								
												
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">SISMO</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">SI</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Monto Asegurado Sismo (UF)</xsl:text>
										</fo:block>
									</fo:table-cell>
												
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="montoAseguradoSismo"/>
										</fo:block>
									</fo:table-cell>

								</fo:table-row>
								
								</xsl:if>

								<xsl:if test="( sismo = 'NO' )">								
								
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">SISMO</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">NO</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>

								</fo:table-row>
								
								</xsl:if>

								<xsl:if test="( robo = 'SI' )">								
								
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">ROBO</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">SI</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Monto Asegurado Robo (UF)</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="montoAseguradoRobo"/>
											</fo:block>
										</fo:table-cell>

									</fo:table-row>							
								
								</xsl:if>

								<xsl:if test="( robo = 'NO' )">								
								
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">ROBO</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">NO</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>

								</fo:table-row>
								
								</xsl:if>
							
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">INCENDIO</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">SI</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>

								</fo:table-row>
							</xsl:if>	
															
							</fo:table-body>
							</fo:table>
						</fo:block>
		
					</xsl:template>

					<xsl:template name="temp_tituloPrimas">

						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>PRIMAS</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						
					</xsl:template>
<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
					<xsl:template name="temp_tituloPrimas2">
					<fo:block span="none">
						<fo:table table-layout="fixed" width="100%" padding-before="2pt">

							<fo:table-column column-width="proportional-column-width(5)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>

							<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Plan</xsl:text>
									</fo:block>
								</fo:table-cell>
				
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0" >
										<xsl:text>Descripción</xsl:text>
									</fo:block>
								</fo:table-cell>
				
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Monto</xsl:text>
									</fo:block>
								</fo:table-cell>
				
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Prima Bruta</xsl:text>
									</fo:block>
								</fo:table-cell>
				
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Prima Bruta</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
				
							<fo:table-row>
								<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
									<fo:block color="#006666">
										<xsl:text></xsl:text>
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
									<fo:block color="#006666">
										<xsl:text></xsl:text>
									</fo:block>
								</fo:table-cell>
				
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Asegurado UF</xsl:text>
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Anual UF</xsl:text>
									</fo:block>
								</fo:table-cell>
				
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Mensual UF</xsl:text>
									</fo:block>
								</fo:table-cell>
								
							</fo:table-row>
					</fo:table-body>
					</fo:table>
					</fo:block>
					</xsl:template>

					<xsl:template name="temp_datosPrimas">
					
						<xsl:for-each select="primasDetalle/prima">

						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:value-of disable-output-escaping="no" select="descripcionPlan"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						
						<fo:block span="none">
						<fo:table table-layout="fixed" width="100%" padding-before="2pt">

							<fo:table-column column-width="proportional-column-width(5)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>

							<fo:table-body>

					
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="codigoPlan"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="descripcionPlan"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" display-align="before">
										<fo:block white-space-collapse="false"  text-align="center" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="montoAsegurado"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" display-align="before">
										<fo:block white-space-collapse="false"  text-align="center" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="primaBrutaAnual"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" display-align="before">
										<fo:block white-space-collapse="false"  text-align="center" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="primaBrutaMensual"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
																								
							</fo:table-body>
							
						</fo:table>
						</fo:block>
						
						</xsl:for-each>

					</xsl:template>
</xsl:if>








<xsl:if test="( codigoPlanAImprimir = 'HF' )"> 

			<xsl:if test="( materiaAsegurada = '1' )">								


					<xsl:template name="temp_tituloPrimas2">
					<fo:block span="none">
						<fo:table table-layout="fixed" width="100%" padding-before="2pt">

							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(18)"/>
							<fo:table-column column-width="proportional-column-width(18)"/>
						<xsl:for-each select="primasDetalle/prima">		
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="center" padding-before="6pt" number-columns-spanned="4">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="descripcion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="2">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Monto Asegurado (UF)</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="2">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Primas Brutas Mensuales UF</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Edificio</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>&#0160;</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Sismo</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
									
									
									<xsl:for-each select="valores">	
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-left-style="solid" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAsegurado"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>&#0160;</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoIncendio"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoIncendioSismo"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="4">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-top-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								</xsl:for-each>	
							</fo:table-body>	
							</xsl:for-each>						
						</fo:table>
					</fo:block>
					</xsl:template>
			</xsl:if>
			
			
			<xsl:if test="( materiaAsegurada = '2' )">								

					<xsl:template name="temp_tituloPrimas2">
					<fo:block span="none">
						<fo:table table-layout="fixed" width="100%" padding-before="2pt">

							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(18)"/>
							<fo:table-column column-width="proportional-column-width(18)"/>
							<fo:table-column column-width="proportional-column-width(24)"/>
						<xsl:for-each select="primasDetalle/prima">		
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="center" padding-before="6pt" number-columns-spanned="7">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="descripcion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="2">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Monto Asegurado (UF)</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="4">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Primas Brutas Mensuales UF</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Contenido</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Robo</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Robo</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Sismo</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Robo + Sismo</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
									
									
									<xsl:for-each select="valores">	
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-left-style="solid" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoContenido"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoRobo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoIncendio"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoIncendioRobo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoIncendioSismo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoIncendioRoboSismo"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="6">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-top-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								</xsl:for-each>	
							</fo:table-body>	
							</xsl:for-each>						
						</fo:table>
					</fo:block>
					</xsl:template>


			</xsl:if>
			
			<xsl:if test="( materiaAsegurada = '3' )">		
							
					<xsl:template name="temp_tituloPrimas2">
					<fo:block span="none">
						<fo:table table-layout="fixed" width="100%" padding-before="2pt">

							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(18)"/>
							<fo:table-column column-width="proportional-column-width(18)"/>
							<fo:table-column column-width="proportional-column-width(24)"/>
						<xsl:for-each select="primasDetalle/prima">		
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="center" padding-before="6pt" number-columns-spanned="7">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="descripcion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="3">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Monto Asegurado (UF)</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="4">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Primas Brutas Mensuales UF</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Edificio</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Contenido</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Robo</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Robo</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Sismo</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Robo + Sismo</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
									
									
									<xsl:for-each select="valores">	
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-left-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAsegurado"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-left-style="solid" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoContenido"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoRobo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoIncendio"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoIncendioRobo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoIncendioSismo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoIncendioRoboSismo"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="7">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-top-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								</xsl:for-each>	
							</fo:table-body>	
							</xsl:for-each>						
						</fo:table>
					</fo:block>
					</xsl:template>
				
			</xsl:if>
			
			
</xsl:if>













					<xsl:template name="temp_tituloCoberturas">
						<fo:block span="none">
							<fo:table table-layout="fixed" width="100%" padding-before="6pt">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>COBERTURAS</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>
															
					<xsl:template name="temp_datosCobertura">
					
						<xsl:for-each select="coberturaDetalle/coberturasPorPlan">
					
						<fo:block span="none">
							<fo:table table-layout="fixed" width="100%" padding-before="2pt">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:value-of disable-output-escaping="no" select="nombrePlan"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>					
					
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0" />
							<fo:table-body>
								
								<xsl:for-each select="cobertura">
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="nombreCobertura"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>		
								</xsl:for-each>
								
							</fo:table-body>
							</fo:table>
						</fo:block>
					
						</xsl:for-each>
					
					</xsl:template> 
					
					
					<xsl:template name="temp_tituloDeducible">

						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>DEDUCIBLE</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						
					</xsl:template>
					
					<xsl:template name="temp_datosDeducible">
						<fo:block span="none">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
											<fo:block padding-before="3pt" font-size="11.0pt">Deducibles indicados en las Coberturas del Plan </fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>						
					
					<xsl:template name="temp_tituloDetallePago">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>DETALLE DE PAGO</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>	









<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
					
					<xsl:template name="temp_datosDetallePago">
					
						<xsl:for-each select="primasDetalle/prima">
					
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:value-of disable-output-escaping="no" select="descripcionPlan"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-column column-width="proportional-column-width(25)" />
								<fo:table-column column-width="proportional-column-width(25)"/>
										
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Prima bruta anual UF :</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="primaBrutaAnual"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
						
								</fo:table-body>
							</fo:table>
						</fo:block>
						
						</xsl:for-each>
						
					</xsl:template>
</xsl:if>					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
<xsl:if test="( codigoPlanAImprimir = 'HF' )"> 

			<xsl:if test="( materiaAsegurada = '1' )">								


					<xsl:template name="temp_datosDetallePago">
					<fo:block span="none">
						<fo:table table-layout="fixed" width="100%" padding-before="2pt">

							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(18)"/>
							<fo:table-column column-width="proportional-column-width(18)"/>
						<xsl:for-each select="primasDetalle/prima">		
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="center" padding-before="6pt" number-columns-spanned="4">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="descripcion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="2">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Monto Asegurado (UF)</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="2">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Primas Brutas Anuales UF</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Edificio</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>&#0160;</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Sismo</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
									
									
									<xsl:for-each select="valores">	
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-left-style="solid" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAsegurado"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>&#0160;</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAnualIncendio"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAnualIncendioSismo"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="4">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-top-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								</xsl:for-each>	
							</fo:table-body>	
							</xsl:for-each>						
						</fo:table>
					</fo:block>
					</xsl:template>
			</xsl:if>
			
			
			<xsl:if test="( materiaAsegurada = '2' )">								

					<xsl:template name="temp_datosDetallePago">
					<fo:block span="none">
						<fo:table table-layout="fixed" width="100%" padding-before="2pt">

							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(18)"/>
							<fo:table-column column-width="proportional-column-width(18)"/>
							<fo:table-column column-width="proportional-column-width(24)"/>
						<xsl:for-each select="primasDetalle/prima">		
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="center" padding-before="6pt" number-columns-spanned="7">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="descripcion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="2">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Monto Asegurado (UF)</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="4">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Primas Brutas Anuales UF</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Contenido</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Robo</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Robo</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Sismo</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Robo + Sismo</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
									
									
									<xsl:for-each select="valores">	
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-left-style="solid" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoContenido"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoRobo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAnualIncendio"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAnualIncendioRobo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAnualIncendioSismo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAnualIncendioRoboSismo"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="6">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-top-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								</xsl:for-each>	
							</fo:table-body>	
							</xsl:for-each>						
						</fo:table>
					</fo:block>
					</xsl:template>


			</xsl:if>
			
			<xsl:if test="( materiaAsegurada = '3' )">		
							
					<xsl:template name="temp_datosDetallePago">
					<fo:block span="none">
						<fo:table table-layout="fixed" width="100%" padding-before="2pt">

							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(18)"/>
							<fo:table-column column-width="proportional-column-width(18)"/>
							<fo:table-column column-width="proportional-column-width(24)"/>
						<xsl:for-each select="primasDetalle/prima">		
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="center" padding-before="6pt" number-columns-spanned="7">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="descripcion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="3">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Monto Asegurado (UF)</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="4">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Primas Brutas Anuales UF</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Edificio</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Contenido</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Robo</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Robo</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Sismo</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text>Incendio + Robo + Sismo</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
									
									
									<xsl:for-each select="valores">	
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-left-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAsegurado"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-left-style="solid" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoContenido"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoRobo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAnualIncendio"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAnualIncendioRobo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAnualIncendioSismo"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" border-right-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:value-of disable-output-escaping="no" select="montoAnualIncendioRoboSismo"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" number-columns-spanned="7">
										<fo:block white-space-collapse="true" text-align="center" color="#006666" font-size="11.0pt" background-color="#f0f0f0" border-top-style="solid" border-width="1.0pt" border-color="#000000">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								</xsl:for-each>	
							</fo:table-body>	
							</xsl:for-each>						
						</fo:table>
					</fo:block>
					</xsl:template>
				
			</xsl:if>
			
			
</xsl:if>
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					<xsl:template name="temp_tituloMediosPago">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>MEDIOS DE PAGO DISPONIBLES</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>	
					
					<xsl:template name="temp_datosMediosPago">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(10)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(35)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(10)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(35)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(10)" background-color="#f0f0f0"/>
										
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Primer pago</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Futuros pagos</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<!-- <xsl:value-of disable-output-escaping="no" select="fechaHoy"/>-->
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									
															
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>

					<xsl:template name="temp_datosMediosPago2">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(15)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(30)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(15)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(30)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(10)" background-color="#f0f0f0"/>
										
								<fo:table-body>
																	
									<xsl:for-each select="mediosPago/formaPago">
																	
									<fo:table-row>
									
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												
											</fo:block>
										</fo:table-cell>
																										
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">											
												<xsl:value-of disable-output-escaping="no" select="nombreFormaPago1"/>
											</fo:block>
										</fo:table-cell>

										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												
											</fo:block>
										</fo:table-cell>
	
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="nombreFormaPago2"/>
											</fo:block>
										</fo:table-cell>
										
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												
											</fo:block>
										</fo:table-cell>
																			
										
									</fo:table-row>	
								
										
									</xsl:for-each>
																							
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>
					
					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  **************************************** CONDICIONES PARTICULARES Y DECLARACIONES********************* -->
					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->

					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
										<xsl:call-template name="temp_tituloCondicionesParticulares"/>
										<xsl:call-template name="temp_datosCondicionesParticulares"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<xsl:template name="temp_vigencia">
						<!-- GENERATE TABLE START-->
						<fo:block span="none">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
											<fo:block padding-before="3pt" font-size="11.0pt">La vigencia de esta cotización es de 10 días </fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>					

					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  **************************************** FIRMAS ****************************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->


					<xsl:template name="temp_firmas">
						<fo:table table-layout="fixed"  width="50%" padding-before="35pt">
								<fo:table-column column-width="proportional-column-width(45)"/>
								<fo:table-column column-width="proportional-column-width(10)"/>
								<fo:table-column column-width="proportional-column-width(45)"/>
								<fo:table-body>
								<fo:table-row keep-with-next="always">
									<fo:table-cell text-align="center" display-align="center">
										<fo:block color="#006666"><xsl:value-of select="fechaCotizacion"/></fo:block>
									</fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center">
										<fo:block>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center">
										<fo:block color="#006666">
											<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/FIR_COR2.gif')</xsl:attribute> 
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row keep-with-next="always">
									<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
										<fo:block color="#006666"><xsl:text>Fecha</xsl:text></fo:block>
									</fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
										<fo:block color="#006666"><xsl:text>Corredor</xsl:text></fo:block>
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
	
	<!-- Fin documento principal -->
		
	<xsl:template name="temp_da_salto_pag">
		<fo:block break-before="page"></fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datos_logos_cabecera">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(40)"/>
				<fo:table-column column-width="proportional-column-width(30)"/>
				<fo:table-column column-width="proportional-column-width(30)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="30pt" width="120pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell display-align="before" >
							<fo:block color="#000000" font-size="5pt" text-align="center" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic  scaling="uniform" height="30pt" width="120px">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	
	
	<!-- ****************************************** CONDICIONES PARTICULARES  ***************************************** -->

	<xsl:template name="temp_tituloCondicionesParticulares">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>CONDICIONES PARTICULARES Y DECLARACIONES ESPECIALES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datosCondicionesParticulares">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
<xsl:if test="( codigoPlanAImprimir = 'HF' )"> 
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >Honorarios Profesionales:</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Se acuerda y conviene que esta póliza cubre los costos y gastos necesarios y razonables  incurridos por el Asegurado, en honorarios adicionales de Arquitectos, Ingenieros  supervisores y otros profesionales, única y directamente con  respecto a reparaciones de cualquier bien asegurado  el cual  haya  sido  dañado por un siniestro cubierto por la  póliza, hasta el  límite señalado en las condiciones particulares de la presente póliza por evento y agregado vigencia.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Se excluyen de esta extensión  los gastos provenientes de la justificación de  un siniestro y, los gastos  por demandas  en contra  de la Compañía.  </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >Daño Eléctrico:</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Se entiende y  conviene que la póliza se extiende a cubrir el daño eléctrico, entendiéndose   por  tal toda pérdida, destrucción  o  daño físico, causado  a las instalaciones del asegurado relacionadas con la electricidad, esto es: tableros eléctricos de distribución y recepción de energía eléctrica, tendidos eléctricos y similares, excluyendo todo tipo  de   maquinarias, equipos  y  artefactos. Para tales efectos los daños serán aquellos causados por fenómenos asociados a la energía misma  o   potencia  eléctrica, o campos magnéticos, cuyo  origen  sea súbito, accidental  y  fortuito; quedan cubiertos entre  otros  arcos, cortocircuitos, falla de aislación, inducción, sobretensión, acción de electricidad  estática y cualquier otro similar, hasta el límite detallado en las condiciones particulares de la presente póliza.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >Daños Materiales Causados  por construcción o demolición Edificios Colindantes.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Se cubre los daños materiales a los bienes asegurados, ocasionados directamente por las obras y faenas de la demolición o construcción de edificaciones en propiedades colindantes. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">Daños causados por Granizo</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Se cubre los daños físicos causados por la acción directa e inmediata de granizo en la propiedad del asegurado registrada en las condiciones particulares del seguro.</fo:block>
							<!-- <fo:block padding-before="0pt" font-size="11.0pt">Rejas de protección en todas las ventanas y puertas con cristales.</fo:block>-->
							<fo:block padding-before="0pt" font-size="11.0pt">Para efectos de la presente cobertura se entenderá por:</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >Granizo</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Precipitación helada que cae con fuerza en forma de granos de hielo.</fo:block>
							
							<fo:block padding-before="0pt" font-size="11.0pt">La Compañía en ningún caso indemnizará las pérdidas o daños causados por granizo a:</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">- Edificios terminados que por la naturaleza de su ocupación carezcan total o parcialmente de puertas, ventanas o muros macizos completos y/o cuando dichos edificios no hayan sido diseñados y construidos para soportar estas circunstancias. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">- Edificios que no hayan sido diseñados y construidos y construidos para soportar estas circunstancias.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">- Contenidos del bien asegurado. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">- Daños o pérdidas preexistentes al inicio de vigencia de este seguro, que hayan sido o no del conocimiento del asegurado.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">- Pérdida o daños de cualquier tipo ocasionados por deficiencias en la construcción o en su diseño, o por falta de mantenimiento de los bienes materia del seguro.</fo:block>
							
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >COBERTURAS ADICIONALES OPCIONALES: </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">SISMO: aplica solo si tiene este adicional </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">1.- Incendio a consecuencia de sismo, con un deducible del  1% del monto total asegurado, con un mínimo de UF25. (excepto adobe)   (CAD 1 91 067) </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">2.- Daños físicos causados por sismo. con un deducible del 1% del monto total asegurado, con un mínimo de UF25. (excepto adobe)  (CAD 1 91 068) </fo:block>
					<!-- 		
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">ROBO: aplica con cobertura adicional (Titulo 2º / POL 1 98 058)</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">1.- Robo con fractura y/o asalto, con un límite máximo a indemnizar por objeto de UF20</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">2.- El deducible es el 10% de la pérdida con un mínimo de UF5.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">3.- Limite máximo de cobertura de acuerdo al plan.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">4.- Bajo este opcional sólo se cubrirán muebles, menaje y ropa incluyendo equipos eléctricos y electrónicos, todo de reconocido uso doméstico, depositados dentro del edificio principal y anexos, excluyendo patios y jardines.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">5.- No se requerirá estipulación expresa para los siguientes objetos: equipos de video estacionario, televisores y equipos de música. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">6.- Incluye deterioro por UF100. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">7.- Vestuario: Limite de Cobertura de 10% del monto asegurado en Robo.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">8.- CDs, DVDs y Juegos de Video: Limite de Cobertura de 5% del monto asegurado en Robo. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">9.- Se excluyen: perfumes, cajas fuertes, bicicletas, licores, relojes, notebook, palm, teléfonos celulares y equipos móviles en general, cámara de video. </fo:block>							
				 -->
				 
				 <fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">Condiciones de suscripción para cobertura de robo.</fo:block>							
<fo:block padding-before="0pt" font-size="11.0pt">- Bajo este opcional sólo se cubrirán muebles, menaje y ropa incluyendo equipos eléctricos y electrónicos, todo </fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">de reconocido uso doméstico, depositados dentro del edificio principal y anexos, excluyendo patios y jardines.</fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">- Para contratar la cobertura de Robo, la vivienda deberá contar con chapa de seguridad en todas las puertas de </fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">acceso y además con al menos de una de las siguientes medidas de seguridad:                                   </fo:block>
<fo:block padding-before="2pt" font-size="11.0pt">- Debe tener rejas de protección en todas las puertas de cristal y  en ventanas.       </fo:block>
<fo:block padding-before="2pt" font-size="11.0pt">- Debe tener alarma central operativa.                                                 </fo:block>
<fo:block padding-before="2pt" font-size="11.0pt">- Debe estar situada en condominio o edificio, en ambos caso con vigilancia permanente.</fo:block>
<fo:block padding-before="2pt" font-size="11.0pt">- Debe ser departamentos en tercer piso o superior.                                    </fo:block>
<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">Límites Y Deducibles                                                                                      </fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">- Robo con fractura y/o asalto, con un límite máximo a indemnizar por objeto de UF20.                                       </fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">- El deducible es el 10% de la pérdida con un mínimo de UF5.                                                                </fo:block>
<!-- <fo:block padding-before="0pt" font-size="11.0pt">- Incluye deterioro por UF100.                                                                                              </fo:block>-->
<fo:block padding-before="0pt" font-size="11.0pt">- Se incluye deterioro de recinto a consecuencia de robo por UF100.                                                                                              </fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">- Vestuario: Límite de Cobertura de 10% del monto asegurado en Robo.                                                         </fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">-CD, DVD y Juegos: Límite de Cobertura de 5% del monto asegurado en Robo.                                                    </fo:block>
<fo:block padding-before="2pt" font-size="11.0pt">- Notebooks:  Límite máximo de indemnización de UF10                                                                        </fo:block>
<fo:block padding-before="2pt" font-size="11.0pt">- Cámaras Digitales y Cámaras de Videos: Límite máximo de indemnización  de UF5                                             </fo:block>
<fo:block padding-before="2pt" font-size="11.0pt">- Se excluyen: perfumes, cajas fuertes, bicicletas, licores, relojes, palm, teléfonos celulares y equipos móviles en general.</fo:block>
<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">Consideraciones:</fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">En caso de robo de  Notebooks, Cámaras Digitales y Cámaras de Video, el asegurado deberá justificar o acreditar  </fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">el bien, mediante documento legalizado entregado por la casa comercial, factura o  guía de despacho a nombre del </fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">asegurado o de alguna de las personas que habiten en la propiedad del asegurado.                                 </fo:block>
<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">Depreciación equipos portátiles:</fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">Se aplicará una depreciación del 3% mensual para los artículos: notebooks, cámaras de video y cámaras digitales.</fo:block> 
<fo:block padding-before="0pt" font-size="11.0pt">Para el  computador notebook se establece un valor residual de UF2.                                            </fo:block>
<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">DEPRECIACIÓN PARA CONTENIDO POR ROBO :</fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">Se aplicará la siguiente tabla de depreciación:</fo:block>




<fo:block padding-before="10pt" text-align="center" padding-after="10pt">
							<fo:table table-layout="fixed" width="50%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
								<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>DESCRIPCIÓN</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>%</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Electrodomésticos y Línea Blanca:  Refrigerador, Lavadora, Secadora y Camas.-</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Reposición a Nuevo</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Electrodomésticos y Línea Blanca : aspiradoras, máquinas de afeitar y depiladoras.</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>30%</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Muebles: (Closet, centros de entretención, rack, living, comedores, etc).</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>25%</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Televisores y equipos de audio /sonido/video</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>30%</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Cortinas, alfombras, menajes (mantelería, loza, cristales, etc).</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>20%</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Colchones, ropa de cama, vestuario en general</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>30%</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Otros No Clasificados</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>30%</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
				 
	
				 
				 			
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >DEDUCIBLES</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Rotura de cristales:  deducible de UF1 en toda  y cada  indemnización. </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Daños físicos por rotura de cañerías o desbordamiento de  estanques matrices, filtración de lluvias, inundación, desbordamiento de cauce, avalanchas, aluviones y deslizamientos, viento: deducible de UF5 en toda y cada indemnización. </fo:block>							
						<!-- 	
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >Condiciones de Suscripción </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">- Sin inspección para edificios sólidos de menos de 20 años. </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">Para la cobertura de Robo se debe contar con alguna de las siguientes medidas de seguridad:</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">- Rejas de protección en todas las ventanas y puertas con cristales. </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">- Alarma central conectada a todas las puertas y ventanas.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">- Departamento en tercer piso o superior.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">- Edificio con vigilancia permanente.</fo:block>							
							 -->
							 
<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >Condiciones de Suscripción </fo:block>							
<fo:block padding-before="0pt" font-size="11.0pt">- Sin inspección para edificios sólidos de menos de 20 años. </fo:block>							
<fo:block padding-before="0pt" font-size="11.0pt">- Para Contenido se podrá contratar hasta un 100% del monto total asegurado Edificio.</fo:block>							
<fo:block padding-before="0pt" font-size="11.0pt">Los montos asegurados rigen bajo la modalidad a primera pérdida. Esta modalidad ante la eventualidad de</fo:block>							
<fo:block padding-before="0pt" font-size="11.0pt">siniestro (pérdida total que afecte al bien asegurado), quedará acotado como máximo hasta el valor real de</fo:block>
<fo:block padding-before="0pt" font-size="11.0pt">dicho bien. Por lo tanto, no estará cubierto el valor dañado que exceda del límite a primera pérdida contratado</fo:block>							
<fo:block padding-before="0pt" font-size="11.0pt">bajo esta póliza.</fo:block>

							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >Riesgos Excluidos </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Riesgos rurales.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Se excluye rotura de cañerías para riesgos de más de 30 años.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Se excluyen las coberturas de sismo para riesgos construidos total o parcialmente de adobe y sus contenidos. (aplica solo si tiene esta cobertura) </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">- Se excluyen las viviendas de uso vacacional o no habitual (mas de 60 días continuos deshabitada)</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">Sectores de Alto Jahuel, Villa Las Rosas y Villa Oscar Castro ubicadas en las comunas de Maipú, Pudahuel y Cerrillos respectivamente.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">Sectores de Collao y Palomares en Concepción, incluyendo Valle Nonguen, Rios de Chile, Los Fresnos, Vegas  de Nonguen, Los Lirios, El Huascar, Lagos de Chile, Parque Residencial Collao y Condominio Residencial Los Abedules.</fo:block>							

							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >Especificaciones Asistencia Hogar Ampliada: </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Gasfitería: hasta 3 eventos al año con un máximo de indemnización de UF1.5 por evento.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Electricidad: hasta 3 eventos al año con un máximo de indemnización de UF1.5 por evento.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Cerrajería: hasta 3 eventos al año con un máximo de indemnización de UF1.5 por evento.  </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Salvamento: UF30 por evento</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Cristalería: hasta 3 eventos al año con un máximo de indemnización de UF2.0 por evento.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Seguridad y vigilancia: Servicio de vigilancia en caso de vulnerabilidad de la vivienda y/o bienes en su interior. Por un máximo de 3 días. Máximo 2 eventos por año.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Traslado de muebles: Servicio de traslado de muebles en caso de inhabitabilidad de la vivienda por razones de seguridad o conservación, dentro de un radio de 50 Km. El servicio esta limitado a un tope máximo de UF10 y a un evento por año.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">- Guarda de muebles: Servicio de depósito de muebles en caso de inhabitabilidad de la vivienda. El servicio está limitado a un evento por año por período máximo de 7 días y un monto máximo de UF10. Máximo 1 evento por año</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Traslado del Vehículo: Pasaje de avión clase económica, autobús o tren, para que el asegurado pueda trasladarse en busca del vehículo de su propiedad, dentro del territorio nacional. (Complementario a Guarda Muebles)</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Hospedaje: Gastos de estadía en un hotel para el asegurado y su grupo familiar residentes en la vivienda en caso de inhabitabilidad. Los gastos de traslado al hotel y el respectivo retorno, estarán a cargo de los asegurados. El servicio está limitado a un monto máximo de UF10.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Regreso Anticipado: En caso de incendio u otros daños, en que el asegurado titular se encuentre de viaje a más de 300 Km. de la vivienda y dentro del territorio nacional. Se pondrá a disposición un pasaje de avión clase económica, autobús o tren, para que pueda retornar. Máximo 1 evento por año.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Destapaciones: Servicio de plomería para destapar obstrucciones en caños en la vivienda o inmueble asegurado. Limitado a un tope máximo de UF5 y a un evento por año.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Orientación legal telefónica en temas referentes al hogar, tales como contrato de arriendo, contratos personal  domestico.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Coordinación con prestadores: Se coordinará con los prestadores correspondientes, a solicitud del asegurado, el servicio a domicilio o donde éste lo requiera, según la disponibilidad del beneficiario.  Estos servicios serán  cargo del asegurado.</fo:block>														
							
							<fo:block padding-before="0pt" font-size="11.0pt">Los servicios estarán garantizados por hasta 90 días (Servicios de Hogar)</fo:block>														
							<fo:block padding-before="0pt" font-size="11.0pt">-	Reparaciones en el Hogar</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">-	Servicio de plomería.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">-	Servicio de electricidad.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">-	Servicio de cerrajería.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">-	Servicio de cristalería.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">-	Servicios de Albañilería.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">-	Limpieza Tapices y Alfombras.</fo:block>
							
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >-	Servicio de compra Nocturna de Medicamentos.</fo:block>														
							<fo:block padding-before="0pt" font-size="11.0pt" >Servicio de localización, compra y entrega de medicamentos en el domicilio del asegurado, con un horario de prestación establecido entre las 23:00 PM y las 06:00 AM.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >Queda excluido de esta prestación:</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">a)  El costo de los medicamentos en cuestión,</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">b) Los requerimientos que representen la prestación del servicio fuera de radios urbanos,</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">c) Compras de medicamentos que requieran receta retenida. El presente servicio estará sujeto a un mínimo de compra de $6.000. En  caso contrario,  el beneficiario deberá pagar un adicional de $1.000</fo:block>
							
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >MANDATO:</fo:block>																					
							<fo:block padding-before="0pt" font-size="11.0pt">El contratante acepta que la compañía renueva automáticamente, tácita y sucesivamente por periodos anuales a partir del vencimiento a la póliza que da origen la presente propuesta, salvo voluntad contraria manifestada por escrito por el contratante, mediante carta certificada o fax dirigido a BCI Seguros Generales SA. o a BCl Corredores de Seguros SA., con 30 días de anticipación a la fecha de término primitivo o de cualquiera de sus prorrogas, Asimismo, autoriza a BCI  Corredores de Seguros SA., para que suscriba todos los documentos que sean necesarios para la emisión de la póliza de seguro, sus futuras renovaciones y eventuales modificaciones. </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">El Seguro ofrecido es intermediado por BCl corredores de Seguros S.A. y la compañía que cubre el riesgo es BCI Seguros Generales SA. </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre elección de intermediario y compañía aseguradora. </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea aceptada por el asegurador y se inicie la vigencia de la póliza. (Circular M°1.390 S.V.S.). </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">Para la emisión de la  presente  propuesta ha sido determinada la declaración formulada por el contratante, respecto de otros seguros contratados que hayan amparado al vehículo individualizado anteriormente y a quien sea el conductor habitual de éste. </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">Todas las menciones de esta  propuesta  formarán parte integrante de las Condiciones Particulares de la póliza. </fo:block>							

							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >CODIGO DE AUTORREGULACIÓN:</fo:block>																					
							<fo:block padding-before="0pt" font-size="11.0pt">BCI Seguros Generales S.A. se encuentra adherida voluntariamente al Código de Autorregulación y al Compendio de Buenas Prácticas de las Compañías de Seguros, cuyo propósito es propender al desarrollo del mercado de seguros, en consonancia con los principios de libre competencia y buena fe que debe existir entre las empresas, y entre éstas y sus clientes.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">Copia del Compendio de Buenas Prácticas Corporativas de las Compañías de Seguros se encuentra a disposición de los interesados en cualquiera de las Oficinas de BCI Seguros Generales S.A. y en www.aach.cl. </fo:block>							
</xsl:if>
<xsl:if test="( codigoPlanAImprimir != 'HF' )"> 
							<fo:block padding-before="0pt" font-size="11.0pt">OPCIONAL SISMO: El monto asegurado en Sismo será la suma de los montos que Ud. haya asegurado en Edificio y Contenido. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">OPCIONAL ROBO: El monto asegurado en Robo será el monto que Ud. haya asegurado en Contenido. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Robo con fractura y/o asalto, con un límite máximo a indemnizar por objeto de UF20. El deducible es el 10% de la pérdida con un mínimo de UF5.  Se incluye deterioro hasta UF100.  </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Bajo este opcional sólo se cubrirán muebles, menaje y ropa incluyendo equipos eléctricos y electrónicos, todo de reconocido uso doméstico, depositados dentro del edificio principal y anexos, excluyendo patios y jardines.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">EXCLUSIONES: perfumes, cajas fuertes, bicicletas, licores, relojes, notebook, palm, teléfonos celulares y equipos móviles en general, cámaras de video. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Vestuario: Limite de Cobertura de 10% del monto asegurado en Robo.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">CD, DVD y Juegos: Limite de Cobertura de 5% del monto asegurado en Robo. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Para Plan Preferente: Rige límite máximo a indemnizar por objeto de UF20 excepto equipos de video estacionario y móvil, televisores y equipos de audio con un límite de UF50.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Requisitos de Asegurabilidad para Cobertura Robo:</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Rejas de protección en todas las ventanas y puertas con cristales. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Alarma central conectada a todas las puertas y ventanas.         </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Está situada en  condominio o edificio, ambos con vigilancia permanente. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Departamento en tercer piso o superior. </fo:block>
							
							<fo:block padding-before="0pt" font-size="11.0pt">RIESGOS EXCLUIDOS</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">-Riesgos rurales.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">-Se excluye rotura de cañerías para riesgos de más de 30 años.  </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">-Se excluyen las coberturas de sismo para riesgos construidos total o parcialmente de adobe y sus contenidos. (aplica solo si tiene esta cobertura) </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">-Se excluyen las viviendas de uso vacacional o no habitual (mas de 60 días continuos deshabitada) </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">En caso de siniestro, se excluye de la póliza la coberturas brindadas por la CAD 1 99 004 sobre Daños Materiales causados por Viento, Inundación y Desbordamiento de Cauces, para todas aquellas viviendas ubicados en: </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">-Sectores de Alto Jahuel, Villa Las Rosas y Villa Oscar Castro ubicadas en las comunas de Maipú, Pudahuel y Cerrillos respectivamente</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">- Sectores de Collao y Palomares en Concepción, incluyendo Valle Nonguen, Rios de Chile, Los Fresnos, Vegas  de Nonguen, Los Lirios, El Huascar, Lagos de Chile, Parque Residencial Collao y Condominio Residencial Los Abedules.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">EXCLUSIONES GENERALES </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Rigen todas las exclusiones del condicionado general de la POL 1 91 058 y de cada CAD. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">MANDATO</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">El contratante acepta que la compañía renueva automáticamente, tácita y sucesivamente  por periodos iguales el seguro a que da origen esta propuesta, salvo voluntad contraria manifestada por escrito por el contratante, mediante carta certificada o fax dirigido a BCI Seguros Generales S.A. o a BCI Corredores de Seguros S.A., con 30 días de anticipación a la fecha de término primitivo o de cualquiera de sus prorrogas. Asimismo, autoriza a BCI Corredores de Seguros S.A., para que suscriba todos los documentos que sean necesarios para la emisión  de la póliza de seguro, sus futuras renovaciones y eventuales modificaciones.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">CODIGO DE AUTORREGULACIÓN</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">BCI Seguros Generales S.A.,  se encuentra adherida voluntariamente al Código de Autorregulación y al Compendio de Buenas Prácticas de las Compañías de Seguros, cuyo propósito es propender al desarrollo del mercado de seguros, en consonancia de los principios de libre competencia y buena fe que debe existir entre las empresas y entre éstas y sus clientes.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Copia del Compendio de Buenas Prácticas Corporativas de las Compañías de Seguros se encuentra  a disposición de los interesados en cualquiera de las oficinas de BCI Seguros Generales S.A. y en www.aach.cl.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">El Seguro ofrecido es intermediado por BCI corredores de Seguros S.A. y la compañía que cubre el riesgo es BCI Seguros Generales S.A. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">El proponente ha tomado conocimiento del derecho a desistir sobre la contratación de los seguros y a la libre elección de intermediario y compañía aseguradora. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">"Como la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea aceptada por el asegurador y se inicie la vigencia de la póliza." (Circular Mº1.390 S.V.S.).</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Todas las menciones de esta propuesta formarán parte integrante de las Condiciones Particulares de la póliza. </fo:block>
</xsl:if>						
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<!-- ****************************************** CONDICIONES PARTICULARES ***************************************** -->
	
	
</xsl:stylesheet>

