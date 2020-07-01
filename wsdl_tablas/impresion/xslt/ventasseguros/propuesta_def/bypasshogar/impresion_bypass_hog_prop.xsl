<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<xsl:variable name="IMAGEEXT">gif</xsl:variable>

	<!-- Inicio documento principal -->

	<xsl:template match="DatosImpresionPropuesta">
		
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
						PROPUESTA DE SEGURO Nro 
						<xsl:value-of select="nroPropuesta"/>
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
										<xsl:text>PROPUESTA DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="nroPropuesta"/> 
										<xsl:text> - PRODUCTO </xsl:text><xsl:value-of disable-output-escaping="no" select="descripcionProducto"/> 
										</fo:block>
									</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
		
						</fo:block>
						
					</xsl:template>
					
					<xsl:template name="temp_Contratante">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>CONTRATANTE</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>
					
					<xsl:template name="temp_datosContrante">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Rut</xsl:text>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="rutContratante"/>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text>Nombres</xsl:text>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="nombresContratante"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Apellido Paterno</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="apellidoPaternoContratante"/>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Apellido Materno</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="apellidoMaternoContratante"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>						

								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Dirección Postal</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="direccionPostalContratante"/>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Ciudad Postal</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="ciudadPostalContratante"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>						
									
								<fo:table-row>						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text>Comuna Postal</xsl:text>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="comunaPostalContratante"/>
										</fo:block>
									</fo:table-cell>

									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text>Teléfono</xsl:text>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="telefonoContratante"/>
										</fo:block>
									</fo:table-cell>

								</fo:table-row>					
											
							</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>

					<xsl:template name="temp_AFavor">
						
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>A FAVOR</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>
					
					<xsl:template name="temp_datosAFavor">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Rut</xsl:text>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="rutAfavor"/>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text>Nombres</xsl:text>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="nombresAfavor"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Apellido Paterno</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="apellidoPaternoAfavor"/>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Apellido Materno</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="apellidoMaternoAfavor"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>						

								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Dirección Postal</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="direccionPostalAfavor"/>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Ciudad Postal</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="ciudadPostalAfavor"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>						
									
								<fo:table-row>						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text>Comuna Postal</xsl:text>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="comunaPostalAfavor"/>
										</fo:block>
									</fo:table-cell>

									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text>Teléfono</xsl:text>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="telefonoAfavor"/>
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
												<xsl:if test="( codigoPlan = 'HF' )"> 					
													<xsl:if test="( materiaAsegurada = '1' )">
															<xsl:text>MATERIA ASEGURADA PARA EL RAMO MULTIRIESGO HOGAR - Sólo Edificio</xsl:text>			
													</xsl:if>	
													<xsl:if test="( materiaAsegurada = '2' )">
															<xsl:text>MATERIA ASEGURADA PARA EL RAMO MULTIRIESGO HOGAR - Sólo Contenido</xsl:text>
													</xsl:if>	
													<xsl:if test="( materiaAsegurada = '3' )">
															<xsl:text>MATERIA ASEGURADA PARA EL RAMO MULTIRIESGO HOGAR - Edificio + Contenido</xsl:text>
													</xsl:if>
												</xsl:if>	
												<xsl:if test="( codigoPlan != 'HF' )"> 	
													<xsl:text>MATERIA ASEGURADA PARA EL RAMO MULTIRIESGO HOGAR</xsl:text>			
												</xsl:if>															
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
											<xsl:text disable-output-escaping="no">Dirección</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="direccionPropiedad"/>
										</fo:block>
									</fo:table-cell>
						
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

								</fo:table-row>
							
								<fo:table-row>
						
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
									
								</fo:table-row>
								
								<fo:table-row>

									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text>Zona</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="zona"/>
										</fo:block>
									</fo:table-cell>

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
						
								</fo:table-row>
															
						<xsl:if test="( materiaAsegurada = '1' )">	
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
											<xsl:text disable-output-escaping="no">Monto Asegurado Edificio (UF)</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="montoAseguradoEdificio"/>
										</fo:block>
									</fo:table-cell>
									
									
								</fo:table-row>		
								<fo:table-row>											
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Actividad</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">HABITACIONAL</xsl:text>
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
											<xsl:text disable-output-escaping="no">Monto Asegurado Contenido (UF)</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="montoAseguradoContenido"/>
										</fo:block>
									</fo:table-cell>
									
									
								</fo:table-row>		
								<fo:table-row>											
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Actividad</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">HABITACIONAL</xsl:text>
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
											<xsl:text disable-output-escaping="no">Monto Asegurado Edificio (UF)</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="montoAseguradoEdificio"/>
										</fo:block>
									</fo:table-cell>
									
									
								</fo:table-row>		
								<fo:table-row>											
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Actividad</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">HABITACIONAL</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Monto Asegurado Contenido (UF)</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="montoAseguradoContenido"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								</xsl:if>
																
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
					
					<xsl:template name="temp_datosPrimas">

						<fo:block span="none">
						<fo:table table-layout="fixed" width="100%" padding-before="2pt">

							<fo:table-column column-width="proportional-column-width(8)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(22)"/>

							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Plan</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Descripción</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="false"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Monto Asegurado UF</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="false"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Prima Bruta Anual UF</xsl:text>
										</fo:block>
									</fo:table-cell>
						<!-- 			<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="false"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Prima Bruta Mensual UF</xsl:text>
										</fo:block>
									</fo:table-cell> -->
								</fo:table-row>
					
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
							<!-- 		<fo:table-cell text-align="center" display-align="before">
										<fo:block white-space-collapse="false"  text-align="center" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="primaBrutaMensual"/>
										</fo:block>
									</fo:table-cell>-->
								</fo:table-row>
																								
							</fo:table-body>
							
						</fo:table>
						</fo:block>

					</xsl:template>					
					
					<xsl:template name="temp_datosPrimas2">

						<fo:block span="none">
						<fo:table table-layout="fixed" width="100%" padding-before="2pt">

							<fo:table-column column-width="proportional-column-width(8)"/>
							<fo:table-column column-width="proportional-column-width(47)"/>
							<fo:table-column column-width="proportional-column-width(26)"/>
							<fo:table-column column-width="proportional-column-width(19)"/>

							<fo:table-body>																
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="left" color="#006666" font-size="11.0pt">
											<xsl:text>Prima Exenta</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" display-align="before">
										<fo:block white-space-collapse="false"  text-align="center" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="primaExentaAnualPlanSeleccionado"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="false"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="x"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="left" color="#006666" font-size="11.0pt">
											<xsl:text>Prima Afecta</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" display-align="before">
										<fo:block white-space-collapse="false"  text-align="center" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="primaAfectaAnualPlanSeleccionado"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="false"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="left" color="#006666" font-size="11.0pt">
											<xsl:text>IVA</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" display-align="before">
										<fo:block white-space-collapse="false"  text-align="center" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="ivaAnualPlanSeleccionado"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="false"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
							</fo:table-body>
							
						</fo:table>
						</fo:block>

					</xsl:template>
					
					
					<xsl:template name="temp_tituloCoberturas">
						<fo:block span="none">
							<fo:table table-layout="fixed" width="100%" padding-before="2pt">
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
					
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0" />
							<fo:table-body>
								<xsl:for-each select="coberturaDetalle/cobertura">
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
					
					<xsl:template name="temp_datosVigencia">
						<fo:block padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(24)"/>
								<fo:table-column column-width="proportional-column-width(76)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#dedede" padding-left="5pt">
											<fo:block font-weight="bold" color="#000066" font-size="12pt">
												<xsl:text>Vigencia del seguro</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#f0f0f0" padding-left="5pt" padding-right="5pt">
											<fo:block>
												Desde 12:01 del día <xsl:value-of select="fechaPropuesta"/>.    Hasta las 12:00 del día <xsl:value-of select="fechaFinPropuesta"/>.
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>	
										
					<xsl:template name="temp_tituloResponsablePago">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>RESPONSABLE DE PAGO</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>
	
					<xsl:template name="temp_datosResponsablePago">
						<fo:block span="none">
							<fo:table table-layout="fixed" width="100%" padding-before="2pt">
				
								<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
							
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Rut</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="rutResponsable"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Nombres</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="nombresResponsable"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Apellido Paterno</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="apellidoPaternoResponsable"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Apellido Materno</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="apellidoMaternoResponsable"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Dirección</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:value-of disable-output-escaping="no" select="direccionResponsable"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Comuna</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:value-of disable-output-escaping="no" select="comunaResponsable"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Ciudad</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:value-of disable-output-escaping="no" select="ciudadResponsable"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>
					
					<xsl:template name="temp_tituloPrimerPago">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
								<xsl:if test="( tienePrimerPago = 'S' )"> 
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>Primer Pago:</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>	
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>

					<xsl:template name="temp_datosPrimerPago">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
										
								<fo:table-body>
									<xsl:if test="( tienePrimerPago = 'S' )"> 
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before">
												<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
													<xsl:text>Forma de Pago :</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before">
												<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
													<xsl:value-of disable-output-escaping="no" select="formaPagoPrimerPago"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before">
												<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
													<xsl:text>Fecha :</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before">
												<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
													<xsl:value-of disable-output-escaping="no" select="fechaHoy"/>
												</fo:block>
											</fo:table-cell>
											</fo:table-row>

										<xsl:if test="( codigoFormaPagoPrimer = '1' )"> 
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:value-of disable-output-escaping="no" select="descripcionDocumentoPrimerPago"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:value-of disable-output-escaping="no" select="nroDocumentoPrimerPago"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
	
										</xsl:if>
											
										<xsl:if test="( codigoFormaPagoPrimer = '2' )"> 
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:value-of disable-output-escaping="no" select="descripcionDocumentoPrimerPago"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:value-of disable-output-escaping="no" select="nroDocumentoPrimerPago"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
	
										</xsl:if>
	
										<xsl:if test="( codigoFormaPagoPrimer = '3' )"> 
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:text>Banco :</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:text>BANCO DE CREDITO E INVERSIONES </xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:text>Nº de cuenta :</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:value-of disable-output-escaping="no" select="numeroCuentaPrimerPago"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:if>	
										
										<xsl:if test="( codigoFormaPagoPrimer = '4' )"> 	
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:text>N° de Tarjeta :</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
														<xsl:value-of disable-output-escaping="no" select="numeroTarjetaPrimerPago"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:if>			

										<xsl:if test="( codigoFormaPagoPrimer = '5' )"> 	

											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:text>Banco :</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:value-of disable-output-escaping="no" select="bancoPrimerPago"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:text>Nº de cuenta :</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:value-of disable-output-escaping="no" select="numeroCuentaPrimerPago"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>

										</xsl:if>			
																					
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:text>Valor :</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:value-of disable-output-escaping="no" select="valorPrimerPagoUF"/><xsl:text> UF</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:text>Valor (Pesos) :</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before">
													<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
														<xsl:text>$ </xsl:text><xsl:value-of disable-output-escaping="no" select="valorPrimerPagoPesos"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
						
									</xsl:if> 
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>
					
					
					<xsl:template name="temp_tituloFuturosPagos">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
								<xsl:if test="( tieneFuturosPagos = 'S' )"> 
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>Siguientes Pagos:</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>	
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>

					<xsl:template name="temp_datosFuturosPagos">
					<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							
							<fo:table-body>
							<xsl:if test="( tieneFuturosPagos = 'S' )"> 
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text>Forma de Pago</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="formaPagoFuturosPagos"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<xsl:if test="( codigoFormaPagoFuturosPagos = '1' )"> 
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="descripcionDocumentoFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="nroDocumentoFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
	
								</xsl:if>
									
								<xsl:if test="( codigoFormaPagoFuturosPagos = '2' )"> 
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="descripcionDocumentoFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="nroDocumentoFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
	
								</xsl:if>
									
								<xsl:if test="( codigoFormaPagoFuturosPagos = '3' )"> 	
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Banco :</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>BANCO DE CREDITO E INVERSIONES </xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Nº de cuenta :</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:value-of disable-output-escaping="no" select="numeroCuentaFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								
								<xsl:if test="( codigoFormaPagoFuturosPagos = '4' )"> 	
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>N° de Tarjeta :</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:value-of disable-output-escaping="no" select="numeroTarjetaFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								
								
								<xsl:if test="( codigoFormaPagoFuturosPagos = '5' )"> 	
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Banco :</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="bancoFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Nº de cuenta :</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:value-of disable-output-escaping="no" select="numeroCuentaFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>				
								
								<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Día de Pago :</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:value-of disable-output-escaping="no" select="diaPagoFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Cant.cuotas restantes:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:value-of disable-output-escaping="no" select="cantidadCuotas"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Valor Cuota :</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:value-of disable-output-escaping="no" select="valorFuturosPagosUF"/><xsl:text> UF</xsl:text>
											</fo:block>
										</fo:table-cell>
								</fo:table-row>
											
							</xsl:if> 
							</fo:table-body>
						</fo:table>
					</fo:block>
					</xsl:template>
					

					<xsl:template name="temp_tituloFactura">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>FACTURA (SOLO SI ES CONTRIBUYENTE DE IVA)</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>
	
					<xsl:template name="temp_datosFactura">
						<fo:block span="none" padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
								
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Envío de Factura</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="envioFactura"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Dirección</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:value-of disable-output-escaping="no" select="direccionFactura"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									
								</fo:table-body>
							</fo:table>
						</fo:block>
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" number-columns-spanned="4">
							<xsl:text>En caso afirmativo, el responsable del pago identificado anteriormente declara ser contribuyente de IVA.</xsl:text>
						</fo:block>
					</xsl:template>
	
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

					<fo:block padding-before="2pt">
<xsl:if test="( codigoPlan = 'HF' )"> 					
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >

										<xsl:call-template name="temp_tituloMandatoTerminosCortos"/>
										<xsl:call-template name="temp_datosMandatoTerminosCortos"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
</xsl:if>
					</fo:block>
					
					<fo:block padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block >
											<xsl:call-template name="temp_da_salto_pag"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>

					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
										<xsl:call-template name="temp_tituloInformacionDL251"/>
										<xsl:call-template name="temp_informacionDL251"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>					

					<xsl:template name="temp_firmas">
						<fo:table table-layout="fixed" width="100%" padding-before="10pt">
							<fo:table-column column-width="proportional-column-width(16)"/>
							<fo:table-column column-width="proportional-column-width(4)"/>
							<fo:table-column column-width="proportional-column-width(24)"/>
							<fo:table-column column-width="proportional-column-width(4)"/>
							<fo:table-column column-width="proportional-column-width(24)"/>
							<fo:table-column column-width="proportional-column-width(4)"/>
							<fo:table-column column-width="proportional-column-width(24)"/>
							<fo:table-body>
								<fo:table-row keep-with-next="always">
									<fo:table-cell text-align="center" display-align="center">
										<fo:block><xsl:value-of select="fechaHoy"/></fo:block>
									</fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center">
										<fo:block></fo:block>
									</fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center">
										<fo:block>
											<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/FIR_COR2.gif')</xsl:attribute> 
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell  text-align="center" display-align="center">
										<fo:block>
												<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/fir_axa.gif')</xsl:attribute> 
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row keep-with-next="always">
									<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
										<fo:block><xsl:text>Fecha</xsl:text></fo:block>
									</fo:table-cell>
									<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
										<fo:block><xsl:text>Contratante</xsl:text></fo:block>
										</fo:table-cell>
										<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
										<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
											<fo:block>
											<xsl:text>Corredor</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
										<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
											<fo:block>
												<xsl:text>Compañia</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
							
							</fo:table-body>
					
						</fo:table>
					</xsl:template>																
																	
					<xsl:if test="( codigoFormaPagoFuturosPagos = '3' )"> 
						
						<fo:block padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block >
											<xsl:call-template name="temp_da_salto_pag"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						
						<fo:block padding-before="2pt">
						
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block >
												<xsl:call-template name="temp_datos_logos"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							
						</fo:block>		

						<fo:block padding-before="2pt">
						
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block >
												<xsl:call-template name="temp_mandatos_pac"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							
						</fo:block>		
												
					</xsl:if>	

					<xsl:if test="( codigoFormaPagoFuturosPagos = '4' )"> 
					
							<fo:block padding-before="28pt">
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(57)"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell>
													<fo:block >
														<xsl:call-template name="temp_da_salto_pag"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
							</fo:block>
							
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_datos_logos"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						
							
							<fo:block padding-before="28pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_mandatos_pat"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>	

					<xsl:if test="( codigoFormaPagoFuturosPagos = '6' )"> 
				
							<fo:block padding-before="28pt">
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(57)"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell>
													<fo:block >
														<xsl:call-template name="temp_da_salto_pag"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
							</fo:block>
							
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_datos_logos"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						
							
							<fo:block padding-before="28pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_mandatos_planilla"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>	
		
					<xsl:if test="( codigoFormaPagoFuturosPagos = '5' )"> 
						
						<fo:block padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block >
											<xsl:call-template name="temp_da_salto_pag"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						
						<fo:block padding-before="2pt">
						
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block >
												<xsl:call-template name="temp_datos_logos"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							
						</fo:block>		

						<fo:block padding-before="2pt">
						
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(57)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block >
												<xsl:call-template name="temp_mandatos_pac"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							
						</fo:block>		
						
						
					</xsl:if>

					<xsl:if test="( codigoFormaPagoFuturosPagos = '9' )"> 
					
							<fo:block padding-before="28pt">
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(57)"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell>
													<fo:block >
														<xsl:call-template name="temp_da_salto_pag"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
							</fo:block>
							
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_datos_logos"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						
							
							<fo:block padding-before="28pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_mandatos_pat"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>	



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
	
	<xsl:template name="temp_datos_logos">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(35)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
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
						
						<fo:table-cell vertical-align="top" text-align="center" display-align="before">
							<fo:block color="#000000" font-size="20pt" text-align="center" font-weight="bold">
								
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
	</xsl:template>
		
	<xsl:template name="temp_datos_logos_cabecera">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(35)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="100pt" width="300pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell display-align="before" >
							<fo:block color="#000000" font-size="5pt" text-align="center" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell vertical-align="top" text-align="center" display-align="before">
							<fo:block color="#000000" font-size="20pt" text-align="center" font-weight="bold">
								<xsl:apply-templates select="codigobarras-39" />
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic  scaling="uniform" height="35pt" width="120pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								
							</fo:block>
						</fo:table-cell>

						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="5pt" text-align="center" font-weight="bold">
								
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell vertical-align="top" text-align="center" display-align="before">							
							<fo:block color="#000000" font-size="6pt" text-align="center" font-weight="bold">
								<xsl:value-of  select="nroPropuesta"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="right">

							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	
	<xsl:template name="dibujar_patron">
	<xsl:param name="patron"/>
	<xsl:param name="indice"/>
	<xsl:param name="dimension_x"/>
	<xsl:choose>
		<xsl:when test="string-length($patron) &gt; 0">
			<xsl:variable name="anchura_linea">
				<xsl:choose>
					<xsl:when test="substring($patron, 1, 1) = 'w'">
						<xsl:value-of select="$dimension_x * 2.1"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$dimension_x"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<xsl:choose>
				<xsl:when test="($indice mod 2) = 0">
					<!-- es una barra -->
					<fo:leader leader-pattern="rule" rule-thickness="1.0cm" rule-style="solid" leader-length="{$anchura_linea}mm"/>
				</xsl:when>
				<xsl:otherwise>
					<fo:leader leader-pattern="rule" rule-thickness="1.0cm" rule-style="solid" color="white" leader-length="{$anchura_linea}mm"/>
					<!-- es un espacio -->
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="dibujar_patron">
				<xsl:with-param name="patron" select="substring($patron, 2)"/>
				<xsl:with-param name="indice" select="$indice + 1"/>
				<xsl:with-param name="dimension_x" select="$dimension_x"/>
			</xsl:call-template>
		</xsl:when>
		<xsl:otherwise>
		</xsl:otherwise>
	</xsl:choose>
	</xsl:template>
	
	<xsl:template name="dibujar_caracter">
		<xsl:param name="caracter"/>
		<xsl:param name="dimension_x"/>
		<xsl:variable name="patrones" select="'0nnnwwnwnn1wnnwnnnnw2nnwwnnnnw3wnwwnnnnn4nnnwwnnnw5wnnwwnnnn6nnwwwnnnn7nnnwnnwnw8wnnwnnwnn9nnwwnnwnnAwnnnnwnnwBnnwnnwnnwCwnwnnwnnnDnnnnwwnnwEwnnnwwnnnFnnwnwwnnnGnnnnnwwnwHwnnnnwwnnInnwnnwwnnJnnnnwwwnnKwnnnnnnwwLnnwnnnnwwMwnwnnnnwnNnnnnwnnwwOwnnnwnnwnPnnwnwnnwnQnnnnnnwwwRwnnnnnwwnSnnwnnnwwnTnnnnwnwwnUwwnnnnnnwVnwwnnnnnwWwwwnnnnnnXnwnnwnnnwYwwnnwnnnnZnwwnwnnnn-nwnnnnwnw.wwnnnnwnn nwwnnnwnn*nwnnwnwnn$nwnwnwnnn/nwnwnnnwn+nwnnnwnwn%nnnwnwnwn'"/>
		<xsl:variable name="caracteres_validos" select="'0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%'"/>
		<xsl:choose>
			<xsl:when test="(string-length($caracter) != 1) or (contains($caracteres_validos, $caracter) = false())">
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="patron" select="substring(substring-after($patrones, $caracter), 1, 9)"/>
				<xsl:call-template name="dibujar_patron">
					<xsl:with-param name="patron" select="$patron"/>
					<xsl:with-param name="indice" select="0"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
				</xsl:call-template>
				<fo:leader leader-pattern="rule" rule-thickness="1.0cm" rule-style="solid" color="white" leader-length="{$dimension_x}mm"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>	
	
	<xsl:template name="dibujar_codigobarras_39">
		<xsl:param name="cadena"/>
		<xsl:param name="dimension_x" select="0.3"/>
		<xsl:choose>
			<xsl:when test="string-length($cadena) &gt; 0">
				<xsl:variable name="caracter_actual" select="substring($cadena, 1, 1)"/>
				<xsl:call-template name="dibujar_caracter">
					<xsl:with-param name="caracter" select="$caracter_actual"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
				</xsl:call-template>
				<xsl:call-template name="dibujar_codigobarras_39">
					<xsl:with-param name="cadena" select="substring($cadena, 2)"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
		
	<xsl:template match="codigobarras-39">
		<fo:block line-height="1cm">
			<xsl:call-template name="dibujar_codigobarras_39">
				<xsl:with-param name="cadena" select="concat('*',@valor,'*')"/>
			</xsl:call-template>
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
<xsl:if test="( codigoPlan = 'HF' )"> 
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
							<!-- <fo:block padding-before="0pt" font-size="11.0pt">- Edificios que no hayan sido diseñados y construidos para soportar estas circunstancias.</fo:block> -->
							<fo:block padding-before="0pt" font-size="11.0pt">- Contenidos del bien asegurado. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">- Daños o pérdidas preexistentes al inicio de vigencia de este seguro, que hayan sido o no del conocimiento del asegurado.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">- Pérdida o daños de cualquier tipo ocasionados por deficiencias en la construcción o en su diseño, o por falta de mantenimiento de los bienes materia del seguro.</fo:block>
							
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >COBERTURAS ADICIONALES OPCIONALES: </fo:block>
                     <xsl:if test="( sismo = 'SI' )">
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">SISMO: </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">1.- Incendio a consecuencia de sismo, con un deducible del  1% del monto total asegurado, con un mínimo de UF25. (excepto adobe)   (CAD 1 91 067) </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">2.- Daños físicos causados por sismo. con un deducible del 1% del monto total asegurado, con un mínimo de UF25. (excepto adobe)  (CAD 1 91 068) </fo:block>
                    </xsl:if>
				<!-- 	<xsl:if test="( robo = 'SI' )">		
							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">ROBO: (Titulo 2º / POL 1 98 058)</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">1.- Robo con fractura y/o asalto, con un límite máximo a indemnizar por objeto de UF20</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">2.- El deducible es el 10% de la pérdida con un mínimo de UF5.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">3.- Limite máximo de cobertura de acuerdo al plan.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">4.- Bajo este opcional sólo se cubrirán muebles, menaje y ropa incluyendo equipos eléctricos y electrónicos, todo de reconocido uso doméstico, depositados dentro del edificio principal y anexos, excluyendo patios y jardines.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">5.- No se requerirá estipulación expresa para los siguientes objetos: equipos de video estacionario, televisores y equipos de música. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">6.- Incluye deterioro por UF100. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">7.- Vestuario: Limite de Cobertura de 10% del monto asegurado en Robo.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">8.- CDs, DVDs y Juegos de Video: Limite de Cobertura de 5% del monto asegurado en Robo. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">9.- Se excluyen: perfumes, cajas fuertes, bicicletas, licores, relojes, notebook, palm, teléfonos celulares y equipos móviles en general, cámara de video. </fo:block>							
					</xsl:if>		 -->
					
					<xsl:if test="( robo = 'SI' )">
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


					</xsl:if>
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
							<fo:block padding-before="0pt" font-size="11.0pt">-	Se excluyen las coberturas de sismo para riesgos construidos total o parcialmente de adobe y sus contenidos. (aplica sólo si tiene esta cobertura) </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">- Se excluyen las viviendas de uso vacacional o no habitual (mas de 60 días continuos deshabitada)</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	En caso de siniestro, se excluye de la póliza la coberturas brindadas por la CAD 1 99 004 sobre Daños Materiales causados por Viento, Inundación y Desbordamiento de Cauces, para todas aquellas viviendas ubicadas en:</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Sectores de Alto Jahuel, Villa Las Rosas y Villa Oscar Castro ubicadas en las comunas de Maipú, Pudahuel y Cerrillos respectivamente.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">Sectores de Collao y Palomares en Concepción, incluyendo Valle Nonguén, Ríos de Chile, Los Fresnos, Vegas  de Nonguén, Los Lirios, El Huáscar, Lagos de Chile, Parque Residencial Collao y Condominio Residencial Los Abedules.</fo:block>							

							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >Especificaciones Asistencia Hogar Ampliada: </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Gasfitería: hasta 3 eventos al año con un máximo de indemnización de UF1.5 por evento.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Electricidad: hasta 3 eventos al año con un máximo de indemnización de UF1.5 por evento.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Cerrajería: hasta 3 eventos al año con un máximo de indemnización de UF1.5 por evento.  </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Salvamento: UF30 por evento</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Cristalería: hasta 3 eventos al año con un máximo de indemnización de UF2.0 por evento.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Seguridad y vigilancia: Servicio de vigilancia en caso de vulnerabilidad de la vivienda y/o bienes en su interior. Por un máximo de 3 días. Máximo 2 eventos por año.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Traslado de muebles: Servicio de traslado de muebles en caso de inhabitabilidad de la vivienda por razones de seguridad o conservación, dentro de un radio de 50 Km. El servicio está limitado a un tope máximo de UF10 y a un evento por año.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">- Guarda de muebles: Servicio de depósito de muebles en caso de inhabitabilidad de la vivienda. El servicio está limitado a un evento por año por período máximo de 7 días y un monto máximo de UF10. Máximo 1 evento por año</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Traslado del Vehículo: Pasaje de avión clase económica, autobús o tren, para que el asegurado pueda trasladarse en busca del vehículo de su propiedad, dentro del territorio nacional. (Complementario a Guarda Muebles)</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Hospedaje: Gastos de estadía en un hotel para el asegurado y su grupo familiar residentes en la vivienda en caso de inhabitabilidad. Los gastos de traslado al hotel y el respectivo retorno, estarán a cargo de los asegurados. El servicio está limitado a un monto máximo de UF10.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Regreso Anticipado: En caso de incendio u otros daños, en que el asegurado titular se encuentre de viaje a más de 300 Km. de la vivienda y dentro del territorio nacional. Se pondrá a disposición un pasaje de avión clase económica, autobús o tren, para que pueda retornar. Máximo 1 evento por año.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Destapaciones: Servicio de plomería para destapar obstrucciones en caños en la vivienda o inmueble asegurado. Limitado a un tope máximo de UF5 y a un evento por año.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">-	Orientación legal telefónica en temas referentes al hogar, tales como contrato de arriendo, contratos personal  doméstico.</fo:block>							
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
							<fo:block padding-before="0pt" font-size="11.0pt">El contratante acepta que la compañía renueva automáticamente, tácita y sucesivamente por periodos anuales a partir del vencimiento a la póliza que da origen la presente propuesta, salvo voluntad contraria manifestada por escrito por el contratante, mediante carta certificada o fax dirigido a BCI Seguros Generales SA. o a BCl Corredores de Seguros SA., con 30 días de anticipación a la fecha de término primitivo o de cualquiera de sus prórrogas. Asimismo, autoriza a BCI  Corredores de Seguros SA., para que suscriba todos los documentos que sean necesarios para la emisión de la póliza de seguro, sus futuras renovaciones y eventuales modificaciones. </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">El Seguro ofrecido es intermediado por BCl corredores de Seguros S.A. y la compañía que cubre el riesgo es BCI Seguros Generales SA. </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre elección de intermediario y compañía aseguradora. </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea aceptada por el asegurador y se inicie la vigencia de la póliza. (Circular M°1.390 S.V.S.). </fo:block>							
							<!-- <fo:block padding-before="0pt" font-size="11.0pt">Para la emisión de la  presente  propuesta ha sido determinada la declaración formulada por el contratante, respecto de otros seguros contratados que hayan amparado al vehículo individualizado anteriormente y a quien sea el conductor habitual de éste. </fo:block>							 -->
							<fo:block padding-before="0pt" font-size="11.0pt">Todas las menciones de esta  propuesta  formarán parte integrante de las Condiciones Particulares de la póliza. </fo:block>							

							<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" >CODIGO DE AUTORREGULACIÓN:</fo:block>																					
							<fo:block padding-before="0pt" font-size="11.0pt">BCI Seguros Generales S.A. se encuentra adherida voluntariamente al Código de Autorregulación y al Compendio de Buenas Prácticas de las Compañías de Seguros, cuyo propósito es propender al desarrollo del mercado de seguros, en consonancia con los principios de libre competencia y buena fe que debe existir entre las empresas, y entre éstas y sus clientes.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">Copia del Compendio de Buenas Prácticas Corporativas de las Compañías de Seguros se encuentra a disposición de los interesados en cualquiera de las Oficinas de BCI Seguros Generales S.A. y en www.aach.cl. </fo:block>							
			
</xsl:if>
<xsl:if test="( codigoPlan != 'HF' )"> 
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

	
	<!-- ****************************************** MANDATO TERMINOS CORTOS ***************************************** -->
	
	<xsl:template name="temp_tituloMandatoTerminosCortos">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>MANDATO TERMINOS CORTOS</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datosMandatoTerminosCortos">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
																					
							<fo:block padding-before="0pt" font-size="11.0pt">Conforme al artículo 48 de las Condiciones Generales de la póliza, depositadas en la Superintendencia de Valores y Seguros bajo el código POL 1 91 058, el asegurado podrá poner término al presente seguro en cualquier momento mediante comunicación escrita al asegurador.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">En caso de cancelación de la póliza por voluntad del asegurado o por no pago de la prima, la Compañía cobrará adicionalmente a la prima  consumida un porcentaje sobre la prima no consumida de acuerdo a la tabla de términos cortos indicada a continuación.</fo:block>							
							
							<fo:block padding-before="0pt" font-size="11.0pt">
							
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(30)" />
							<fo:table-column column-width="proportional-column-width(30)" />
							<fo:table-column column-width="proportional-column-width(40)" />
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" font-weight="bold">
												<xsl:text>Por mes o fracción</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" font-weight="bold">
												<xsl:text>% sobre prima anual</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" font-weight="bold">

											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>Mes 1</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>10 %</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>Mes 2</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>20 %</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>Mes 3</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>30 %</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												
											</fo:block>
										</fo:table-cell>										
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>Mes 4</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>40 %</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												
											</fo:block>
										</fo:table-cell>										
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>Mes 5</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>50 %</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												
											</fo:block>
										</fo:table-cell>										
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>Mes 6</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>60 %</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												
											</fo:block>
										</fo:table-cell>										
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>Mes 7</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>70 %</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												
											</fo:block>
										</fo:table-cell>										
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>Mes 8</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>80 %</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												
											</fo:block>
										</fo:table-cell>										
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>Mes 9 al 12</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												<xsl:text>100 %</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" border-width="1.0pt" border-color="#000000" >
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
												
											</fo:block>
										</fo:table-cell>										
									</fo:table-row>

								</fo:table-body>
							</fo:table>
							
							</fo:block>
							
							<fo:block padding-before="0pt" font-size="11.0pt">En caso de aplicación de la tabla de Términos Cortos señalada, faculto expresamente a BCI Seguros Generales para cargar en mi cuenta corriente, línea de crédito o tarjeta de crédito las sumas adeudadas por este concepto, como así también para aplicar a su pago cualquier crédito a mi favor que exista en el Banco de Crédito e Inversiones, ya sean saldos en mi cuenta corriente,  tarjeta de crédito, cuenta vista, depósitos a la vista, depósitos a plazo, valores en custodia, fondos mutuos en BCI Administradora de Fondos Mutuos S.A. etc.</fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">El cliente declara aceptar todas las condiciones definidas en este mandato</fo:block>																																																																						
							
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
	<!-- 
			<fo:table table-layout="fixed" width="100%" padding-before="40pt" padding-after="20pt">
			<fo:table-column column-width="proportional-column-width(25)" />
			<fo:table-column column-width="proportional-column-width(25)" />
			<fo:table-column column-width="proportional-column-width(25)" />
			<fo:table-column column-width="proportional-column-width(25)" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" ></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" ></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" ></fo:block>
					</fo:table-cell>				
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" ></fo:block>
					</fo:table-cell>
				</fo:table-row>			
				<fo:table-row>
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						
					</fo:table-cell>
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						
					</fo:table-cell>
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
																			
					</fo:table-cell>				
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						
					</fo:table-cell>					
					<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
					<fo:block>
						<xsl:text>FIRMA CLIENTE</xsl:text>
					</fo:block>
					</fo:table-cell>			
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" ></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" ></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" ></fo:block>
					</fo:table-cell>				
					<fo:table-cell  border-width="1.0pt" border-color="#000000" >							
						<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold" ></fo:block>
					</fo:table-cell>
				</fo:table-row>			
				
			</fo:table-body>
			</fo:table>-->

		</fo:block>
	</xsl:template>	
	
	<!-- ****************************************** FIN MANDATO TERMINOS CORTOS ***************************************** -->
		
	<!-- ****************************************** DL 251 ***************************************** -->
	
	<xsl:template name="temp_tituloInformacionDL251">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>INFORMACION ARTICULOS 57 Y 58 DEL DL Nº 251</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
	
	<xsl:template name="temp_informacionDL251">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
							<!--  <fo:block padding-before="0pt" font-size="11.0pt">Bci Corredores de Seguros S.A., Rut: 78.951.950-1, en mi calidad de Corredor de Seguros y en cumplimiento a la ley, informo que durante el año calendario anterior intermedié contratos de seguros con las siguientes compañías de seguros : </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">En Seguros Generales, el 73,16% en Bci Seguros Generales S.A., el 11,94% con Compañía de Seguros Generales Cardif S.A., el 3,98% con Chilena Consolidada Seguros Generales S.A., el 3,52% con Royal  Sun Alliance Seguros S.A., el 1,91% con Liberty Compañía de Seguros Generales S.A., el 1,46% con Aseguradora Magallanes S.A., el 1,42% con Compañía de Seguros Generales Penta-Security S.A., el 1,03% con Cia. De Seguros Generales Consorcio Nacional de Seguros S.A. y otras 1,58%. En Seguros de Vida, el 65,79% con Bci Seguros Vida S.A.,  </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">el 26,47% con Compañía de Seguros de Vida Cardif S.A., el 2,09 % con La Interamericana Compañía de Seg de Vida S.A., el 1,47% con Bice Vida Compañía de Seguros S.A., el 1,22% con Chilena Consolidada Seguros de Vida S.A., el 1,14% con MetLife Chile Seguros de Vida S.A. y otras 1,82%. En Renta Vitalicia, el 33,70% con Principal Compañía de Seguros de Vida Chile S.A.,  </fo:block>							
							<fo:block padding-before="0pt" font-size="11.0pt">el 29,31% con MetLife Chile Seguros de Vida S.A., el 9,51% con Compañía de Seg. de Vida Consorcio Nacional de Seguros S.A., el 7,74% con Euroamérica Seguros de Vida S.A., el 6,05% con Penta Vida Compañía de Seguros de Vida S.A., el 4,80% con Bci Seguros Vida S.A., el 4,11% con Chilena Consolidada Seguros de Vida S.A. y otras 4,78%. Para responder del correcto y cabal cumplimiento de todas mis obligaciones emanadas</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">de la actividad de Corredor de Seguros y en especial, de los perjuicios que pueda ocasionar a los asegurados que contraten seguros por mi intermedio, se ha emitido Póliza de Responsabilidad  Civil  N° 483036-9 en Bci Seguros Generales S.A. y Póliza de Garantía N°552592-6 en Bci Seguros Generales S.A. </fo:block>
							-->
							<fo:block padding-before="0pt" font-size="11.0pt">BCI Corredores de Seguros S.A., Rut 78.951.950-1, en mi calidad de Corredor de seguros y en cumplimiento a la</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">ley, informo que durante el año calendario anterior intermedié contratos de seguros con las siguientes</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Compañías de Seguros.                                                                                                          </fo:block>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
							<fo:block padding-before="0pt" font-size="11.0pt">En Seguros Generales, el 76,37% en BCI Seguros Generales SA , el 11,50% con la Compañía de seguros     </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">generales Cardif  SA , el 3,62% con Royal Sunalliance Seguros SA, el 2,09% con Liberty Cia. de Seguros </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Generales SA , el 1,70% con Aseguradora Magallanes SA , , el 1,52% con C.S.G Penta Security S.A , el   </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">1,42%  MAPFRE Seguros generales , el 1,16% con Consorcio Nacional  de seguros Generales S.A. y otras </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">0,61% . En Seguros de Vida, el 60,96% con BCI seguros de Vida S.A., el 29,37% con la Compañía de </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">seguros de vida Cardif  S.A., el 3,86% con la Chilena Consolidada Seguros de Vida SA, el 2,53% </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">en la Interamericana Cía. de Seguros de Vida S.A., el 1,08% con Euroamerica Vida SA  y otras 2,19%. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">En Renta Vitalicia, el 30,91% con MetLife Chile  Seguros de vida SA, 15,03% con Euroamerica Seg.  </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">de Vida SA,  el 14,78% con ING  Seg. de Vida, el 10,35% con C.S.V Consorcio nacional de seguros S.A., </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">el 8,85% con Principal Cía. de seguros  de Vida Chile S.A.,  el 7,27% con  Vida Corp Seguros de Vida </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">S.A., el 5,08% con Bci seguros Vida, y otras  7,73%. Para responder del correcto y cabal cumplimiento </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">de todas mis obligaciones emanadas de la actividad de Corredor de seguros y en especial de los perjuicios </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">que pueda ocasionar a los asegurados que contraten seguros por mi intermedio se ha emitido Póliza de   </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Responsabilidad  Civil  N° 4245882 en Consorcio Nacional de Seguros Generales y Póliza de Garantía  </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">N° 10005712 en Consorcio Nacional de Seguros Generales. </fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** DL 251 ***************************************** -->	
	
	<!-- ****************************************** MANDATO  ***************************************** -->


<xsl:template name="temp_tituloMandato">

	<fo:block span="none">

		<fo:table table-layout="fixed" width="100%">

		<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>

			<fo:table-body>

				<fo:table-row>

					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">

						<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">

							<xsl:text>MANDATO</xsl:text>

						</fo:block>

					</fo:table-cell>

				</fo:table-row>

			</fo:table-body>

		</fo:table>

	</fo:block>

</xsl:template>


<xsl:template name="temp_datosMandato">

	<fo:block span="none">

		<fo:table table-layout="fixed" width="100%" >

		<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>

		<fo:table-body>

			<fo:table-row>

				<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">

						<fo:block padding-before="0pt" font-size="11.0pt">El contratante acepta que la compañía renueve  automática, tácita y </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">sucesivamente por períodos iguales el seguro a que da  origen esta          </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">propuesta, salvo voluntad contraria manifestada por escrito  por el </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">contratante, mediante carta certificada o fax dirigido a BCI  Seguros</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">Generales S.A. o a BCI Corredores de Seguros S.A., con 30 días de </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">anticipación a la fecha de término primitivo o de cualquiera de sus </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">prórrogas.  Asimismo, autoriza  a BCI Corredores de Seguros S.A. para </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">que suscriba todos los documentos  que sean necesarios para la emisión</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">de la póliza de seguro, sus futuras renovaciones y eventuales</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">modificaciones. Faculta a BCI Seguros Generales S.A., para guardar  y</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">conservar el original de toda y cualquier póliza de seguro que tenga su</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">origen en la presente propuesta o en el ejercicio del mandato que en</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">este  acto confiere o el de sus endosos, si  los hubiere, liberando</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">expresamente a  la compañía y al corredor, en su caso, de la obligación</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">que contempla el  artículo 549 del Código de  Comercio.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">2.-  El contratante  faculta a BCI Seguros Generales S.A., para guardar y </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">conservar el original  de toda y cualquier póliza de seguro que tenga</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">su origen en la presente  propuesta o en el ejercicio del mandato que</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">en este acto confiere o el de  sus endosos, si los hubiere, liberando</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">expresamente a la compañía y al  corredor, en su caso, de la obligación</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">que contempla el artículo 549 del  Código de  Comercio.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">Todas las coberturas están sujetas a deducibles, sub límites, exclusiones y </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">obligaciones del asegurado, las que se encuentran detalladas en el </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">condicionado general y particular de la póliza a la que dará origen la</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">presente propuesta. Se deja expresa constancia que cualquiera sea el</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">número de pólizas contratadas y vigentes con estas coberturas por el asegurable titular,</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">los límites de indemnización y montos asegurados no serán acumulables.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">El proponente ha tomado conocimiento del derecho a decidir sobre la </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">contratación de los seguros y a la libre elección del intermediario y compañía aseguradora. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">Todas las menciones de esta propuesta formarán parte  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">integrante de las Condiciones Particulares de la póliza.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">El seguro ofrecido es intermediado por BCI Corredores de Seguros S.A. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">y la compañía que cubre el riesgo es BCI Seguros Generales S.A. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">Se deja expresa constancia que con esta fecha el asegurado recibe  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">conforme póliza individualizada en la presente propuesta.</fo:block>

				</fo:table-cell>

			</fo:table-row>

		</fo:table-body>

		</fo:table>

	</fo:block>

</xsl:template>

<!-- ****************************************** MANDATO PAC ***************************************** -->
<xsl:template name="temp_mandatos_pac">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000">
						<fo:block>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#336699">
											<fo:block text-align="center" font-size="10pt" font-weight="bold" color="#ffffff">AUTORIZACION DE DESCUENTO CUENTA CORRIENTE (PAC)</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="2pt">
							</fo:block>
							<fo:table table-layout="fixed" width="100%" border-style="solid" border-width="1.0pt" border-color="#000000">
								<fo:table-column column-width="proportional-column-width(22)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(22)" background-color="#ffffff"/>
								<fo:table-column column-width="proportional-column-width(15)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(41)" background-color="#ffffff"/>
								<fo:table-body>
									<!-- SECCION IDENTIFICACION DEL CLIENTE -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="10pt">
												<fo:inline>IDENTIFICACION DEL TITULAR CUENTA CORRIENTE</fo:inline>
												<fo:inline font-style="italic">(Responsable de Pago)</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Nombre</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" number-columns-spanned="3" background-color="#ffffff" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nombresResponsable"/>
												<xsl:text> </xsl:text>
												<xsl:value-of disable-output-escaping="no" select="apellidoPaternoResponsable"/>
												<xsl:text> </xsl:text>
												<xsl:value-of disable-output-escaping="no" select="apellidoMaternoResponsable"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>RUT</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="rutResponsable"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Banco</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="bancoFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Nº Cta. Corriente</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="numeroCuentaFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Sucursal</xsl:text>
											</fo:block>
										</fo:table-cell>
									<xsl:if test="( codigoFormaPagoFuturosPagos = '3' )">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nombreSucursal"/>
											</fo:block>
										</fo:table-cell>
									</xsl:if>
									</fo:table-row>
									<!-- SECCION COMPAÑIA -->
									<fo:table-row>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Propuesta N°</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nroPropuesta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Compañía</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:text>BCI Seguros Generales S.A.</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<!-- SECCION TEXTO DEL MANDATO -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="10pt">
												<fo:inline>MANDATO</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" text-align="justify" border-style="solid"  border-width="1.0pt" color="#006666" font-size="11pt" padding-left="5pt" padding-right="5pt" border-color="#000000" background-color="#f0f0f0">

													<fo:block padding-before="3pt">1. Autorizo al Banco antes indicado a pagar, con cargo a mi cuenta corriente, los valores  involucrados en cada una de la(s) póliza(s) y endoso(s) que BCI Seguros Generales S.A. y/o BCI Seguros Vida S.A., en adelante, BCI Seguros, presente a cobro.</fo:block>
													<fo:block padding-before="3pt">2. BCI Seguros enviará al Banco periódicamente, de acuerdo a lo estipulado con la Compañía, la información  para el pago correspondiente.</fo:block>
													<fo:block padding-before="3pt">3. Asumo el compromiso de mantener en mi Cuenta Corriente indicada precedentemente, incluida Línea de  Crédito, si la hubiere, los fondos necesarios para cubrir los cargos que se hagan en virtud del presente instrumento, liberando al Banco de toda responsabilidad si ello no ocurriera.</fo:block>
													<fo:block padding-before="3pt">4. El abono deberá hacerse en favor de BCI Seguros, el día establecido en el contrato, con cargo a mi cuenta corriente antes indicada. En la eventualidad que el día de cargo corresponda a sábado, domingo o festivo, el cargo se efectuará el día hábil bancario anterior  o posterior, según sea el modo de operación del Banco. Este cargo en mi Cuenta Corriente se regirá por las condiciones generales de uso del servicio del Banco, los cuales declaro conocer y aceptar.</fo:block>
													<fo:block padding-before="3pt">5. Si en el día establecido para efectuar el cargo en cuenta corriente no hubiere fondos disponibles o éstos no fueren suficientes, el Banco podrá reintentar cargos o cobros posteriores cuantas veces sea necesario. A mayor abundamiento, la presente autorización de cargo en mi cuenta corriente se entenderá, para todos los efectos legales, dada el mismo día en que ésta se lleve a efecto.</fo:block>
													<fo:block padding-before="3pt">6. En el evento que se  produzca el cierre de la Cuenta Corriente del mandante, por cualquier motivo que ello ocurra o que  BCI  Seguros cancele el Convenio de Cargo  en  Cuenta  Corriente o, el Banco  cancele dicho Convenio con BCI Seguros, este  instrumento dejará  de tener efecto y obligará al mandante a realizar los pagos convenidos directamente en BCI Seguros. Si este mandato es revocado  por  el  mandante,  éste  deberá  notificar  por  escrito  su  decisión a BCI Seguros,  con  copia al Banco, con a lo menos un mes de anticipación a la fecha en que se desee poner término.</fo:block>
													<fo:block padding-before="3pt">7. El presente mandato dejará de tener vigencia en forma automática en caso de término del convenio de   recaudación  entre el Banco con BCI Seguros.</fo:block>
													<fo:block padding-before="3pt">8. Toda referencia del presente mandato a las cuentas corrientes se entenderá formulada respecto de otras cuentas que el mandante indique.</fo:block>
													<fo:block padding-before="3pt">9. El presente mandato entrará en vigor en forma indefinida desde la fecha de recepción en BCI Seguros  y hasta que se produzcan las situaciones descritas en el punto 6 anterior.</fo:block>
													<fo:block padding-before="3pt">10. "El presente mandato afecta al conjunto de pólizas y renovaciones celebradas con la compañía durante la vigencia de éste; y autoriza a que las primas  de dichas pólizas se paguen mediante la modalidad PAC, es decir, Autorización de Descuento en Cuenta Corriente Bancaria. El monto de  la prima, su forma y modalidad de pago, se encuentran insertas en las condiciones particulares de cada póliza". (Circular S.V.S. Nro.  1.499 del 15.09.2000)</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="20pt" text-align="center">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(1)"/>
									<fo:table-column column-width="8cm"/>
									<fo:table-column column-width="proportional-column-width(1)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell height="20pt" column-number="2" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#000000">
												<fo:block>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt">
												<fo:block white-space-collapse="true" color="#006666" font-size="11.0pt">
												Firma del Titular de la Cuenta Corriente</fo:block>
												<fo:block white-space-collapse="true" color="#006666" font-size="11.0pt">
													En <xsl:value-of disable-output-escaping="no" select="ciudadResponsable"/>
													 a <xsl:value-of disable-output-escaping="no" select="diaHoy"/>
													 de <xsl:value-of disable-output-escaping="no" select="mesHoy"/> 
													 de <xsl:value-of disable-output-escaping="no" select="anoHoy"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


<!-- ****************************************** MANDATO PAC ***************************************** -->

<!-- ****************************************** MANDATO PAT ***************************************** -->

	<xsl:template name="temp_mandatos_pat">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000">
						<fo:block>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#336699">
											<fo:block text-align="center" font-size="12pt" font-weight="bold" color="#ffffff">AUTORIZACION DE DESCUENTO EN TARJETAS DE CRÉDITO (PAT)</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="10pt">
							</fo:block>
							<fo:table table-layout="fixed" width="100%" border-style="solid" border-width="1.0pt" border-color="#000000">
								<fo:table-column column-width="proportional-column-width(18)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(20)" background-color="#ffffff"/>
								<fo:table-column column-width="proportional-column-width(21)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(41)" background-color="#ffffff"/>
								<fo:table-body>
									<!-- SECCION IDENTIFICACION DEL CLIENTE -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="12pt">
												<fo:inline>IDENTIFICACION DEL TITULAR TARJETA DE CRÉDITO</fo:inline>
												<fo:inline font-style="italic">(Responsable de Pago)</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Nombre</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" number-columns-spanned="3" background-color="#ffffff" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nombresResponsable"/>
												<xsl:text> </xsl:text>
												<xsl:value-of disable-output-escaping="no" select="apellidoPaternoResponsable"/>
												<xsl:text> </xsl:text>
												<xsl:value-of disable-output-escaping="no" select="apellidoMaternoResponsable"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>RUT</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="rutResponsable"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Tipo Tarjeta</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="emisorTarjetaFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Nº Tarjeta</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="numeroTarjetaFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Fecha Vencimiento</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="fechaVencimientoTarjeta"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<!-- SECCION COMPAÑIA -->
									<fo:table-row>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
													<xsl:text>Propuesta N°</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nroPropuesta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Compañía</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:text>BCI Seguros Generales S.A.</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<!-- SECCION TEXTO DEL MANDATO -->
									<fo:table-row>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<fo:inline>MANDATO</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" text-align="justify" border-style="solid"  border-width="1.0pt" color="#006666" font-size="10pt" padding-left="5pt" padding-right="5pt" border-color="#000000" background-color="#f0f0f0">
													<fo:block padding-before="4pt">1. Por medio del presente instrumento autorizo expresamente a Transbank S.A. a cargar en mi tarjeta   de crédito arriba individualizada, el valor correspondiente por los servicios prestados por BCI   Seguros Generales S.A. y/o BCI Seguros Vida S.A., en adelante, BCI Seguros. Este cargo se efectuará en forma mensual, por un período de meses o indefinidamente.</fo:block>
													<fo:block padding-before="4pt">2. Convengo en que BCI Seguros enviará a Transbank periódicamente, de acuerdo al contrato establecido, la información para el cobro correspondiente, liberando de toda responsabilidad a Transbank si ello no ocurriera.</fo:block>
													<fo:block padding-before="4pt">3. El cargo se hará efectivo a partir de la fecha en que esta autorización sea aceptada por Transbank.  En caso que la autorización no sea aceptada, esta situación le será comunicada al titular de la tarjeta de crédito por BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">4. El servicio prestado por BCI Seguros, será responsabilidad única y exclusiva de BCI Seguros liberando a Transbank de cualquier obligación. </fo:block>
													<fo:block padding-before="4pt">5. En el evento que Transbank no pudiese por cualquier circunstancia efectuar el cargo correspondiente, comunicará esta situación a BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">6. La presente autorización se entenderá, para todos los efectos legales, dada el mismo día en que se lleve a efecto el cargo en la tarjeta de crédito. Asimismo, se entenderá renovada mes a mes, en tanto no se revoque por escrito.</fo:block>
													<fo:block padding-before="4pt">7. La presente autorización de cargo en mi tarjeta de crédito continuará vigente hasta que yo la revoque por escrito a BCI Seguros, en la forma indicada en el número precedente.</fo:block>
													<fo:block padding-before="4pt">8. El presente mandato expirará automáticamente en el caso de término de contrato de Transbank con BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">9. En consideración a este servicio convengo, además, que si cualquiera de las cuotas mensuales, no fuese pagada por cualquier causa, Transbank no tendrá responsabilidad alguna, aunque de dicho pago   pueda resultar algún perjuicio para el tarjetahabiente o para BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">10. El presente mandato entrará en vigor en forma indefinida desde la fecha de recepción en BCI Seguros y hasta que se produzcan las situaciones descritas en los punto 7 y 8 anteriores.</fo:block>
													<fo:block padding-before="4pt">11. El límite de pago será igual al monto disponible en la tarjeta de crédito anteriormente individualizada, a la fecha de cargo.</fo:block>
													<fo:block padding-before="4pt">12. El presente mandato afecta al conjunto de pólizas y renovaciones celebradas con la compañía durante la vigencia de éste; y autoriza a que las primas de dichas pólizas se paguen mediante la modalidad PAT, es decir, Autorización de Descuento en Tarjeta de Crédito. El monto de la prima, su forma y  modalidad de pago, se encuentran insertas en las condiciones particulares de cada póliza.(Circular S.V.S. Nro. 1.499 del 15.09.2000).</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="20pt" text-align="center">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(1)"/>
									<fo:table-column column-width="8cm"/>
									<fo:table-column column-width="proportional-column-width(1)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell height="25pt" column-number="2" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#000000">
												<fo:block>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt">
												<fo:block>Firma del Titular de la Tarjeta de Crédito</fo:block>
												<fo:block>
													En <xsl:value-of disable-output-escaping="no" select="ciudadResponsable"/>
													 a <xsl:value-of disable-output-escaping="no" select="diaHoy"/>
													 de <xsl:value-of disable-output-escaping="no" select="mesHoy"/> 
													 de <xsl:value-of disable-output-escaping="no" select="anoHoy"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

<!-- ****************************************** MANDATO PAT ***************************************** -->
		<!-- INICIO DESCUENTO POR PLANILLA -->
	<xsl:template name="temp_mandatos_planilla">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000">
						<fo:block>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#336699">
											<fo:block text-align="center" font-size="12pt" font-weight="bold" color="#ffffff">AUTORIZACION DE DESCUENTO POR PLANILLA</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="10pt">
							</fo:block>
							<fo:table table-layout="fixed" width="100%" border-style="solid" border-width="1.0pt" border-color="#000000">
								<fo:table-column column-width="proportional-column-width(22)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(28)" background-color="#ffffff"/>
								<fo:table-column column-width="proportional-column-width(22)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(28)" background-color="#ffffff"/>
								<fo:table-body>
									<!-- SECCION COMPAÑIA -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="12pt">
												<fo:inline>COMPAÑIA</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" number-columns-spanned="2" background-color="#ffffff" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text> BCI Seguros Generales S.A.</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Propuesta N°</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="nroPropuesta"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<!-- SECCION EMPLEADO -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="12pt">
												<fo:block>EMPLEADO</fo:block>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>RUT</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-columns-spanned="3" background-color="#ffffff" padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="rutResponsable"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Apellido Paterno</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="apellidoPaternoResponsable"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Apellido Materno</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="apellidoMaternoResponsable"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Nombres</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-columns-spanned="3" background-color="#ffffff" padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="nombresResponsable"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-column column-width="proportional-column-width(50)"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="3" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="12pt">
												<fo:block>EMPLEADOR CONVENIO</fo:block>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row background-color="#f0f0f0">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>Código</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>Nombre</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>Rut</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row background-color="#ffffff" height="15pt">
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text> </xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text> </xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text> </xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<!-- SECCION TEXTO DEL MANDATO -->
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="12pt">
												<fo:inline>AUTORIZACIÓN DE DESCUENTO POR PLANILLA</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell display-align="center" text-align="justify" background-color="#ffffff" padding-left="5pt" padding-right="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block padding-before="4pt">1. Autorizo a mi empleador más arriba individualizado para descontar de mi remuneración mensual los valores correspondientes a primas en cada una de la(s) póliza(s) y/o endoso(s) que BCI Seguros Generales y/o BCI Seguros Vida S.A., en adelante e indistintamente, BCI Seguros, presente a cobro.</fo:block>
											<fo:block padding-before="4pt">2. BCI Seguros enviará a mi empleador periódicamente, de acuerdo lo estipulado con la Compañía, la información para la deducción o pago correspondiente.</fo:block>
											<fo:block padding-before="4pt">3. El pago deberá hacerse a favor de BCI Seguros, en la fecha acordada entre esta última y mi empleador. El descuento que se practique a mi remuneración se regirá de acuerdo a las normas laborales pertinentes, las cuales en este acto declaro conocer y aceptar.</fo:block>
											<fo:block padding-before="4pt">4. La presente autorización que por medio del presente instrumento efectúo, se entenderá, para todos los efectos legales dado el mismo día en que se lleve a efecto.</fo:block>
											<fo:block padding-before="4pt">5. En el evento que se produzca cualquiera de las siguientes circunstancias; término de la relación laboral entre mandante y mandatario, y en virtud de la cual se formuló la presente autorización, cualquiera sea la causal que la motivó, que BCI Seguros termine el convenio de Descuento, que mi empleador lo termine con BCI Seguros, este instrumento caducará inmediatamente y me obligará a realizar los pagos por prima convenidos directamente en la oficinas de BCI Seguros. Si este mandato es revocado por en Mandante, éste deberá notificar por escrito su decisión a BCI Seguros, con a lo menos un mes de anticipación a la fecha en que se desee poner término.</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="20pt" text-align="center">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(14)"/>
									<fo:table-column column-width="proportional-column-width(16)"/>
									<fo:table-column column-width="proportional-column-width(4)"/>
									<fo:table-column column-width="proportional-column-width(24)"/>
									<fo:table-column column-width="proportional-column-width(4)"/>
									<fo:table-column column-width="proportional-column-width(24)"/>
									<fo:table-column column-width="proportional-column-width(14)"/>
									<fo:table-body>
										<fo:table-row keep-with-next="always">
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block>
													<xsl:value-of select="fechaHoy"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block>
													<fo:external-graphic scaling="uniform" height="110pt" width="150pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>\firmas\FIR_COR2.gif')</xsl:attribute> 
													</fo:external-graphic>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row keep-with-next="always">
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
												<fo:block>
													<xsl:text>Fecha</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-before="4pt" text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
												<fo:block>
													<xsl:text>Firma Empleado</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-before="4pt" text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
												<fo:block>
													<xsl:text>Firma Corredor</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<!-- FIN DESCUENTO POR PLANILLA -->

	
</xsl:stylesheet>

